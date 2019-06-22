<?php
    include("config.php");
	 if(isset($_POST['fname']))	
	 {		 
	  $fname=$_POST['fname'];
	  $pemail=$_POST['pemail'];
	  $emp_id=$_SESSION['employee_id'];
	  if($conn)
	   {
		   $sql=$conn->prepare('update employee_login set employee_full_name=?,employee_personal_email=? WHERE employee_login_id=?');
		   $sql->bindParam(1,$fname);
		   $sql->bindParam(2,$pemail);
		   $sql->bindParam(3,$emp_id);
		   if($sql->execute())
		   {
			echo '<b style="color:green" >Updated sucessfully</b>'; 	 
		   }
		   else
		   {
			  echo '<b style="color:red" >Update failed</b>';  
		   }
		}
	  else
	  {
		  echo '<b style="color:red" >The server is busy, please try again after sometime</b>';
	  }
	 }
	 else
	 {
		 echo '<b style="color:red" >Please enter all info</b>';
	 }
	 
	?> 