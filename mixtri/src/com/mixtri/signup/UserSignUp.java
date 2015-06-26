package com.mixtri.signup;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.jws.WebService;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;

import com.mixtri.BusinessExceptions.ExceptionHttpStatusResolver;
import com.mixtri.DAO.MixtriDAO;
import com.mixtri.signup.UserSignUpBean;
import com.mixtri.utils.MixtriUtils;
import com.sun.xml.internal.messaging.saaj.packaging.mime.internet.InternetHeaders;

@Path("/")
@WebService
public class UserSignUp {
	static Logger log = Logger.getLogger(UserSignUp.class.getName());
	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Path("/signup")
	public String createUser(@FormParam("displayName") String displayName, @FormParam("emailId") String emailId,@FormParam("contact") String contact, 
			@FormParam("Signup_password")String Signup_password, @FormParam("confirm_password")String confirm_password){

		boolean isUserCreated = false;
		UserSignUpBean  userSignUpBean = new UserSignUpBean();
		String serverResponse;
		try{
			//Encrypting the password with MD5 and salting.
			
			if(displayName.isEmpty() || emailId.isEmpty() || contact.isEmpty() || Signup_password.isEmpty() || confirm_password.isEmpty()){
				
				serverResponse = "Empty Field";
				return serverResponse;
				
			}
			
			boolean isValidEmail = MixtriUtils.isValidEmailAddress(emailId);
			if(!isValidEmail){
				return serverResponse = "wrong emailId";
			}
			
			boolean isValidPhoneNumber = MixtriUtils.isValidPhonenumber(contact);
			
			if(!isValidPhoneNumber){
				return serverResponse = "wrong contact";
			}
			
			if(!(Signup_password.equals(confirm_password)) ){
				
				return serverResponse = "password mismatch";
			}

			String hashedPassword = SaltedMD5.generateSecurePassword(Signup_password,userSignUpBean);

			userSignUpBean.setDisplayName(displayName);
			userSignUpBean.setEmailId(emailId);
			userSignUpBean.setPassword(hashedPassword);
			userSignUpBean.setContact(contact);

			MixtriDAO mixtriDAO = new MixtriDAO();
			userSignUpBean = mixtriDAO.setSignUpInfo(userSignUpBean);
			isUserCreated = userSignUpBean.isUsercreated();

			if(isUserCreated){
				return userSignUpBean.getDisplayName();

			}   

		}catch(SQLException sqlExp){
			log.error("SQL Exception Occured createUser Method: "+sqlExp.getStackTrace());
			ExceptionHttpStatusResolver expHttpStatusResolver = new ExceptionHttpStatusResolver();
			expHttpStatusResolver.toResponse(sqlExp);

		}
		catch(Exception exp){ 
			log.error("Exception Occured UserSignup: CreateUser method: "+exp);
			ExceptionHttpStatusResolver expHttpStatusResolver = new ExceptionHttpStatusResolver();
			expHttpStatusResolver.toResponse(exp);
		}

		return null;
	}	

}
