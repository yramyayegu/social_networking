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
<title>Add Requirements</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">

<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,900,500,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">

<script type="text/javascript" src="<?php echo base_url().$css_files;?>css/ckeditor/ckeditor.js"></script>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/datatables/dataTables.bootstrap.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>

 $(document).ready(function()
	{
			
	$("#formid").on('submit',function(e)
	{
		for ( instance in CKEDITOR.instances ) 
			{
				CKEDITOR.instances[instance].updateElement();
			}
		e.preventDefault();
		 document.getElementById("msg").innerHTML='<b style="color:red">Please Wait...</b>';
		var sector_name=document.getElementById('sector').value;
		var require_desc=document.getElementById('update').value;
		var city=document.getElementById('city').value;
		var area=document.getElementById('area').value;
		
		if(sector_name!= "" && require_desc!= "")
		{
			
		  $.post("<?php echo site_url('ajax-add-requirement');?>",{"sector":sector_name,"city":city,"area":area,"descri":require_desc},function(output,status)
			{
	        
				if(output== 1)
				{
					
					
		            document.getElementById('sector').value="";
		            document.getElementById('city').value="";
		            document.getElementById('area').value="";
		        
					document.getElementById('msg').innerHTML='<b style="color:green" >Data added Successfully</b>';
					document.getElementById('msg').style.display="block";
					
						
					
				}
				else
				{
					document.getElementById('msg').innerHTML=output;
				}
			
			
			});
		}
		else
		{
			document.getElementById('msg').innerHTML='<b style="color:red" >All Fields are required</b>';	
		}
		
	});

	});
	function getAreas(x)
	{
		 $.post("<?php echo site_url('ajax-areas');?>",{"city":x},function(output,status)
			{
				document.getElementById('area').innerHTML=output;
	        });
	}
</script>
</head>
<body class="w3-sand">

<?php $this->load->view('header'); ?>
<div class="backgrounds2">



<h1 class="w3-center w3-text-white" style="font-weight: 700;">Add Requirements</h1>



</div>




<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m9 w3-border w3-margin-left">
<h1>Add Requirements</h1>

<div class="w3-col m12 w3-margin-left">


  <form class="w3-container" action="" id="formid" method="post">

  <p>      
    <label class="w3-label w3-col m12 w3-text-brown"><b>Sector</b></label>
	<select class="w3-select w3-col m6 w3-border" name="sector" id="sector"> 
	<option value="">Select Sector</option> 
	<?php 
	
	foreach($sectors as $sec)	
	{
	echo'  <option value="'.$sec->sector_id.'">'.$sec->sector_name.'</option>';
	}	
											   
				
	 ?> 	
	</select></p>
	
	<p>      
    <label class="w3-label w3-col m12 w3-text-brown"><b>City</b></label>
	<select class="w3-select w3-col m6 w3-border" name="city" id="city" onchange="getAreas(this.value)"> 
	<option value="">Select City</option> 
	<?php 
	
	foreach($city as $citys)	
	{
	echo'  <option value="'.$citys->city_id.'">'.$citys->city_name.'</option>';
	}	
											   
				
	 ?> 	
	</select></p>
	
	<p>      
    <label class="w3-label w3-col m12 w3-text-brown"><b>Area</b></label>
	<select class="w3-select w3-col m6 w3-border" name="area" id="area"> 
	<option value="">Select Area</option> 
	</select></p>
	
  
    <p>      

    <label class="w3-label w3-text-brown w3-col m12"><b>Requirement</b></label>

    <textarea class="w3-input w3-border w3-sand" name="update" id="update"></textarea>
	</p>
    <p>

    <button type="submit" class="w3-btn w3-brown">Add Requirement</button></p>

	<div id="msg"></div>

  </form>
</div>








</div>


 </div>
</div>

<?php $this->load->view('footer'); ?>



<script>
 $(function () {
  
	CKEDITOR.replace('update');
  
  });
 
</script>

<script src="<?php echo base_url().$css_files;?>plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url().$css_files;?>plugins/datatables/dataTables.bootstrap.min.js"></script>


</body>
</html> 

