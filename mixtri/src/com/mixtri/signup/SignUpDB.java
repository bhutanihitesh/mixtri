package com.mixtri.signup;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.log4j.Logger;
import com.mixtri.database.DBConnection;
import java.util.UUID;


public class SignUpDB {

	static Logger log = Logger.getLogger(SignUpDB.class.getName());
	
	public ResultSet createNewUser(UserSignUpBean userSignUpBean) throws SQLException{
	
	DBConnection dbConnection = new DBConnection();
	dbConnection = dbConnection.getDBConnection();
	ResultSet rs=null;
	String username = userSignUpBean.getUsername();
	String password = userSignUpBean.getPassword();
	String salt =userSignUpBean.getSalt();
	int contact = userSignUpBean.getContact();
	final String uuid = UUID.randomUUID().toString().replaceAll("-", "");
	
	//Connect to DB and Insert the Record
	
	return rs;
	}

}
