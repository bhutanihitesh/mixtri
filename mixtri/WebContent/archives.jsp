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
<meta name="viewport"
	content="minimum-scale=1.0, width=device-width, maximum-scale=1, user-scalable=no" />

<!--=================================
Style Sheets
=================================-->
<link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="assets/css/prettyPhoto.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/jquery.vegas.css">
<link rel="stylesheet" type="text/css"
	href="assets/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="assets/css/main.css">

<!--<link rel="stylesheet" type="text/css" href="assets/css/blue.css">
<link rel="stylesheet" type="text/css" href="assets/css/orange.css">
<link rel="stylesheet" type="text/css" href="assets/css/red.css">
<link rel="stylesheet" type="text/css" href="assets/css/green.css">
<link rel="stylesheet" type="text/css" href="assets/css/purple.css">-->


</head>
<body>

	<!--=================================
	Header
	=================================-->
	<header id="header">
	<%@include file="header.jsp" %>
	</header>


	<div class="pageContentArea">
		<!--=================================
      bread crums
      =================================-->
		<section class="breadcrumb">

			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6">
						<h1>Archived Mixes</h1>
					</div>

				</div>
				<div class="row">
					<div class="thumb">
						<span class="play"> <a href="#"> <img
								src="assets/img/news/1.jpg">
						</a>
						</span>
					</div>
					<div class="thumb">
						<a href="#"> <img src="assets/img/news/1.jpg">

						</a>
					</div>
					<div class="thumb">
						<span class="play"> <a href="#"> <img
								src="assets/img/news/1.jpg">
						</a>
						</span>
					</div>
					<div class="thumb">
						<span class="play"> <a href="#"> <img
								src="assets/img/news/1.jpg">
						</a>
						</span>
					</div>
					<div class="thumb">
						<span class="play"> <a href="#"> <img
								src="assets/img/news/1.jpg">
						</a>
						</span>
					</div>
					<div class="thumb">
						<span class="play"> <a href="#"> <img
								src="assets/img/news/1.jpg">
						</a>
						</span>
					</div>
					<div class="thumb">
						<span class="play"> <a href="#"> <img
								src="assets/img/news/1.jpg">
						</a>
						</span>
					</div>
					<div class="thumb">
						<span class="play"> <a href="#"> <img
								src="assets/img/news/1.jpg">
						</a>
						</span>
					</div>
					<div class="thumb">
						<span class="play"> <a href="#"> <img
								src="assets/img/news/1.jpg">
						</a>
						</span>
					</div>
					<div class="thumb">
						<span class="play"> <a href="#"> <img
								src="assets/img/news/1.jpg">
						</a>
						</span>
					</div>

				</div>

			</div>
		</section>

		<!-- ======= Rows for Archived Mixes start =======-->



		<div class="container">
			<div class="row">

				<div class="alltracks">
					<div class="col-lg-7 col-md-7 col-sm-7">
						<div class="row">
							<div class="album-tracks">
								<h1>tracks</h1>
							</div>
						</div>

						<div class="row">
							<div class="archivedTracks">
								<ul>
									<li class="track-head clearfix">
										<div>Artist</div>
										<div>Listen</div>
										<div style="padding-left: 30px">popularity</div>
										<div></div>



									</li>

								</ul>
							</div>
						</div>
						<!-- Dj-tracks Starts -->
						<!--=================================
						    	JPlayer (Audio Player)
						=================================-->
						<section id="audio-player" class="archive-audio-player">
						<div id="player-instance" class="jp-jplayer"></div>
							<div class="container-Dj-tracks">
								<div class="row">
									<div class="Dj-tracks">
										<ul>
											<li>
												<div>
													<img src="assets/img/artist/artist1.jpg">
												</div> 
												
												<div class="rock-player-controls">
													<div class="jp-play"></div>
													<div class="jp-pause" style="display: none"></div>
												</div>

												<div></div>
												<div class="track_popularity">
													<ul>

														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="inactive"></li>
														<li class="inactive"></li>
														<li class="inactive"></li>
													</ul>
												</div>

											</li>
										</ul>

									</div>


									<div class="player-status">
										<h5 class="audio-title">DJ Nyk(Artiist) - DJ Nyk Podcast 10</h5>
										<div class="audio-timer">
											<span class="current-time jp-current-time">01:02</span> / <span
												class="total-time jp-duration">4:05</span>
										</div>
										<div class="audio-progress">
											<div class="jp-seek-bar">
												<div class="audio-play-bar jp-play-bar" style="width: 20%;"></div>
											</div>
											<!--jp-seek-bar-->
										</div>
										<!--audio-progress-->
									</div>
									<!--player-status-->
									<div class="audio-list">
										<div class="jp-playlist">
											<!--Add Songs In mp3 formate here-->
											<ul class="mixes" id="mixes">
												<li data-title=""
													data-artist=""
													data-mp3="http://192.168.0.6/1234.ogg"></li>
											</ul>
											<!--Playlist ends-->
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- Dj-tracks Ends -->

						<!-- Dj-tracks Starts -->
						<!--=================================
							 JPlayer (Audio Player)
						=================================-->
						<section id="audio-player1" class="archive-audio-player">
						<div id="player-instance1" class="jp-jplayer"></div>
							<div class="container-Dj-tracks">
								<div class="row">
									<div class="Dj-tracks">
										<ul>
											<li>
												<div>
													<img src="assets/img/artist/artist1.jpg">
												</div> 
												<div class="rock-player-controls">
													<div class="jp-play"></div>
													<div class="jp-pause" style="display: none"></div>
												</div>

												<div></div>
												<div class="track_popularity">
													<ul>

														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="inactive"></li>
														<li class="inactive"></li>
														<li class="inactive"></li>
													</ul>
												</div>

											</li>
										</ul>

									</div>


									<div class="player-status">
										<h5 class="audio-title">Maroon 5 - Moves Like Jagger ft.
											Christina Aguilera</h5>
										<div class="audio-timer">
											<span class="current-time jp-current-time">01:02</span> / <span
												class="total-time jp-duration">4:05</span>
										</div>
										<div class="audio-progress">
											<div class="jp-seek-bar">
												<div class="audio-play-bar jp-play-bar" style="width: 20%;"></div>
											</div>
											<!--jp-seek-bar-->
										</div>
										<!--audio-progress-->
									</div>
									<!--player-status-->
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
						</section>
						<!--=================================
							JPlayer (Audio Player)
						=================================-->
												
						<section id="audio-player2" class="archive-audio-player">
						<div id="player-instance2" class="jp-jplayer"></div>
							<div class="container-Dj-tracks">
								<div class="row">
									<div class="Dj-tracks">
										<ul>
											<li>
												<div>
													<img src="assets/img/artist/artist1.jpg">
												</div> 
												<div class="rock-player-controls">
													<div class="jp-play"></div>
													<div class="jp-pause" style="display: none"></div>
												</div>

												<div></div>
												<div class="track_popularity">
													<ul>

														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="active"></li>
														<li class="inactive"></li>
														<li class="inactive"></li>
														<li class="inactive"></li>
													</ul>
												</div>

											</li>
										</ul>

									</div>


									<div class="player-status">
										<h5 class="audio-title">Maroon 5 - Moves Like Jagger ft.
											Christina Aguilera</h5>
										<div class="audio-timer">
											<span class="current-time jp-current-time">01:02</span> / <span
												class="total-time jp-duration">4:05</span>
										</div>
										<div class="audio-progress">
											<div class="jp-seek-bar">
												<div class="audio-play-bar jp-play-bar" style="width: 20%;"></div>
											</div>
											<!--jp-seek-bar-->
										</div>
										<!--audio-progress-->
									</div>
									<!--player-status-->
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
						</section>
						<!-- Dj-tracks Ends -->

						
						<!--artist tracks-->

						<div class="news-feed-btn">
							<ul>
								<li><a href="#"><b class="fa fa-angle-left"></b></a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#">...</a></li>
								<li><a href="#">15</a></li>
								<li><a href="#"><b class="fa fa-angle-right"></b></a></li>
							</ul>
						</div>
						<!--feed btn-->

					</div>
					
					<div class="djsignup">
						<div class="col-lg-3 col-md-3 col-sm-3">
							<ul class="sitemap">
								<li><a href="#">Featured <span class="fa fa-star"></span></a></li>
								<li><a href="#">Most Popular <span
										class="fa fa-smile-o"></span></a></li>
								<li><a href="#">My Djs <span class="fa fa-heart"></span></a></li>
							</ul>



						</div>
					</div>
					

					<!--\\artist col-->
				</div>
			</div>
			<!--row-->
		</div>
		<!--container-->


	</div>
	<!--=================================
	Footer
	=================================-->
	<div id="footer"></div>

	<!--=================================
