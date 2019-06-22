<!DOCTYPE HTML>
<html lang="en">
<head>
<link rel="shortcut icon" href="img/logo.png">
<link rel="apple-touch-icon" href="img/logo.png" >
<title>Pending</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Wonder Coming Soon Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->

<!-- css files -->
<link rel="stylesheet" href="<?php echo base_url()?>css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
<link rel="stylesheet" href="<?php echo base_url()?>css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
<link href="<?php echo base_url()?>css/popup-box.css" rel="stylesheet" type="text/css" media="all" /><!-- //popup css -->
<link rel="stylesheet" href="<?php echo base_url()?>css/jquery.countdown.css" /><!-- //countdown css -->
<!-- //css files -->

<!-- google fonts -->
<link href="//fonts.googleapis.com/css?family=Cinzel:400,700,900&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
<!-- //google fonts -->

</head>
<body>

<!-- main -->
<div class="w3ls-header">
	  <div class="bg agile">
     	<div class="container" style='width:50%'>
			<div class="main">
				
				
				<div class="header">
					<h1>Your Almost there.</h1>
                    <h3 style='color: #EAEAEA;font-size: 24px;padding: 15%;'>Your Request is under processing. <br>Gitam-Blackbucks team will get back to you.</h3>
				</div>
				<!--timer--
				<div class="">
					<div class="simply-countdown-losange" id="simply-countdown-losange"></div>
					<div class="clear"></div>
				</div>
				<!--//timer-->
				<div class="content3">
                <p><a href="mailto:contact@theblackbucks.com"><span class="footer-mobile-hide">Contact Us</span></a></p>
				</div>
				
			</div>
        </div>
   </div>
</div>
<!-- //main-->

<!-- //popup --
<div class="pop-up"> 
	<div id="small-dialog" class="mfp-hide book-form">
		<div class="icon">
			<span class="fa fa-paper-plane-o" aria-hidden="true"></span>
		</div>
		<h3 class="sub-head-w3-agileits">Contact Us</h3>
			<form action="#" method="post">
				<input type="email" placeholder="Enter Your Email" required="">
				<input type="Submit">
			</form>
	</div>
</div>	
<!-- //popup -->

<!-- js -->
<script type="text/javascript" src="<?php echo base_url()?>js/jquery-2.1.4.min.js"></script>
<!-- //js -->

<!--popup-js-->
<script src="<?php echo base_url()?>js/jquery.magnific-popup.js" type="text/javascript"></script>
 <script>
	$(document).ready(function() {
	$('.popup-with-zoom-anim').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in'
	});
																	
	});
</script>
<!--//popup-js-->

<!-- Countdown-Timer-JavaScript -->
<script src="<?php echo base_url()?>js/simplyCountdown.js"></script>
<!-- easy to customize -->
<script>
	$('#simply-countdown-losange').simplyCountdown({
		year: 2019,
		month: 01,
		day: 20
	});
</script>
<!-- //Countdown-Timer-JavaScript -->

</body>
</html>