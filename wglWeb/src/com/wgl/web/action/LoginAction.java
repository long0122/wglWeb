package com.wgl.web.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import com.opensymphony.xwork2.ModelDriven;
import com.wgl.web.action.basic.BasicAction;
import com.wgl.web.context.GlobalConstants;
import com.wgl.web.dao.interfaces.IUserDao;
import com.wgl.web.model.User;
import com.wgl.web.vo.LoginInfo;

/**
 * Login Action
 * 
 * @author Warren
 * 
 */
@Component("login")
@Scope("prototype")
public class LoginAction extends BasicAction implements ModelDriven {
	private LoginInfo loginInfo = new LoginInfo();
	private IUserDao userDao ;
	/**
	 * to index
	 */
	@Override
	public String execute() throws Exception {
		return "loginPage";
	}


	public String doLogin() throws Exception {
		User user = userDao.loadByCodePwd(loginInfo.getUsername(), loginInfo.getPassword());
		if(user!=null){
			request.getSession().setAttribute(GlobalConstants.SESSION_USER, user);
			return "indexAction";
		}else{
			return "loginPage";
		}
		
	}

	public String logout() throws Exception {
		request.getSession().removeAttribute(GlobalConstants.SESSION_USER);
		return "indexAction";
		
	}
	
	public Object getModel() {
		return loginInfo;
	}


	public LoginInfo getLoginInfo() {
		return loginInfo;
	}


	public void setLoginInfo(LoginInfo loginInfo) {
		this.loginInfo = loginInfo;
	}


	public IUserDao getUserDao() {
		return userDao;
	}

	@Resource
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	

}
