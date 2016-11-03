package com.ptl.yxl.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.ptl.yxl.dao.SuiteDao;
import com.ptl.yxl.pojo.Suite;
@Repository
public class SuiteDaoImpl implements SuiteDao{
	@Resource
    private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<Suite> getAllSuiteByModuleCode(String moduleCode) {
		Session session=null;
		List<Suite> suiteList=null;
		try {
			session=sessionFactory.openSession();
			Criteria criteria=session.createCriteria(Suite.class);
			criteria.add(Restrictions.eq("module.moduleCode", moduleCode));
		    suiteList=criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(session!=null)
			session.close();
		}
		return suiteList;
	}
   
	@Override
	public List<Suite> getRecommendSuite(String moduleCode) {
		Session session=null;
		List<Suite> suiteList=null;
		try {
			session=sessionFactory.openSession();
			Criteria criteria=session.createCriteria(Suite.class);
			criteria.add(Restrictions.eq("module.moduleCode", moduleCode));
			criteria.add(Restrictions.eq("issuggest", 1));
			//按时间降序排列
			criteria.addOrder(Order.desc("create_time"));
			//做分页显示三条数据
			criteria.setMaxResults(3);
			//偏移量为0表示前三条
			criteria.setFirstResult(0);
			suiteList=criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(session!=null)
			session.close();
		}
		return suiteList;
	}
	@Override
	public Suite getSuiteInfo(String suiteCode) {
		Session session=null;
		Suite suite=null;
		try {
			session=sessionFactory.openSession();
			Query query=session.createQuery("from Suite where suite_code=?");
			query.setString(0,suiteCode);
			suite=(Suite) query.list().get(0);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			if(session!=null)
				session.close();
		}
		return suite;
	}
}
