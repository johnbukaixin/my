package com.ptl.pc.area.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.ptl.pc.area.dao.AreaDao;
import com.ptl.pc.area.vo.Area;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class AreaServlet extends HttpServlet {
	private AreaDao areaDao=new AreaDao();
      @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          String operation=req.getParameter("operation");
          String method=req.getMethod().toLowerCase();
    	  if("load".equals(operation)&&"get".equals(method)){
    		  doAreaLoad(req,resp);
    	  }
     }

	private void doAreaLoad(HttpServletRequest req, HttpServletResponse resp) {
		String parentid=req.getParameter("parentid");
		System.out.println(parentid);
		List<Area> areaList=areaDao.doLoad(Integer.parseInt(parentid));
		try {
			resp.getWriter().print(new Gson().toJson(areaList));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
