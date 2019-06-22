<?php
include('config.php');
if(!isset($_SESSION['admin_id']))
{
	header("location:index.php");
}
	  
	
	?> 
<!DOCTYPE html>
<html>

<head>
<title>iLander Employees</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(
	function()
	{
		

	});
		
</script>
</head>
<body class="w3-sand">

<?php include('header.php'); ?>

<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m10">
<h1 class="w3-panel w3-round w3-teal w3-margin">View Leads</h1>






<div class="w3-container">
  
   <div class="w3-col m12 ">


	<table id="example1" class="table table-bordered table-striped">
    <thead>
	<tr>
				  <th>S.No</th>
				  <th>Client Name</th>
				  <th>Project Price</th>
				  <th>Client Email</th>
				  <th>Client Mobile</th>
				  <th>Edit</th>
				  <th>Status</th>
				  <th></th>
                  <th></th>
				 </tr>
                </thead>
                <tbody>
				<?php 
				$sql1=$conn->prepare('select * from  leads');
					if($sql1->execute())
					{
					$count1=$sql1->rowCount();
					if($count1>0)
					{
						$i=0;
						while($row1=$sql1->fetch(PDO::FETCH_OBJ))
						{
							$i++;
							echo '<tr id="'.$row1->lead_id.'">

							

							<td>'.$i.'</td>
							<td>'.$row1->client_name.'</td>
							<td>'.$row1->project_name.'</td>
							<td>'.$row1->client_email.'</td>
							<td>'.$row1->client_mobile.'</td>
							
			<td><a href="edit-leads.php?edit_key='.$row1->lead_id.'" target="_blank">EDIT</a></td>
							
			<td>
<select name="cty" id="sd1---'.$row1->lead_id.'" disabled class="form-control" style="display:block" onchange="active('.$row1->lead_id.')">';
			
							if($row1->lead_active==1)	
								    {
										?>
										<option value="2" >Approved </option>
										<option value="1" selected>Not Approved</option>									
								<?php }
									else if($row1->lead_active==2)
									{   ?>
										<option value="2" selected>Approved </option>
										<option value="1">Not Approved</option>
									<?php }
							echo '</select>
							</td>
							<td>
	<button type="button" name="value" id="editid---'.$row1->lead_id.'" class="btn btn-primary" style="display:block" onclick="editData('.$row1->lead_id.')">EDIT</button>
							
	<button type="button" name="value" id="saveid---'.$row1->lead_id.'" class="btn btn-info" style="display:none" onclick="saveData('.$row1->lead_id.')">Save</button>							
							</td>
							
							<td>
	
	
	<button type="button" name="value" id="cancelid---'.$row1->lead_id.'" class="btn btn-danger" style="display:none" onclick="cancelData('.$row1->lead_id.')">Cancel</button>
							</td>
							</tr>';
				
						} 
					}
					}
				
				?>

               

                </tbody>

            

              </table>

</div>
	
	

</div>










</div>


 </div>
</div>

<?php include('footer.php'); ?>





</body>
</html> 

