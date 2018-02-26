package com.great.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.great.javabean.ManagerLogin;

public class ToLoginAction {

	private String username;
	private String password;
	
	@Autowired
	private ManagerLogin login;

	public String execute()
	{
		if(username == null || password == null)
		{
			return "err";
		}else{
			if(username.equals(login.getUsername())&&password.equals(login.getPassword()))
			{
				return "success";
			}else{
				return "err";
			}
		}
		
	}
	
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

	public ManagerLogin getLogin() {
		return login;
	}

	public void setLogin(ManagerLogin login) {
		this.login = login;
	}
	
	
}
