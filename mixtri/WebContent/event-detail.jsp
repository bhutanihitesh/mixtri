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

<!-- <script async  src="assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script defer  src="assets/js/jquery.js"></script>
<script defer  src="assets/js/ajaxify.min.js"></script>
 --></head>
<body>


<!--=================================
	Header
	=================================-->
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
      <div class="playListTrigger">
      	<a href="#"><i class="fa fa-list"></i></a>
      </div><!--triggerPlayList in responsive-->
      <div class="row">
        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
              <div id="player-instance" class="jp-jplayer"></div>
              <div class="controls">
                <div class="jp-prev"></div>
                <div  class="play-pause jp-play"></div>
                <div  class="play-pause jp-pause" style="display:none"></div>
                <div class="jp-next"></div>
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
            <div class="audio-list-icon"></div>
            <div class="jp-playlist"> 
              <!--Add Songs In mp3 formate here-->
              <ul class="hidden playlist-files">
                <li data-title="Maroon 5 - Moves Like Jagger" 
                                    	data-artist="ft. Christina" 
                                        data-mp3="http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3"></li>
                <li data-title="Coldplay - Princess Of China" 
                                    	data-artist="ft. Rihanna" 
                                        data-mp3="http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3"></li>
                <li data-title="Lorem Ipsum" 
                                    	data-artist="ft. Rocker" 
                                        data-mp3="http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3"></li>
                <li data-title="New Fish!!!" 
                                    	data-artist="ft. Jailer" 
                                        data-mp3="http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3"></li>
                <li data-title="I wanna grow" 
                                    	data-artist="ft. MeDon" 
                                        data-mp3="http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3"></li>
                <li data-title="do be do" 
                                    	data-artist="ft. scoby" 
                                        data-mp3="http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3"></li>
                <li data-title="We aint smart" 
                                    	data-artist="ft. SomeFool" 
                                        data-mp3="http://www.jplayer.org/audio/mp3/TSP-01-Cro_magnon_man.mp3"></li>
              </ul>
              <!--Playlist ends-->
              <h5>Audio Playlist</h5>
              <div class="audio-track">
                <ul>
                  <li></li>
                </ul>
              </div>
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
      <!--=================================
      bread crums
      =================================-->
        <section class="breadcrumb">
             <div class="container">
                  <div class="row">
                      <div class="col-lg-6 col-md-6 col-sm-6">
                          <h1>latest events</h1>
                          <h5>list of upcomming and previous events</h5>
                      </div>
                      
                      <div class="col-lg-6 col-md-6 col-sm-6">
                          <ul>
                              <li><a href="#">Home</a></li>
                              <li><a href="#">latest events</a></li>
                          </ul>
                      </div>
                  </div>
             </div>
        </section>
      <!--=================================
      videos
      =================================-->
      
      <section id="latest-events">
          <div class="container">
              <div class="row">
                      <div class="col-lg-4 col-md-4 col-sm-5">
                          <div class="event-feed latest">
                              <img src="assets/img/gallery/1.jpg" alt="">
                              <div class="date">
                                  <span class="day">24</span>
                                  <span class="month">AUG</span>
                              </div>
                              <h5>Linkin park live</h5>
                              <ul>
                                  <li><b class=" fa fa-location-arrow"></b> at PNC Bank Arts Center</li>
                                  <li><b class=" fa fa-clock-o"></b> 07:00 pm - 06:00 am</li>
                                  
                              </ul>
                              <a class="btn" href="#">Buy tickets</a>
                          </div><!--\\event-feed latest-->
                          
                          <h1>event location</h1>
                          
                          <div id="google-map1" class="xv-gmap event-map" data-theme="pink" data-address="kansas city" data-zoomlvl="13" data-maptype="HYBRID"></div>
                          
                      </div><!--//col-->
                      
                      <div class="col-lg-8 col-md-8 col-sm-7">
                          <div class="event-info">
                              <h3>Info about the event</h3>
                              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed nibh pharetra, congue lectus at, malesuada augue. Donec tincidunt faucibus lacus. Curabitur vitae euismod lectus. Vestibulum sagittis scelerisque tincidunt. Aliquam sit amet arcu felis. Ut posuere augue vitae velit rhoncus sodales. Vestibulum eleifend accumsan ligula ut ornare. Pellentesque iaculis sed mi dapibus volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vel nisi a neque euismod egestas id a massa. Maecenas vel est dolor.</p>
                              <p>Pellentesque cursus sit amet arcu a adipiscing. Curabitur feugiat enim id nibh facilisis tincidunt. Mauris sodales metus sit amet nisi laoreet hendrerit. Pellentesque consequat turpis et metus aliquet, at scelerisque ante bibendum. Duis condimentum quam at quam facilisis, eu sagittis tortor mattis. Aenean consequat iaculis odio id porta. Aenean lacus risus, varius eu orci nec, fringilla suscipit augue. Nunc porttitor lobortis ipsum, ut vestibulum nunc accumsan vel. Vestibulum sit amet tempor libero. Praesent ac arcu vitae lectus fermentum auctor. Pellentesque tristique ut neque non porta. Sed venenatis lacus ac lacus lobortis facilisis id sit amet lectus. Integer id metus sit amet tellus rhoncus sodales eget sit amet nisl.</p>
                              <p>Suspendisse sed urna condimentum, posuere orci et, mattis velit. Pellentesque in facilisis sem. Quisque nibh dolor, semper ac dictum in, dignissim a nisl. Phasellus vel sapien ut odio dapibus tincidunt. Suspendisse eu aliquam urna, id porttitor risus. Mauris ligula dui, elementum at enim in, blandit hendrerit nunc. Ut facilisis pulvinar lacinia. Curabitur at hendrerit libero. Fusce ornare tellus luctus lectus rutrum tempor. In tellus tellus, facilisis quis suscipit vel, scelerisque in sem.</p>
                              <p>Pellentesque cursus sit amet arcu a adipiscing. Curabitur feugiat enim id nibh facilisis tincidunt. Mauris sodales metus sit amet nisi laoreet hendrerit. Pellentesque consequat turpis et metus aliquet, at scelerisque ante bibendum. Duis condimentum quam at quam facilisis, eu sagittis tortor mattis. Aenean consequat iaculis odio id porta. Aenean lacus risus, varius eu orci nec, fringilla suscipit augue. Nunc porttitor lobortis ipsum, ut vestibulum nunc accumsan vel.</p>
                              <div class="video-feed">
                                  <img src="assets/img/videos/1.jpg" alt=""/>
                                  <a href="video-detail.jsp"><span class="fa fa-play"></span></a>
                                  <h6>1 week ago</h6>
                              </div><!--\\video-feed-->
                              
                               <div class="video-feed">
                                  <img src="assets/img/videos/1.jpg" alt=""/>
                                  <a href="video-detail.jsp"><span class="fa fa-play"></span></a>
                                  <h6>1 week ago</h6>
                              </div><!--\\video-feed-->
                          </div><!--//event-info-->
                      </div><!--//col-->
              </div><!--row-->
          </div><!--//container-->  
      </section>
	</div><!--pageContent-->
