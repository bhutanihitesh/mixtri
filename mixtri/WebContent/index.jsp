<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Mixtri-Home</title>

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


<!-- <script defer src="assets/js/ajaxify.min.js"></script> -->


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
	<div id="ajaxArea">
		<div class="pageContentArea">
			<!--=================================
      Home
      =================================-->
			<section id="home-slider">
				<div class="container">		
					<div class="home-inner">

						<div id="homeSliderNav" class="slider-nav">
							<a id="home-prev" href="#" class="prev fa fa-chevron-left"></a> <a
								id="home-next" href="#" class="next fa fa-chevron-right"></a>
						</div>
						<!--sliderNav-->

						<div id="flex-home" class="flexslider" data-animation="slide"
							data-animationSpeed="1000" data-autoPlay="true"
							data-slideshowSpeed="3000">
							<ul class="slides">
								<li><img src="assets/img/slider/slider.jpg" alt="">
									<div class="flex-caption">
										<h2>Live Djs from India and around the world</h2>
									</div></li>
								<li><img src="assets/img/slider/slider-1.jpg" alt="">
									<div class="flex-caption">
										<h2>Never ending music festival</h2>
									</div></li>
								<li><img src="assets/img/slider/slider-2.jpg" alt="">
									<div class="flex-caption">
										<h2>24*7 Bollywood, EDM, Trance and much more</h2>
									</div></li>
								<li><img src="assets/img/slider/slider-3.jpg" alt="">
									<div class="flex-caption">
										<h2>Party at your house with the best Djs</h2>
									</div></li>
								<li><img src="assets/img/slider/slider-4.jpg" alt="">
									<div class="flex-caption">
										<h2>Play live showcase your talent</h2>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</section>
			<!--=================================
      Upcoming events
      =================================-->

			<section id="upcomingEvents">

				<div class="container">
					<div class="container-all-live-djs">
						<h1>Live Djs</h1>
						<div class="row">

							<!--latest events-->

							<div class="col-lg-4 col-md-4 col-sm-4">
								<div class="container-live-dj">
									<div class="Live-Djs">

										<a href="#"><img src="assets/img/news/1.jpg" alt="dummy"></a>


									</div>

									<div class="Live-Djs-Content">

										<div class="Genre">Bollywood EDM</div>
										<div class="Dj-name">
											<a href="#">DJ NYK</a>
										</div>
										<div class="stream">
											<a href="#">DJ NYK Non Stop Podcast 10</a>
										</div>
										<div class="stream-description">2 hrs of non-stop Bolloywood EDM!!!</div>
											<div>
										<ul>
											<li class="Live-Djs-userIcon"><span class="fa fa-user"></span>
												4</li>
											<li class="Live-Djs-NowLive"><span class="fa fa-music"></span>
												Now Live!</li>
										</ul>
									</div>
									</div>
									
								</div>
							</div>
							<!--\\latest news-->

							<div class="col-lg-4 col-md-4 col-sm-4">
								<div class="container-live-dj">
									<div class="Live-Djs">

										<a href="#"><img src="assets/img/news/1.jpg" alt="dummy"></a>


									</div>

									<div class="Live-Djs-Content">

										<div class="Genre">Bollywood EDM</div>
										<div class="Dj-name">
											<a href="#">DJ NYK</a>
										</div>
										<div class="stream">
											<a href="#">DJ NYK Non Stop Podcast 10</a>
										</div>
										<div class="stream-description">2 hrs of non-stop
											Bolloywood EDM!!!</div>
									
									<div>
										<ul>
											<li class="Live-Djs-userIcon"><span class="fa fa-user">
													4</span></li>
											<li class="Live-Djs-NowLive"><span class="fa fa-music"></span>
												Now Live!</li>
										</ul>
									</div>
									</div>
								</div>
							</div>

							<div class="col-lg-4 col-md-4 col-sm-4">

								<div class="djsignup">

									<ul class="sitemap">
										<li><a href="signup.jsp">Are you a Dj? <span
												class="fa fa-headphones"></span></a></li>
										<li>Go Mobile <a href="#"><span class="fa fa-apple"></span></a>
											<a href="#"><span class="fa fa-android"></span></a></li>
										<li>Follow Us @ABC <a href="#"><span
												class="fa fa-facebook"></span></a><a href="#"> <span
												class="fa fa-twitter"></span></a></li>
									</ul>
								</div>
								<!--\\latest news-->
							</div>

						</div>
						<div class="row">

							<!--latest events-->

							<div class="col-lg-4 col-md-4 col-sm-4">
								<div class="container-live-dj">
									<div class="Live-Djs">

										<a href="#"><img src="assets/img/news/1.jpg" alt="dummy"></a>


									</div>

									<div class="Live-Djs-Content">

										<div class="Genre">Bollywood EDM</div>
										<div class="Dj-name">
											<a href="#">DJ NYK</a>
										</div>
										<div class="stream">
											<a href="#">DJ NYK Non Stop Podcast 10</a>
										</div>
										<div class="stream-description">2 hrs of non-stop
											Bolloywood EDM!!!</div>
											<div>
										<ul>
											<li class="Live-Djs-userIcon"><span class="fa fa-user"></span>
												4</li>
											<li class="Live-Djs-NowLive"><span class="fa fa-music"></span>
												Now Live!</li>
										</ul>
									</div>
									</div>
									
								</div>
							</div>
							<!--\\latest news-->

							<div class="col-lg-4 col-md-4 col-sm-4">
								<div class="container-live-dj">
									<div class="Live-Djs">

										<a href="#"><img src="assets/img/news/1.jpg" alt="dummy"></a>


									</div>

									<div class="Live-Djs-Content">

										<div class="Genre">Bollywood EDM</div>
										<div class="Dj-name">
											<a href="#">DJ NYK</a>
										</div>
										<div class="stream">
											<a href="#">DJ NYK Non Stop Podcast 10</a>
										</div>
										<div class="stream-description">2 hrs of non-stop
											Bolloywood EDM!!!</div>
											
											<div>
										<ul>
											<li class="Live-Djs-userIcon"><span class="fa fa-user">
													4</span></li>
											<li class="Live-Djs-NowLive"><span class="fa fa-music"></span>
												Now Live!</li>
										</ul>
									</div>
									</div>
									
								</div>
							</div>
						</div>
						<div class="row">

							<!--latest events-->

							<div class="col-lg-4 col-md-4 col-sm-4">
								<div class="container-live-dj">
									<div class="Live-Djs">

										<a href="#"><img src="assets/img/news/1.jpg" alt="dummy"></a>


									</div>

									<div class="Live-Djs-Content">

										<div class="Genre">Bollywood EDM</div>
										<div class="Dj-name">
											<a href="#">DJ NYK</a>
										</div>
										<div class="stream">
											<a href="#">DJ NYK Non Stop Podcast 10</a>
										</div>
										<div class="stream-description">2 hrs of non-stop
											Bolloywood EDM!!!</div>
											
											<div>
										<ul>
											<li class="Live-Djs-userIcon"><span class="fa fa-user"></span>
												4</li>
											<li class="Live-Djs-NowLive"><span class="fa fa-music"></span>
												Now Live!</li>
										</ul>
									</div>
									</div>
									
								</div>
							</div>
							<!--\\latest news-->

							<div class="col-lg-4 col-md-4 col-sm-4">
								<div class="container-live-dj">
									<div class="Live-Djs">

										<a href="#"><img src="assets/img/news/1.jpg" alt="dummy"></a>


									</div>

									<div class="Live-Djs-Content">

										<div class="Genre">Bollywood EDM</div>
										<div class="Dj-name">
											<a href="#">DJ NYK</a>
										</div>
										<div class="stream">
											<a href="#">DJ NYK Non Stop Podcast 10</a>
										</div>
										<div class="stream-description">2 hrs of non-stop
											Bolloywood EDM!!!</div>
											
											<div>
										<ul>
											<li class="Live-Djs-userIcon"><span class="fa fa-user">
													4</span></li>
											<li class="Live-Djs-NowLive"><span class="fa fa-music"></span>
												Now Live!</li>
										</ul>
									</div>
									</div>
									
								</div>
							</div>
						</div>
						<div class="row">

							<!--latest events-->

							<div class="col-lg-4 col-md-4 col-sm-4">
								<div class="container-live-dj">
									<div class="Live-Djs">

										<a href="#"><img src="assets/img/news/1.jpg" alt="dummy"></a>


									</div>

									<div class="Live-Djs-Content">

										<div class="Genre">Bollywood EDM</div>
										<div class="Dj-name">
											<a href="#">DJ NYK</a>
										</div>
										<div class="stream">
											<a href="#">DJ NYK Non Stop Podcast 10</a>
										</div>
										<div class="stream-description">2 hrs of non-stop
											Bolloywood EDM!!!</div>
											
											<div>
										<ul>
											<li class="Live-Djs-userIcon"><span class="fa fa-user"></span>
												4</li>
											<li class="Live-Djs-NowLive"><span class="fa fa-music"></span>
												Now Live!</li>
										</ul>
									</div>
									</div>
									
								</div>
							</div>
							<!--\\latest news-->

							<div class="col-lg-4 col-md-4 col-sm-4">
								<div class="container-live-dj">
									<div class="Live-Djs">

										<a href="#"><img src="assets/img/news/1.jpg" alt="dummy"></a>


									</div>

									<div class="Live-Djs-Content">

										<div class="Genre">Bollywood EDM</div>
										<div class="Dj-name">
											<a href="#">DJ NYK</a>
										</div>
										<div class="stream">
											<a href="#">DJ NYK Non Stop Podcast 10</a>
										</div>
										<div class="stream-description">2 hrs of non-stop
											Bolloywood EDM!!!</div>
											
											<div>
										<ul>
											<li class="Live-Djs-userIcon"><span class="fa fa-user">
													4</span></li>
											<li class="Live-Djs-NowLive"><span class="fa fa-music"></span>
												Now Live!</li>
										</ul>
									</div>
									</div>
									
								</div>
							</div>
						</div>
						<!-- row ends -->
					</div>
					<ul class="sitemap">
						<li><a href="events.jsp"><span class="fa fa-th"></span>
								See All</a></li>
					</ul>

				</div>
				<!-- Container -->
			</section>
		</div>
		<!--pageContent-->
	</div>
	<!--ajaxwrap-->

	<!--=================================
	Latest blog
	=================================-->
	<section id="latest-blog">
		<div class="container">
			<div class="row">
				<h1>latest from the blog</h1>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<article class="blog-post">
						<img src="assets/img/blog/1.jpg" alt="" />
						<div class="hover">
							<a href="blog-detail.jsp">
								<h2>Miguel to Muse: the week in music</h2>
								<p>'I use uncertainty as motivation and hopefully Rob uses
									it as motivation as...</p>
								<ul>
									<li>Admin</li>
									<li>5 hours ago</li>
									<li>2 Comments</li>
								</ul>
							</a>
						</div>
					</article>
				</div>
				<!--\\blog-post-->

				<div class="col-lg-4 col-md-4 col-sm-4">
					<article class="blog-post">
						<img src="assets/img/blog/2.jpg" alt="" />
						<div class="hover">
							<a href="blog-detail.jsp">
								<h2>Kenny Chesney kicks off Austin’s country music</h2>
								<p>'I use uncertainty as motivation and hopefully Rob uses
									it as motivation as...</p>
								<ul>
									<li>Admin</li>
									<li>5 hours ago</li>
									<li>2 Comments</li>
								</ul>
							</a>
						</div>
					</article>
				</div>
				<!--\\blog-post-->

				<div class="col-lg-4 col-md-4 col-sm-4">
					<article class="blog-post">
						<img src="assets/img/blog/3.jpg" alt="" />
						<div class="hover">
							<a href="blog-detail.jsp">
								<h2>CHRISTIAN REY - LIVE MUSIC</h2>
								<p>'I use uncertainty as motivation and hopefully Rob uses
									it as motivation as...</p>
								<ul>
									<li>Admin</li>
									<li>5 hours ago</li>
									<li>2 Comments</li>
								</ul>
							</a>
						</div>
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
</body>
</html>
