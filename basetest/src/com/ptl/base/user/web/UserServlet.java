package com.ptl.base.user.web;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import sun.awt.geom.AreaOp.AddOp;

import com.ptl.base.user.dao.UserDao;
import com.ptl.base.user.entity.User;
import com.ptl.base.user.service.UserService;
import com.ptl.base.user.util.PtlDBUtil;
import com.sun.jndi.url.corbaname.corbanameURLContextFactory;

public class UserServlet extends HttpServlet {
	private UserService userService = new UserService();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String operation = req.getParameter("operation");
		String method = req.getMethod().toLowerCase();
		if ("login".equals(operation) && "post".equals(method)) {
			doUserLogin(req, resp);
		} else if ("show".equals(operation) && "get".equals(method)) {
			doUserShow(req, resp);
		} else if ("check".equals(operation) && "get".equals(method)) {
			doCheck(req, resp);
		} else if ("delete".equals(operation) && "get".equals(method)) {
			delete(req, resp);
		} else if ("edit".equals(operation) && "get".equals(method)) {
			edit(req, resp);
		}else if("add".equals(operation)&&"post".equals(method)){
			add(req, resp);
		}else if("edit2".equals(operation)&&"post".equals(method)){
			edit2(req, resp);
		}
	}

	private void add(HttpServletRequest req, HttpServletResponse resp) {
		Class clazz = User.class;
		Field[] dfs = clazz.getDeclaredFields();
		try {
			User user = (User) clazz.getConstructor().newInstance();
			for (Field field : dfs) {
				String fieldName=field.getName();
				String fieldValue=req.getParameter(fieldName);
				if(fieldValue!=null){
				   BeanUtils.setProperty(user, fieldName, fieldValue);
				}
			}
			boolean flag=userService.doAdd(user);
			if(flag){
				doUserShow(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	private void edit(HttpServletRequest req, HttpServletResponse resp) {
		String id=req.getParameter("id");
		User user=userService.doEdit(id);
		if(user!=null){
			req.setAttribute("user", user);
			try {
				req.getRequestDispatcher("edit.jsp").forward(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			} 
		}
	}

	private void edit2(HttpServletRequest req, HttpServletResponse resp) {
		Class clazz = User.class;
		Field[] dfs = clazz.getDeclaredFields();
		try {
			User user = (User) clazz.getConstructor().newInstance();
			for (Field field : dfs) {
				String fieldName=field.getName();
				String fieldValue=req.getParameter(fieldName);
				if(fieldValue!=null){
				   String type=field.getType().toString().toLowerCase();
				   BeanUtils.setProperty(user, fieldName, fieldValue);
				}
			}
			boolean flag=userService.doEdit(user);
			if(flag){
				doUserShow(req, resp);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void delete(HttpServletRequest req, HttpServletResponse resp) {
		String id = req.getParameter("id");
		boolean flag = userService.doDelete(id);
		if (flag) {
			doUserShow(req, resp);
		}
	}

	private void doCheck(HttpServletRequest req, HttpServletResponse resp) {
		String content = req.getParameter("content");
		resp.setContentType("text/html;charset=utf-8");
		resp.setCharacterEncoding("utf-8");
		try {
			resp.getWriter().print(content);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void doUserShow(HttpServletRequest req, HttpServletResponse resp) {

		List<User> list = userService.doShow();
		req.getSession().setAttribute("list", list);
		try {
			resp.sendRedirect(req.getContextPath() + "/index.jsp");
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void doUserLogin(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		String uname = req.getParameter("uname");
		String pwd = req.getParameter("pwd");
		User user = new User(uname, pwd);
		User loginUser = userService.doLogin(user);
		if (loginUser != null) {
			req.getSession().setAttribute("loginUser", loginUser);
			resp.sendRedirect(req.getContextPath() + "/index.jsp");
		} else {
			resp.getWriter().print("Login error");
		}
	}
}