</div><!--ajaxwrap-->    
<!--=================================
	Latest blog
	=================================-->
<section id="latest-blog">
  <div class="container">
    <div class="row">
      <h1>latest from the blog</h1>
      <div class="col-lg-4 col-md-4 col-sm-4">
        <article class="blog-post"> <img src="assets/img/blog/1.jpg" alt=""/>
          <div class="hover"> <a href="blog-detail.jsp">
            <h2>Miguel to Muse: the week in music</h2>
            <p>'I use uncertainty as motivation and hopefully Rob uses it as motivation as...</p>
            <ul>
              <li>Admin</li>
              <li>5 hours ago</li>
              <li>2 Comments</li>
            </ul>
            </a> </div>
        </article>
      </div>
      <!--\\blog-post-->
      
      <div class="col-lg-4 col-md-4 col-sm-4">
        <article class="blog-post"> <img src="assets/img/blog/2.jpg" alt=""/>
          <div class="hover"> <a href="blog-detail.jsp">
            <h2>Kenny Chesney kicks off Austin’s country music</h2>
            <p>'I use uncertainty as motivation and hopefully Rob uses it as motivation as...</p>
            <ul>
              <li>Admin</li>
              <li>5 hours ago</li>
              <li>2 Comments</li>
            </ul>
            </a> </div>
        </article>
      </div>
      <!--\\blog-post-->
      
      <div class="col-lg-4 col-md-4 col-sm-4">
        <article class="blog-post"> <img src="assets/img/blog/3.jpg" alt=""/>
          <div class="hover"> <a href="blog-detail.jsp">
            <h2>CHRISTIAN REY - LIVE MUSIC</h2>
            <p>'I use uncertainty as motivation and hopefully Rob uses it as motivation as...</p>
            <ul>
              <li>Admin</li>
              <li>5 hours ago</li>
              <li>2 Comments</li>
            </ul>
            </a> </div>
        </article>
      </div>
      <!--\\blog-post--> 
      
    </div>
  </div>
</section>

<!--=================================
	Footer
	=================================-->
<footer id="footer">
<%@include file="footer.jsp" %>
</footer>
<!--=================================
Script Source
=================================--> 

<!-- <script defer  src="assets/js/bootstrap.min.js"></script>
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
 --><script>/*Place Your Google Analytics code here*/</script>

</body>
</html>
