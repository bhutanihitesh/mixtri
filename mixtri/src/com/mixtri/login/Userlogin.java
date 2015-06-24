package com.mixtri.login;

import java.sql.SQLException;

import javax.annotation.Resource;
import javax.jws.WebService;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Consumes;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.FormParam;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.handler.MessageContext;

import org.apache.log4j.Logger;

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
	//private WebServiceContext wsContext;
@Context private HttpServletRequest request;	
//@Resource	
@POST
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
@Path("/login")
public String authenticate(@FormParam("username") String username, @FormParam("password")String password) {
	
	/*MessageContext mc = wsContext.getMessageContext();    // Step 3
    HttpSession session = ((javax.servlet.http.HttpServletRequest)mc.get(MessageContext.SERVLET_REQUEST)).getSession();
    if (session == null)
       throw new WebServiceException("No HTTP Session found");*/ 
	
	  //TODO: Encrypt password, Login Form Validations if the JS is turned off.
	  
	  UserLoginBean userLoginBean = new UserLoginBean();
	  String serverResponse=null;
	  HttpSession session = request.getSession(true);
	 try{ 
	  userLoginBean.setUsername(username);
	  userLoginBean.setPassword(password);
	  
	  MixtriDAO mixtriDAO = new MixtriDAO();
	  userLoginBean = mixtriDAO.retriveLoginInfo(userLoginBean);
	  
	  if(userLoginBean.isUsernameAuthenticated()){
	  
		  if(userLoginBean.isPasswordAuthenticated()){
			  serverResponse = userLoginBean.getDisplayName();
			  session.setAttribute("displayname",serverResponse);
		  }
			  
		  else{
			   
			  
			  serverResponse = "wrong password";
			  
			}  
	  }else{
		    serverResponse = "wrong username";
		  	  		  
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
	 
	 return serverResponse;
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