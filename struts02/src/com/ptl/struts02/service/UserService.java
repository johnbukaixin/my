package com.ptl.struts02.service;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.ptl.struts02.dao.UserDao;
import com.ptl.struts02.user.User;
import com.sun.swing.internal.plaf.basic.resources.basic;

public class UserService {
	private UserDao userDao = new UserDao();

	/**
	 * 用户登录操作
	 * 
	 * @param user
	 * @return
	 */
	public boolean login(User user) {
		User loginUser = userDao.login(user);
		if (loginUser != null) {
			ActionContext ac = ActionContext.getContext();
			Map session = ac.getSession();
			session.put("loginUser", loginUser);
			return true;
		} else {
			ActionContext ac = ActionContext.getContext();
			Map session = ac.getSession();
			session.put("msg", "用户名或密码不正确");
		}
		return false;
	}

	/**
	 * 用户显示操作
	 * 
	 * @return
	 */
	public List<User> show() {
		List<User> userList = userDao.show();
		return userList;
	}

	public boolean register(User user) {
		boolean count = userDao.register(user);
		return count;
	}

	public boolean delete(User user) {
		boolean count = userDao.delete(user);
		return false;
	}

	public User edit1(User user) {
		User exUser = userDao.edit1(user);
		return exUser;
	}

	public boolean edit2(User user) {
        boolean count=userDao.edit2(user);
        return count;
	}
}