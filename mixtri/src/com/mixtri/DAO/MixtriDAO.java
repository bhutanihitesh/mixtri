package com.mixtri.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.log4j.Logger;

import com.mixtri.login.LoginDB;
import com.mixtri.login.UserLoginBean;
import com.mixtri.signup.SignUpDB;
import com.mixtri.signup.UserSignUpBean;
import com.mixtri.tracks.TrackBean;
import com.mixtri.tracks.TrackDB;

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
		
		//If a valid GUID is return then setUsercreated = true; 		
		if(rs!=null){
			userSignUpBean.setUsercreated(true);
			log.debug("User created Successfully");
		}	
		else{

			userSignUpBean.setUsercreated(false);
			log.debug("Error createing user");
		}

		return userSignUpBean;
	}
	
	public List<TrackBean> getAllTracks(){
		
		//Later trackbeans will be set here from the resultset returned by TrackDB class
		TrackDB trackdb=new TrackDB();
		return trackdb.getAllTracks();
		
	}

}
