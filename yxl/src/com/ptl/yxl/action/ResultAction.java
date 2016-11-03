package com.ptl.yxl.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.ptl.yxl.service.ResultService;
@Controller
public class ResultAction extends ActionSupport{
    @Autowired
	private ResultService resultService;
    
	public ResultService getResultService() {
		return resultService;
	}

	public void setResultService(ResultService resultService) {
		this.resultService = resultService;
	}

	
    //1前台传过来的数据是list类型key不确定，所以不能封装成对象
	public String SubmitUserData(){
		//将前台用户选择的数据传到数据库?
//		resultService.SubmitUserData();
		return SUCCESS;
	}
}
