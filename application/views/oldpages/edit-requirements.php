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
<title>Edit Requirements</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">

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
		var sector_name=document.getElementById('sector').value;
       var require_id=document.getElementById('pid').value;
		var require_desc=document.getElementById('update').value;
		if(sector_name!= "" && require_desc!= "")
		{
			
		  $.post("<?php echo site_url('ajax-edit-requirement');?>",$("#formid").serialize(),function(output,status)
			{
	        
				if(output== 1)
				{
					
					
		            document.getElementById('update').value="";
		        
					document.getElementById('msg').innerHTML='<b style="color:green" >Data Updated Successfully</b>';
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
	
</script>
</head>
<body class="w3-sand">

<?php $this->load->view('header'); ?>
<div class="backgrounds2">




<h1 class="w3-center w3-text-white" style="font-weight: 800;">Edit Requirements </h1>


</div>
<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m10 w3-border">
<h1>Edit Requirements</h1>

<div class="w3-col m12 w3-margin-left">


  <form class="w3-container" action="" id="formid" method="post">
<input type="hidden" name="pid" id="pid" value="<?php echo $requirements; ?>">
  <p>      
    <label class="w3-label w3-col m12 w3-text-brown"><b>Sector</b></label>
	<select class="w3-select w3-col m6 w3-border" name="sector" id="sector"> 
	<option value="">Select Sector</option> 
	<?php 
	
	foreach($sectors as $sec)	
	{
		foreach($req as $val)
	    {
			if($sec->sector_id == $val->sector_ids)
			{
				 echo'  <option selected value="'.$sec->sector_id.'">'.$sec->sector_name.'</option>';
			}
			else
			{
				 echo'  <option value="'.$sec->sector_id.'">'.$sec->sector_name.'</option>';
			}
		}		
	 
	}	
											   
				
	 ?> 	
	</select></p> 
	<p>      
    <label class="w3-label w3-col m12 w3-text-brown"><b>City</b></label>
	<select class="w3-select w3-col m6 w3-border" name="sector" id="sector"> 
	<option value="">Select city</option> 
	<?php 
	
	foreach($city as $sec)	
	{
		foreach($req as $val)
	    {
			if($sec->city_id == $val->city_ids)
			{
				 echo'  <option selected value="'.$sec->city_id.'">'.$sec->city_name.'</option>';
			}
			else
			{
				 echo'  <option value="'.$sec->sector_id.'">'.$sec->sector_name.'</option>';
			}
		}		
	 
	}	
											   
				
	 ?> 	
	</select></p>  <p>      
    <label class="w3-label w3-col m12 w3-text-brown"><b>Sector</b></label>
	<select class="w3-select w3-col m6 w3-border" name="sector" id="sector"> 
	<option value="">Select Sector</option> 
	<?php 
	
	foreach($areas as $sec)	
	{
		foreach($req as $val)
	    {
			if($sec->area_id == $val->area_ids)
			{
				 echo'  <option selected value="'.$sec->area_id.'">'.$sec->area_name.'</option>';
			}
			else
			{
				 echo'  <option value="'.$sec->sector_id.'">'.$sec->sector_name.'</option>';
			}
		}		
	 
	}	
											   
				
	 ?> 	
	</select></p>
	
	
	
  
    <p>      

    <label class="w3-label w3-text-brown w3-col m12"><b>Requirement</b></label>
   <?php
    foreach($req as $val)
	{
		echo ' <textarea class="w3-input w3-border w3-sand" name="update" id="update">'.$val->requirement_des.'</textarea>';
	}
   ?>
   
	</p>
    <p>

    <button type="submit" class="w3-btn w3-brown">Edit Requirement</button></p>

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

