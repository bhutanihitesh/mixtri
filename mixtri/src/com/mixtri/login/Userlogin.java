package com.mixtri.login;

import java.sql.SQLException;

import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.FormParam;
import org.apache.log4j.Logger;
import com.mixtri.BusinessExceptions.ExceptionHttpStatusResolver;
import com.mixtri.DAO.MixtriDAO;
import com.mixtri.login.UserLoginBean;

// Plain old Java Object it does not extend as class or implements 
// an interface

// The class registers its methods for the HTTP GET request using the @GET annotation. 
// Using the @Produces annotation, it defines that it can deliver several MIME types,
// text, XML and HTML. 

// The browser requests per default the HTML MIME type.


@Path("/")
public class Userlogin{

	static Logger log = Logger.getLogger(Userlogin.class.getName());
  
@POST
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
@Path("/login")  
public String authenticate(@FormParam("username") String username, @FormParam("password")String password) {
	
	  //TODO: Encrypt password, Login Form Validations if the JS is turned off.
	  System.out.println("plain text Success "+username);
	  System.out.println("Password: "+password);
	  
	  UserLoginBean userLoginBean = new UserLoginBean();
	  String responseString=null;
	 try{ 
	  userLoginBean.setUsername(username);
	  userLoginBean.setPassword(password);
	  
	  MixtriDAO mixtriDAO = new MixtriDAO();
	  userLoginBean = mixtriDAO.retriveLoginInfo(userLoginBean);
	  
	  if(userLoginBean.isUsernameAuthenticated()){
	  
		  if(userLoginBean.isPasswordAuthenticated()){
			  responseString = userLoginBean.getUsername();
		  }
			  
		  else{
			   
			  responseString = "Hey!!! Seems like you got a wrong password. Please try again";
			}  
	  }else{
		   
		  
		  responseString = ("Hey!!! Thats not your correct username. Please try again");		  
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
	 
	 return responseString;
 }
	 
  
  // This method is called if XML is request
  /*@POST
  @Produces(MediaType.TEXT_XML)
  public String sayXMLHello() {
	System.out.println("in sayXMLHello");
    return "true";
  }

  // This method is called if HTML is request
  @GET
  @Produces(MediaType.TEXT_HTML)
  public String sayHtmlHello() {
	  System.out.println("In success");
    return "<html> " + "<title>" + "Hello Jersey" + "</title>"
        + "<body><h1>" + "Hello World...." + "</body></h1>" + "</html> ";
  }*/

} 