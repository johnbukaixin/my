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
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		String operation = req.getParameter("operation");
		String method = req.getMethod().toLowerCase();
		if ("load".equals(operation) && "get".equals(method)) {
			doPage(req, resp);
		} else if ("add".equals(operation) && "post".equals(method)) {
			doAdd(req, resp);
		} else if ("edit1".equals(operation) && "get".equals(method)) {
			doEdit1(req, resp);
		}else if ("edit2".equals(operation) && "post".equals(method)) {
			doEdit2(req, resp);
		}else if ("delete".equals(operation) && "get".equals(method)) {
			System.out.println("ssssssssss");
			doClassDelete(req, resp);
		}

	}

	private void doClassDelete(HttpServletRequest req, HttpServletResponse resp) {
        String id=req.getParameter("id");
        boolean count=classDao.doDelete(id);
        try {
			if (count) {
				resp.getWriter().print("{'msg':'删除成功'}");
			} else {
				resp.getWriter().print("{'msg':'删除失败'}");

			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void doEdit2(HttpServletRequest req, HttpServletResponse resp) {
		String name = req.getParameter("name");
		String manager = req.getParameter("manager");
		Integer num = Integer.parseInt(req.getParameter("num"));
		String id=req.getParameter("id");
		Class1 class1=new Class1();
		class1.setId(id);
		class1.setManager(manager);
		class1.setName(name);
		class1.setNum(num);
		boolean count=classDao.doEdit2(class1);
		try {
			if (count) {
				resp.getWriter().print("{'msg':'修改成功'}");
			} else {
				resp.getWriter().print("{'msg':'修改失败'}");

			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	private void doEdit1(HttpServletRequest req, HttpServletResponse resp) {
		String id = req.getParameter("id");
		Class1 class1 = classDao.doEdit1(id);
		if (class1 != null) {
			try {
				resp.getWriter().print(new Gson().toJson(class1));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	private void doAdd(HttpServletRequest req, HttpServletResponse resp) {
		String name = req.getParameter("name");
		String manager = req.getParameter("manager");
		Integer num = Integer.parseInt(req.getParameter("num"));
		Class1 class1 = new Class1(name, manager, num);
		boolean count = classDao.doAdd(class1);
		try {
			if (count) {
				resp.getWriter().print("{'msg':'插入成功'}");
			} else {
				resp.getWriter().print("{'msg':'插入失败'}");

			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void doPage(HttpServletRequest req, HttpServletResponse resp) {
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
