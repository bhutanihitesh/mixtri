<!DOCTYPE html>
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Mixtri-Livestream</title>

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
					<div class="form-components">
						<div class="col-xs-12 col-sm-12 col-md-4">
							<!-- <div class="divided-section"> -->
							<div class="form-group">
								<label>Live Stream Info<span style="color: #e62948">*</span></label>
								<input type="text" class="form-control inputLiveStreamInfo"
									id="streamInfo" required />
							</div>
							<div class="form-group">
								<div class="dateTimePicker">
									<label>Date:<span style="color: #e62948">*</span></label> <input
										id="eventDatePicker" type="text"
										class="form-control event-date-time" name="eventDate" value=""
										required />
								</div>
								<div class="dateTimePicker">
									<label>Event Start Time:<span style="color: #e62948">*</span></label>
									<input id="eventTimePicker" type="time"
										class="form-control event-date-time" name="eventTime" required />

								</div>


							</div>
							<div class="form-group">
								<div class="eventDropdown">
									<br> <label>Time Zone:<span style="color: #e62948">*</span></label>
									<select class="form-control">
										<option value="-12">(GMT -12:00) Eniwetok, Kwajalein</option>
										<option value="-11">(GMT -11:00) Midway Island, Samoa</option>
										<option value="-10">(GMT -10:00) Hawaii</option>
										<option value="-9">(GMT -9:00) Alaska</option>
										<option value="-8">(GMT -8:00) Pacific Time (US &amp;
											Canada)</option>
										<option value="-7">(GMT -7:00) Mountain Time (US
											&amp; Canada)</option>
										<option value="-6">(GMT -6:00) Central Time (US &amp;
											Canada), Mexico City</option>
										<option value="-5">(GMT -5:00) Eastern Time (US &amp;
											Canada), Bogota, Lima</option>
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
										<option value="6.5">(GMT +6:30) Yangon, Cocos Islands</option>
										<option value="7">(GMT +7:00) Bangkok, Hanoi, Jakarta</option>
										<option value="8">(GMT +8:00) Beijing, Perth,
											Singapore, Hong Kong</option>
										<option value="9">(GMT +9:00) Tokyo, Seoul, Osaka,
											Sapporo, Yakutsk</option>
										<option value="9.5">(GMT +9:30) Adelaide, Darwin</option>
										<option value="10">(GMT +10:00) Eastern Australia,
											Guam, Vladivostok</option>
										<option value="11">(GMT +11:00) Magadan, Solomon
											Islands, New Caledonia</option>
										<option value="12">(GMT +12:00) Auckland, Wellington,
											Fiji, Kamchatka</option>
									</select>

								</div>
							</div>

							<!-- End Dropdown -->

							<div id="streamButton">
								<button id="goLive" type="button" class="btn streamActive"
									onClick="publicRoom()">Go Live!</button>
								<button id="testStream" type="button" class="btn btn-default"
									onClick="privateRoom()">Test Stream</button>
								<label
									style="font-size: small; color: graytext; margin-top: 10px;">*
									Select Test Stream to test your connection before live</label>
							</div>

							<!-- </div> -->
							<!-- </div> -->
						</div>
						<!-- First Column Finished -->

						<div class="col-xs-12 col-sm-12 col-md-4">
							<div class="form-group">
								<label for="comment">Event Description:</label>
								<textarea class="form-control" rows="5" id="eventDescription"
									placeholder="Something catchy to attract fans for your event!!!"></textarea>
							</div>

							<div>
								<div>
									<br> <label>Genre:</label> <select class="form-control">
										<option>Select Something...</option>
									</select>
								</div>
							</div>


						</div>

						<!-- Second Column Finished -->

						<div class="col-xs-12 col-sm-12 col-md-4">
							<div class="form-group">
								<div>
									<label>Image<span style="color: #e62948">*</span></label>
								</div>
								<div class="uploadImage">
									<img id="profile-pic" style="width: 194px; height: 104px;" />
								</div>
								<div class="right">
									<button id="btnUploadImage"
										class="btn btn-default commonButton">Upload Image</button>
									<input id="image-upload" type="file" accept="image/*" />
								</div>
								
							</div>
								
							<div class="hashTags">
								<div class="form-group">
									<label style="padding-top: 20px;">#HashTags/Keywords</label> <input
										type="text" class="form-control"
										placeholder="#Bollywood Electronic, #English, #Trance etc...">
								</div>
							</div>
							
						</div>

						<!-- Third Coloumn finished -->
					</div>
				</div>
				<!-- row finished -->
			</form>

			<!-- This puts a border and divides a page -->
			<div class="djSignUpMsg"></div>
			<!-- Step 2 starts -->
			<div class="divided-section-header">
				<span class="event-steps">Step 2:</span>&nbsp;<span
					class="step-description">Pick a streaming option:</span>
			</div>
			<!-- Streaming Option Col-1 -->
			<div id="panelrow" class="row">
				<!-- Streaming options column1 -->
				<div class="col-xs-12 col-sm-12 col-md-5">
					<div class="panel-group">
						<div id="panel-icecast"
							class="panel panel-primary pointer-cursor selected">
							<div class="panel-heading">
								<strong>ICECAST: </strong>Best streaming option for live audio
							</div>
							<div class="panel-body">
								<img class="panel-logo"
									src="assets/img/djsignup/icecast_logo.png">
								<p>
									Easiest of all; Icecast lets you stream live audio in minutes &
									can be used directly with <span class="wordMixtri">Traktor</span>
									and <span class="wordMixtri">VirtualDJ</span> or any other
									Icecast compatible DJ software. <a href="#">Learn how ></a>
								<p>
							</div>

						</div>

						<label></label>

						<div id="panel-recorded-mixes"
							class="panel panel-info pointer-cursor">
							<div class="panel-heading">
								<strong>RECORDED MIXES</strong>
							</div>
							<div class="panel-body">
								<img class="panel-logo" src="assets/img/djsignup/Music_logo.png">
								Wanna sit back and relax and yet want your fans to listen to
								your mixes? Just upload a recorded set and stream it live.
							</div>
						</div>
					</div>

				</div>
				<!-- Streaming options column 1 Ends -->

				<!-- Streaming options Column 2 Starts-->

				<div class="col-xs-12 col-sm-12 col-md-5" style="left: 100px">
					<div class="panel-group">

						<div id="panel-directinput"
							class="panel panel-info pointer-cursor">
							<div class="panel-heading">
								<strong>DIRECT INPUT</strong>
							</div>
							<div class="panel-body">
								<img src="assets/img/djsignup/DirectInput_logo.png"
									style="height: 100px; width: 70px; float: left;">
								Directly plugin your mixer's/hardware sound output to your
								computer's microphone input and you are done. <a href="#">Learn
									how ></a>
							</div>

						</div>
						<label></label>
						<div id="panel-flash-media"
							class="panel panel-info pointer-cursor">
							<div class="panel-heading">
								<strong>FLASH MEDIA LIVE ENCODER</strong>
							</div>
							<div class="panel-body">
								<img class="panel-logo"
									src="assets/img/djsignup/flash_Media_logo.png"> Wanna get
								more close to your fans? Now you can stream your live video at
								multiple angles synced up with your audio using flash media
								encoder. <br>
								<a href="#">Learn how ></a>
							</div>
						</div>
					</div>

				</div>

				<!-- Streaming options Col 2 ends -->
			</div>
			<!--  Streaming Option row Ends -->
			<div id="uploadedMixes">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-5">

						<div id="panel-past-mixes" class="panel panel-default" style="margin-top: 10px; margin-left: 10px;">
							<div class="panel-heading">
								<strong>CHOOSE FROM YOUR PREVIOUS RECORDED MIXES</strong>
							</div>
							<div class="panel-body" style="max-height: 300px; overflow-y: scroll;">
								<div id="pastMix-1" class="audioControls">
									<label>Dj NYK - Podcast 1</label>
									<audio controls>
										<source src="assets/audio/2.mp3" type="audio/mpeg">
									</audio>
								</div>
								<div id="pastMix-2" class="audioControls">
									<label>Dj NYK - Podcast 2</label>
									<audio controls>
										<source src="assets/audio/2.mp3" type="audio/mpeg">
									</audio>
								</div>
								<div id="pastMix-3" class="audioControls">
									<label>Dj NYK - Podcast 3</label>
									<audio controls>
										<source src="assets/audio/2.mp3" type="audio/mpeg">
									</audio>
								</div>
								<div id="pastMix-4" class="audioControls">
									<label>Dj NYK - Podcast 4</label>
									<audio controls>
										<source src="assets/audio/2.mp3" type="audio/mpeg">
									</audio>
								</div>
								<div id="pastMix-5" class="audioControls">
									<label>Dj NYK - Podcast 5</label>
									<audio controls>
										<source src="assets/audio/2.mp3" type="audio/mpeg">
									</audio>
								</div>
								<div id="pastMix-6" class="audioControls">
									<label>Dj NYK - Podcast 6</label>
									<audio controls>
										<source src="assets/audio/2.mp3" type="audio/mpeg">
									</audio>
								</div>
								


							</div>

						</div>

					</div>

					<div class="col-xs-12 col-sm-12 col-md-5">
													
							<div><h4 class="text-center">Upload A Recorded Mix!</h4></div>
						
						<div class="section-recorded-mixes" style="float: right;">
						<div style="color: #e62948;"><h4 id="selectedMixName">Selected Mix: None</h4></div>
							<form id="recorded-mixes-form" role="form">
								<div class="form-component">
									<div class="form-group">

										<label>Mix Title<span style="color: #e62948">*</span></label>
										<input type="text" class="form-control inputLiveStreamInfo"
											id="mix-title" required />
									</div>

									<div>
										<label>Genre:</label> <select class="form-control">
											<option>Select Something...</option>
										</select>

									</div>

									<div>
									
										<button id="btnUploadMix"
											class="btn btn-default commonButton" onclick="$('#fileupload').click()">Upload Mix!</button>
										<input id="fileupload" type="file" name="uploadFile" accept="audio/*"/>
										<label>&nbsp;Choose Mix<span style="color: #e62948">*</span></label>
										<label style="color: graytext;">Max size 140 MB, only .mp3</label>

										<div id="progress-div">
										<div id="progress-bar"></div>
										</div>
										
										<div id="maxFileSizeError" class="alert-error hidden">
												Please upload file less than 140 MB.
										</div>
										
										<div id="invalid-mp3-file" class ="alert-error hidden">
											  Please upload only mp3 files.
										</div>

									</div>

									<div style="float: left;">
										<button id="btnSaveSet" class="btn btn-default commonButton"
											style="width: 200px;">Save</button>
									</div>

								</div>
							</form>

						</div>

					</div>

				</div>
				
				
			</div>
			
				<div class="text-center">
					<button id="btnLiveStream" class="btn btn-default commonButton"
						style="width: 300px;">Setup Live Stream</button>
				</div>
			
		</div>


		<!--=================================
	Footer
	=================================-->
	<footer id="footer">
		<%@include file="footer.jsp"%>
	</footer>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script> 
	 <script src="assets/js/jquery.ui.widget.js"></script>
	<script src="assets/js/jquery.iframe-transport.js"></script>
	<script src="assets/js/jquery.fileupload.js"></script> -->
	<script>
		
