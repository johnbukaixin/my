package com.ptl.yxl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ptl.yxl.dao.QuestionDao;
import com.ptl.yxl.pojo.Question;
import com.ptl.yxl.service.QuestionService;

@Service
public class QuestionServiceImpl implements QuestionService{
	@Autowired
	private QuestionDao iQuestionDao;

	@Override
	public List<Question> getQuestionsBySuiteCode(String suiteCode) {
		return iQuestionDao.getQuestionsBySuiteCode(suiteCode);
	}

}
