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
<title>Add Areas</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles.css">
 <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>

<script>

 $(document).ready(function()
	{
			
	$("#formid").on('submit',function(e)
	{
		
			e.preventDefault();
		var cname=document.getElementById('city').value;
        var area_name=document.getElementById('area').value;
		if(cname !="" && area_name!="")
		{
			
		 $.post("ajax-add-areas.php",$("#formid").serialize(),function(output,status)
			{
			
				if(output== 1)
				{
					
					document.getElementById('city').value="";
	                document.getElementById('area').value="";
		        
					document.getElementById('msg1').innerHTML='<b style="color:green" >Data added Successfully</b>';
					document.getElementById('msg1').style.display="block";
					
						
					table();
				}
				else
				{
					document.getElementById('msg1').innerHTML=output;
				}
					
			});
		}
			else
			{
				document.getElementById('msg1').innerHTML='<b style="color:red" >All Fields are required</b>';	
			}
		
	});

	});
		
  function table()
	{
		$.post("ajax-add-areas.php",{"tabkey":"some"},function(output,status)
		{
			document.getElementById('tid').innerHTML=output;
			example();
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
function editData(data)
	{
		document.getElementById("sd1---"+data).disabled=false;
		document.getElementById("snid---"+data).style.display="none";				
		document.getElementById("snid1---"+data).style.display="block";			
	
		
		document.getElementById("editid---"+data).style.display="none";
		document.getElementById("saveid---"+data).style.display="block";
		document.getElementById("cancelid---"+data).style.display="block";
	}
	function cancelData(cancel)
	{
	document.getElementById("sd1---"+cancel).disabled=true;
	document.getElementById("snid---"+cancel).style.display="block";			
	document.getElementById("snid1---"+cancel).style.display="none";	

	document.getElementById("editid---"+cancel).style.display="block";
	document.getElementById("saveid---"+cancel).style.display="none";
	document.getElementById("cancelid---"+cancel).style.display="none";
	
	
	}
	function saveData(save)
	{
	    var active1=document.getElementById("sd1---"+save).value;
		var area=document.getElementById("snid1---"+save).value;
			
	
		
		$.post("ajax-add-areas.php",{"empid":save,"area":area,"active":active1},
		function(output,status)
		{
		
		if(output == 1)
		{
			cancelData(save);
		document.getElementById("tid1").innerHTML='<b style="color:green">Data updated successfully.</b>';	
		table();
		}
		
		});
	}
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

<h1 class="w3-panel w3-round w3-teal w3-margin w3-card-4">Add Areas</h1>
<div class="w3-container">
  <div class="w3-panel w3-border ">

   <div class="w3-col m6 w3-margin-left ">
  

  <form class="w3-container" action="" id="formid" method="post">
   <p>      
    <label class="w3-label w3-text-brown"><b>City Name</b></label>
	<select class="w3-select" name="city" id="city" onchange="table(this.value)">  <option value="">Select City</option>
	<?php 
	$sql1=$conn->prepare('select city_id,city_name from cities where city_active=1');		
	if($sql1->execute())				
		{					
	$count1=$sql1->rowCount();	
	if($count1>0)				
		{						
							
	while($row1=$sql1->fetch(PDO::FETCH_OBJ))		
		{				
	echo'  <option value="'.$row1->city_id.'">'.$row1->city_name.'</option>';	
	}					
	}				
	} ?> 		
	</select></p>
    <p>      
    <label class="w3-label w3-text-brown"><b>Area Name</b></label>
    <input type="text" class="w3-input w3-border w3-sand" name="area" id="area" placeholder="Area Name"></p>
	
	
    <button type="submit"  class="w3-btn w3-brown">Add Areas</button></p>
	<div id="msg1"></div>
  </form>
</div>
	
		<div class="w3-container w3-rest " >
		
     <div  id="msg">
    
	
  </div>
  
</div>
	
  </div>
  
  
  <div id="tid1" ></div>
  <div id="tid" style="overflow-y:scroll" class="w3-col m12">
 
</div>
</div>

</div>


 </div>
</div>

<?php include('footer.php'); ?>

<script src="plugins/datatables/jquery.dataTables.min.js"></script>
<script src="plugins/datatables/dataTables.bootstrap.min.js"></script>



</body>
</html> 

