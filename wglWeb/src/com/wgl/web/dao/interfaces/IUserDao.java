package com.wgl.web.dao.interfaces;

import java.io.Serializable;

import com.wgl.web.model.User;

public interface IUserDao extends IBasicDao<User, Serializable> {

	/**
	 * 用户名是否重复
	 * 
	 * @param username
	 * @return
	 */
	public boolean checkUserExistsWithName(String username);

	/**
	 * 用户是否存在
	 * 
	 * @param name
	 * @param password
	 * @return
	 */
	public boolean isExist(String name, String password);

	/**
	 * 通过用户名查找
	 * 
	 * @param name
	 * @return
	 */
	public User loadByUname(String name);

	/**
	 * 用户是否存在
	 * 
	 * @param name
	 * @param password
	 * @return
	 */
	public User loadByCodePwd(String name, String password);

	
}
