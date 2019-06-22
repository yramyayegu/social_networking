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
<title>Update Photo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(	function()
	{
		
		$("#formid").on('submit',(function(e) 
		{	
			
			e.preventDefault(); 
			$("#msg").empty(); 
			$('#msg').html('<img src="/assets/images/AjaxLoader.gif" alt="" width="24" height=24">');		
			$.ajax(
			{
				url: "<?php echo site_url('photo');?>",
				type: "POST",      
				data: new FormData(this),
				contentType: false,      
				cache: false,            
				processData:false,       
				success: function(data) 
				{
								
                               if(data==1)
							   {
								    document.getElementById('msg').innerHTML='<b style="color:green;">added sucessfully</b>';
									
									location.href="<?php echo site_url('update-photo')?>";
									
							   }
							   else
								{
									$("#msg").html(data); 
								}	
							}													
			});						

		}));

	});
	</script>
</head>
<body class="w3-sand">

<?php include('header.php'); ?>
<div class="backgrounds2">



<h1 class="abc"><b>Update Photo</b></h1>

</div>

<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m9 w3-border w3-margin-left">
<h1>Update Photo</h1>







<div class="w3-col m6 w3-margin-left">


  <form class="w3-container" action="" id="formid" method="post" enctype="multipart/form-data">
    <p>      
    <label class="w3-label w3-text-brown"><b>Upload photo</b></label>
    <input class="w3-input w3-border w3-sand" name="pimage" id="pimage" type="file"></p>
    
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

