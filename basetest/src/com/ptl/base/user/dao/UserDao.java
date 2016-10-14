package com.ptl.base.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ptl.base.user.entity.User;
import com.ptl.base.user.util.PtlDBUtil;

public class UserDao {

	public User doLogin(String uname, String pwd) {
		User user =null;
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="SELECT * FROM USER WHERE UNAME=? AND PWD=?";
        connection=PtlDBUtil.createConnection();
        preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
        try {
			preparedStatement.setString(1, uname);
			preparedStatement.setString(2, pwd);
			resultSet=preparedStatement.executeQuery();
			user=PtlDBUtil.resultSet2bean(resultSet, User.class);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
        
		return user;
	}

	public User login(User user) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        String sql="SELECT * FROM USER WHERE UNAME=? AND PWD=?";
        connection=PtlDBUtil.createConnection();
        preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
        try {
			preparedStatement.setString(1, user.getUname());
			preparedStatement.setString(2, user.getPwd());
			resultSet=preparedStatement.executeQuery();
			user=PtlDBUtil.resultSet2bean(resultSet, User.class);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
        
		return user;
	}

	public List<User> doShow() {
		List<User> list=new ArrayList<User>();
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		String sql="SELECT * FROM USER";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			resultSet=preparedStatement.executeQuery();
			list=PtlDBUtil.resultSet2list(resultSet, User.class);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

	public boolean doDelete(String id) {
		int count=0;
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="DELETE FROM USER WHERE ID=?";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, id);
			count=preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count==1;
	}

	public boolean doEdit(User user) {
		int count=0;
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="UPDATE USER SET UNAME=?,PWD=? WHERE ID=?";
		try {
			connection=PtlDBUtil.createConnection();
			preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
			preparedStatement.setString(1, user.getUname());
			preparedStatement.setString(2, user.getPwd());
			preparedStatement.setString(3, user.getId());
			count=preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		return count==1;
	}

	public User doEdit2(String id) {
		User user=new User();
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		String sql="SELECT * FROM USER WHERE ID=?";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, id);
			resultSet=preparedStatement.executeQuery();
			user=PtlDBUtil.resultSet2bean(resultSet, User.class);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return user;
	}

	public boolean doAdd(User user) {
		int count=0;
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="INSERT INTO USER VALUES(?,?,?)";
		try {
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		preparedStatement.setString(1, user.getId());
		preparedStatement.setString(2, user.getUname());
			preparedStatement.setString(3, user.getPwd());
			count=preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count==1;
	}
      
}
