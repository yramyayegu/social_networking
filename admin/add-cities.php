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

<title>Add Cities</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="css/styles.css">

<link rel="stylesheet" href="plugins/datatables/dataTables.bootstrap.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<script type="text/javascript" src="ckeditor/ckeditor.js"></script>

<script>

 $(document).ready(function()

	{

			table();

	$("#formid").on('submit',function(e)

	{

		e.preventDefault(); 

		var cname=document.getElementById('cname').value;

		if(cname !="")

		{

			

		$.post("ajax-add-cities.php",$("#formid").serialize(),function(output,status)

			{

				if(output== 1)

				{

					document.getElementById('cname').value="";
					document.getElementById('msg').innerHTML='<b style="color:green" >Added sucessfully</b>';	

				}

				else

				{

					document.getElementById('msg').innerHTML=output;
table();
				}
		

					

			});

			}

			else

			{
				document.getElementById('msg').innerHTML='<b style="color:red" >City name requried</b>';	
			}
		table();
	});
});

		

  function table()
	{
		document.getElementById('tid').innerHTML='<b style="color:red;">Please Wait</b>';
		$.post("ajax-add-cities.php",{"tabkey":"some"},function(output,status)
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
		document.getElementById("sid---"+data).style.display="none";
		document.getElementById("sid1---"+data).style.display="block";
		document.getElementById("editid---"+data).style.display="none";
		document.getElementById("saveid---"+data).style.display="block";
		document.getElementById("cancelid---"+data).style.display="block";
	}
	function cancelData(cancel)
	{
		document.getElementById("sid---"+cancel).style.display="block";
		document.getElementById("sid1---"+cancel).style.display="none";
		document.getElementById("editid---"+cancel).style.display="block";
		document.getElementById("saveid---"+cancel).style.display="none";
		document.getElementById("cancelid---"+cancel).style.display="none";
	}
	function saveData(save)
	{
		var status1=document.getElementById("sid1---"+save).value;
		$.post("ajax-add-cities.php",{"leadid":save,"leadstatus":status1},
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

<h1 class="w3-panel w3-round w3-teal w3-margin w3-card-4">Add Cities</h1>
<div class="w3-container">
  <div class="w3-panel w3-border ">

   <div class="w3-col m6 w3-margin-left " >





  <form class="w3-container " action="" id="formid" method="post">

    <p>      

    <label class="w3-label w3-text-brown"><b>City Name</b></label>

    <input class="w3-input w3-border w3-sand" name="cname" id="cname" type="text" placeholder="City Name"></p>

   
    <p>

    <button class="w3-btn w3-brown">Add Cities</button></p>

	<p id="msg"></p>

  </form>



</div>

	

	

  </div>

  

  

  <div id="tid1"></div>

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



