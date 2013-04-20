package com.wgl.web.test;

import java.sql.Timestamp;
import java.util.Date;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wgl.web.dao.interfaces.IMessageDao;
import com.wgl.web.dao.interfaces.IUserDao;
import com.wgl.web.model.Message;
import com.wgl.web.model.User;

public class DaoTest {
	private static BeanFactory factory;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		factory = new ClassPathXmlApplicationContext("beans.xml");
	}
	@Test
	public void testUserAdd() {
		IUserDao cDao = (IUserDao) factory
				.getBean("userDao");
		try {
			User entity = new User();
			entity.setNickname("Warren");
			entity.setPassword("2321601");
			entity.setUsername("long0122");
			cDao.add(entity);
				System.out.println("---ok");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	@Test
	public void testUserIsExist() {
		IUserDao cDao = (IUserDao) factory
				.getBean("userDao");
		try {
			boolean temp = cDao.isExist("long0122", "2321601");
				System.out.println("---"+temp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testMsgAdd() {
		IMessageDao mDao = (IMessageDao) factory
				.getBean("messageDao");
		try {
			Message entity = new Message();
			entity.setAuthor("test");
			entity.setContent("test");
			entity.setCreateTime(new Timestamp(new Date().getTime()));
			mDao.add(entity);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
