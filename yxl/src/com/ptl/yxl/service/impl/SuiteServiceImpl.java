package com.ptl.yxl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptl.yxl.dao.SuiteDao;
import com.ptl.yxl.dao.impl.SuiteDaoImpl;
import com.ptl.yxl.pojo.Suite;

@Service
public class SuiteServiceImpl {
	public SuiteServiceImpl() {
		System.out.println("SuiteService.SuiteService()");
	}
	@Autowired
	private SuiteDaoImpl iSuiteDao;
//   private SuiteDao suiteDao;
   
   public List<Suite> getAllSuiteByModuleCode(String moduleCode){
	   return iSuiteDao.getAllSuiteByModuleCode(moduleCode);
   }
   
   public List<Suite> getRecommendSuite(String moduleCode){
	   return iSuiteDao.getRecommendSuite(moduleCode);
   }

public Suite getSuiteInfo(String suiteCode) {
	return iSuiteDao.getSuiteInfo(suiteCode);
}
   
}
