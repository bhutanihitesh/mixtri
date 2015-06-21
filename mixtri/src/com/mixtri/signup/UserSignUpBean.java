package com.mixtri.signup;

public class UserSignUpBean {
	
	private String username;
	private String emailId;
	private int    contact;
	private String password;
	private String salt;
	
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}
	private boolean isUsercreated;
	private String guid;
	
	public boolean isUsercreated() {
		return isUsercreated;
	}
	public void setUsercreated(boolean isUsercreated) {
		this.isUsercreated = isUsercreated;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
