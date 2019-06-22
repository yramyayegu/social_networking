<!DOCTYPE html>
<html>
<title>Find a chapter</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">
<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,900,500,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">

<style>
b
{
	font-size: 12px;
}
</style>

<body>
<?php include('header.php'); 	?>
<div class="backgrounds2">



<h1 class="w3-center w3-text-white" style="font-weight: 800;">FIND A CHAPTER</h1>
<h4 class="w3-text-white subheading">Get In Touch With Us & Visit A BNI Chapter In Your City</h4>
</div>

<div class="w3-row" style="margin-left:10%;margin-right:10%;">
   
    <div class="w3-col m12	"> 
   <?php
  
   $i=1;
    foreach($findchaps as $chapters)
	{
		
		?>
		
		<div class="w3-col m3"> 
			<button onclick="myFunction('Demo<?php echo $i;?>')" class="w3-btn-block w3-border w3-text-brown w3-left-align w3-white w3-padding w3-margin-top"><b><?php echo $chapters->chapter_title;?></b>
			<i class="fa fa-plus" aria-hidden="true"  style="float:right;"></i>
			</button>
			<div id="Demo<?php echo $i;?>" class="w3-hide w3-border ">
			<ul class="w3-ul">
			<li><b>Email</b>:<?php echo $chapters->chapter_email;?></li>
			<li><b>Website</b>:<a href="<?php echo site_url('chapter/'.$chapters->chapter_website)?>" target="_blank"><?php echo $chapters->chapter_website;?></a></li>
			</ul>  
			</div>
	   </div>
		
	<?php
	   $i=$i+1;
	   }

   ?>
	
	
</div>
</div>


<div class="w3-center w3-padding">	
	<a href="<?php echo site_url('enquiry');?>"><button class="w3-button w3-round-large w3-light-green w3-text-white"> Intrested in Franchise? Click Here</button></a>
	
	</div>

<br>
<br>



	

<?php include('footer.php'); 	?>
<script>
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
</body>
</html>
