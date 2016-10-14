package com.ptl.service;

import com.ptl.dao.TestDao;
import com.ptl.user.User;

public class TesLogin {
	private TestDao testDao = new TestDao();

	public void test() {
		testDao.testPrint();
	}

	public String doLogin(User user) {
		String msg=testDao.doLogin(user);
		return msg;
	}

}
