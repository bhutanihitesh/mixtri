package com.mixtri.signup;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.mixtri.DAO.MixtriDAO;
import com.mixtri.signup.UserSignUpBean;

@Path("/")
public class UserSignUp {
	
	  @POST
	  @Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	  @Produces(MediaType.APPLICATION_JSON)
	  @Path("/signup")
	public String createUser(@FormParam("username") String username, @FormParam("password")String password, @FormParam("email")String emailId, 
			@FormParam("contact") int contact){
		  
		  boolean isUserCreated = false;
		  UserSignUpBean  userSignUpBean = new UserSignUpBean();
		 try{
		  userSignUpBean.setUsername(username);
		  userSignUpBean.setPassword(password);
		  userSignUpBean.setEmailId(emailId);
		  userSignUpBean.setContact(contact);
		  
		  MixtriDAO mixtriDAO = new MixtriDAO();
		  userSignUpBean = mixtriDAO.setSignUpInfo(userSignUpBean);
		  isUserCreated = userSignUpBean.isUsercreated();
		  
		  
		 }catch(Exception exp){
			 System.out.println("Error Occured UserSignUp: CreateUser: "+exp.getMessage());
		}
		 
		 if(isUserCreated)
			  return userSignUpBean.getUsername();
		  else{
			  return "error";
		  }
	}

}
