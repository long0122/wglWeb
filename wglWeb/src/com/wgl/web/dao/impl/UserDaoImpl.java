package com.wgl.web.dao.impl;

import java.util.List;

import org.springframework.stereotype.Component;

import com.wgl.web.dao.interfaces.IUserDao;
import com.wgl.web.model.User;

@Component("userDao")
public class UserDaoImpl extends BasicDaoImpl<User, String> implements IUserDao {

	public boolean checkUserExistsWithName(String username) {
		List<User> users = getHibernateTemplate().find(
				"from User u where u.username = '" + username + "'");
		if (users != null && users.size() > 0) {
			return true;
		}
		return false;
	}



	public User loadByUname(String name) {
		String hql = "from User u where u.username = '" + name.trim()+ "'";
		Object _user = getSession().createQuery(hql).uniqueResult();
		if(_user!=null){
			return (User)_user;
		}else{
			return null;
		}
	}



	public boolean isExist(String name, String password) {
		String hql = "from User u where u.username = '" + name
				+ "' and u.password = '" + password + "'";
		List<User> list = getHibernateTemplate().find(hql);
		if (list != null && list.size() > 0) {
			return true;
		}
		return false;
	}

	public User loadByCodePwd(String name, String password) {
		String hql = "from User u where u.username = '" + name
				+ "' and u.password = '" + password + "'";
		User user = (User) getSession().createQuery(hql).uniqueResult();
		return user;
	}


}
