package com.ptl.yxl.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ptl.yxl.dao.QuestionDao;
import com.ptl.yxl.pojo.Question;

@Repository
public class QuestionDaoImpl implements QuestionDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Question> getQuestionsBySuiteCode(String suiteCode) {
		Session session = null;
		List<Question> questionList = null;
		try {
			session=sessionFactory.openSession();
			Query query = session.createQuery("from Question q where q.suite.suite_code=? order by orderNo");
			query.setString(0, suiteCode);
			questionList = query.list();
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
          if(session!=null)
        	  session.close();
		}
		return questionList;
	}

}
