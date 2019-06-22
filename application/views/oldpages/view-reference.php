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
<title>View References</title>
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




<h1 class="w3-center w3-text-white" style="font-weight: 700;">View References</h1>

</div>
<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m9  w3-margin w3-border">
<div class="w3-col m12" id="tid" style="overflow-x:scroll;">
  <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Lead Id</th>
                  <th>Sector Name</th>
                  <th>Requirement</th>
                  <th>Requirement Date</th>
                  <th>Refered By</th>
                  <th>Refered on</th>
                </tr>
                </thead>
                <tbody>
				<?php 
				foreach($myreference as $val)
				{
					
					echo '
					<tr>
				    <td>'.$val->requirement_id.'</td>
				    <td>'.$val->sector_name	.'</td>
					<td>'.$val->requirement_des.'</td>
					<td>'.date('d M,y h:i A',strtotime($val->requirement_date)).'</td>
					<td>'.$val->user_full_name.'</td>
					<td>'.date('d M,y h:i A',strtotime($val->refer_date)).'</td>
					
					</tr>';
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

