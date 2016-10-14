package com.ptl.base.user.util;

import java.io.InputStream;
import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

/**
 * 
 * 配置文件必须放在src根目录
 * 
 * @author Administrator
 *
 */
public final class PtlDBUtil {

	//数据库的配置信息
	private static String className = "";
	private static String url = "";
	private static String user = "";
	private static String password = "";

	static {
		try {
			//开始解析配置文件
			SAXReader saxReader = new SAXReader();
			//以流的方式获取获取配置文件
			InputStream inputStream = PtlDBUtil.class.getClassLoader().getResourceAsStream("PtlDBUtil.xml");
			//开始解析配置文件
			Document document = saxReader.read(inputStream);
			//获取根节点
			Element rootElement = document.getRootElement();
			//获取要选择数据库的类型
			String databaseType = rootElement.elementText("database-type");
			//判断数据库类型是否为空
			if (databaseType != null) {
				//遍历出数据库的配置信息
				List<Element> elements = rootElement.elements("database");
				for (Element element : elements) {
					//判断数据库类型是否一致
					if (databaseType.equals(element.attributeValue("type"))) {
						//获取当前元素所有的子元素
						className = element.elementText("className");
						url = element.elementText("url");
						user = element.elementText("user");
						password = element.elementText("password");
					}
				}
				//使用静态代码块加载驱动
				Class.forName(className);
			} else {
				System.err.println("您的配置文件数据库类型【database-type】有误，请重新配置");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 创建JDBC连接
	 * @return
	 */
	public static Connection createConnection() {
		return createConnection(true);
	}

	/**
	 * 事务手动提交还是自动提交
	 * @param isAutoCommit
	 * @return
	 */
	public static Connection createConnection(boolean autoCommit) {
		//声明连接
		Connection connection = null;
		try {
			//获取连接
			connection = DriverManager.getConnection(url, user, password);
			//手动或者自动提交事务
			connection.setAutoCommit(autoCommit);
		} catch (SQLException e) {
			System.err.println("您的数据库详细配置有误url【" + url + "】user【" + user + "】password【" + password + "】");
			e.printStackTrace();
		}
		//返回连接
		return connection;
	}

	/**
	 * 获取发送器
	 * @param connection
	 * @return
	 */
	public static Statement createStatment(Connection connection) {
		Statement statement = null;
		try {
			statement = connection.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return statement;
	}

	/**
	 * 获取预处理发送器
	 * @param connection
	 * @param sql
	 * @return
	 */
	public static PreparedStatement createPreparedStatement(Connection connection, CharSequence sql) {
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = connection.prepareStatement(sql.toString());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return preparedStatement;
	}

	/**
	 * 关闭连接
	 * @param connection
	 */
	private static void closeConnection(Connection connection) {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 关闭发送器
	 * @param statement
	 */
	private static void closeStatement(Statement statement) {
		if (statement != null) {
			try {
				statement.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 关闭结果集
	 * @param resultSet
	 */
	private static void closeResultSet(ResultSet resultSet) {
		if (resultSet != null) {
			try {
				resultSet.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 关闭所有的连接
	 * @param connection
	 * @param statement
	 * @param resultSet
	 */
	public static void closeAll(Connection connection, Statement statement, ResultSet resultSet) {
		closeResultSet(resultSet);
		closeStatement(statement);
		closeConnection(connection);
	}

	/**
	 * 将结果集合里面的数据转存至对象
	 * @param resultSet
	 * @param clazz
	 * @return
	 */
	public static <T> T resultSet2bean(ResultSet resultSet, Class<T> clazz) {
		List<T> list = resultSet2list(resultSet, clazz);
		//返回数据
		if (list.size() == 0) {
			return null;
		} else {
			return list.get(0);
		}
	}

	/**
	 * 将结果集合里面的数据转存至list集合
	 * @param resultSet
	 * @param user
	 */
	public static <T> List<T> resultSet2list(ResultSet resultSet, Class<T> clazz) {
		//声明一个容器存放数据
		List<T> list = new ArrayList<T>();
		try {
			//获取本次查询的列
			ResultSetMetaData metaData = resultSet.getMetaData();
			//遍历结果集合
			while (resultSet.next()) {
				//创建对象
				T bean = clazz.getConstructor().newInstance();
				//遍历这些列并给对应的列设置属性
				for (int i = 0; i < metaData.getColumnCount(); i++) {
					//获取列的名字
					String fieldName = metaData.getColumnLabel(i + 1);
					//获取列对应的属性
					Field field = clazz.getDeclaredField(fieldName);
					/**代码容易出现类型不匹配的错误
						//获取属性对应的set方法的名字
						String setMethodName = "set" + fieldName.toUpperCase().substring(0, 1) + fieldName.substring(1);
						//获取属性对应的set方法
						Method method = clazz.getMethod(setMethodName, field.getType());
						//执行set方法
						method.invoke(bean, resultSet.getObject(fieldName));
					*/
					//使用OGNL表单时解决
					//					Ognl.setValue(fieldName, bean, resultSet.getObject(fieldName));
					//是用BeanUtil解决问题
					BeanUtils.setProperty(bean, fieldName, resultSet.getObject(fieldName));
				}
				//将bean添加到list
				list.add(bean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
