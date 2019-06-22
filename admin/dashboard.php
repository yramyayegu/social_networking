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
<title>Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles.css">
</head>
<body class="w3-sand">

<?php include('header.php'); ?>

<div class="w3-container w3-margin">
   <div class="w3-row w3-margin">
 
 <div class="w3-col m2 w3-margin-top ">
 <?php include('sidebar.php'); ?>
</div>
<div class="w3-col m10 w3-margin-left">
 

</div>


 </div>
</div>

<?php include('footer.php'); ?>


</body>
</html> 

