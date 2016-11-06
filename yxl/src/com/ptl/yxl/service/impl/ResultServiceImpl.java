package com.ptl.yxl.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptl.yxl.dao.ResultDao;
import com.ptl.yxl.pojo.Result;
import com.ptl.yxl.service.ResultService;
@Service
public class ResultServiceImpl implements ResultService{
	@Autowired
    private ResultDao resultDao;
	@Override
	public Result getRangeByTotal(String suiteCode, int total) {
		
		return resultDao.getRangeByTotal(suiteCode, total);
	}
         
}
