package com.ptl.yxl.dao;

import java.util.List;

import com.ptl.yxl.pojo.Question;

public interface QuestionDao {
    
	List<Question> getQuestionsBySuiteCode(String suiteCode);
}