Script Source
=================================-->

    <script src="assets/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.pack.js"></script>
	<script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script src="assets/js/jquery.mousewheel.min.js"></script>
	<script src="assets/js/jflickrfeed.min.js"></script>
	<script src="assets/js/jquery.flexslider-min.js"></script>
	<script src="assets/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script src="assets/js/tweetie.min.js"></script>
	<script src="assets/js/jquery.prettyPhoto.js"></script>
	<script src="assets/jPlayer/jquery.jplayer.min.js"></script>
	<script src="assets/jPlayer/add-on/jplayer.playlist.min.js"></script>
	<script src="assets/js/jquery.vegas.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
	<script src="assets/js/jquery.calendar-widget.js"></script>
	<script src="assets/js/isotope.js"></script>
	<script src="assets/js/main.js"></script>
    <script defer src="assets/js/jquery.cookie.js"></script>
    <script>
	(function($){
		
		$(document).ready(function(){
			
			//alert('ready');
			$(document).ready(function(){
				
				$.ajax({
					type:"GET",
					url:"rest/tracks"
					
				}).done(function(data){
					console.log(data);
				}).fail(function(error){
					console.log("Error");
					console.log(error);
				});
				
				
			});
			
		});
		
	})(jQuery);
	</script>
	<script>/*Place Your Google Analytics code here*/</script>

</body>
</html>