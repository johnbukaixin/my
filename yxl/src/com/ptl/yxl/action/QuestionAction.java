package com.ptl.yxl.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ptl.yxl.pojo.Question;
import com.ptl.yxl.pojo.Suite;
import com.ptl.yxl.service.QuestionService;
import com.ptl.yxl.service.SuiteService;
import com.ptl.yxl.service.impl.SuiteServiceImpl;
@Controller
public class QuestionAction extends ActionSupport{
	@Autowired
    private  QuestionService iQuestionService;
	@Autowired
	private SuiteServiceImpl suiteService;
	private String suiteCode;
	
	public String getSuiteCode() {
		return suiteCode;
	}

	public void setSuiteCode(String suiteCode) {
		this.suiteCode = suiteCode;
	}

	public String getQuestionsBySuiteCode(){
		Suite suite=suiteService.getSuiteInfo(suiteCode);
		List<Question> questionList=iQuestionService.getQuestionsBySuiteCode(suiteCode);
//		for (Question question : questionList) {
//			System.out.println(question.getOptionList().get(0));
//		}
		ActionContext.getContext().put("questionList", questionList);
		ActionContext.getContext().put("suite", suite);
		return SUCCESS;
	}
}
