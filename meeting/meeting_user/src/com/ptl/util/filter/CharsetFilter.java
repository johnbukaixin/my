package com.ptl.util.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharsetFilter implements Filter {

	private FilterConfig filterConfig=null;
	@Override
	public void init(FilterConfig filterconfig) throws ServletException {
       this.filterConfig=filterconfig;
	}

	@Override
	public void doFilter(ServletRequest servletrequest, ServletResponse servletresponse, FilterChain filterchain) throws IOException, ServletException {
         String charset=filterConfig.getInitParameter("charset");
		 servletrequest.setCharacterEncoding(charset);
         servletresponse.setCharacterEncoding(charset);
         servletresponse.setContentType("text/html;charset="+charset);
         filterchain.doFilter(servletrequest, servletresponse);
	}

	@Override
	public void destroy() {

	}

}
