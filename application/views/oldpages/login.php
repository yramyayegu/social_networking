<!DOCTYPE html>
<html>
<title>KONNIPATIS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<head>
<script>
 $(document).ready(	function()
	{
		
		

		$("#formid1").on('submit',function(e)
		{
			e.preventDefault(); 
			
			var umail=document.getElementById('umail').value;
			var upwd=document.getElementById('upwd').value;
			
			var n=umail.trim();
			var p=upwd.trim();
			if(umail=="" && upwd =="")
			{
				document.getElementById('msg').innerHTML='<b style="color:red">Please Enter All feilds</b>';
			}
			else if(umail =="" || n.length==0)
			{
				document.getElementById('msg').innerHTML='<b style="color:red">Please Enter Email or mobile</b>';
			}
			else if(upwd =="" || p.length==0)
			{
				document.getElementById('msg').innerHTML='<b style="color:red">Please Enter Password </b>';
			}
			else{
				$.post("<?php echo site_url('ajax-login');?>",$("#formid1").serialize(),function(output,status)
				{
					
					
					if(output==1)
					{
					location.href="<?php echo site_url('dashboard')?>";
					}
					else
					{
					document.getElementById('msg').innerHTML=output;
					}
					
				});
			}
			
		});	


	});
	
		function NumbersOnly(MyField, e, dec)
		{
			var key;
			var keychar;
			
			if (window.event)
			   key = window.event.keyCode;
			else if (e)
			   key = e.which;
			else
			   return true;
			keychar = String.fromCharCode(key);
			
			if ((key==null) || (key==0) || (key==8) ||
				(key==9) || (key==13) || (key==27) )
			   return true;
			
			else if ((("0123456789").indexOf(keychar) > -1))
			   return true;
			
			else if (dec && (keychar == "."))
			   {
			   MyField.form.elements[dec].focus();
			   return false;
			   }
			else
			   return false;
		}
		
</script>
</head>
<body>
<?php include('header.php'); 	?>


<div class="backgrounds2">



<h1 class="abc"><b>Login</b></h1>

</div>
<p>
    <center><a href="<?php echo site_url('register');?>">Create new account</a></p></center>
<div class="w3-container">
   <div class="w3-row ">
 <div class="w3-col m12 w3-margin-top w3-margin-bottom ">

 <div class="w3-col m5 w3-margin-right w3-margin-bottom" style="margin-left:30%">
 
 
  
  <form class="w3-container" action="" id="formid1" method="post">
    <p>      
    <label class="w3-label w3-text-brown"><b>Email/Mobile</b></label>
    <input class="w3-input w3-border w3-sand" name="umail" placeholder="Email/Mobile"  id="umail" type="text"></p>
    <p>      
    <label class="w3-label w3-text-brown"><b>Password</b></label>
    <input class="w3-input w3-border w3-sand" name="upwd" id="upwd" placeholder="Password" type="password"></p>
    <p>
    <button type="submit" class="w3-btn w3-brown">Login</button></p>
	
	<p>
    <a href="<?php echo site_url('forgot-password');?>">Forgot password</a></p>
	
	<p id="msg"></p>
  </form>

</div>



 </div>
 </div>
</div>
	




<?php include('footer.php'); 	?>
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
