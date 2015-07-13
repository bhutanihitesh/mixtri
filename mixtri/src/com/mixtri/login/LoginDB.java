package com.mixtri.login;

import java.sql.ResultSet;
import org.apache.log4j.Logger;

import com.mixtri.login.UserLoginBean;
import com.mixtri.DAO.MixtriDAO;
import com.mixtri.database.*;

public class LoginDB {

	static Logger log = Logger.getLogger(LoginDB.class.getName());
	public ResultSet getLoginInfoDB(UserLoginBean userLoginBean){
		
		DBConnection dbConnection = new DBConnection();
		dbConnection = dbConnection.getDBConnection();
		ResultSet rs = null;

		try{
		
			
	  //Code for Interaction with Database goes here with Query Retrival.
		
		//rs.getString(1);
		
		System.out.println("Login Successful");
	}catch(Exception exp){
		 
		 log.error("Exception Occurred in fetching records: "+exp);
		 
	 }finally{
		 //TODO: Make sure you close DB Connection
		 
	 }
		
		return rs;
	
   }

}
