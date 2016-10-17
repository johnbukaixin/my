package com.ptl.pc.util;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ptl.pc.member.vo.Member;

import ognl.Ognl;
import ognl.OgnlException;

/**
 * 基本对所有数据进行增删查改等操作的基础类,因为要对所有类操作所以传入一个泛型，通过泛型判断操作的具体是哪一个类
 * 
 * @author Administrator
 * 
 */
public abstract class BaseDao<T> {
	protected Class<T> clazz = null;

	public BaseDao() {
		// 获取传入的类型
		Type type = this.getClass().getGenericSuperclass();
		// 获取参数化类型
		this.clazz = (Class<T>) ((ParameterizedType) type).getActualTypeArguments()[0];
	}

	/**
	 * 对于添加，基本上每一个需要操作的类都有添加所以把这些都放在baseDao里
	 * 
	 */
	public boolean doAdd(T bean) {
		int count = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		StringBuffer sql = new StringBuffer();
		StringBuffer subSql1 = new StringBuffer();
		StringBuffer subSql2 = new StringBuffer();
		List<Object> columnValues = new ArrayList<Object>();
		Field[] dfs = this.clazz.getDeclaredFields();
		for (int i = 0; i < dfs.length; i++) {
			subSql1.append("," + dfs[i].getName());
			subSql2.append(",?");
			try {
				columnValues.add(Ognl.getValue(dfs[i].getName(), bean));
			} catch (OgnlException e) {
				e.printStackTrace();
			}

		}
		sql.append("INSERT INTO " + this.clazz.getSimpleName() + " (" + subSql1.substring(1) + ")" + "VALUES (" + subSql2.substring(1) + ")");
		try {
			connection = PtlDBUtil.createConnection();
			preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
			for (int i = 0; i < columnValues.size(); i++) {
				preparedStatement.setObject(i + 1, columnValues.get(i));
			}
			count = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		return count == 1;
	}

	/**
	 * 查询所有的
	 * 
	 * @param req
	 * @param resp
	 * @return
	 */
	public List<T> doQueryAll() {
		List<T> list = new ArrayList<T>();
		;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String sql = "SELECT * FROM " + this.clazz.getSimpleName();
		try {
			connection = PtlDBUtil.createConnection();
			preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
			resultSet = preparedStatement.executeQuery();
			list = PtlDBUtil.resultSet2list(resultSet, this.clazz);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	/**
	 * 通过主键删除
	 * 
	 * @param id
	 * @return
	 */
	public boolean doDelteByPk(String id) {
		int count = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String sql = "DELETE FROM " + this.clazz.getSimpleName() + " WHERE ID=?";
		connection = PtlDBUtil.createConnection();
		preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, id);
			count = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		return count == 1;
	}

	/**
	 * 通过主键修改
	 * 
	 * @param bean
	 * @return
	 */
	public boolean doUpdateByPk(T bean) {
		int count = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		StringBuffer sql = new StringBuffer();
		StringBuffer subSql = new StringBuffer();
		StringBuffer subSql1 = new StringBuffer();
		List<Object> list = new ArrayList<Object>();
		Field[] dfs = this.clazz.getDeclaredFields();
		try {
			for (int i = 1; i < dfs.length; i++) {
				// 获取输入的值
				Object columnValue = Ognl.getValue(dfs[i].getName(), bean);
				if (columnValue != null) {
					subSql.append("," + dfs[i].getName() + "=?");
					list.add(columnValue);
				}
			}
			subSql1.append("id=?");
			list.add(Ognl.getValue("id", bean));
		} catch (OgnlException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		sql.append("UPDATE " + this.clazz.getSimpleName() + " SET " + subSql.substring(1) + " WHERE ID=?");
		try {
			connection = PtlDBUtil.createConnection();
			preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
			for (int i = 0; i < dfs.length; i++) {
				preparedStatement.setObject(i + 1, list.get(i));
			}
			count = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		return count == 1;
	}

	/**
	 * 通过主键查询
	 * 
	 * @param id
	 * @return
	 */
	public T doQueryByPk(String id) {
		T bean = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String sql = "SELECT * FROM " + this.clazz.getSimpleName() + " WHERE ID=?";
		try {
			connection = PtlDBUtil.createConnection();
			preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
			preparedStatement.setString(1, id);
			resultSet = preparedStatement.executeQuery();
			bean = PtlDBUtil.resultSet2bean(resultSet, this.clazz);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return bean;
	}

	/**
	 * 查询当前总记录数
	 * 
	 * @return
	 */
	public int doQueryRowCount() {
		int count = 0;
		Connection connection = null;
		String sql = "SELECT COUNT(*) FROM MEMBER WHERE 1=1";
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		connection = PtlDBUtil.createConnection();
		preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			resultSet = preparedStatement.executeQuery();
			while (resultSet.next()) {
				count = resultSet.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return count;
	}

	public void doQueryPage(PtlPage<T> page) {
        List<T> list=new ArrayList<T>();
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="SELECT * FROM "+this.clazz.getSimpleName()+" LIMIT "+page.getRowStart()+","+page.getSize();
        connection=PtlDBUtil.createConnection();
        preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
        try {
			resultSet=preparedStatement.executeQuery();
			list=PtlDBUtil.resultSet2list(resultSet, this.clazz);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
        page.setList(list);
	}
}
