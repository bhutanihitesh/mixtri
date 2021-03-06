package com.mixtri.DAO;

import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.mixtri.login.LoginDB;
import com.mixtri.login.UserLoginBean;
import com.mixtri.signup.SignUpDB;
import com.mixtri.signup.UserSignUpBean;
import com.mixtri.tracks.TrackBean;
import com.mixtri.tracks.TrackDB;
import com.mixtri.uploader.UploaderBean;
import com.mixtri.uploader.UploaderDB;


public class MixtriDAO {
	static Logger log = Logger.getLogger(MixtriDAO.class.getName());

	public UserLoginBean retriveLoginInfoDAO(UserLoginBean userLoginBean) throws SQLException, Exception{

		LoginDB loginDB = new LoginDB();
		ResultSet rs = null;
		rs = loginDB.getLoginInfoDB(userLoginBean);
        
		//*********** For Testing without DB*****************//
		  String usernameDB = "mixtri@gmail.com";
		  String passwordDB = "admin123";
		  
		  if(userLoginBean.getEmailId().equalsIgnoreCase(usernameDB)){
			  
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

		if(rs!=null && userLoginBean.getEmailId().equalsIgnoreCase(usernameDB)){

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

	public UserSignUpBean setSignUpInfoDAO(UserSignUpBean userSignUpBean) throws SQLException,Exception{
		SignUpDB signUpDB = new SignUpDB();

		ResultSet rs=null;
		rs = signUpDB.createNewUserDB(userSignUpBean);

		//If a valid GUID is return then setUsercreated = true; 		
		if(rs==null){
			userSignUpBean.setUsercreated(true);
			log.debug("User created Successfully");
		}	
		else{

			userSignUpBean.setUsercreated(false);
			log.debug("Error creating user");
		}

		return userSignUpBean;
	}
	
	public List<TrackBean> getAllTracksDAO(){
		
		//Later trackbeans will be set here from the resultset returned by TrackDB class
		TrackDB trackdb=new TrackDB();
		return trackdb.getAllTracksDB();
		
	}
	
	public Map<String,String> getUserPastTracksInfoDAO(Map <String, File[]>filesList){
		Map<String,String> mapOrgNames;
		UploaderDB uploaderDB = new UploaderDB();
		log.debug("Get userPastTrackInfo");
		mapOrgNames = uploaderDB.getPastUploadedTracksDB(filesList);
		
		
		return mapOrgNames;
	}
	
	public boolean saveUploadedMixDAO(UploaderBean uploaderBean){
		boolean isSaved = false;
		log.debug("Inside saveUploadedMixDA: "+uploaderBean);
		UploaderDB uploaderDB = new UploaderDB();
		uploaderDB.saveUploadedMixDB(uploaderBean);
		
		return isSaved;
	}

}
