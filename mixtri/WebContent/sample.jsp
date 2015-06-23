<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>WeRock</title>

<!--=================================
Meta tags
=================================-->
<meta name="description" content="">
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta name="viewport" content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" />

<!--=================================
Style Sheets
=================================-->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="assets/css/prettyPhoto.css">
<link rel="stylesheet" type="text/css" href="assets/css/jquery.vegas.css">
<link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="assets/css/main.css">

<!--<link rel="stylesheet" type="text/css" href="assets/css/blue.css">
<link rel="stylesheet" type="text/css" href="assets/css/orange.css">
<link rel="stylesheet" type="text/css" href="assets/css/red.css">
<link rel="stylesheet" type="text/css" href="assets/css/green.css">
<link rel="stylesheet" type="text/css" href="assets/css/purple.css">-->

<script async  src="assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script defer  src="assets/js/jquery.js"></script>
<script defer  src="assets/js/ajaxify.min.js"></script>
</head>
<body>

<div id="header">
<%@include file="header.jsp" %>
</div>

<!--=================================
Vegas Slider Images
=================================-->

<ul class="vegas-slides hidden">
  <li><img data-fade='2000' src="assets/img/BG/bg1.jpg" alt="" /></li>
  <li><img data-fade='2000' src="assets/img/BG/bg2.jpg" alt="" /></li>
  <li><img data-fade='2000' src="assets/img/BG/bg3.jpg" alt="" /></li>
  <li><img data-fade='2000' src="assets/img/BG/bg4.jpg" alt="" /></li>
</ul>

<!--=================================
JPlayer (Audio Player)
=================================-->

<section id="audio-player">
  <div class="container">
    <div class="rock-player">
      <div class="row">
        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
              <div id="player-instance" class="jp-jplayer"></div>
              <div class="controls">
               
                <div  class="play-pause jp-play"></div>
                <div  class="play-pause jp-pause" style="display:none"></div>
              </div>
              <!--controls--> 
            </div>
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
              <div class="player-status">
                <h5 class="audio-title">Maroon 5 - Moves Like Jagger ft. Christina Aguilera</h5>
                <div class="audio-timer"><span class="current-time jp-current-time">01:02</span> / <span class="total-time jp-duration">4:05</span></div>
                <div class="audio-progress">
                  <div class="jp-seek-bar">
                    <div class="audio-play-bar jp-play-bar" style="width:20%;"></div>
                  </div>
                  <!--jp-seek-bar--> 
                </div>
                <!--audio-progress--> 
              </div>
              <!--player-status--> 
            </div>
            <!--column--> 
          </div>
          <!--inner-row--> 
        </div>
        <!--column-->
        
        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
          <div class="audio-list">
            <div class="jp-playlist"> 
              <!--Add Songs In mp3 formate here-->
              <ul class="hidden playlist-files">
                <li data-title="Maroon 5 - Moves Like Jagger" 
                                    	data-artist="ft. Christina" 
                                        data-mp3="http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3"></li>
              </ul>
              <!--Playlist ends-->              
            </div>
          </div>
        </div>
      </div>
      <!--row--> 
    </div>
  </div>
</section>

<div id="ajaxArea">
    <div class="pageContentArea">
  
                  <!-- Button to trigger modal -->
<a href="#" onclick="$('#loginbox').show();">Launch demo modal</a>

<div class="container">

<form id="loginform" class="form-horizontal" role="form" method="post" action="LoginServlet">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                                    </div>
                                 
                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                   <div class="col-sm-12 controls">
                                   <input type="submit" value="submit" class="btn btn-success">
                                      <!-- <a id="btn-login" href="#" class="btn btn-success">Login  </a> -->
                                      <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>

                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                            </form>  

</div>
 
<div class="container">
        <div id="loginbox" style="display: none;" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form" method="post" action="LoginServlet">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username" type="text" class="form-control" name="username" value="" placeholder="username or email">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="password" placeholder="password">
                                    </div>
                                 
                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                   <div class="col-sm-12 controls">
                                      <a id="btn-login" href="#" class="btn btn-success">Login  </a>
                                      <a id="btn-fblogin" href="#" class="btn btn-primary">Login with Facebook</a>

                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                            </form>     



                        </div>                     
                    </div>  
        </div>
        <div id="signupbox" style="display:none; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                        </div>  
                        <div class="panel-body" >
                            <form id="signupform" class="form-horizontal" role="form">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                                
                                  
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">Email</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="email" placeholder="Email Address">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">First Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="firstname" placeholder="First Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="lastname" class="col-md-3 control-label">Last Name</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="lastname" placeholder="Last Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Password</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="passwd" placeholder="Password">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="icode" class="col-md-3 control-label">Invitation Code</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="icode" placeholder="">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="button" class="btn btn-info"><i class="icon-hand-right"></i> &nbsp Sign Up</button>
                                        <span style="margin-left:8px;">or</span>  
                                    </div>
                                </div>
                                
                                <div style="border-top: 1px solid #999; padding-top:20px"  class="form-group">
                                    
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-fbsignup" type="button" class="btn btn-primary"><i class="icon-facebook"></i>   Sign Up with Facebook</button>
                                    </div>                                           
                                        
                                </div>
                                
                                
                                
                            </form>
                         </div>
                    </div>
               
                
         </div> 
    </div>   
    
  </div>
</div> 
<!--=================================
	Footer
	=================================-->
<footer id="footer">
<%@include file="footer.jsp" %>
</footer>


<!--=================================
Script Source
=================================--> 

<script defer  src="assets/js/bootstrap.min.js"></script>
<script defer  src="assets/js/jquery.easing-1.3.pack.js"></script>
<script defer  src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script> 
<script defer  src="assets/js/jquery.mousewheel.min.js"></script> 
<script defer  src="assets/js/jflickrfeed.min.js"></script> 
<script defer  src="assets/js/jquery.flexslider-min.js"></script> 
<script defer  src="assets/js/jquery.carouFredSel-6.2.1-packed.js"></script> 
<script defer  src="assets/js/tweetie.min.js"></script> 
<script defer  src="assets/js/jquery.prettyPhoto.js"></script> 
<script defer  src="assets/jPlayer/jquery.jplayer.min.js"></script> 
<script defer  src="assets/jPlayer/add-on/jplayer.playlist.min.js"></script> 
<script defer  src="assets/js/jquery.vegas.min.js"></script> 
<script defer  src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script> 
<script defer  src="assets/js/jquery.calendar-widget.js"></script> 
<script defer  src="assets/js/isotope.js"></script>
<script defer  src="assets/js/main.js"></script>   
<script defer src="assets/js/jquery.cookie.js"></script>
<script>/*Place Your Google Analytics code here*/</script>

</body>
</html>