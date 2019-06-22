<?php
include('config.php');
if(!isset($_SESSION['admin_id']))
{
	header("location:index.php");
}
	  
	
	?> 
<!DOCTYPE html>
<html>

<head>
<title>iLander Employees</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(
	function()
	{
	$("#formid").on('submit',function(e)
	{
		e.preventDefault(); 
		$.post("ajax-change-password.php",$("#formid").serialize(),function(output,status)
			{
				
				if(output== 1)
				{
					document.getElementById('opwd').value=""
					document.getElementById('npwd').value=""
					document.getElementById('cpwd').value=""
					document.getElementById('msg').innerHTML='<b style="color:green" >Updated sucessfully</b>';	
				}
				else
				{
					document.getElementById('msg').innerHTML=output;
				}
					
			});
		
		
	});
	});
		
</script>
</head>
<body class="w3-sand">

<?php include('header.php'); ?>

<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m10">
<h1 class="w3-panel w3-round w3-teal w3-margin">Ongoing Projects</h1>






<div class="w3-container">
  
  <div class="w3-panel w3-border">
   <div class="w3-col m6 w3-margin-left">


  <form class="w3-container" action="" id="formid">
    <p>      
    <label class="w3-label w3-text-brown"><b>Old Password</b></label>
    <input class="w3-input w3-border w3-sand" name="opwd" id="opwd" type="password"></p>
    <p>      
    <label class="w3-label w3-text-brown"><b>New Password</b></label>
    <input class="w3-input w3-border w3-sand" name="npwd" id="npwd" type="password" ></p>
	
	<p>      
    <label class="w3-label w3-text-brown"><b>Confirm Password</b></label>
    <input class="w3-input w3-border w3-sand" name="cpwd" id="cpwd" type="password"></p>
	
	
	
    <p>
    <button class="w3-btn w3-brown">Update</button></p>
	<p id="msg"></p>
  </form>

</div>
	
	
  </div>
</div>










</div>


 </div>
</div>

<?php include('footer.php'); ?>





</body>
</html> 

