package com.mixtri.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mixtri.login.*;
import com.mixtri.signup.*;

public class MixtriDAO {
	
	public UserLoginBean retriveLoginInfo(UserLoginBean userLoginBean){
		
		LoginDB loginDB = new LoginDB();
		ResultSet rs = null;
	try{
		rs = loginDB.getLoginInfo(userLoginBean);
		
		String usernameDB = rs.getString(1);
		String passwordDB = rs.getString(2);
		
		if(rs!=null && userLoginBean.getUsername().equalsIgnoreCase(usernameDB)){
			
			userLoginBean.setUsernameAuthenticated(true);
			
			if(userLoginBean.getPassword().equalsIgnoreCase(passwordDB)){
				userLoginBean.setPasswordAuthenticated(true);
			}
			
		}
		
	}catch(SQLException exp){
		
		System.out.println("SQL Exception Occured: "+exp);
	}catch(Exception exp){
		System.out.println("Exception Occured MixtriDAO: retriveLoginInfo "+exp);
	}
		return userLoginBean;
		
	}
	
	public UserSignUpBean setSignUpInfo(UserSignUpBean userSignUpBean){
		SignUpDB signUpDB = new SignUpDB();
		try {
			ResultSet rs=null;
			rs = signUpDB.createNewUser(userSignUpBean);
			rs.getInt(1);
			
			//If a valid ResultSet is return then setUsercreated = true; 		
			if(rs.getString(1)!=null)
				userSignUpBean.setUsercreated(true);
			else{
				
				userSignUpBean.setUsercreated(false);
			}
			
			
		} catch (SQLException exp) {
			System.out.println("SQL Exception Occured MixtriDAO: retriveLoginInfo: "+exp.getMessage());
		}catch (Exception exp) {
			System.out.println("Exception Occured MixtriDAO: retriveLoginInfo: "+exp.getMessage());
		}
		
		return userSignUpBean;
	}

}
