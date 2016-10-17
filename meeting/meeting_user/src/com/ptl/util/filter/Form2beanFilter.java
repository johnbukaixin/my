package com.ptl.util.filter;

import java.io.IOException;
import java.lang.reflect.Field;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import ognl.Ognl;

import com.ptl.util.PtlConstants;

public class Form2beanFilter implements Filter {

	private FilterConfig filterConfig = null;

	@Override
	public void init(FilterConfig filterconfig) throws ServletException {
		this.filterConfig = filterconfig;

	}

	@Override
	public void doFilter(ServletRequest servletrequest, ServletResponse servletresponse, FilterChain filterchain) throws IOException, ServletException {
		// 通过反射获取
		// 获取前台隐藏域发过来的表单域参数form2bean,值为user
		String formtobean = servletrequest.getParameter(PtlConstants.FORM_TO_BEAN);
		if (formtobean != null) {
			//如果不空，获取初始化参数的类,这里表单域中的隐藏域中value值要与xml中初始化的param-value的值相等
			String className = this.filterConfig.getInitParameter(formtobean);
            try {
            	//获得这个类
				Class clazz=Class.forName(className);
				//通过空构造函数创建对象
				Object obj=clazz.getConstructor().newInstance();
				//获得对象声明的属性
				Field[] fields=clazz.getDeclaredFields();
				for (Field field : fields) {
					//获取属性的名字
					String name=field.getName();
					//获取属性的值
				    String value=servletrequest.getParameter(name);
				    //判断是否为空
				    if(value!=null){
				    	//不空通过Ognl设置值
				       Ognl.setValue(name, obj, value);
				    }
				}
				servletrequest.setAttribute(PtlConstants.FORM_TO_BEAN, obj);
			} catch (Exception e) {
				e.printStackTrace();
			}
            
		}
		filterchain.doFilter(servletrequest, servletresponse);
	}

	@Override
	public void destroy() {

	}

}
