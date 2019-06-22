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
<title>View Requirement</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">

<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/datatables/dataTables.bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(function()
	{
		
	example();
	});
		
		  function deleteReq(x)
  {

	 var result=confirm("Do you want to delete?");
	  

	  if(result)
	  {
		  document.getElementById("did").innerHTML='<b style="color:red">Please Wait...</b>';
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
</script>
</head>
<body class="w3-sand">

<?php include('header.php'); ?>
<div class="backgrounds2">




<h1 class="w3-center w3-text-white" style="font-weight: 700;">View Requirements</h1>

</div>
<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m9 w3-border w3-margin-left">
    <div class="container">
		<h2>View Requirements</h2>
		
	</div>
	<div id="did"></div>

<div class="w3-col m11 w3-margin-left">
  <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
					
                  <th></th>
                  <th>Requirement Id</th>
                  <th>Sector Name</th>
				  <th>Edit Requirements</th>
                </tr>
                </thead>
                <tbody>
				<?php 
				foreach($viewrequirements as $val)
				{
					
					echo '
					<tr>
				     <td><button class="w3-btn w3-red" onclick="deleteReq('.$val->requirement_id.')">Delete</button></td>
				     <td>'.$val->requirement_id.'</td>
					  <td>'.$val->sector_name.'</td>
					 
					 
					  <td><a target="_blank" href="'.site_url('edit-requirements?requireid='.$val->requirement_id).'">Click Here</a></td>
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


<script>
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

<script src="<?php echo base_url().$css_files;?>js/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url().$css_files;?>js/datatables/dataTables.bootstrap.min.js"></script>


</body>
</html> 

