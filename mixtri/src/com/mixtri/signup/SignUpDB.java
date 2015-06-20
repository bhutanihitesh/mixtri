package com.mixtri.signup;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mixtri.database.DBConnection;


public class SignUpDB {
	
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
