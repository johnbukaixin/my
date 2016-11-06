package com.ptl.yxl.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ptl.yxl.dao.TestRecordDao;
import com.ptl.yxl.pojo.TestRecord;
@Repository
@Transactional
public class TestRecordDaoImpl implements TestRecordDao {
    @Autowired
	private SessionFactory sessionFactory;
	@Override
	public void saveUserData(TestRecord tr) {
		Session session=sessionFactory.getCurrentSession();
		session.save(tr);

	}

}
