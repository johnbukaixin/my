package com.ptl.pc.area.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.ptl.pc.area.vo.Area;
import com.ptl.pc.util.PtlDBUtil;




public class AreaDao {

	public List<Area> doLoad(int parentid) {
		Connection connection=null;
		PreparedStatement preparedStatement=null;
		ResultSet resultSet=null;
		List<Area> areaList=null;
		String sql="SELECT * FROM AREA WHERE PARENTID=? ORDER BY VIEWORDER";
		connection=PtlDBUtil.createConnection();
		preparedStatement=PtlDBUtil.createPreparedStatement(connection, sql);
		try {
			preparedStatement.setInt(1, parentid);
			resultSet=preparedStatement.executeQuery();
			areaList=PtlDBUtil.resultSet2list(resultSet, Area.class);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			PtlDBUtil.closeAll(connection, preparedStatement, resultSet);
		}
		return areaList;
	}

}
