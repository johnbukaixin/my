package com.ptl.yxl.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptl.yxl.dao.TestResultDao;
import com.ptl.yxl.pojo.FinalResult;
import com.ptl.yxl.pojo.Result;
import com.ptl.yxl.service.TestResultService;
@Service
public class TestResultServiceImpl implements TestResultService{
	@Autowired
    private TestResultDao testResultDao;
	@Override
	public Map<String, Object> getAllResult(Result result) {
		Map<String, Object> myResult=new HashMap<>();
		List<FinalResult> list=testResultDao.getAllResult(result);
		for (FinalResult finalResult : list) {
			if(finalResult.getResultCode().equals(result.getResultCode())){
				myResult.put("我的结果"+finalResult.getTitle(),finalResult.getNum());
			}
		}
		return myResult;
	}

}
