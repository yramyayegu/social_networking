<div  id="header" class="w3-col m12" style="background-color: rgb(128, 0, 0);"> 
   
		
		<div class="w3-col m3"> 
		
			<div class="w3-text-white">
			 <a href="<?php echo site_url();?>"> 
 <img class="w3-image w3-padding" src="<?php echo base_url().$css_files;?>images/konnipatis222.jpg">
 
 </a> 
			<h4 class="w3-padding-left" style="margin-top: -15px;">Power of Network </h4>
		</div>
			
	   </div>
		<div class="w3-col m3 w3-text-white"> 
		<div>
		<h3>Hyderabad East</h3>
		<h4>Power of Network </h4>
		</div>
		</div>
		<div class="w3-col m6" > 
	<a class="w3-button w3-round" target="_blank" href="#" style="float:right;margin-top:37px;margin-right: 10%;">Connect</a>
		</div>
		
</div>

<div class="w3-col m12 w3-round-large" style="background-color:#273047;margin-top:6px" > 	
	  
	
 <div class="w3-bar w3-text-white">
  <a href="<?php echo site_url('')?>" class="w3-bar-item w3-button w3-hide-small w3-border-right w3-border-white ">Home</a>
  <a href="<?php echo site_url('aboutus')?>" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">About</a>
  <a href="<?php echo site_url('findachapter')?>" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">Find A Chapter</a>
  <a href="<?php echo site_url('enquiry')?>" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">Franchise Enquiry</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">Contact Us</a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small  w3-border-right w3-border-white">Blog</a>
  <a href="<?php echo site_url('login')?>" class="w3-bar-item w3-button w3-hide-small w3-border-right w3-border-white">Register/Login</a>
  
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="myFunction()">&#9776;</a>
</div>
<div id="demo" class="w3-bar-block w3-hide w3-hide-large w3-hide-medium">
  <a href="<?php echo site_url('aboutus')?>" class="w3-bar-item w3-mobile w3-button">About KONNIPATIS</a>
  <a href="<?php echo site_url('findachapter')?>" class="w3-bar-item w3-mobile w3-button">Find A Chapter</a>
  <a href="<?php echo site_url('enquiry')?>" class="w3-bar-item w3-mobile w3-button">Franchise Enquiry</a>
  <a href="#" class="w3-bar-item w3-mobile w3-button">Contact Us</a>
  <a href="#" class="w3-bar-item w3-mobile w3-button">Blog</a>
  <a href="#" class="w3-bar-item w3-mobile w3-button">Register/Login</a>
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