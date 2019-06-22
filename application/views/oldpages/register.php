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
		
		$("#formid").on('submit',function(e)
		{
			e.preventDefault(); 
			document.getElementById("msg1").innerHTML='<b style="color:#fff">Please wait...</b>';
			var uname=document.getElementById('uname').value;
			var email=document.getElementById('email').value;
			var cemail=document.getElementById('cemail').value;
			var password=document.getElementById('pwd').value;
			var day=document.getElementById('day').value;
			var month=document.getElementById('month').value;
			var year=document.getElementById('year').value;
			var gender=document.getElementById('gender').value;
			var n=uname.trim();
			var e=email.trim();
			var ce=cemail.trim();
			var pwd=password.trim();
			var d=day.trim();
			var m=month.trim();
			var y=year.trim();
			
			if(uname =="" || n.length==0)
			{
				document.getElementById('msg1').innerHTML='<b style="color:red">Please Enter your name</b>';
			}
			else if(email =="" || e.length==0)
			{
				document.getElementById('msg1').innerHTML='<b style="color:red">Please Enter your Email or mobile</b>';
			}
			else if(cemail =="" || ce.length==0)
			{
				document.getElementById('msg1').innerHTML='<b style="color:red">Please Confirm Enter your Email or mobile</b>';
				
			}
			else if(email =="" && cemail =="")
			{
				document.getElementById('msg1').innerHTML='<b style="color:red">Please Enter eaither Email or mobile number or both </b>';
			}
			else if(email != cemail)
			{
				document.getElementById('msg1').innerHTML='<b style="color:red">Email and confirm Email did not match </b>';
			}
			else if( password =="" || pwd.length==0)
			{
				document.getElementById('msg1').innerHTML='<b style="color:red">Email and confirm Email did not match </b>';
			}
			else if( day =="" || d.length==0)
			{
				document.getElementById('msg1').innerHTML='<b style="color:red">Select Date </b>';
			}
			else{
				$.post("<?php echo site_url('ajax-reg');?>",$("#formid").serialize(),function(output,status)
				{
					
					if(output==1)
					{
					
					location.href="<?php echo site_url('login')?>";
					}
					else
					{
					document.getElementById('msg1').innerHTML=output;
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



<h1 class="abc"><b>Register</b></h1>

</div>

<div class="w3-container"><center><a href="<?php echo site_url('login');?>">Already registerd click here to Login</a></p></center>
  <div class="w3-row ">
  <div class="w3-col m12 w3-margin-top w3-margin-bottom ">
  <div class="w3-col m5 w3-margin-right w3-margin-bottom" style="margin-left:30%">
  <div class="w3-container w3-text-color"> 
  <form class="w3-container" action="" id="formid" method="post">
      <p>          
  <label class="w3-label w3-text-brown"><b>Full Name</b></label>   
  <input class="w3-input w3-border w3-sand"  name="uname" placeholder="Full Name" id="uname" type="text"></p> 
  <p>

    <p>          
  <label class="w3-label w3-text-brown"><b>Email address or Mobile number </b></label>   
  <input class="w3-input w3-border w3-sand " name="email" id="email" placeholder="Email address or Mobile number"   type="text"></p> 
  <p>

  <p>          
  <label class="w3-label w3-text-brown"><b>Re-enter Mobile number or Email address</b></label>   
  <input class="w3-input w3-border w3-sand " name="cemail" id="cemail" placeholder="Re-Email address or Mobile number"  type="text"></p> 
<p>          
  <label class="w3-label w3-text-brown"><b>Password</b></label>   
  <input class="w3-input w3-border w3-sand " name="pwd" id="pwd" placeholder="Password"  type="password"></p> 
 
 <p>          
 <label class="w3-label w3-text-brown"><b>Birthday</b></label>  
  <div class="w3-row-padding">
  
  <div class="w3-third">
   
   <select class="w3-select w3-border" name="day" id="day">
    <option value="0" selected>Day</option>
  <?php
for($i=1;$i<=31;$i++)
{
	echo '<option value="'.$i.'">'.$i.'</option>';
}
 ?>
  </select>
 
 
  </div>
  <div class="w3-third">
    <select class="w3-select w3-border" name="month" id="month">
    <option value="0" selected>month</option>
    <option value="1">Jan</option>
    <option value="2">Feb</option>
    <option value="3">Mar</option>
    <option value="4">Apr</option>
    <option value="5">May</option>
    <option value="6">Jun</option>
    <option value="7">Jul</option>
    <option value="8">Aug</option>
    <option value="9">Sep</option>
    <option value="10">Oct</option>
    <option value="11">Nov</option>
    <option value="12">Dec</option>
   </select>
  </div>
  <div class="w3-third">
 
 <select class="w3-select w3-border" name="year" id="year">
 <option value="0" selected>Year</option>
 <?php
date_format($date1,"Y");
$date=date('Y');
for($i=$date;$i>=1905;$i--)
{
	echo '<option value="'.$i.'">'.$i.'</option>';
}
 ?>
 </select>

 
  </div>
</div>
  </p> 
  
  <p> 
  <label class="w3-label w3-text-brown"><b>Gender</b></label> 
 <div class="w3-row-padding">
  <div class="w3-half">
     
  <input class="w3-radio" type="radio" name="gender" id="gender" value="male">
  <label class="w3-validate">Male</label>
  </div>
  <div class="w3-half">

  <input class="w3-radio" type="radio" name="gender" id="gender" value="female">
  <label class="w3-validate">Female</label>
  </div>
</div>
</p>

 
  

  
  
  <p>  
  <button type="submit" class="w3-btn w3-brown">Register</button></p>
  <p id="msg1"></p>
  </form>

</div>
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
