package com.ptl.yxl.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ptl.yxl.pojo.Suite;
import com.ptl.yxl.service.SuiteService;
import com.ptl.yxl.service.impl.SuiteServiceImpl;
@Controller
@Scope("prototype")
public class SuiteAction extends ActionSupport{
	public SuiteAction(){
		System.out.println("SuiteAction.SuiteAction()");
	}
    @Autowired
//    private ISuiteService iSuiteService;
	private SuiteServiceImpl suiteService;
    
    private String moduleCode;
    private String suiteCode;
    
    public String getSuiteCode() {
		return suiteCode;
	}
	public void setSuiteCode(String suiteCode) {
		this.suiteCode = suiteCode;
	}
	public String getModuleCode() {
		return moduleCode;
	}
	public void setModuleCode(String moduleCode) {
		this.moduleCode = moduleCode;
	}


	public String getSuites(){
		System.out.println("SuiteAction.getSuites()");
    	List<Suite> suiteList=suiteService.getAllSuiteByModuleCode(moduleCode);
    	List<Suite> recommendSuites=suiteService.getRecommendSuite(moduleCode);
    	//直接放入request作用域
    	ActionContext.getContext().put("suiteList", suiteList);
    	ActionContext.getContext().put("recommendSuites", recommendSuites);
    	ActionContext.getContext().put("module", suiteList.get(0).getModule());
    	return SUCCESS;
    }
	
	public String getSuiteInfo(){
		Suite suite=suiteService.getSuiteInfo(suiteCode);
		ActionContext.getContext().put("suite", suite);
		return SUCCESS;
	}
}
