package com.mixtri.signup;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.mixtri.database.DBConnection;
import com.mixtri.login.Userlogin;


public class SignUpDB {

	static Logger log = Logger.getLogger(SignUpDB.class.getName());
	
	public ResultSet createNewUser(UserSignUpBean userSignUpBean) throws SQLException{
	
	DBConnection dbConnection = new DBConnection();
	dbConnection = dbConnection.getDBConnection();
	ResultSet rs=null;
	
	
	userSignUpBean.getUsername();
	userSignUpBean.getPassword();
	userSignUpBean.getEmailId();
	userSignUpBean.getPassword();
	
	//Connect to DB and Insert Record
	return rs;
	}

}
