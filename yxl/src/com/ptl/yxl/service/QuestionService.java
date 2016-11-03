package com.ptl.yxl.service;

import java.util.List;

import com.ptl.yxl.pojo.Question;

public interface QuestionService {
	List<Question> getQuestionsBySuiteCode(String suiteCode);
}
