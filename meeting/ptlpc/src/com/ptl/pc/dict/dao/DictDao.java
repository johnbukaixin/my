package com.ptl.pc.dict.dao;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ptl.pc.dict.vo.Dict;
import com.ptl.pc.util.PtlDBUtil;

public class DictDao implements Serializable{

	public List<Dict> doLoad(String type) {
		List<Dict> list=new ArrayList<Dict>();
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		String sql="SELECT * FROM DICT WHERE TYPE=? ORDER BY SX";
		try {
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
			preparedStatement.setString(1, type);
			resultSet=preparedStatement.executeQuery();
			list=PtlDBUtil.resultSet2list(resultSet, Dict.class);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return list;
	}

}
