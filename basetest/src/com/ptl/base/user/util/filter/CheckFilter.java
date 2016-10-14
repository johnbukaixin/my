package com.ptl.base.user.util.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CheckFilter implements Filter {

	@Override
	public void init(FilterConfig filterconfig) throws ServletException {

	}

	@Override
	public void doFilter(ServletRequest servletrequest, ServletResponse servletresponse, FilterChain filterchain) throws IOException, ServletException {
		servletrequest.setCharacterEncoding("utf-8");
		servletresponse.setContentType("text/html;charset=utf-8");
		servletresponse.setCharacterEncoding("utf-8");
		String content = servletrequest.getParameter("content");
		String[] contents = { "nnd", "sb", "法轮功" };
		boolean flag = false;
		if (content != null) {
			for (String string : contents) {
				if (content.contains(string)) {
					flag = true;
				}
			}
		}
		if (flag) {
			servletresponse.getWriter().print("被屏蔽了");
		} else {
			filterchain.doFilter(servletrequest, servletresponse);
		}
	}

	@Override
	public void destroy() {

	}

}
