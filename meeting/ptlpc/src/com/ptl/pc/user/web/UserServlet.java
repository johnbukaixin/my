package com.ptl.pc.user.web;

import java.io.IOException;
import java.util.List;

import javax.faces.validator.RequiredValidator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ptl.pc.user.dao.UserDao;
import com.ptl.pc.user.vo.User;
import com.ptl.pc.util.PtlConstants;



public class UserServlet extends HttpServlet {

	/**
	 * 
	 */
	private UserDao userDao=new UserDao();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String operation=req.getParameter("operation");
		String method=req.getMethod().toLowerCase();
		if("login".equals(operation)&&"post".equals(method)){
			doUserLogin(req,resp);
		}else if("logout".equals(operation)&&"get".equals(method)){
			doUserLogout(req,resp);
		}else if("register".equals(operation)&&"post".equals(method)){
			doUserRegister(req,resp);
		}else if("search".equals(operation)&&"get".equals(method)){
			doUserSearch(req,resp);
		}else if("delete".equals(operation)&&"get".equals(method)){
			doUserDelete(req,resp);
		}else if("update".equals(operation)&&"post".equals(method)){
			doUserUpdate(req,resp);
		}else if("show".equals(operation)&&"get".equals(method)){
			doUserQueryAll(req,resp);
		}else if("add".equals(operation)&&"post".equals(method)){
			doUserAdd(req,resp);
		}else if("only".equals(operation)&&"get".equals(method)){
			doUserOnly(req,resp);
		}
	}

	private void doUserOnly(HttpServletRequest req, HttpServletResponse resp) {

		String uname=req.getParameter("uname");
		boolean flag=userDao.doOnly(uname);
		try {
			System.out.println(flag);
			resp.getWriter().print(flag);
		} catch (IOException e) {
			e.printStackTrace();
		}
		  
	}

	private void doUserAdd(HttpServletRequest req, HttpServletResponse resp) {
            User user=(User) req.getAttribute(PtlConstants.FORM_TO_BEAN);
            System.out.println(user);
            userDao.doAdd(user);
            doUserQueryAll(req,resp);
	}

	private void doUserQueryAll(HttpServletRequest req, HttpServletResponse resp) {
		List<User> userList=userDao.doQueryAll();
		req.getSession().setAttribute("userList", userList);
		try {
			resp.sendRedirect(req.getContextPath()+"/user/index.jsp");
			return;
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	private void doUserUpdate(HttpServletRequest req, HttpServletResponse resp) {
	      String uname=req.getParameter("uname");
	      String realname=req.getParameter("realname");
	      String gender=req.getParameter("gender");
	      String email=req.getParameter("email");
	      String id=req.getParameter("id");
//	      String updatetime=req.getParameter("updatetime");
	      userDao.doUpdate(uname,realname,email,gender,id);
	     
	}

	private void doUserDelete(HttpServletRequest req, HttpServletResponse resp) {
		String id=req.getParameter("id");
		userDao.doDelete(id);
		List<User> userList=userDao.doQueryAll();
	    try {
	    	req.getSession().setAttribute("userList", userList);
			resp.sendRedirect(req.getContextPath()+"/user/index.jsp");
			return;
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void doUserSearch(HttpServletRequest req, HttpServletResponse resp) {
		String uname=req.getParameter("uname");
		String gender=req.getParameter("gender");
		List<User> userList=userDao.doSearch(uname,gender);
		if(userList==null){
			req.getSession().setAttribute("msg", "阿偶，没有符合你要求的记录哦~");
			try {
				resp.sendRedirect(req.getContextPath()+"/user/index.jsp");
				return;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			req.getSession().setAttribute("userList", userList);
			try {
				resp.sendRedirect(req.getContextPath()+"/user/index.jsp");
				return;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private void doUserRegister(HttpServletRequest req, HttpServletResponse resp) {
		String uname=req.getParameter("uname");
		String pwd=req.getParameter("pwd");
		String realname=req.getParameter("realname");
		String gender=req.getParameter("gender");
		String email=req.getParameter("email");
		String age=req.getParameter("age");
//		User user=new User(uname, pwd, realname, gender,email, Integer.parseInt(age));
//		userDao.doRegister(user);
		req.getSession().setAttribute("msg", "注册成功，请登录");
		try {
			resp.sendRedirect(req.getContextPath()+"/login.jsp");
			return;
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void doUserLogout(HttpServletRequest req, HttpServletResponse resp) {
		req.getSession().invalidate();
		try {
			resp.sendRedirect(req.getContextPath()+"/login.jsp");
			return;
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void doUserLogin(HttpServletRequest req, HttpServletResponse resp) {
		String uname=req.getParameter("uname");
		String pwd=req.getParameter("pwd");
		User loginUser=userDao.doLogin(uname,pwd);
		System.out.println(loginUser);
		if(loginUser==null){
			try {
				req.getSession().setAttribute("msg", "用户名或密码错误，请重新登陆");
				resp.sendRedirect(req.getContextPath()+"/login.jsp");
				return;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			try {
				req.getSession().setAttribute("loginUser", loginUser);
				resp.sendRedirect(req.getContextPath()+"/index.jsp");
				return;
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

}
