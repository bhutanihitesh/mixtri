package com.mixtri.login;

import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.jws.WebService;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.FormParam;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.handler.MessageContext;

import org.apache.log4j.Logger;

import com.google.gson.Gson;
import com.mixtri.BusinessExceptions.ExceptionHttpStatusResolver;
import com.mixtri.DAO.MixtriDAO;
import com.mixtri.login.UserLoginBean;

@WebService
@Path("/")
public class Userlogin{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	static Logger log = Logger.getLogger(Userlogin.class.getName());
	
@Context private HttpServletRequest request;	
//@Resource	
@POST
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
@Produces(MediaType.APPLICATION_JSON)
@Path("/login")
public String authenticate(@FormParam("emailId") String emailId, @FormParam("password")String password) {
	  
	  UserLoginBean userLoginBean = new UserLoginBean();
	  HttpSession session = request.getSession(true);
	  
	  Map<String,String> serverResponse = new LinkedHashMap<String,String>();
	  Gson gson = new Gson();
	  String json;
	  
	  
	 try{ 
	  userLoginBean.setEmailId(emailId);
	  userLoginBean.setPassword(password);
	  
	  MixtriDAO mixtriDAO = new MixtriDAO();
	  userLoginBean = mixtriDAO.retriveLoginInfoDAO(userLoginBean);
	  
	  if(!userLoginBean.getEmailId().isEmpty() && userLoginBean.isUsernameAuthenticated()){
	  
		  if(!userLoginBean.getPassword().isEmpty() && userLoginBean.isPasswordAuthenticated()){
			  //serverResponse = userLoginBean.getDisplayName();
			  serverResponse.put("displayName", userLoginBean.getDisplayName());
			  serverResponse.put("emailId", userLoginBean.getEmailId());
			  
			  session.setAttribute("displayname",serverResponse);
		  }
			  
		  else{
			  //serverResponse = "wrong password";
			  serverResponse.put("error", "wrong password");
			  log.debug("Invalid password");
			  
			}  
	  }else{
		    //serverResponse = "wrong emailId";
		  	serverResponse.put("error", "wrong emailId");
		    log.debug("Invalid emailId:");
		  	  		  
	  }
	}catch(SQLException sqlExp){
		log.error("SQL Exception Occured: "+sqlExp);
		ExceptionHttpStatusResolver expHttpStatusResolver = new ExceptionHttpStatusResolver();
		expHttpStatusResolver.toResponse(sqlExp);
		
	}
	 catch(Exception exp){ 
		 log.error("Exception Occured UserLogin: authenticate method: "+exp);
		ExceptionHttpStatusResolver expHttpStatusResolver = new ExceptionHttpStatusResolver();
		expHttpStatusResolver.toResponse(exp);
	}
	 
	 json = gson.toJson(serverResponse);
	 return json;
 }

} 