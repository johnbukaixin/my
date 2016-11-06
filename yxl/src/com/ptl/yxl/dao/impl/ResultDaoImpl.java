package com.ptl.yxl.dao.impl;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ptl.yxl.dao.ResultDao;
import com.ptl.yxl.pojo.Result;
@Repository
public class ResultDaoImpl implements ResultDao{
	@Autowired
    private SessionFactory sessionFactory;
    
	@Override
	public Result getRangeByTotal(String suiteCode, int total) {
        Session session=sessionFactory.openSession();
        Criteria criteria=session.createCriteria(Result.class);
        criteria.add(Restrictions.eq("suiteCode", suiteCode));
        //Ѱ����СֵС���ֵܷĸպ��������Χ
        criteria.add(Restrictions.le("min_score", total));
        //Ѱ�����ֵ�����ֵܷ�
        criteria.add(Restrictions.ge("max_score", total));
        Result result=(Result) criteria.uniqueResult();
        session.close();
		return result;
	}

}