$(document).ready(function() {
			
			//Go Live and Test Stream buttons
			
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
								$("#image-upload").click();
								
								$("#image-upload").on('change', function() {
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
					
					
			//Upload Recorded Mix button
			//This code uploads the file using ajax at client side and Jersey upload at the server side.
				$("#fileupload").on('change',function(e){
					e.preventDefault();
					var file = $('input[name="uploadFile"').get(0).files[0];
					var data = new FormData();
					data.append('uploadFile', file);
					
					if(file.size>140000000){
						
						$('#maxFileSizeError').removeClass('hidden');
						return false;
						
					}
					
					if(file.type!='audio/mp3'){
						$('#invalid-mp3-file').removeClass('hidden');
						return false;
					}
					
					
					$.ajax({
						
						/* uploadProgress: function (event, position, total, percentComplete){
				        	alert('In Progress function');
		                    $("#progress-bar").width(percentComplete + '%');
		                    $("#progress-bar").html('<div id="progress-status">' + percentComplete +' %</div>')
		                },
				         */
						
						method: 'POST',
						url: '/mixtri/rest/upload',
						data: data,
				       	contentType: false,
				       	processData: false,
				        dataType: 'json',
				        
 				        success: function (data,status) {
 				        	$('#maxFileSizeError').addClass('hidden');
 				        	$('#invalid-mp3-file').addClass('hidden');
 				        	/* $.each(data.result.files, function (index, file) {
 				                $('<p/>').text(file.name).appendTo(document.body);
 				            }); */
 				        },
					
 				         error: function(data, textStatus, jqXHR){
 				        	window.location.href = "error.jsp";
 				        },
 				    	
				    });
					
					
				});
				
					
		 //Select Streaming option panels as buttons
		
		 $('.pointer-cursor').on('click',function(e){
			
			 var alreadySelectedPanel = $('.selected');
			 $(alreadySelectedPanel).removeClass('panel panel-primary pointer-cursor selected');
			 $(alreadySelectedPanel).addClass('panel panel-info pointer-cursor');
			 
			 //this is the current object user clicked on
			 $(this).removeClass('panel panel-info pointer-cursor');
			 $(this).addClass('panel panel-primary pointer-cursor selected');
			 
			 if(this.id=='panel-recorded-mixes'){
					$('#uploadedMixes').slideDown('slow');
			 }else{
				
				 $('#uploadedMixes').slideUp('slow');
			 }
			 
		 });
		 
		 
		 //Select from your past Mix option and when clicked on that div select that div
		 
		 $('.audioControls').on('click',function(e){
			 
			 var alreadySelectedMix = $('.pastMix');
			 
			 if(alreadySelectedMix.length>0){
				alreadySelectedMix.removeClass('pastMix selected');
				alreadySelectedMix.addClass('audioControls');
			 }
			 
			 $(this).removeClass('audioControls');
			 $(this).addClass('pastMix selected');
			 
			 var selectedMixName = $(this).context.innerText;
			 
			 $('#selectedMixName').html("Selected Mix: "+selectedMixName);
			 
		 });
});
	</script>
	<script>
		/*Place Your Google Analytics code here*/
	</script>
	</div>
</body>
</html>