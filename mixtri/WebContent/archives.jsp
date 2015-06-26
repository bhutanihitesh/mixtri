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

						<div class="row theHeaders">
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
	<footer id="footer">
<%@include file="footer.jsp" %>
</footer>
    <script>
	(function($){
			
			//alert('ready');
			$(document).ready(function(){
				
				$.ajax({
					type:"GET",
					url:"rest/tracks"
					
				}).done(function(data){
					console.log(data);
					buildHtmlForTracks(data);
				}).fail(function(error){
					console.log("Error");
					console.log(error);
				});
				
				
			});
			
			var buildHtmlForTracks=function(tracks){
				
				var html='';
				
				for(var i=0;i<tracks.length;i++){
					
					html+='<section id= audio-player'+tracks[i].trackId+' class="archive-audio-player">';
					html+='<div id="player-instance" class="jp-jplayer">'+'</div>';
					html+='<div class="container-Dj-tracks">';
					html+='<div class="row">';
					html+='<div class="Dj-tracks"> <ul> <li>';
					html+='<div><img src='+tracks[i].artistImageSrc+'></div>';
					html+='<div class="rock-player-controls"><div class="jp-play"></div><div class="jp-pause" style="display: none"></div></div>';
					html+='<div></div>'
					html+='<div class="track_popularity">'+buildPopularityHtml(tracks[i])+'</div></li></ul></div>';
					html+='<div class="player-status">';
					html+='<h5 class="audio-title">'+tracks[i].audioTitle+'</h5>';
					html+='<div class="audio-timer"><span class="current-time jp-current-time">00:00</span> / <span class="total-time jp-duration">'+tracks[i].totalTime+'</span></div>';
					html+='<div class="audio-progress"><div class="jp-seek-bar"><div class="audio-play-bar jp-play-bar" style="width: 20%;"></div></div></div></div>';
					html+='<div class="audio-list"><div class="jp-playlist"><ul class="mixes" id="mixes"><li data-title='+tracks[i].audioTitle+' data-artist='+tracks[i].artist+' data-mp3='+tracks[i].audioSrc+'></li></ul></div></div></div></div></section>';
                    
				
				}
				
				$('.theHeaders').append(html);
				
				
			}
			
			var buildPopularityHtml=function(track){
		
				var html='<ul>';
				var popCount=track.popularity;
				for(var i=0;i<10;i++){
					if(i<popCount)
						html+='<li class="active"></li>';
					else
						html+='<li class="inactive"></li>';
	
					
				}
				html+='</ul>';
				
				return html;
			}
			
		
	})(jQuery);
	</script>
	<script>/*Place Your Google Analytics code here*/</script>

</body>
</html>