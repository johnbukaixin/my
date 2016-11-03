package com.ptl.yxl.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.stereotype.Repository;

import com.ptl.yxl.dao.ModuleDao;
import com.ptl.yxl.pojo.Module;
@Repository
public class ModuleDaoImpl implements ModuleDao{
	@Resource
    private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


	@Override
	public List<Module> getAllModules() {
		//��Ϊget��������Ҫ����������service��û��tx ��Ҫ�ֶ�����session����ֱ��spring�������ļ�ֱ�ӿ������񣬹���session
		Session session=sessionFactory.openSession();
		List<Module> moduleList=null;
		try {
			Criteria criteria=session.createCriteria(Module.class);
			moduleList=criteria.list();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			session.close();
		}
		return moduleList;
	}
//	@Test
//	public void saveTest(){
//		Session session=sessionFactory.getCurrentSession();
//		Module module=new Module();
//		module.setIsNew(0);
//		module.setModuleCode("100");
//		module.setModuleId(10);
//		module.setModuleName("��������");
//		session.save(module);
//	}

}
