<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title></title>

<!--=================================
Meta tags
=================================-->
<meta name="description" content="">
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta name="viewport" content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" />
</head>
<body>



<!--=================================
	Header
	=================================-->
<header>
		<div class="social-links">
			<div class="container">
				<ul class="social">
					<li><a href="#"><span class="fa fa-facebook"></span></a></li>
					<li><a href="#"><span class="fa fa-twitter"></span></a></li>
					<li><a href="#"><span class="fa fa-pinterest"></span></a></li>
					<li><a href="#"><span class="fa fa-instagram"></span></a></li>
				</ul>
				<div id="loginUser" class = "login">
				        <ul>
		                     <li><a href="signup.jsp"><span class="fa fa-headphones"></span> Are you a Dj?</a></li>
		                     <li><a href="#signupbox" data-toggle="modal">Sign Up</a></li>
		                     <li><a href="#loginbox" data-toggle="modal">Login</a></li>
		                     
		                </ul>
				</div>
				<div id="welcomeUser" class ="login hidden">
				        <ul>
				             <li><a id="logout"href=#>Logout</a></li>
		                     <li><a href="livestream.jsp"><span class="fa fa-calendar"></span> Live Stream!</a></li>
		                     <li><a href="#"><span class="fa fa-upload"></span> Upload</a></li>
		                     <li><a id="displayname" href="#"></a></li>
		                     
		                </ul>
				</div>
			</div>
		</div>
		<nav class="navbar yamm navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle fa fa-navicon"></button>
					<a class="navbar-brand" href="index.jsp"> <img
						src="assets/img/basic/logo.png" alt="logo" />
					</a>
					<h5>India's first 24*7 Online Music Festival</h5>

				</div>

				<div class="nav_wrapper">
					<div class="nav_scroll">
						<div class="nav-search">
							<form>
								<input type="text" placeholder="Search a Favorite Dj or a Club" />
								<button type="submit">
									<i class="fa fa-search"></i>
								</button>
							</form>
						</div>

						<ul class="nav navbar-nav">
							<li class="active dropdown"><a href="archives.jsp">Archived
									Mixes<i class="fa fa-caret-right"></i>
							</a></li>
							<li class="yamm-fw dropdown"><a href="events.jsp">Upcoming
									Events <i class="fa fa-caret-right"></i>
							</a></li>
							<li class="dropdown"><a href="#">Blog <i
									class="fa fa-caret-right"></i></a></li>
							<li class="yamm-fw dropdown"><a href="mydjs.jsp">My Djs
									<i class="fa fa-caret-right"></i>
							</a></li>
							<li class="yamm-fw dropdown"><a href="#">Music Genres <i
									class="fa fa-caret-right"></i></a></li>
							<li><a href="contact.jsp">Contact</a></li>
						</ul>
					</div>

				</div>
			</div>

		</nav>
		
		
	   <!--  ==============================================
		  
		  Login-SignUp form Start
		    
		=================================================== -->
	<div id=loginModal>
        <div id="loginbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" >                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                    
                               <button type="button" class="close" data-dismiss="modal" aria-label="Close" onClick="$('#loginbox').hide();">
                               <span style="size: 10px;">x</span>
                               </button>
								
                       <div class="panel-title">Log in</div>
								<div style="float:right; font-size: 80%; position: relative; top:-10px">
								<button type="button"  onClick="$('#loginbox').hide(); $('#signupbox').show()" style="color: greenyellow; font-size: medium; border: none; background: none;">
								Sign Up</button></div>                        
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal"  role="form">
                            <div class="form-group" style="margin-left: 2px;">         
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                                        <div class="col-md-9" style="padding-left: 0px;">
                                        <input id="emailId" type="email" class="form-control" name="emailId" value="" placeholder="Email" required style="width: 403px;" required/>
                                        </div>                                         
                               </div>
                              </div>      
                                
                                 <div style="margin-bottom: 25px" class="input-group">
                                        
                                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                        <div class="col-md-9" style="padding-left: 0px;">
                                        <input id="password" type="password" class="form-control" name="password" placeholder="password" required minlength=3 maxlength=15/>
                                        </div>
                                    </div>
                                 
                               <div class="form-group">
                                    <div class="col-md-offset-3 col-md-9">
                                    <input type="submit" id="btnlogin" value="Login" class="btn btn-info" style=" width: 141px; padding-right: 20px;">
                                        
                                    </div>
                                </div>
                               
                            		  <div>
                                         <a href="#" style="color: #2a6496;">Forgot password?</a>
                                      </div>
                                      
                              </div>
                              

                                <div style="border-top: 1px solid #999; padding-top:30px"  class="form-group">
                                    
                                    <div class="col-md-offset-3 col-md-9" style="padding-left: 0px; padding-right: 0px;">
                                        <button id="btn-fbsignup" style="margin-bottom: 10px;" type="button" class="btn btn-primary"><i class="icon-facebook"></i>Log in with Facebook</button>
                                        <button id="btn-fbsignup" style="margin-bottom: 10px;" type="button" class="btn btn-danger"><i class="icon-facebook"></i>Log in with Google</button>
                                    </div>
                                    
                                    <div style="padding-left: 130px;">By signing in, you accept our <a href="#" style="color: #2a6496;">Terms of Use</a> 
                                    and <a href="aboutus.jsp" style="color: #2a6496;">Privacy Policy</a></div>                                           
                                        
                                </div>
  
                            </form>     



                        </div>                     
                    </div>  
        </div>
        <div id="signupbox" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onClick="$('#signupbox').hide();"><span style="size: 10px;">x</span></button>
                            <div class="panel-title">Time for a party!!!</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px;">
                            <button id="signinlink" onclick="$('#signupbox').hide(); $('#loginbox').show()" style=" color: greenyellow; font-size: medium; border: none; background: none;">Log in</button></div>
                        </div>  
                        <div class="panel-body" >
                            <form id="signupform" class="form-horizontal" role="form">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                              <div class="form-group" style="margin-left: 20px;">
                                
                                <div style="margin-bottom: 5px" class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <div class="col-md-6" style="padding-left: 0px;">
                                        <input type="text" id="displayName" class="form-control" name="name" placeholder="Dj's Display Name..." required/>
                                      </div>                                         
                               </div>
                                    </div>
                                    
                               <div class="form-group" style="margin-left: 20px;">
                                
                                <div style="margin-bottom: 5px" class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                        <div class="col-md-6" style="padding-left: 0px;">
                                        <input id="emailId" class="form-control" name="email" placeholder="Email Address" type="email" required/>
                                      </div>                                         
                               </div>
                              </div>
                              
                              <div class="form-group" style="margin-left: 20px;">
                                
                                <div style="margin-bottom: 5px" class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-mobile-phone"></i></span>
                                        <div class="col-md-6" style="padding-left: 0px;">
                                        <input id="contact" type="tel" pattern='[\+]\d{2}[\-]\d{10}' class="form-control" name="contact" placeholder="Fans can contact you for bookings" 
                                        data-toggle="tooltip" title="Please enter a valid phone number (Eg Format: +91-9999999999)" required/>
                                        
                                  </div>
                               </div>
                               <label>Please enter in this format: +91-9999999999</label>
                              </div>
                              
                              
                              
                              <div class="form-group" style="padding-top: 20px;padding-left: 35px;">
                                
                                <div style="margin-bottom: 5px" class="input-group">
                                     <span class="input-group-addon"><i class="fa fa-lock"></i></span>  
                                    <div class="col-md-11" style="padding-left: 0px;">
                                        <input id="Signup_password" type="password" class="form-control" name="Signup_password" placeholder="Password" minlength=3 required/>
                                    </div>
                                 
                                    
                                     <span class="input-group-addon"><i class="fa fa-lock"></i></span>  
                                    <div class="col-md-11" style="padding-left: 0px;">
                                        <input id="confirm_password" type="password" class="form-control" name="confirm_password" placeholder="Confirm Password" minlength=3 required/>
                                    </div>
                                 </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-offset-3 col-md-9">
                                       <input type="submit" id="btn-signup" value="Create account" class="btn btn-info" style="margin-left: 50px; size: 50px;">
                                    </div>
                                </div>
                                
                                <div style="border-top: 1px solid #999; padding-top:20px"  class="form-group">
                                    
                                    <div class="col-md-offset-3 col-md-9" style="padding-left: 0px; padding-right: 0px;">
                                        <button id="btn-fbsignup" style="margin-bottom: 10px;" type="button" class="btn btn-primary"><i class="icon-facebook"></i>Sign Up with Facebook</button>
                                        <button id="btn-fbsignup" style="margin-bottom: 10px;" type="button" class="btn btn-danger"><i class="icon-facebook"></i>Sign Up with Google</button>
                                    </div>
                                    
                                    <div style="padding-left: 150px;">By signing in, you accept our <a href="#" style="color: #2a6496;">Terms of Use</a> 
                                    and <a href="aboutus.jsp" style="color: #2a6496;">Privacy Policy</a></div>                                           
                                        
                                </div>
                                
                                
                                
                            </form>
                         </div>
                    </div>
               
                
         </div>
    </div>   
		
		<!-- =================================================
		
		Login signup form End
		
		====================================================== -->
	</header>


    <script async src="assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <!-- <script src="assets/js/jquery-1.11.1.min.js"></script> -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.js"></script> -->
    <script defer src="assets/js/jquery.mobile-1.4.5.min.js"></script>
	<script defer src="assets/js/ajaxify.min.js"></script>
    <script defer src="assets/js/bootstrap.min.js"></script>
	<script defer src="assets/js/jquery.easing-1.3.pack.js"></script>
	<script defer src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script defer src="assets/js/jquery.mousewheel.min.js"></script>
	<script defer src="assets/js/jflickrfeed.min.js"></script>
	<script defer src="assets/js/jquery.flexslider-min.js"></script>
	<script defer src="assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script defer src="assets/js/tweetie.min.js"></script>
	<script defer src="assets/js/jquery.prettyPhoto.js"></script>
	<script defer src="assets/jPlayer/jquery.jplayer.min.js"></script>
	<script defer src="assets/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<script defer src="assets/js/jquery.vegas.min.js"></script>
	<script defer src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script defer src="assets/js/jquery.calendar-widget.js"></script>
	<script defer src="assets/js/isotope.js"></script>
	<script defer src="assets/js/main.js"></script>
    <script defer src="assets/js/jquery.cookie.js"></script>
    <script>
   			 
    </script>
	<script>/*Place Your Google Analytics code here*/</script>

</body>
</html>