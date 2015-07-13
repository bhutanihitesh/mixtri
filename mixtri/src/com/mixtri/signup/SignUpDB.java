package com.mixtri.signup;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.mixtri.database.DBConnection;

import java.sql.Date;


public class SignUpDB {

	static Logger log = Logger.getLogger(SignUpDB.class.getName());

	public ResultSet createNewUser(UserSignUpBean userSignUpBean){

		DBConnection dbConnection = new DBConnection();
		dbConnection = dbConnection.getDBConnection();
		ResultSet rs=null;

		try{

			String displayName =  userSignUpBean.getDisplayName();
			String emaiId = userSignUpBean.getEmailId();
			String contact = userSignUpBean.getContact();
			String password = userSignUpBean.getPassword();
			String salt =userSignUpBean.getSalt();
			Date createDate = userSignUpBean.getCreateDate();


			log.info("Record Created: "+displayName+" "+emaiId+" "+contact+" "+password+" "+salt);

			//final String uuid = UUID.randomUUID().toString().replaceAll("-", "");
			//TODO: Connect to DB and Insert the Record

			
		}catch(Exception exp){
			log.error("Exception Occured in fetching records: "+exp);
		}finally{
			//TODO: Close any DB connection
		}
		return rs;
	}

}
