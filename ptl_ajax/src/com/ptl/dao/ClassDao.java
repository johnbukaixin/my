package com.ptl.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ptl.util.PtlDBUtil;
import com.ptl.vo.Class1;
import com.ptl.vo.PtlPage;


public class ClassDao {

	public int doQueryRowCount() {
		int count = 0;
		Connection connection = null;
		String sql = "SELECT COUNT(*) FROM T_CLASS WHERE 1=1";
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
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return count;
	}

	public void doQueryPage(PtlPage<Class1> page) {
		List<Class1> list=new ArrayList<Class1>();
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="SELECT * FROM T_CLASS LIMIT "+page.getRowStart()+","+page.getSize();
        connection=PtlDBUtil.createConnection();
        preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
        try {
			resultSet=preparedStatement.executeQuery();
			list=PtlDBUtil.resultSet2list(resultSet, Class1.class);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
        page.setList(list);
	}

	public boolean doAdd(Class1 class1) {
		int count=0;
      Connection connection=null;
      PreparedStatement preparedStatement=null;
      String sql="INSERT INTO T_CLASS VALUES(?,?,?,?)";
      connection=PtlDBUtil.createConnection();
      preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
      try {
		preparedStatement.setString(1, class1.getId());
		preparedStatement.setString(2, class1.getName());
		preparedStatement.setInt(3, class1.getNum());
		preparedStatement.setString(4, class1.getManager());
		count=preparedStatement.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		PtlDBUtil.closeAll(connection, preparedStatement, null);
	}
      return count==1;
	}

	public Class1 doEdit1(String id) {
		Class1 class1=null;
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		String sql="SELECT * FROM T_CLASS WHERE ID=?";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, id);
			resultSet=preparedStatement.executeQuery();
			class1=PtlDBUtil.resultSet2bean(resultSet, Class1.class);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		return class1;
	}

	public boolean doEdit2(Class1 class1) {
		int count=0;
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="UPDATE T_CLASS SET UNAME=?,NUM=?,MANAGER=? WHERE ID=?";
		try {
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		preparedStatement.setString(1, class1.getName());
		preparedStatement.setInt(2, class1.getNum());
		preparedStatement.setString(3, class1.getManager());
			preparedStatement.setString(4,class1.getId());
			count=preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		return count==1;
	}

	public boolean doDelete(String id) {
		int count=0;
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="DELETE FROM T_CLASS WHERE ID=?";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, id);
			count=preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		return count==1;
	}

}
