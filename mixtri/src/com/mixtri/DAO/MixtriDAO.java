package com.mixtri.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.mixtri.login.UserLoginBean;
import com.mixtri.login.LoginDB;
import com.mixtri.signup.SignUpDB;
import com.mixtri.signup.UserSignUpBean;

public class MixtriDAO {
	
	public UserLoginBean retriveLoginInfo(UserLoginBean userLoginBean){
		
		LoginDB loginDB = new LoginDB();
		ResultSet rs = null;
	try{
		rs = loginDB.getLoginInfo(userLoginBean);
		
		if(rs!=null){
			userLoginBean.setUsername(rs.getString(1));
			userLoginBean.setpassword(rs.getString(2));
		}else{
			userLoginBean.setUsername(null);
			userLoginBean.setpassword(null);
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
