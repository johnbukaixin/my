package com.ptl.yxl.dao.impl;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ptl.yxl.dao.TestResultDao;
import com.ptl.yxl.pojo.FinalResult;
import com.ptl.yxl.pojo.Result;
@Repository
public class TestResultDaoImpl implements TestResultDao{
    @Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<FinalResult> getAllResult(Result result) {
		List<FinalResult> finalList=new ArrayList<>();
		FinalResult finalResult=null;
		Session session=sessionFactory.openSession();
		SQLQuery sqlQuery=session.createSQLQuery("select result_id, suite_code, title, rs.result_code, rs.num from t_result re right join (select result_code, count(trd_id) num from t_testor_result r where r.SUITE_CODE=? group by RESULT_CODE) rs on re.RESULT_CODE=rs.result_code;");
		sqlQuery.setString(1, result.getSuiteCode());
		List<Object[]> results=sqlQuery.list();
		for (Object[] rs : results) {
			finalResult=new FinalResult();
			finalResult.setResultId(((BigDecimal)rs[0]).longValue());
			finalResult.setSuiteCode((String)rs[1]);
			finalResult.setTitle((String)rs[2]);
			finalResult.setResultCode((String)rs[3]);
			finalResult.setNum(((BigInteger)rs[4]).intValue());
			finalList.add(finalResult);
		}
		return finalList;
	}

}
