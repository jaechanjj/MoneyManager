package com.chan.util;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {

	private static SqlSessionFactory factory;
	
	static {
		try {
			String resouce = "mapper/mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(resouce);
			factory = new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSession getSqlSession() {
		return factory.openSession();
	}
}
