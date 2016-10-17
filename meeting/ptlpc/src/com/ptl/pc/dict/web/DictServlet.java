package com.ptl.pc.dict.web;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.ptl.pc.dict.dao.DictDao;
import com.ptl.pc.dict.vo.Dict;

public class DictServlet extends HttpServlet {

	private DictDao dictDao=new DictDao();
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String operation=req.getParameter("operation");
         String method=req.getMethod().toLowerCase();
         if("load".equals(operation)&&"get".equals(method)){
        	 doDictLoad(req,resp);
         }else{
        	 System.out.println("您的操作"+operation+",方法"+method+"不存在");
         }
	}

	private void doDictLoad(HttpServletRequest req, HttpServletResponse resp) {
         String type=req.getParameter("type");
         List<Dict> list=dictDao.doLoad(type);   
         try {
			resp.getWriter().print(new Gson().toJson(list));
		} catch (IOException e) {
			e.printStackTrace();
		}
         
	}
}
