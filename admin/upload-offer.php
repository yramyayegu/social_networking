<?php
include('config.php');
if(!isset($_SESSION['employee_id']))
{
	header("location:index.php");
}
	 
	  $employee_id=$_SESSION['employee_id'];
	  $employee_offer="";
	  
	  if($conn)
	   {
		   $sql=$conn->prepare('SELECT * FROM employee_login WHERE employee_login_id=?');
		   $sql->bindParam(1,$employee_id);
		  
		   if($sql->execute())
		   {
			 $count=$sql->rowCount();
			 if($count>0)
			 {
				$row=$sql->fetch(PDO::FETCH_OBJ); 
				$employee_offer=$row->employee_offer_letter;
				
			 }
				 
		   }
		   
		}
	



	?> 
<!DOCTYPE html>
<html>

<head>
<title>iLander Employees</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles.css">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

</head>
<body class="w3-sand">

<?php include('header.php'); ?>

<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m10">
<h1 class="w3-panel w3-round w3-teal w3-margin">Upload Offer Letter</h1>








<div class="w3-col m6 w3-margin-left">
<?php
	
if($employee_offer == "")
{
	
}	
else
{
	echo '<a href="admin/uploads/offer/'.$employee_offer.'" download>Download</a>';
}
?>



</div>








</div>


 </div>
</div>

<?php include('footer.php'); ?>





</body>
</html> 

