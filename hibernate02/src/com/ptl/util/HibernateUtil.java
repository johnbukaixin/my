package com.ptl.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
     private static SessionFactory sessionFactory;
     private static Session session;
     static{
    	 //读取核心配置文件
    	 Configuration configuration=new Configuration().configure();
    	 sessionFactory=configuration.buildSessionFactory();
    	 session=sessionFactory.openSession();
     }
     
     public static Session getSession(){
    	 return session;
     }
     
     public static SessionFactory getFactory(){
    	 return sessionFactory;
     }
     
     public static Transaction openTransaction(){
    	 return session.beginTransaction();
     }
     public static void close(){
    	 if(session!=null){
    		 session.close();
    	 }
    	 if(sessionFactory!=null){
    		 sessionFactory.close();
    	 }
     }
}
