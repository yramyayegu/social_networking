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
<title>Full Details</title>
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
	function referFriend(x)
	{
		var req_id= document.getElementById("req_id").value;
	
		 document.getElementById("refbtn-"+x).innerHTML='<b style="color:#fff">Loading...</b>';
		 $.post("<?php echo site_url('ajax-ref-friend');?>",{"friend_id":x,"req_id":req_id},function(output,status)
			{
					
				if(output == 1)
				{
				document.getElementById("refbtn-"+x).className='w3-btn w3-green';
				document.getElementById("refbtn-"+x).innerHTML='<b style="color:#fff">Refered</b>';
				}
				else
				{
					document.getElementById("refbtn-"+x).innerHTML=output;
				}
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




<h1 class="w3-center w3-text-white" style="font-weight: 700;">Profile</h1>

</div>
<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m9 w3-border w3-margin-left">
<h2>Full Details</h2>

<div class="w3-col m12 w3-margin-left">

<div class="w3-col m3 w3-margin-left">
<p><label class="w3-label w3-col m12 w3-text-brown"><b>Lead Id  </b></label>      
<p><label class="w3-label w3-col m12 w3-text-brown"><b>Sector Name  </b></label>      
<p><label class="w3-label w3-col m12 w3-text-brown"><b>Customer Name </b></label>      
<p><label class="w3-label w3-col m12 w3-text-brown"><b>City </b></label>      
<p><label class="w3-label w3-col m12 w3-text-brown"><b>Area </b></label>      
<p><label class="w3-label w3-col m12 w3-text-brown"><b>Date </b></label>      
<p><label class="w3-label w3-col m12 w3-text-brown"><b>Requirement description  </b></label>
</div>
<div class="w3-col m8 w3-margin-left">
<input type="hidden" id="req_id" value="<?php echo $viewrequirements[0]->requirement_id; ?>">
<p><label class="w3-label w3-col m12 w3-text-brown"><b>: <?php echo $viewrequirements[0]->requirement_id; ?></b></label>      
<p><label class="w3-label w3-col m12 w3-text-brown"><b>: <?php echo $viewrequirements[0]->sector_name; ?></b></label>      
<p><label class="w3-label w3-col m12 w3-text-brown"><b>: <?php echo $viewrequirements[0]->user_full_name; ?></b></label>   
<p><label class="w3-label w3-col m12 w3-text-brown"><b>: <?php echo $viewrequirements[0]->city_name; ?></b></label>   
<p><label class="w3-label w3-col m12 w3-text-brown"><b>: <?php echo $viewrequirements[0]->area_name; ?></b></label>   
<p><label class="w3-label w3-col m12 w3-text-brown"><b>: <?php echo date('d M,y H:i A',strtotime($viewrequirements[0]->requirement_date)); ?></b></label>      
<p><label class="w3-label w3-col m12 w3-text-brown"><b>: <?php echo $viewrequirements[0]->requirement_des; ?></b></label> 
</div></p><div id="msg"></div>
</div>
<div class="w3-col m12" id="tid" style="overflow-x:scroll;">
	
 <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                 
                  <th>Friend id</th>
                  <th>Friend Name</th>
                  <th>Email</th>
				  <th>Mobile</th>
				  <th></th>
                </tr>
                </thead>
                <tbody>
				<?php 
		
				foreach($allfriends as $val)
				{
					
					echo '
					<tr>
				     <td>'.$val['user_id'].'</td>
					  <td>'.$val['user_full_name'].'</td> 
					  <td>xxx</td>
					  <td>xxx</td>
					 <td> ';
					 if($val['refer_active'] ==1 )
					{
						 
						 echo ' <button id="refbtn-'.$val['user_id'].'" class="w3-btn w3-green")">Already Refered</button>'	;
					
					}
					 else{
						echo ' <button id="refbtn-'.$val['user_id'].'" class="w3-btn w3-red" onclick="referFriend('.$val['user_id'].')">Refer Friend</button>'	;
					 }
					 
					
					 
					 
					echo '</td>	  
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

