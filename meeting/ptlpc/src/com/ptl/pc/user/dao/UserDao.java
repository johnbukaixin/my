package com.ptl.pc.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import java.util.UUID;

import com.ptl.pc.user.vo.User;
import com.ptl.pc.util.PtlDBUtil;

public class UserDao {

	public User doLogin(String uname, String pwd) {
		User user=null;
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
		    System.out.println(resultSet);	
			user=PtlDBUtil.resultSet2bean(resultSet, User.class);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		return user;
	}

	public void doRegister(User user) {
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="INSERT INTO USER(ID,UNAME,PWD,REALNAME,GENDER,EMAIL,AGE,CREATETIME,UPDATETIME) VALUES (?,?,?,?,?,?,?,?,?)";
		try {
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		preparedStatement.setString(1, UUID.randomUUID().toString().substring(1,11));
		preparedStatement.setString(2, user.getUname());
		preparedStatement.setString(3, user.getPwd());
		preparedStatement.setTimestamp(8, new Timestamp(System.currentTimeMillis()));
		preparedStatement.setTimestamp(9, new Timestamp(System.currentTimeMillis()));
		preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection,preparedStatement, null);
		}
	}

	public void doDelete(String id) {
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="DELETE FROM USER WHERE ID=?";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
	}

	public List<User> doQueryAll() {
		List<User> userList=null;
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		String sql="SELECT * FROM USER ORDER BY CREATETIME LIMIT 8 ";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			resultSet=preparedStatement.executeQuery();
			userList=PtlDBUtil.resultSet2list(resultSet, User.class);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return userList;
	}

	public List<User> doSearch(String uname, String gender) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet resultSet=null;
        List<User> userList=null;
        System.out.println(uname+gender);
        String sql="SELECT * FROM USER WHERE UNAME LIKE CONCAT('%',?,'%') OR GENDER=?";
        connection=PtlDBUtil.createConnection();
        preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, uname);
			preparedStatement.setString(2, gender);
			resultSet=preparedStatement.executeQuery();
			userList=PtlDBUtil.resultSet2list(resultSet, User.class);
			System.out.println(userList);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return userList;
	}

	public void doUpdate(String uname, String realname, String email,String gender,String id) {

		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="UPDATE USER SET UNAME=?,REALNAME=?,EMAIL=?,GENDER=?,UPDATETIME=? WHERE ID=?";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, uname);
			preparedStatement.setString(2, realname);
			preparedStatement.setString(3, email);
			preparedStatement.setString(4, gender);
			preparedStatement.setTimestamp(5, new Timestamp(System.currentTimeMillis()));
			preparedStatement.setString(6, id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, null);
		}
		}

	public void doAdd(User user) {

		Connection connection=null;
		PreparedStatement preparedStatement=null;
		String sql="INSERT INTO USER(ID,UNAME,PWD,REALNAME,GENDER,EMAIL,AGE,CREATETIME,UPDATETIME) VALUES (?,?,?,?,?,?,?,?,?)";
		try {
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		preparedStatement.setString(1, UUID.randomUUID().toString().substring(1,11));
		preparedStatement.setString(2, user.getUname());
		preparedStatement.setString(3, user.getPwd());
		preparedStatement.setTimestamp(8, new Timestamp(System.currentTimeMillis()));
		preparedStatement.setTimestamp(9, new Timestamp(System.currentTimeMillis()));
		preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection,preparedStatement, null);
		}
	}

	public boolean doOnly(String uname) {
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		System.out.println(uname);
		String sql="SELECT * FROM USER WHERE UNAME=?";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setString(1, uname);
			resultSet=preparedStatement.executeQuery();
			//System.out.println(resultSet.next());
			while(resultSet.next()){
				System.out.println(11232);
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return true;
	}

}
