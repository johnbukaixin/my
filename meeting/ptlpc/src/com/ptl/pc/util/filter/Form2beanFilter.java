package com.ptl.pc.util.filter;

import java.io.IOException;
import java.lang.reflect.Field;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.converters.DateConverter;

import com.ptl.pc.util.PtlConstants;



public class Form2beanFilter implements Filter {
	//声明一个全局的filter的配置对象
	private FilterConfig filterConfig = null;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//获取是否需要进行表单的注入
		String form2bean = request.getParameter(PtlConstants.FORM_TO_BEAN);
		//判断
		if (form2bean != null) {
			try {
				//获取类的路径
				String className = this.filterConfig.getInitParameter(form2bean);
				//获取对应的类
				Class clazz = Class.forName(className);
				//根据类创建对象
				Object bean = clazz.getConstructor().newInstance();
				//获取对象的所有属性
				Field[] dfs = clazz.getDeclaredFields();
				//遍历属性
				for (Field field : dfs) {
					//获取属性的名字
					String fieldName = field.getName();
					//获取属性的值
					String fieldValue = request.getParameter(fieldName);
					//判断表单中是否有对应的值
					if (fieldValue != null) {
						//判断当前属性的数据类型
						String type = field.getType().toString().toLowerCase();
						//开始判断
						if (type.contains("date")) {
							//时间类型需要特殊处理
							DateConverter converter = new DateConverter();
							String[] patterns = { "yyyy-MM-dd", "yyyy-MM-dd hh:mm:ss" };
							converter.setPatterns(patterns);
							//转换并注入
							BeanUtils.setProperty(bean, fieldName, converter.convert(field.getType(), fieldValue));
						} else {
							//将值注入到对象
							BeanUtils.setProperty(bean, fieldName, fieldValue);
						}
					}
				}
				//通过作用域将值传给servlet
				request.setAttribute(PtlConstants.FORM_TO_BEAN, bean);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//继续后面的请求
		chain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

	@Override
	public void destroy() {

	}
}
