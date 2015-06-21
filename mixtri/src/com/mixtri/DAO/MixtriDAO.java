package com.mixtri.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.mixtri.BusinessExceptions.BusinessException;
import com.mixtri.BusinessExceptions.ExceptionHttpStatusResolver;
import com.mixtri.login.*;
import com.mixtri.signup.*;

public class MixtriDAO {
	static Logger log = Logger.getLogger(MixtriDAO.class.getName());

	public UserLoginBean retriveLoginInfo(UserLoginBean userLoginBean) throws SQLException, Exception{

		LoginDB loginDB = new LoginDB();
		ResultSet rs = null;
		rs = loginDB.getLoginInfo(userLoginBean);

		String usernameDB = rs.getString(1);
		String passwordDB = rs.getString(2);

		/*String usernameDB = "djheeths@gmail.com";
		String passwordDB = "Cooper@85";*/

		if(rs!=null && userLoginBean.getUsername().equalsIgnoreCase(usernameDB)){

			userLoginBean.setUsernameAuthenticated(true);
			log.debug("User Authenticated: "+usernameDB);

			if(userLoginBean.getPassword().equals(passwordDB)){
				userLoginBean.setPasswordAuthenticated(true);
				log.debug("password is correct");
			}

		}

		return userLoginBean;
	}

	public UserSignUpBean setSignUpInfo(UserSignUpBean userSignUpBean) throws SQLException,Exception{
		SignUpDB signUpDB = new SignUpDB();

		ResultSet rs=null;
		rs = signUpDB.createNewUser(userSignUpBean);
		rs.getInt(1);

		//If a valid ResultSet is return then setUsercreated = true; 		
		if(rs.getString(1)!=null){
			userSignUpBean.setUsercreated(true);
			log.debug("User created Successfully");
		}	
		else{

			userSignUpBean.setUsercreated(false);
			log.debug("Error createing user");
		}

		return userSignUpBean;
	}

}
