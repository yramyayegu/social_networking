
<?php
include('config.php');
if(isset($_SESSION['admin_id']))
{
	header("location:dashboard.php");
}

?>


<!DOCTYPE html>
<html>

<head>
<title>admin</title>
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
		
		var email=document.getElementById('umail').value;
		var password=document.getElementById('upwd').value;
		
		if(email !="" && password !="")
		{
			$.post("ajax-login.php",$("#formid").serialize(),function(output,status)
			{
		
				if(output==1)
				{
				location.href="dashboard.php";	
				}
				else
				{
				document.getElementById('msg').innerHTML=output;
				}
				
			});
		}
		else
		{
			document.getElementById('msg').innerHTML='<b style="color:red">Please Enter Email and Password</b>';
		}
	});
	});
		
</script>
</head>
<body class="w3-sand">

<?php include('header.php'); ?>

<div class="w3-container">
   <div class="w3-row ">
 <div class="w3-col m12 w3-margin-top w3-margin-bottom" style="margin-left:35%">

 <div class="w3-col m4 ">
 
 <div class="w3-card-4 w3-light-grey">
  <div class="w3-container w3-brown">
    <h2>Admin Login</h2>
  </div>
  
  <form class="w3-container" action="" id="formid">
    <p>      
    <label class="w3-label w3-text-brown"><b>Email</b></label>
    <input class="w3-input w3-border w3-sand" name="umail" id="umail" type="text"></p>
    <p>      
    <label class="w3-label w3-text-brown"><b>Password</b></label>
    <input class="w3-input w3-border w3-sand" name="upwd" id="upwd" type="password"></p>
    <p>
    <button class="w3-btn w3-brown">Login</button></p>
	<p id="msg"></p>
  </form>
</div>
</div>

 </div>
 </div>
</div>
<div class="w3-container w3-bottom" style="background-color: #6d0203;">
 <div class="w3-row">
 <div class="w3-col m12"> <h5 class="w3-small w3-margin-left">&copy; <?php echo date('Y');?>.KONNIPATIS | All Rights Reserved</h5> 
 </div>
 </div>
</div>

</body>
</html> 
