package com.ptl.base.user.service;

import java.util.List;

import com.ptl.base.user.dao.UserDao;
import com.ptl.base.user.entity.User;

public class UserService {
    private UserDao userDao=new UserDao();
    
	public User doLogin(User user) {
		
		return userDao.login(user);
	}
	
	public List<User> doShow() {
		
		return userDao.doShow();
	}
	
	public boolean doDelete(String id) {
		
		return userDao.doDelete(id);
	}
	
	public boolean doEdit(User user) {
		
		return userDao.doEdit(user);
	}

	public User doEdit(String id) {
		
		return userDao.doEdit2(id);
	}

	public boolean doAdd(User user) {
		
		return userDao.doAdd(user);
	}

}
