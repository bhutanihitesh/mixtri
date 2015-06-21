package com.mixtri.login;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.mixtri.login.UserLoginBean;
import com.mixtri.DAO.MixtriDAO;
import com.mixtri.database.*;

public class LoginDB {

	static Logger log = Logger.getLogger(LoginDB.class.getName());
	public ResultSet getLoginInfo(UserLoginBean userLoginBean) throws SQLException{
	
		ResultSet rs = null;
		DBConnection dbConnection = new DBConnection();
		dbConnection = dbConnection.getDBConnection();
	
	  //Code for Interaction with Database goes here with Query Retrival.
		
		//rs.getString(1);
		
		
		return rs;
	
   }

}
