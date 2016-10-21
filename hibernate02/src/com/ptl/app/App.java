package com.ptl.app;

import java.sql.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Test;

import com.ptl.entity.user.User;
import com.ptl.util.HibernateUtil;

public class App {
	@Test
	public void testSave() {
       Session session=HibernateUtil.getSession();
       Transaction transaction=HibernateUtil.openTransaction();
       User user=new User();
       user.setGender("1");
       user.setUname("lisi");
       user.setPwd("1111");
       user.setBirthday(new Date(System.currentTimeMillis()));
       session.save(user);
       transaction.commit();
       HibernateUtil.close();
	}
	@Test
	public void testSearch(){
		Session session=HibernateUtil.getSession();
		User user=(User) session.load(User.class, 1);
		System.out.println(user);
		HibernateUtil.close();
	}
	@Test
	public void testDelete(){
		Session session=HibernateUtil.getSession();
		Transaction transaction=HibernateUtil.openTransaction();
		User user=(User) session.load(User.class, 10);
		session.delete(user);
		transaction.commit();
		HibernateUtil.close();
	}
	@Test
	public void testUpdate(){
		Session session=HibernateUtil.getSession();
	    Transaction transaction=HibernateUtil.openTransaction();
	    User user=(User) session.load(User.class, 9);
	    user.setUname("wangwu");
	    session.update(user);
	    transaction.commit();
	    HibernateUtil.close();
	}
}
