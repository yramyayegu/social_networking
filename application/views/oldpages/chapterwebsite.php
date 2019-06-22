<!DOCTYPE html>
<html>
<title>KONNIPATIS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">	
<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,900,500,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">
<body style="background-color:#c2c9da;">
<div class="w3-row" style="margin-left:13%;margin-right:13%;">  

<div  id="header" class="w3-col m12" style="background-color: rgb(128, 0, 0);"> 
   
		
		<div class="w3-col m2"> 
		<a href="<?php echo site_url();?>"> 
		<img class="w3-image" src="<?php echo base_url().$css_files;?>images/logo1.png" style="width:70%">
		</a> 
	   </div>
	   
	   <div class="w3-col m2" style="margin-top:40px;"> 
		<a href="<?php echo site_url();?>"> 
		<img class="w3-image" src="<?php echo base_url().$css_files;?>images/konnipatis222.jpg">
		</a> 
	   </div>
	   
		<div class="w3-col m5 w3-text-white w3-margin-left" style="margin-top:30px;"> 
	
		
		<p><?php echo $findchaps[0]->chapter_title;?> <br>Power of Network </p>
		
		</div>
		<div class="w3-col m2" > 
	<a class="w3-button w3-round" target="_blank" href="#" style="float:right;margin-top:37px;margin-right: 10%;">Connect</a>
		</div>
		
</div>

<div class="w3-col m12 w3-round-large" style="background-color:#273047;margin-top:6px" > 	
	  
	
 <div class="w3-bar w3-text-white">
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-border-right w3-border-white ">Home</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">About</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">Find A Chapter</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">Franchise Enquiry</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">Contact Us</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">Blog</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-border-right w3-border-white">Register/Login</a>
  
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="myFunction()">&#9776;</a>
</div>
<div id="demo" class="w3-bar-block w3-hide w3-hide-large w3-hide-medium">
  <a href="#" class="w3-bar-item w3-mobile w3-button">About KONNIPATIS</a>
  <a href="#" class="w3-bar-item w3-mobile w3-button">Find A Chapter</a>
  <a href="#" class="w3-bar-item w3-mobile w3-button">Franchise Enquiry</a>
  <a href="#" class="w3-bar-item w3-mobile w3-button">Contact Us</a>
  <a href="#" class="w3-bar-item w3-mobile w3-button">Blog</a>
  <a href="#" class="w3-bar-item w3-mobile w3-button">Register/Login</a>
</div>

</div>





<div class="w3-row">
<div class="w3-col m12 w3-margin-top">

<div  id="left" class="w3-col m3 w3-round-large w3-round-large w3-white "> 
<a class="w3-button w3-round w3-text-white" target="_blank" href="#" style="background-color:rgb(128,0,0);margin-top:30px;margin-left:30%;">Connect</a>

<h3 class="w3-padding w3-margin-left">Get Connected</h3>

	
		
		<div class="w3-col m9" style="margin-left:15%"> 
		<div class="w3-col m6" > 
		<img class="w3-image w3-padding" style="width:70px" src="<?php echo base_url().$css_files;?>images/Facebook.png">
		<img class="w3-image w3-padding" style="width:70px" src="<?php echo base_url().$css_files;?>images/LinkedIn.png">
	   </div>
	   <div class="w3-col m6"> 
		<img class="w3-image w3-padding" style="width:70px" src="<?php echo base_url().$css_files;?>images/Twitter.png">
		<img class="w3-image w3-padding" style="width:70px" src="<?php echo base_url().$css_files;?>images/YouTube.png">
	   </div>
	   </div>
	   
	   
	  <div class="w3-col m12 w3-round-xlarge w3-border w3-padding w3-margin-bottom" style="background-color:#efefef;border: 2px solid #D8D6D6;"> 
	   <h4 class="w3-padding w3-margin-left">Get Invited</h4>
	   <label>First Name</label>
<input class="w3-input" type="text">

<label>Last Namel</label>
<input class="w3-input" type="text">
		<div class="w3-col m6" > 
		
		
	   </div>
	   </div>
		
		


</div>

<div  id="right" class="w3-col m9" > 
<div  id="right" class="w3-col m12 w3-white w3-round-large w3-margin-left" > 


	
	<p>The World's Largest Referral Organization</p>
	<img class="w3-image" src="<?php echo base_url().$css_files;?>images/home-banner.jpg">
<div  id="right" class="w3-col m12 w3-center" > 
	Welcome to BNI Ahmedabad West ! 
</div>
</div>
</div>
</div>


</div>
<script>
function myFunction() {
    var x = document.getElementById("demo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
</body>
</html>
