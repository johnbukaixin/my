package com.ptl.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ptl.service.TesLogin;
import com.ptl.user.User;

public class HelloAction extends ActionSupport {
	private TesLogin testLogin=new TesLogin();
	private User user;
	
	
	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}

    public String login(){
    	String msg=testLogin.doLogin(user);
    	System.out.println(msg);
    	if("login success".equals(msg)){
    		return "success";
    	}else{
    		return "error";
    	}
    }
    
    public String register(){
    	
    	return "";
    }
	@Override
	public String execute() throws Exception {
		testLogin.test();
		return "";
	}
}
