package com.ptl.yxl.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ptl.yxl.dao.OptionDao;
import com.ptl.yxl.pojo.Option;
@Repository
public class OptionDaoImpl implements OptionDao{
	@Autowired
    private SessionFactory sessionFactory;
	@Override
	public List<Option> getOptions(List<Integer> optionIds) {
		Session session=sessionFactory.openSession();
		List<Option> options=null;
		try {
			Criteria criteria=session.createCriteria(Option.class);
			criteria.add(Restrictions.in("optionId", optionIds));
			options=criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return options;
	}

}
