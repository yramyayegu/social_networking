<!DOCTYPE html>
<html>

<head>
<title>Forgot Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(
	function()
	{
	$("#formid").on('submit',function(e)
	{ 
		e.preventDefault(); 
		var email=document.getElementById('umail').value;
		var n=email.trim();
		if(email =="" || n.length==0)
		{
			document.getElementById('msg').innerHTML='<b style="color:red">Please Enter Email or Mobile</b>';
		}
		else
		{
			$.post("ajax-forgot-password",{"mail":email},function(output,status)
			{
				
				if(output==1)
				{
			   document.getElementById('msg').innerHTML=output;
				}
				else
				{
				document.getElementById('msg').innerHTML=output;
				}
				
			});
		}
	});
	});
		
</script>
</head>
<body>

<?php include('header.php'); ?>
<div class="backgrounds2">



<h1 class="w3-center w3-text-white" style="font-weight: 800;">Forgot Password</h1>

</div>
<div class="w3-container">
   <div class="w3-row ">
 <div class="w3-col m12 w3-margin-top w3-margin-bottom" style="margin-left:35%">

 <div class="w3-col m4 ">
 
 <div class="w3-card-4 w3-light-grey">
  <div class="w3-container w3-brown">
    <h2>Forgot Password</h2>
  </div>
  
  <form class="w3-container" action="" method="post" id="formid">
    <p>      
    <label class="w3-label w3-text-brown"><b>Email/Mobile</b></label>
    <input class="w3-input w3-border w3-sand" placeholder="Email/Mobile"  name="umail" id="umail" type="text"></p>
     <p>
    <button type="submit" class="w3-btn w3-brown">Get new password</button></p>
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
