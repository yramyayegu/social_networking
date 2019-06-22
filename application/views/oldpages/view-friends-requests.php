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
<title>View Friends</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles.css">
<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/styles1.css">


<link rel="stylesheet" href="<?php echo base_url().$css_files;?>css/datatables/dataTables.bootstrap.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(function()
	{
		
		$("#formid").on('submit',function(e)
		{		
		  e.preventDefault();	
		  $.post("<?php echo site_url('search-requirement');?>",$('formid').serialize(),function(output,status)
			{
				
					document.getElementById('tid').innerHTML=output;
				
				
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
	function deleterequest(x)
	{
		var status=confirm("Are you sure to deny request?");
		if(status == true)
		{
		 document.getElementById("delbtn-"+x).innerHTML='<b style="color:#fff">Deleting...</b>';
		 $.post("<?php echo site_url('ajax-del-friend');?>",{"delfriend":x},function(output,status)
			{
			
				location.href="<?php echo site_url('view-friends-requests')?>";
				
	        });
			
		}

	}

	function confirmFriend(x)
	{
		
		 document.getElementById("acceptbtn-"+x).innerHTML='<b style="color:#fff">Adding...</b>';
		 $.post("<?php echo site_url('ajax-confirm-friend');?>",{"confriend":x},function(output,status)
			{
			
				location.href="<?php echo site_url('view-friends-requests')?>";
				
	        });
			
		

	}
	function unFriend(x)
	{
		
		var status=confirm("Are you sure to unfriend?");
		if(status == true)
		{
		 document.getElementById("unbtn-"+x).innerHTML='<b style="color:#fff">Loading...</b>';
		 $.post("<?php echo site_url('ajax-un-friend');?>",{"unfriend":x},function(output,status)
			{
			
				location.href="<?php echo site_url('view-friends-requests')?>";
				
	        });
			
		}
			
		

	}
</script>
</head>
<body class="w3-sand">

<?php include('header.php'); ?>
<div class="backgrounds2">




<h1 class="w3-center w3-text-white" style="font-weight: 700;">View Friends</h1>

</div>
<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
		<div class="w3-col m9  w3-margin w3-border">

    <div class="container">
<!--		<h2>Latest Leads</h2>
	  <label class="w3-label w3-col m12 w3-text-brown"><b>Search by</b></label>

	<div class="w3-col m12 w3-margin-bottom">
  <form class="w3-container" action="" id="formid" method="post">
	<div class="w3-col m2 w3-padding-right">
    <p>      
  
	<select class="w3-select w3-border" name="sector" id="sector"> 
	<option value="">Select Sector</option> 
	<?php 
	/*foreach($sectors as $sec)	
	{
	echo'  <option value="'.$sec->sector_id.'">'.$sec->sector_name.'</option>';
	}*/			
	?> 	
	</select></p></div>
	
	<div class="w3-col m2 w3-padding-right">
    <p>      
   
	<select class="w3-select w3-border" name="name" id="name"> 
	<option value="">Select Name</option> 
	<?php 
	/*foreach($users as $user)	
	{
	echo'  <option value="'.$user->user_id.'">'.$user->user_full_name.'</option>';
	}	*/		
	?> 	
	</select></p></div>
	
	<div class="w3-col m2 w3-padding-right">
    <p>      
  
	<select class="w3-select w3-border" name="city" id="city" onchange="getAreas(this.value)"> 
	<option value="">Select City</option> 
	<?php 
	/*foreach($city as $citys)	
	{
	echo'  <option value="'.$citys->city_id.'">'.$citys->city_name.'</option>';
	}	*/		
	?> 	
	</select></p></div>
	<div class="w3-col m2 w3-padding-right">
    <p>      
  
	<select class="w3-select w3-border" name="area" id="area"> 
	<option value="">Select Area</option> 
	
	</select></p></div>

	
	
	<div class="w3-col m3"><p><button type="submit" class="w3-btn w3-green">Search</button></p></div>
	</form>
	
	
	</div>-->
	
	
	



	</div>


<div class="w3-col m12" id="tid" style="overflow-x:scroll;">
  <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                 
                  <th>Customer id</th>
                  <th>Customer Name</th>
                  <th>Email</th>
				  <th>Mobile</th>
				  <th></th>
                </tr>
                </thead>
                <tbody>
				<?php 
				
				$user_id=$_SESSION['user_id'];
				foreach($viewfriendsrequests as $val)
				{
					
					echo '
					 <tr>
				     <td>'.$val['user_id'].'</td>
					 <td>'.$val['user_full_name'].'</td>
					 <td>xxx</td>
					 <td>xxx</td>
					 <td>';
					 if($val['my_friend_active'] == 0 && $val['friend_id'] == $val['user_id'] && $val['my_id'] == $user_id  )
					 {
						  echo ' <button  class="w3-btn w3-green" >Request sent</button>';
					 
					 }
					  if($val['my_friend_active'] == 0 && $val['friend_id']== $user_id && $val['my_id'] == $val['user_id']  )
					 {
					
					echo ' <button id="acceptbtn-'.$val['my_friend_id'].'" class="w3-btn w3-green" onclick="confirmFriend('.$val['my_friend_id'].')">Accept Request</button>
					 
					 <button id="delbtn-'.$val['my_friend_id'].'" class="w3-btn w3-red" onclick="deleterequest('.$val['my_friend_id'].')">Deny Request</button>';
					 }
					 else if($val['my_friend_active'] == 1 && $val['my_id'] == $user_id && $val['friend_id'] == $val['user_id'])
					 {
					 echo ' <button id="unbtn-'.$val['my_friend_id'].'" class="w3-btn w3-green" onclick="unFriend('.$val['my_friend_id'].')">Un Friend</button>';
					 }
					 else if($val['my_friend_active'] == 1 && $val['my_id'] == $val['user_id'] && $val['friend_id'] == $user_id)
					 {
					 echo ' <button id="unbtn-'.$val['my_friend_id'].'" class="w3-btn w3-green" onclick="unFriend('.$val['my_friend_id'].')">Un Friend</button>';
					 }
					 else if($val['my_friend_active']== 2)
					 {
					 echo ' <button id="unbtn-'.$val['my_friend_id'].'" class="w3-btn w3-red" onclick="unFriend('.$val['my_friend_id'].')">Add Friend</button>';
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


<script>

	function example(){
		$('#example1').DataTable({ 
		"paging": true,
		"lengthChange": true,
		"searching": true, 
		"ordering": true,
		"info": true,
		"autoWidth": false
		});
		}
		</script>

<script src="<?php echo base_url().$css_files;?>js/datatables/jquery.dataTables.min.js"></script>
<script src="<?php echo base_url().$css_files;?>js/datatables/dataTables.bootstrap.min.js"></script>


</body>
</html> 

