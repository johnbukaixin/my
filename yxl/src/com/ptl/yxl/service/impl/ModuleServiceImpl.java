package com.ptl.yxl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptl.yxl.dao.impl.ModuleDaoImpl;
import com.ptl.yxl.pojo.Module;
import com.ptl.yxl.service.ModuleService;
@Service
public class ModuleServiceImpl implements ModuleService{
    
	@Autowired
	private ModuleDaoImpl imoduleDao;
	
    @Override
	public List<Module> getAllModules() {
		return imoduleDao.getAllModules();
	}

}
