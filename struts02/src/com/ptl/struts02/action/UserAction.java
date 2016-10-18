package com.ptl.struts02.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ptl.struts02.service.UserService;
import com.ptl.struts02.user.User;

public class UserAction extends ActionSupport {
	private UserService userService = new UserService();
	private User user;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String login() {
		boolean flag = userService.login(user);
		if (flag) {
			return "success";
		}
		return "error";
	}

	public String register() {
		boolean count = userService.register(user);
		if (count) {
			return "error";
		}
		return "fail";
	}

	public String delete() {
		userService.delete(user);
		show();
		return "success";

	}
	
	public String edit(){
		User exUser=userService.edit1(user);
		if(exUser!=null){
			ActionContext ac = ActionContext.getContext();
			Map<String, Object> session = ac.getSession();
			session.put("exUser", exUser);
			return "edit";
		}
		return ERROR;
	}
	
	public String edit2(){
		boolean count=userService.edit2(user);
		if(count){
			return "success";
		}
		return "edit";
	}

	public String show() {
		List<User> userList = userService.show();
		if (userList != null) {
			ActionContext ac = ActionContext.getContext();
			Map<String, Object> session = ac.getSession();
			session.put("userList", userList);
			return "success";
		}
		return "error";
	}

	@Override
	public String execute() throws Exception {

		return "";
	}

}
