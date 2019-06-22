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
 <link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
 $(document).ready(function()
	{
			table();
	$("#formid").on('submit',function(e)
	{
		
		var name=document.getElementById('name').value
		var email=document.getElementById('email').value
		if(name !="" & email!="")
		{
			
		$.post("ajax-add-employees.php",$("#formid").serialize(),function(output,status)
			{
				if(output== 1)
				{
					
					document.getElementById('name').value="";
					document.getElementById('email').value="";
					
					document.getElementById('msg').style.display="block";
							
					setTimeout(function()
					{ 
					document.getElementById('msg').style.display="none";
					}, 3000);
						
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
				document.getElementById('msg1').innerHTML='<b style="color:red" >Enter Name and Password</b>';	
			}
		
	});

	});
		
  function table()
	{
		$.post("ajax-add-employees.php",{"tabkey":"some"},function(output,status)
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
		document.getElementById("editep---"+data).style.display="none";
		document.getElementById("edite---"+data).style.display="block";
		
		document.getElementById("editid---"+data).style.display="none";
		document.getElementById("saveid---"+data).style.display="block";
		document.getElementById("cancelid---"+data).style.display="block";
	}
	function cancelData(cancel)
	{
	document.getElementById("sd1---"+cancel).disabled=true;
	document.getElementById("editep---"+cancel).style.display="block";
		document.getElementById("edite---"+cancel).style.display="none";
		
		document.getElementById("editid---"+cancel).style.display="block";
		document.getElementById("saveid---"+cancel).style.display="none";
		document.getElementById("cancelid---"+cancel).style.display="none";
	
	}
	function saveData(save)
	{
	
		var status1=document.getElementById("sd1---"+save).value;
		var emailid=document.getElementById("edite---"+save).value;
		
		$.post("ajax-add-employees.php",{"empid":save,"leadstatus":status1,"emailid":emailid},
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
<h1 class="w3-panel w3-round w3-teal w3-margin w3-card-4">Add Employees</h1>






<div class="w3-container">
  
  <div class="w3-panel w3-border w3-row">
   

  <div class="w3-col m6 w3-margin-left w3-padding">


  <form class="w3-container" action="" id="formid" method="post">
    <p>      
    <label class="w3-label w3-text-brown"><b>Name</b></label>
    <input class="w3-input w3-border w3-sand" name="name" id="name" type="text"></p>
    <p>      
    <label class="w3-label w3-text-brown"><b>Email</b></label>
    <input class="w3-input w3-border w3-sand" name="email" id="email" type="text" ></p>
	 <p>
    <button class="w3-btn w3-brown">Add Employee</button></p>
	<p id="msg1"></p>
  </form>
</div>
	
		<div class="w3-container w3-rest " >
		
     <div  id="msg" class="w3-panel w3-card-4 w3-green w3-round w3-center w3-animate-opacity" style="width:223px;float:right;display:none">
    <span onclick="this.parentElement.style.display='none'" class="w3-closebtn">&times;</span>
	<h3>Done!</h3>
    <p>Employee Added sucessfull</p>
	
  </div>
  
</div>
	
  </div>
  
  
  <div id="tid1" ></div>
  <div id="tid">
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

