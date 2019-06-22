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
<h1 class="w3-panel w3-round w3-teal w3-margin">View Employees</h1>
<div class="w3-container">
   <div class="w3-col m12 ">
		<table id="example1" class="table table-bordered table-striped">
    <thead>
	<tr>
				  <th>S.No</th>
				  <th>Company-Id</th>
				  <th>Name</th>
				  <th>Email</th>
				  <th>Status</th>
                  <th></th>
                  <th></th>
				 </tr>
                </thead>
                <tbody>
				<?php 
				$sql1=$conn->prepare('select * from employee_login');
					if($sql1->execute())
					{
					$count1=$sql1->rowCount();
					if($count1>0)
					{
						$i=0;
						while($row1=$sql1->fetch(PDO::FETCH_OBJ))
						{
							$i++;
							echo '<tr id="'.$row1->employee_login_id.'">

							

							<td>'.$i.'</td>
							<td>'.$row1->employee_id.'</td>
							<td>'.$row1->employee_full_name.'</td>
							
							<td>

							<p id="editep---'.$row1->employee_login_id.'" style="dispaly:block">'.$row1->employee_email.'</p>

							<input typt="text" value="'.$row1->employee_email.'" id="edite---'.$row1->employee_login_id.'" style="display:none"/>

							</td>
							
			<td>
<select name="cty" id="sd1---'.$row1->employee_login_id.'" disabled class="form-control" style="display:block" onchange="active('.$row1->employee_login_id.')">';
			
							if($row1->employee_active==0)	
								    {
										?>
										<option value="1" >Active </option>
										<option value="0" selected>In Active</option>									
								<?php }
									else
									{   ?>
										<option value="1" selected>Active </option>
										<option value="0">In Active</option>
									<?php }
							echo '</select>
							</td>
							<td>
	<button type="button" name="value" id="editid---'.$row1->employee_login_id.'" class="btn btn-primary" style="display:block" onclick="editData('.$row1->employee_login_id.')">EDIT</button>
							
	<button type="button" name="value" id="saveid---'.$row1->employee_login_id.'" class="btn btn-info" style="display:none" onclick="saveData('.$row1->employee_login_id.')">Save</button>							
							</td>
							
							<td>
	
	
	<button type="button" name="value" id="cancelid---'.$row1->employee_login_id.'" class="btn btn-danger" style="display:none" onclick="cancelData('.$row1->employee_login_id.')">Cancel</button>
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

