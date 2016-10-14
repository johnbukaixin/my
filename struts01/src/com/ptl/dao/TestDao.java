package com.ptl.dao;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.ptl.user.User;

public class TestDao {

	public void testPrint() {
		System.out.println("我进入到dao里了！");
	}

	public String doLogin(User user) {
		if ("zs".equals(user.getUname()) && "123".equals(user.getPwd())) {
			ActionContext ac = ActionContext.getContext();
			// 设置session
			Map session = ac.getSession();
			session.put("user", user.getUname());
			return "login success";
		}
		return "login error";
	}

}
