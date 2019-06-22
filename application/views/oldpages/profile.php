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
<title>Profile</title>
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
		$.post("<?php echo site_url('ajax-profile');?>",$("#formid").serialize(),function(output,status)
			{
			
				location.href="<?php echo site_url('my-profile')?>";	
			});
		
		
	});
	});
		
</script>
</head>
<body class="w3-sand">

<?php include('header.php'); ?>
<div class="backgrounds2">
<h1 class="abc"><b>My Profile </b></h1>
</div>
<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m9 w3-border w3-margin-left">
<h1>Profile</h1>

<div class="w3-col m6 w3-margin-left w3-border-bottom">
  <table class="w3-table">
   
    <tr>
      <td><label class="w3-label w3-text-brown"><b>Name:</b></label></td>
      <td><?php echo $profile[0]->user_full_name; ?></td>
    </tr>
    <tr>
      <td><label class="w3-label w3-text-brown"><b>Email:</b></label></td>
      <td><?php echo $profile[0]->user_email; ?></td>
    </tr><tr>
      <td><label class="w3-label w3-text-brown"><b>Mobile:</b></label></td>
      <td><?php echo $profile[0]->user_mobile; ?></td>
    </tr>
</table>



</div>

<div class="w3-col m8 w3-margin-left">



<div class="w3-col m12 w3-margin"><p id="msg"></p>
<button class="w3-btn w3-indigo" onclick="document.getElementById('id01').style.display='block'">Update details</button> 

<div id="id01" class="w3-padding" style="display:none;">
 <span onclick="this.parentElement.style.display='none'" class="w3-closebtn w3-text-white w3-padding w3-margin-top">&times;</span>
  <h2 class="w3-blue-grey w3-padding">Update your details</h2>
  
  <form class="w3-container" action="" id="formid">
   <input  name="user_id" id="user_id" type="hidden" value="<?php echo $id ?>">
    <p>      
    <label class="w3-label w3-text-brown"><b>Full Name</b></label>
    <input class="w3-input w3-border w3-sand" name="fname" id="fname" type="text" value="<?php echo $profile[0]->user_full_name; ?>"></p>
    <p>      
    <label class="w3-label w3-text-brown"><b>Email</b></label>
    <input class="w3-input w3-border w3-sand" name="pemail" id="pemail" type="text" value="<?php echo $profile[0]->user_email; ?>"></p>
   <p>      
    <label class="w3-label w3-text-brown"><b>Mobile</b></label>
    <input class="w3-input w3-border w3-sand" name="pmobile" id="pmobile" type="text" value="<?php echo $profile[0]->user_mobile; ?>"></p>
    <p>
    <button onclick="document.getElementById('id01').style.display='none'" class="w3-btn w3-brown w3-closebtn">Update</button></p>

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