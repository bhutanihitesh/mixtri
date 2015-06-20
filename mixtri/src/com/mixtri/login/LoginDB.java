package com.mixtri.login;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mixtri.login.UserLoginBean;
import com.mixtri.database.*;

public class LoginDB {

	public ResultSet getLoginInfo(UserLoginBean userLoginBean) throws SQLException{
	
		ResultSet rs = null;
		DBConnection dbConnection = new DBConnection();
		dbConnection = dbConnection.getDBConnection();
	
	  //Code for Interaction with Database goes here with Query Retrival.
		
		//rs.getString(1);
		
		
		return rs;
	
   }

}
