package com.ptl.base.user2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class User2Servlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uname = req.getParameter("uname");
		String pwd = req.getParameter("pwd");
		boolean flag=doLogin(uname, pwd);
		if(flag){
			resp.sendRedirect(req.getContextPath()+"/index.jsp");
		}else{
			resp.getWriter().print("Login fail");
		}
	}

	private boolean doLogin(String uname, String pwd) {
		if("zhangsan".equals(uname)&&"123456".equals(pwd)){
			return true;
		}
		return false;
	}
}
