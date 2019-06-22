<?php
ob_start();
if(!isset($_SESSION['user_id']))
{
	header('location:'.site_url('login'));
}
$id=$_SESSION['user_id'];
?> 
<!DOCTYPE html>
<html>

<head>
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">

<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/datatables/dataTables.bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(function()
	{
		
		$("#formid1").on('submit',function(e)
		{		
		  e.preventDefault();	
		   document.getElementById("did").innerHTML='<b style="color:red">Please Wait...</b>';
		  var sec=document.getElementById("sector").value;
		  
		  var city=document.getElementById("city").value;
		  var area=document.getElementById("area").value;
		 
		  $.post("<?php echo site_url('search-requirement');?>",{"sector":sec,"city":city,"area":area},function(output,status)
			{
				
		   
					document.getElementById('example1').innerHTML=output;
				
				 document.getElementById("did").innerHTML='';
			});
		});
	example();
	});
		
		  function deleteReq(x)
  {

	 var result=confirm("Do you want to delete?");
	  

	  if(result)
	  {
		  $.post("<?php echo site_url('ajax-req-del');?>",{"req_id":x},function(output,status)
				{
					
					
					if(output==1)
					{
					location.href="<?php echo site_url('view-requirement')?>";
					}
					else
					{
					document.getElementById('msg').innerHTML=output;
					}
					
				});
	  }
  }
  	function getAreas(x)
	{
		 $.post("<?php echo site_url('ajax-areas');?>",{"city":x},function(output,status)
			{
				document.getElementById('area').innerHTML=output;
	        });
	}


	function example(){
		$('#example1').DataTable({ 
		"paging": true,
		"lengthChange": true,
		"searching": true, 
		"ordering": true,
		"info": true,
		"autoWidth": true
		});
		}
		</script>
</head>
<body class="w3-sand">

<?php include('header.php'); ?>
<div class="backgrounds2">




<h1 class="w3-center w3-text-white" style="font-weight: 700;">Dashboard</h1>

</div>
<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
		<div class="w3-col m9  w3-margin w3-border">

    <div class="container">
		<h2>Latest Leads</h2>
	  <label class="w3-label w3-col m12 w3-text-brown"><b>Search by</b></label>

	<div class="w3-col m12 w3-margin-bottom">
  <form class="w3-container" action="" id="formid1" method="post">
	<div class="w3-col m2 w3-padding-right">
    <p>      
  
	<select class="w3-select w3-border" name="sector" id="sector"> 
	<option value="">Select Sector</option> 
	<?php 
	foreach($sectors as $sec)	
	{
	echo'  <option value="'.$sec->sector_id.'">'.$sec->sector_name.'</option>';
	}			
	?> 	
	</select></p></div>
	
	
	<div class="w3-col m2 w3-padding-right">
    <p>      
  
	<select class="w3-select w3-border" name="city" id="city" onchange="getAreas(this.value)"> 
	<option value="">Select City</option> 
	<?php 
	foreach($city as $citys)	
	{
	echo'  <option value="'.$citys->city_id.'">'.$citys->city_name.'</option>';
	}			
	?> 	
	</select></p></div>
	<div class="w3-col m2 w3-padding-right">
    <p>      
  
	<select class="w3-select w3-border" name="area" id="area"> 
	<option value="">Select Area</option> 
	
	</select></p></div>

	
	
	<div class="w3-col m3"><p><button type="submit" class="w3-btn w3-green">Search</button></p></div>
	</form>
	
	
	</div>
	
	
	



	</div>
	<div id="did"> 	</div>


<div class="w3-col m12" id="tid" style="overflow-x:scroll;">
  <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Lead Id</th>
                  <th>Sector Name</th>
                  <th>Customer Name</th>
                  <th>City</th>
				  <th>Requirement</th>
				  <th>Date</th>
				  <th>Full Details</th>
                </tr>
                </thead>
                <tbody>
				<?php 
				foreach($viewrequirements as $val)
				{
					
					echo '
					<tr>
				     <td>'.$val->requirement_id.'</td>
					  <td>'.$val->sector_name.'</td>
					  <td>'.$val->user_full_name.'</td>
					  <td>'.$val->city_name.'</td>
					  <td>'.substr($val->requirement_des,0,100).'...</td>			 
					   <td>'.date('d M, Y  h:i A',strtotime($val->requirement_date)).'</td>
					  <td><a target="_blank" href="'.site_url('view-dashboard-requirements?requireid='.$val->requirement_id).'">Click Here</a></td>
					 ';
					 echo '</tr>';
					
					
				}
				
				?>
		
			 
			  </tbody>
               
              </table>

</div>



	</div>

 </div>
</div>

<?php include('footer.php'); ?>



<script src="<?php echo base_url().$css_files;?>js/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url().$css_files;?>js/datatables/dataTables.bootstrap.min.js"></script>


</body>
</html> 

