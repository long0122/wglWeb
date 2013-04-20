package com.wgl.web.vo;

/**
 * 登陆信息
 * @author warren
 *
 * 2012-1-25
 */
public class LoginInfo {
	
	private String username;
	
	private String password;
	
//	private String checkCode;
	
	public LoginInfo(){}



	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

//	public String getCheckCode() {
//		return checkCode;
//	}
//
//	public void setCheckCode(String checkCode) {
//		this.checkCode = checkCode;
//	}

}
