package com.mixtri.signup;

import java.sql.Date;

public class UserSignUpBean {
	
	private String emailId;
	private String contact;
	private String password;
	private String salt;
	private boolean isUsercreated;
	private String guid;
	private String displayName;
	private Date createDate;
	
	
	
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
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
	public boolean isUsercreated() {
		return isUsercreated;
	}
	public void setUsercreated(boolean isUsercreated) {
		this.isUsercreated = isUsercreated;
	}
	
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
