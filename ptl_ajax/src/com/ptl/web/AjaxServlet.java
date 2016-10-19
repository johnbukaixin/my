package com.ptl.web;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.ptl.dao.ClassDao;

import com.ptl.vo.Class1;
import com.ptl.vo.PtlPage;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class AjaxServlet extends HttpServlet {
	private ClassDao classDao = new ClassDao();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String operation = req.getParameter("operation");
		String method = req.getMethod().toLowerCase();
		if ("load".equals(operation) && "get".equals(method)) {
			doPage(req, resp);
		}

	}

	private void doPage(HttpServletRequest req, HttpServletResponse resp){
		try {
			req.setCharacterEncoding("utf-8");
			resp.setCharacterEncoding("utf-8");
			resp.setContentType("text/html;charset=utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		// 获取当前用户输入的页码数和显示数量
		String num = req.getParameter("num");
		String size = req.getParameter("size");
		int rowCount = classDao.doQueryRowCount();
		PtlPage<Class1> page = new PtlPage<Class1>(num, size, rowCount);
		classDao.doQueryPage(page);
		// List list= memberDao.doQueryAll();
		try {
		    resp.getWriter().print(new Gson().toJson(page));
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
