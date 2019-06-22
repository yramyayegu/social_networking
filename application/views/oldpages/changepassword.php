<?php
   
if(!isset($_SESSION['user_id']))
{

	header("location:".site_url('login'));
		
}
$id=$_SESSION['user_id'];
?> 
<!DOCTYPE html>
<html>

<head>
<title>Change Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(function()
	{
	
	$("#formid").on('submit',function(e)
	{
		e.preventDefault(); 
		var old=document.getElementById('opwd').value;
		var newp=document.getElementById('npwd').value;
		var cnewp=document.getElementById('cpwd').value;
		
		var o=old.trim();
		var np=newp.trim();
		var cnp=cnewp.trim();
		if(old =="" && newp=="" && cnewp =="")
		{
			document.getElementById('msg').innerHTML='<b style="color:red" >Please enter all feilds</b>';	
		}
		else if(old =="" || o.lenght==0)
		{
			document.getElementById('msg').innerHTML='<b style="color:red" >Please enter old password</b>';	
		}
		else if(newp=="" || np.lenght==0)
		{
			document.getElementById('msg').innerHTML='<b style="color:red" >Please enter new password</b>';	
		}
		else if(cnewp=="" || cnp.lenght==0)
		{
			document.getElementById('msg').innerHTML='<b style="color:red" >Please enter confirm password</b>';	
		}
		else if(cnewp != newp)
		{
			document.getElementById('msg').innerHTML='<b style="color:red" >New passsword and Confirm passsword did not match</b>';	
		}
		else
		{
		$.post("ajax-change-password",$("#formid").serialize(),function(output,status)
			{
				
				if(output== 1)
				{
					document.getElementById('opwd').value=""
					document.getElementById('npwd').value=""
					document.getElementById('cpwd').value=""
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
<body class="w3-sand">

<?php include('header.php'); ?>
<div class="backgrounds2">



<h1 class="abc"><b>Change Password</b></h1>

</div>
<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m9 w3-border w3-margin-left">
<h1>Change Password</h1>







<div class="w3-col m6 w3-margin-left">


  <form class="w3-container" action="" id="formid" autocomplete="off">
    <p>      
    <label class="w3-label w3-text-brown"><b>Old Password</b></label>
    <input class="w3-input w3-border w3-sand" autocomplete="off" name="opwd" id="opwd" type="password"></p>
    <p>      
    <label class="w3-label w3-text-brown"><b>New Password</b></label>
    <input class="w3-input w3-border w3-sand" name="npwd" id="npwd" type="password" ></p>
	
	<p>      
    <label class="w3-label w3-text-brown"><b>Confirm Password</b></label>
    <input class="w3-input w3-border w3-sand" name="cpwd" id="cpwd" type="password"></p>
	
	
	
    <p>
    <button type="submit" class="w3-btn w3-brown">Update</button></p>
	<p id="msg"></p>
  </form>

</div>








</div>


 </div>
</div>

<?php include('footer.php'); ?>





</body>
</html> 

