package com.ptl.struts02.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import com.ptl.struts02.user.User;
import com.ptl.struts02.util.PtlDBUtil;

public class UserDao {

	public User login(User user) {
		User loginUser = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String sql = "SELECT * FROM USER WHERE UNAME=? AND PWD=?";
		connection = PtlDBUtil.createConnection();
		preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, user.getUname());
			preparedStatement.setString(2, user.getPwd());
			resultSet = preparedStatement.executeQuery();
			loginUser = PtlDBUtil.resultSet2bean(resultSet, User.class);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return loginUser;
	}

	public List<User> show() {
		List<User> userList = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String sql = "SELECT * FROM USER";
		connection = PtlDBUtil.createConnection();
		preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			resultSet = preparedStatement.executeQuery();
			userList = PtlDBUtil.resultSet2list(resultSet, User.class);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return userList;
	}

	public boolean register(User user) {
		int count = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String sql = "INSERT INTO USER VALUES(?,?,?,?,?)";
		connection = PtlDBUtil.createConnection();
		preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, user.getId());
			preparedStatement.setString(2, user.getUname());
			preparedStatement.setString(3, user.getPwd());
			preparedStatement.setString(4, user.getGender());
			preparedStatement.setDate(5, new Date(user.getBirthday().getYear(), user.getBirthday().getMonth(), user.getBirthday().getDate()));
			count = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count == 1;
	}

	public boolean delete(User user) {
		int count = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		String sql = "DELETE FROM USER WHERE ID=?";
		connection = PtlDBUtil.createConnection();
		preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, user.getId());
			count = preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count == 1;
	}

	public User edit1(User user) {
		User exUser = null;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		String sql = "SELECT * FROM USER WHERE ID=?";
		try {
			connection = PtlDBUtil.createConnection();
			preparedStatement = PtlDBUtil.createPreparedStatement(connection, sql);
			preparedStatement.setString(1, user.getId());
			resultSet = preparedStatement.executeQuery();
			exUser = PtlDBUtil.resultSet2bean(resultSet, User.class);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return exUser;
	}

	public boolean edit2(User user) {
		int count=0;
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="UPDATE USER SET UANME=?,PWD=?,GENDER=?,BIRTHDAY=? WHERE ID=?";
		try {
		connection =PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		preparedStatement.setString(1, user.getUname());
		preparedStatement.setString(2, user.getPwd());
		preparedStatement.setString(3, user.getGender());
		preparedStatement.setDate(4, new Date(user.getBirthday().getYear(), user.getBirthday().getMonth(), user.getBirthday().getDate()));
		count=preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		return count==1;
		
	}

}
