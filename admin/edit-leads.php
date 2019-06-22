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
 $(document).ready(function()
	{
			
	$("#formid").on('submit',function(e)
	{
		e.preventDefault(); 
		var cname=document.getElementById('cname').value
		if(cname !="")
		{
			
		$.post("ajax-edit-leads.php",$("#formid").serialize(),function(output,status)
			{
				if(output== 1)
				{
					
				document.getElementById('msg').innerHTML='<b style="color:green" >updated sucessfully</b>';	
				}
				else
				{
					document.getElementById('msg').innerHTML=output;
				}
					
			});
			}
			else
			{
				document.getElementById('msg').innerHTML='<b style="color:red" >Client name requried</b>';	
			}
		
	});

	});
		

		
function NumbersOnly(MyField, e, dec)
{		
	var key;
	var keychar;
	if (window.event)
		key = window.event.keyCode;	
	else if (e)		
		key = e.which;
	else			  
		return true;
	keychar = String.fromCharCode(key);	
	if ((key==null) || (key==0) || (key==8) || (key==9) || (key==13) || (key==27) )
		return true;	
	else if ((("0123456789").indexOf(keychar) > -1))
		return true;	
	else if (dec && (keychar == "."))	
	{			
		MyField.form.elements[dec].focus();		
	   return false;	
	}			
	else		
		return false;
}


function editData(data)
	{
		document.getElementById("sd1---"+data).disabled=false;
		document.getElementById("editid---"+data).style.display="none";
		document.getElementById("saveid---"+data).style.display="block";
		document.getElementById("cancelid---"+data).style.display="block";
	}
	function cancelData(cancel)
	{
	document.getElementById("sd1---"+cancel).disabled=true;
		document.getElementById("editid---"+cancel).style.display="block";
		document.getElementById("saveid---"+cancel).style.display="none";
		document.getElementById("cancelid---"+cancel).style.display="none";
	
	}
	function saveData(save)
	{
		
		var status1=document.getElementById("sd1---"+save).value;
		
		$.post("ajax-add-leads.php",{"leadid":save,"leadstatus":status1},
		function(output,status)
		{
		if(output == 1)
		{
			cancelData(save);
		document.getElementById("tid1").innerHTML='<b style="color:green">Data updated successfully.</b>';	
		
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
<h1 class="w3-panel w3-round w3-teal w3-margin">Edit Leads</h1>






<div class="w3-container">
  
  <div class="w3-panel w3-border">
   <div class="w3-col m6 w3-margin-left">

<?php
			if(isset($_GET['edit_key']))
			   {
				$keys=$_GET['edit_key'];
			   }
			   ?>
  <form class="w3-container" action="" id="formid" method="post">
   <input type="hidden" name="ids" id="ids" value="<?php echo $keys; ?>">
    <?php
						 $sql=$conn->prepare('select * from leads where lead_id=?');
						 $sql->bindParam(1,$keys);
						if($sql->execute())
					   {
						$count=$sql->rowCount();
							 if($count>0)
							 {
								 
								$rowc= $sql->fetch(PDO::FETCH_OBJ);
								$rowc->client_name;
									
								
							 } 
						 }
						 ?>
    <p>      
    <label class="w3-label w3-text-brown"><b>Client Name</b></label>
    <input class="w3-input w3-border w3-sand" name="cname" id="cname" type="text" placeholder="Client Name" value="<?php echo $rowc->client_name;?>"></p>
    <p>      
    <label class="w3-label w3-text-brown"><b>Client Address</b></label>
    <input class="w3-input w3-border w3-sand" name="caddress" id="caddress" type="text" placeholder="Client Address" value="<?php echo $rowc->client_address;?>"></p>
	
	<p>      
    <label class="w3-label w3-text-brown"><b>Project Name</b></label>
    <input class="w3-input w3-border w3-sand" name="pname" id="pname" type="text" placeholder="Project Name" value="<?php echo $rowc->project_name;?>"></p>
	<p>      
    <label class="w3-label w3-text-brown"><b>Project Type</b></label>
    <input class="w3-input w3-border w3-sand" name="ptype" id="ptype" type="text" placeholder="Project Type" value="<?php echo $rowc->project_type;?>"></p>
	<p>      
    <label class="w3-label w3-text-brown"><b>No.of Pages</b></label>
    <input class="w3-input w3-border w3-sand" onkeypress="return NumbersOnly(this,event)" name="no_pages" id="no_pages" type="text" placeholder="No.of Pages" value="<?php echo $rowc->no_of_pages;?>"></p>
	
	<p>      
    <label class="w3-label w3-text-brown"><b>Client Email</b></label>
    <input class="w3-input w3-border w3-sand" name="cemail" id="cemail" type="text" placeholder="Client Email" value="<?php echo $rowc->client_email;?>"></p>
	
	<p>      
    <label class="w3-label w3-text-brown"><b>Client Mobile</b></label>
    <input class="w3-input w3-border w3-sand" onkeypress="return NumbersOnly(this,event)" maxlength="10" name="cmobile" id="cmobile" type="text" placeholder="Client Mobile" value="<?php echo $rowc->client_mobile;?>"></p>
	
	<p>      
    <label class="w3-label w3-text-brown"><b>Project Cost</b></label><br>
    <input class="w3-input w3-border w3-col m4 w3-sand w3-margin-right" onkeypress="return NumbersOnly(this,event)" name="pfrom" id="pfrom" type="text" placeholder="From" value="<?php echo $rowc->cost_from;?>">
    <input class="w3-input w3-border w3-sand w3-col m4" onkeypress="return NumbersOnly(this,event)" name="pto" id="pto" type="text" placeholder="To" value="<?php echo $rowc->cost_to;?>"><br></p>
	
	<p> <br>     
    <label class="w3-label w3-text-brown"><b>Company Cost</b></label>
    <input class="w3-input w3-border w3-sand" onkeypress="return NumbersOnly(this,event)" name="ccost" id="ccost" type="text" placeholder="Company Cost" value="<?php echo $rowc->company_cost;?>"></p>
	
	<p>      
    <label class="w3-label w3-text-brown"><b>Project Description</b></label>
    <textarea class="w3-input w3-border w3-sand" name="pdesc" id="pdesc" placeholder="Project Description"> <?php echo $rowc->project_description;?></textarea></p>
	
	
	
    <p>
    <button class="w3-btn w3-brown">Update Lead</button></p>
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





</body>
</html> 


<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
	 $(".my-colorpicker2").colorpicker();
  });
</script>
</body>
</html>
