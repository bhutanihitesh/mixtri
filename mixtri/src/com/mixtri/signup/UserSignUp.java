package com.mixtri.signup;
import java.sql.SQLException;

import com.google.gson.Gson;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.jws.WebService;
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

@Path("/")
@WebService
public class UserSignUp{
	static Logger log = Logger.getLogger(UserSignUp.class.getName());
	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/signup")
	public String createUser(@FormParam("displayName") String displayName, @FormParam("emailId") String emailId,@FormParam("contact") String contact, 
			@FormParam("Signup_password")String Signup_password, @FormParam("confirm_password")String confirm_password){

		boolean isUserCreated = false;
		UserSignUpBean  userSignUpBean = new UserSignUpBean();

		Map<String,String> messages = new LinkedHashMap<String,String>();
		Gson gson = new Gson();
		String json;


		try{
			//Encrypting the password with MD5 and salting.

			if(displayName.isEmpty() || emailId.isEmpty() || contact.isEmpty() || Signup_password.isEmpty() || confirm_password.isEmpty()){
				messages.put("errors", "true");
				messages.put("Empty Field", "You cannot have an empty field. Please provide some value");
			}

			boolean isValidEmail = MixtriUtils.isValidEmailAddress(emailId);
			if(!isValidEmail){
				messages.put("errors", "true");
				messages.put("wrong emailId","Invalid Email Id");
			}

			boolean isValidPhoneNumber = MixtriUtils.isValidPhonenumber(contact);

			if(!isValidPhoneNumber){
				messages.put("errors", "true");
				messages.put("wrong phone number", "Invalid phone number format");
			}

			if(!(Signup_password.equals(confirm_password)) ){
				messages.put("errors", "true");
				messages.put("password mismatch","Confirm password don't match");
			}
			if(messages.isEmpty()){
				String hashedPassword = SaltedMD5.generateSecurePassword(Signup_password,userSignUpBean);

				userSignUpBean.setDisplayName(displayName);
				userSignUpBean.setEmailId(emailId);
				userSignUpBean.setPassword(hashedPassword);
				userSignUpBean.setContact(contact);

				MixtriDAO mixtriDAO = new MixtriDAO();
				userSignUpBean = mixtriDAO.setSignUpInfo(userSignUpBean);
				isUserCreated = userSignUpBean.isUsercreated();

				if(isUserCreated){
					messages.put("displayName",userSignUpBean.getDisplayName());
					json = gson.toJson(messages);
					return json;


				}
			}else{
				json = gson.toJson(messages);
				return json;
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
