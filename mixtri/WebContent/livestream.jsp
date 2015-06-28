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
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="assets/css/prettyPhoto.css">
<link rel="stylesheet" type="text/css" href="assets/css/jquery.vegas.css">
<link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css//jquery-ui.css">
<link rel="stylesheet" href="assets/css/jquery.timepicker.css">
<!--<link rel="stylesheet" type="text/css" href="assets/css/blue.css">
<link rel="stylesheet" type="text/css" href="assets/css/orange.css">
<link rel="stylesheet" type="text/css" href="assets/css/red.css">
<link rel="stylesheet" type="text/css" href="assets/css/green.css">
<link rel="stylesheet" type="text/css" href="assets/css/purple.css">-->


<!-- <script defer src="assets/js/ajaxify.min.js"></script> -->


</head>
<body>



	<div id="header">
		<%@include file="header.jsp"%>
	</div>

	<div class="pageContentArea">
		<div class="container">
			<div class="djSignUpMsg">
				<div class="text-center font-size-large">
					<h2>Live Stream Setup</h2>
				</div>
				<div class="text-center" style="color: #e62948">
					<h4>Time to rock your fans!</h4>
				</div>
				<!-- End header -->
			</div>
			<!-- Start Step 1 -->
			<form id="event-form" role="form">



				<div class="divided-section">
					<div class="divided-section-header">
						<span class="event-steps">Step 1:</span>&nbsp;<span
							class="step-description">Enter Live Stream Info</span>
					</div>
				
             <div class="form-components">
				
				<div class="form-section">
					<label>Live Stream Info<span style="color:#e62948">*</span></label> 
					<input type="text" class="form-control inputLiveStreamInfo" id="streamInfo" required/>
				</div>
				<div class="form-section">
				<div class="dateTimePicker">
					<label>Date:<span style="color:#e62948">*</span></label>
					<input id="eventDatePicker" type="text" class="form-control event-date-time" name="eventDate" value="" required/>
			    </div>
			       <div class="dateTimePicker">	
					<label>Event Start Time:<span style="color:#e62948">*</span></label>
					<input id="eventTimePicker" type="time"  class="form-control event-date-time" name="eventTime" value= required/>
					
				</div>
				
				
						</div>
				
		</div>
               </div>

			</form>
		</div>

 </div>


	<!--=================================
	Footer
	=================================-->
	<footer id="footer">
		<%@include file="footer.jsp"%>
	</footer>
	<script>
	$(document).ready( function() {
		
		var dt = new Date();
		var time = dt.getHours() + ":" + (dt.getMinutes()+10);
		var currentTime = String(time);
		$('#eventTimePicker').val(currentTime);
		$("#eventDatePicker").datepicker().datepicker("setDate", new Date());
		$( "#eventDatePicker" ).datepicker({ minDate: -20, maxDate: "+1M +10D" });
		
		
	});
	</script>
	<script>
		/*Place Your Google Analytics code here*/
	</script>
</body>
</html>