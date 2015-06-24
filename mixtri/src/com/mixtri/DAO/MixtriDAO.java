package com.mixtri.DAO;

import java.lang.reflect.Method;
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
        
		//*********** For Testing without DB*****************//
		  String usernameDB = "mixtri@gmail.com";
		  String passwordDB = "admin123";
		  
		  if(userLoginBean.getUsername().equalsIgnoreCase(usernameDB)){
			  
			  if(userLoginBean.getPassword().equals(passwordDB)){
				  userLoginBean.setUsernameAuthenticated(true);
	              userLoginBean.setPasswordAuthenticated(true);
	              userLoginBean.setDisplayName("DjMixtri");
			  }else{
				  userLoginBean.setUsernameAuthenticated(true);
				  userLoginBean.setPasswordAuthenticated(false);
			  }
              
              
		  }else{
			  userLoginBean.setUsernameAuthenticated(false);
		  }
		//**************************************************//
		
		/*String usernameDB = rs.getString("username");
		String passwordDB = rs.getString("password");
		String salt = rs.getString("salt");
		String displayName = rs.getString("display name");
		String pwdFromUI = userLoginBean.getPassword();

		SaltedMD5 saltedMD5 = new SaltedMD5();
		Method m = SaltedMD5.class.getDeclaredMethod("getSecurePassword");
		m.setAccessible(true);
		String hashedPassword = (String) m.invoke(saltedMD5, pwdFromUI,salt);

		if(rs!=null && userLoginBean.getUsername().equalsIgnoreCase(usernameDB)){

			userLoginBean.setUsernameAuthenticated(true);
			log.debug("Username Authenticated: "+usernameDB);

			if(hashedPassword.equals(passwordDB)){
				userLoginBean.setPasswordAuthenticated(true);
				userLoginBean.setDisplayName(displayName);
				log.debug("password authenticated");
			}

		}*/

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
			log.debug("Error creating user");
		}

		return userSignUpBean;
	}
	
	public List<TrackBean> getAllTracks(){
		
		//Later trackbeans will be set here from the resultset returned by TrackDB class
		TrackDB trackdb=new TrackDB();
		return trackdb.getAllTracks();
		
	}

}
