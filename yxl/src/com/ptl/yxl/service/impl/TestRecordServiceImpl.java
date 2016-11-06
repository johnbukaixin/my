package com.ptl.yxl.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.plaf.metal.MetalBorders.OptionDialogBorder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptl.yxl.dao.OptionDao;
import com.ptl.yxl.dao.TestRecordDao;
import com.ptl.yxl.pojo.Option;
import com.ptl.yxl.pojo.TestRecord;
import com.ptl.yxl.service.TestRecordService;

@Service
public class TestRecordServiceImpl implements TestRecordService {
	@Autowired
	private TestRecordDao testRecordDao;
	@Autowired
	private OptionDao optionDao;

	private SimpleDateFormat sdf=new SimpleDateFormat("yyyyMMddHHmmssSSS");
	@Override
	public Map<String, Object> submitUserData(List<Integer> optionIds, String ipAddr) {

		List<Option> options = optionDao.getOptions(optionIds);
		System.out.println(options);
		//// 通过optionId获得optionCode，questionCode，score
		String suiteCode=null;
		int scoreNum=0;
		Date date=new Date();
		TestRecord tr=null;
		for (Option option : options) {
			
            String optionCode=option.getOptionCode();
            String questionCode=option.getQuestion().getQuestionCode();
            int score=option.getScore();
            scoreNum+=score;
            suiteCode=option.getQuestion().getSuite().getSuite_code();
            tr=new TestRecord();
            tr.setCreateTime(date);
            tr.setQuestionCode(questionCode);
            tr.setScore(score);
            tr.setSuiteCode(suiteCode);
            tr.setUserId(ipAddr+sdf.format(date));
            tr.setOptionCode(optionCode);
            //将这些信息存入test_record表
            testRecordDao.saveUserData(tr);
		}
		//存进去数据库还不算还需要将suiteCode 和score返回
		Map<String, Object> result=new HashMap<>();
		result.put("suiteCode", suiteCode);
		result.put("score", scoreNum);
		return result;
	}

}
