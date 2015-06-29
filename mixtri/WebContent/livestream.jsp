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
<link rel="stylesheet" href="assets/css//jquery-ui.css">
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

 				<div class="divided-section-header">
								<span class="event-steps">Step 1:</span>&nbsp;<span
									class="step-description">Enter Live Stream Info:</span>
			   </div>
 				
				<div class="row">
				  <div class="col-xs-12 col-sm-12 col-md-4">
						<div class="divided-section">
							<div class="form-components">

								<div class="form-group">
									<label>Live Stream Info<span style="color: #e62948">*</span></label>
									<input type="text" class="form-control inputLiveStreamInfo"
										id="streamInfo" required />
								</div>
								<div class="form-group">
									<div class="dateTimePicker">
										<label>Date:<span style="color: #e62948">*</span></label> <input
											id="eventDatePicker" type="text"
											class="form-control event-date-time" name="eventDate"
											value="" required />
									</div>
									<div class="dateTimePicker">
										<label>Event Start Time:<span style="color: #e62948">*</span></label>
										<input id="eventTimePicker" type="time"
											class="form-control event-date-time" name="eventTime"
											required />

									</div>


								</div>
								<div class="form-group">
									<div class="eventDropdown">
										<br> <label>Time Zone:<span style="color: #e62948">*</span></label> <select class="form-control">
											<option value="-12">(GMT -12:00) Eniwetok, Kwajalein</option>
											<option value="-11">(GMT -11:00) Midway Island,
												Samoa</option>
											<option value="-10">(GMT -10:00) Hawaii</option>
											<option value="-9">(GMT -9:00) Alaska</option>
											<option value="-8">(GMT -8:00) Pacific Time (US
												&amp; Canada)</option>
											<option value="-7">(GMT -7:00) Mountain Time (US
												&amp; Canada)</option>
											<option value="-6">(GMT -6:00) Central Time (US
												&amp; Canada), Mexico City</option>
											<option value="-5">(GMT -5:00) Eastern Time (US
												&amp; Canada), Bogota, Lima</option>
											<option value="-4.5">(GMT -4:30) Caracas</option>
											<option value="-4">(GMT -4:00) Atlantic Time
												(Canada), La Paz, Santiago</option>
											<option value="-3.5">(GMT -3:30) Newfoundland</option>
											<option value="-3">(GMT -3:00) Brazil, Buenos Aires,
												Georgetown</option>
											<option value="-2">(GMT -2:00) Mid-Atlantic</option>
											<option value="-1">(GMT -1:00 hour) Azores, Cape
												Verde Islands</option>
											<option value="0">(GMT) Western Europe Time, London,
												Lisbon, Casablanca, Greenwich</option>
											<option value="1">(GMT +1:00 hour) Brussels,
												Copenhagen, Madrid, Paris</option>
											<option value="2">(GMT +2:00) Kaliningrad, South
												Africa, Cairo</option>
											<option value="3">(GMT +3:00) Baghdad, Riyadh,
												Moscow, St. Petersburg</option>
											<option value="3.5">(GMT +3:30) Tehran</option>
											<option value="4">(GMT +4:00) Abu Dhabi, Muscat,
												Yerevan, Baku, Tbilisi</option>
											<option value="4.5">(GMT +4:30) Kabul</option>
											<option value="5">(GMT +5:00) Ekaterinburg,
												Islamabad, Karachi, Tashkent</option>
											<option value="5.5" selected="selected">(GMT +5:30)
												Mumbai, Kolkata, Chennai, New Delhi</option>
											<option value="5.75">(GMT +5:45) Kathmandu</option>
											<option value="6">(GMT +6:00) Almaty, Dhaka, Colombo</option>
											<option value="6.5">(GMT +6:30) Yangon, Cocos
												Islands</option>
											<option value="7">(GMT +7:00) Bangkok, Hanoi,
												Jakarta</option>
											<option value="8">(GMT +8:00) Beijing, Perth,
												Singapore, Hong Kong</option>
											<option value="9">(GMT +9:00) Tokyo, Seoul, Osaka,
												Sapporo, Yakutsk</option>
											<option value="9.5">(GMT +9:30) Adelaide, Darwin</option>
											<option value="10">(GMT +10:00) Eastern Australia,
												Guam, Vladivostok</option>
											<option value="11">(GMT +11:00) Magadan, Solomon
												Islands, New Caledonia</option>
											<option value="12">(GMT +12:00) Auckland,
												Wellington, Fiji, Kamchatka</option>
										</select>

									</div>
								</div>

								<!-- End Dropdown -->

							 <div id="streamButton">
						        <button id="goLive" type="button" class="btn streamActive" onClick="publicRoom()">Go Live!</button>
								<button id="testStream" type="button" class="btn btn-default" onClick="privateRoom()">Test Stream</button>
								<label style="font-size: small; color: graytext; margin-top: 10px;">* Select Test Stream to test your connection before live</label>
							</div>

							</div>
						</div>
					</div>
					<!-- First Column Finished -->

					<div class="col-xs-12 col-sm-12 col-md-4">
						<div class="form-group">
							<label for="comment">Event Description:</label>
							<textarea class="form-control" rows="5" id="eventDescription" placeholder="Something catchy to attract fans for your event!!!"></textarea>
						</div>

						<div>
							<div>
								<br> <label>Genre:</label>
								<select class="form-control">
								<option>Select Something...</option>
								</select>
							</div>
						</div>


					</div>
					
					<!-- Second Column Finished -->

					<div class="col-xs-12 col-sm-12 col-md-4">
						<div class="form-group">
							<div>
								<label>Image<span
									style="color: #e62948">*</span></label>
							</div>
							<div class="uploadImage">
								<img id="profile-pic" style="width: 194px; height: 104px;"/>
							</div>
							<div class="right">
								<button id="btnUploadImage" class="btn btn-default commonButton">Upload Image</button>
								<input id="file-upload" type="file" accept="image/*"/>
							</div>
						</div>
						
						<div class="hashTags">
						<div class="form-group">
							<label style="padding-top: 20px;">#HashTags/Keywords</label>
							<input type="text" class="form-control" placeholder="#Bollywood Electronic, #English, #Trance etc...">
						</div>
					</div>	
						
					</div>
					
					<!-- Third Coloumn finished -->
                    
				</div>
			
			<!-- This puts a border and divides a page -->
			<div class="djSignUpMsg"></div>	
			<!-- Step 2 starts -->
				<div class="divided-section-header">
								<span class="event-steps">Step 2:</span>&nbsp;<span
									class="step-description">Pick a streaming option:</span>
			   </div>
				
				        <div class="text-center">
				        		<button id="btnLiveStream" class="btn btn-default commonButton" style="width: 300px;">Setup Live Stream</button>
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
		
		
 
		$(document).ready(function() {
			
			//Go Live and Test Stream
			
			$('#testStream').click(function(e){
				e.preventDefault();
				$('#goLive').removeClass('btn streamActive');
				$('#goLive').addClass('btn btn-default');
				$('#testStream').removeClass('btn btn-default');
				$('#testStream').addClass('btn streamActive');
			});
			
			
			$('#goLive').click(function(e){
				e.preventDefault();
				$('#goLive').removeClass('btn btn-default');
				$('#goLive').addClass('btn streamActive');
				$('#testStream').removeClass('btn streamActive');
				$('#testStream').addClass('btn btn-default');
			});

			        //Sets the event date as system date
			        //Sets event time as 10 mins from system time
					var dt = new Date();
					var time = dt.getHours() + ":" + (dt.getMinutes() + 10);
					var currentTime = String(time);
					$('#eventTimePicker').val(currentTime);
					$("#eventDatePicker").datepicker().datepicker("setDate",new Date());
					$("#eventDatePicker").datepicker({
						minDate : -20,
						maxDate : "+1M +10D"
					});
					
					
 	
					//Upload Image on button click
					$('#btnUploadImage').click(function(e) {
								e.preventDefault();
								
								//clicks file upload input on click of the button.
								$("#file-upload").click();
								
								$("#file-upload").on('change', function() {
									readURL(this);
								});

								//readURL Function called

								var readURL = function(input) {
									if (input.files && input.files[0]) {
										var reader = new FileReader();

										reader.onload = function(e) {
											$('#profile-pic').attr('width','194px');
											$('#profile-pic').attr('height','104px');
											$('#profile-pic').attr('src',e.target.result);
										}

										reader.readAsDataURL(input.files[0]);
									}
								}

				  });

				});
	</script>
	<script>
		/*Place Your Google Analytics code here*/
	</script>
</body>
</html>