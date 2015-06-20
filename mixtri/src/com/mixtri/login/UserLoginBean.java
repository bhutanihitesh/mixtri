package com.mixtri.login;

public class UserLoginBean {
   
	private String username;
    private String password;
	private boolean isUsernameAuthenticated;
	
	public boolean isUsernameAuthenticated() {
		return isUsernameAuthenticated;
	}
	public void setUsernameAuthenticated(boolean isUsernameAuthenticated) {
		this.isUsernameAuthenticated = isUsernameAuthenticated;
	}
	public boolean isPasswordAuthenticated() {
		return isPasswordAuthenticated;
	}
	public void setPasswordAuthenticated(boolean isPasswordAuthenticated) {
		this.isPasswordAuthenticated = isPasswordAuthenticated;
	}
	private boolean isPasswordAuthenticated;
	
    public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}    
	public String getUsername() {
    	return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
