<div class="w3-container" style="background-color: #6d0203;">
 <div class="w3-row w3-padding">
 <div class="w3-col m2">
 <a href="index.php"> <img class="w3-image" src="images/konnipatis222.jpg"></a>
 </div>
 <div class="w3-col m10 w3-right-align">
<?php
if(isset($_SESSION['admin_id']))
{
	echo '<a class="w3-text-white" href="logout.php">Logout</a>';
}

?>
 </div>
 
 
 </div>
</div>