package com.ptl.pc.member.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ptl.pc.member.dao.MemberDao;
import com.ptl.pc.member.vo.Member;
import com.ptl.pc.util.PtlConstants;
import com.ptl.pc.util.PtlPage;

public class MemberServlet extends HttpServlet {
	private MemberDao memberDao = new MemberDao();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String operation = req.getParameter("operation");
		String method = req.getMethod().toLowerCase();
		if ("add".equals(operation) && "post".equals(method)) {
			doMemberAdd(req, resp);
		} else if ("show".equals(operation) && "get".equals(method)) {
			doMembershow(req, resp);
		} else if ("delete".equals(operation) && "get".equals(method)) {
			doMemberDelete(req, resp);
		} else if ("updateFirst".equals(operation) && "get".equals(method)) {
			doMemberUpdateFirst(req, resp);
		} else if ("updateSecond".equals(operation) && "post".equals(method)) {
			doMemberUpdateSecond(req, resp);
		} else if ("search".equals(operation) && "get".equals(method)) {
			doMemberSearch(req, resp);
		}else if("page".equals(operation)&&"get".equals(method)){
			doPage(req,resp);
		}
	}

	private void doPage(HttpServletRequest req, HttpServletResponse resp) {
		resetList(req,resp);
		
	}

	private void doMemberSearch(HttpServletRequest req, HttpServletResponse resp) {

	}

	private void doMemberUpdateSecond(HttpServletRequest req, HttpServletResponse resp) {
		Member member = (Member) req.getAttribute(PtlConstants.FORM_TO_BEAN);
		boolean count = memberDao.doUpdateByPk(member);
		if (count) {
			resetList(req, resp);
		}
	}

	private void doMemberUpdateFirst(HttpServletRequest req, HttpServletResponse resp) {
		String id = req.getParameter("id");
		Member updateMember = memberDao.doQueryByPk(id);
		if (updateMember != null) {
			req.setAttribute("updateMember", updateMember);
			try {
				req.getRequestDispatcher("/member/edit.jsp").forward(req, resp);
				return;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	private void doMemberDelete(HttpServletRequest req, HttpServletResponse resp) {
		String id = req.getParameter("id");
		boolean count = memberDao.doDelteByPk(id);
		if (count) {
			resetList(req, resp);
		}

	}

	private void doMembershow(HttpServletRequest req, HttpServletResponse resp) {
		resetList(req, resp);
	}

	private void doMemberAdd(HttpServletRequest req, HttpServletResponse resp) {
		Member addMember = (Member) req.getAttribute(PtlConstants.FORM_TO_BEAN);
		boolean count = memberDao.doAdd(addMember);
		if (count) {
			resetList(req, resp);
		}
	}

	/**
	 * 刷新出所有成员信息
	 * 
	 * @param req
	 * @param resp
	 */
	private void resetList(HttpServletRequest req, HttpServletResponse resp) {
//		Member searchMember = (Member) req.getSession().getAttribute("serachMember");
		// 获取当前用户输入的页码数和显示数量
		String num = req.getParameter("num");
		String size = req.getParameter("size");
		int rowCount = memberDao.doQueryRowCount();
		PtlPage<Member> page = new PtlPage<Member>(num, size, rowCount);
		req.setAttribute("page", page);
		memberDao.doQueryPage(page);
		// List list= memberDao.doQueryAll();
		req.setAttribute("page", page);
		try {
			req.getRequestDispatcher("/member/index.jsp").forward(req, resp);
			return;
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
