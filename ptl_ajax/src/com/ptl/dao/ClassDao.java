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

}
