package com.mixtri.signup;
import java.sql.SQLException;

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

@Path("/")
public class UserSignUp {
	static Logger log = Logger.getLogger(UserSignUp.class.getName());
	@POST
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/signup")
	public String createUser(@FormParam("username") String username, @FormParam("password")String password, @FormParam("email")String emailId, 
			@FormParam("contact") int contact){

		boolean isUserCreated = false;
		UserSignUpBean  userSignUpBean = new UserSignUpBean();
		try{
			//Encrypting the password with MD5 and salting.

			String hashedPassword = SaltedMD5.generateSecurePassword(password,userSignUpBean);

			userSignUpBean.setUsername(username);
			userSignUpBean.setPassword(hashedPassword);
			userSignUpBean.setEmailId(emailId);
			userSignUpBean.setContact(contact);

			MixtriDAO mixtriDAO = new MixtriDAO();
			userSignUpBean = mixtriDAO.setSignUpInfo(userSignUpBean);
			isUserCreated = userSignUpBean.isUsercreated();

			if(isUserCreated){
				return userSignUpBean.getUsername();

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
