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

	
    //1ǰ̨��������������list����key��ȷ�������Բ��ܷ�װ�ɶ���
	public String SubmitUserData(){
		//��ǰ̨�û�ѡ������ݴ������ݿ�?
//		resultService.SubmitUserData();
		return SUCCESS;
	}
}
