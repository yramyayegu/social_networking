<?php
    include("config.php");
	 if(isset($_POST['opwd']))	
	 {		 
	  $old=$_POST['opwd'];
	  $new=$_POST['npwd'];
	  $cnew=$_POST['cpwd'];
	  $dbpwd=md5($new);
	  $dbopwd=md5($old);
	  $emp_id=$_SESSION['admin_id'];
	  
	  if($old == "" || $new == "" )
	  {
		  echo '<b style="color:red" >Please enter old and new passwords</b>';
	  }
	  else if($new != $cnew)
	  {
		   echo '<b style="color:red" >New and confirm passwords did not matched</b>';
	  }  
	  else
	  {
		  
	  
	  if($conn)
	   {
		   
		   $sql=$conn->prepare('SELECT * FROM admin WHERE admin_id=? AND admin_password=?');
		   $sql->bindParam(1,$emp_id);
		   $sql->bindParam(2,$dbopwd);
		   if($sql->execute())
		   {
			 $count=$sql->rowCount();
			 if($count>0)
			 {
				  $sql=$conn->prepare('update admin set admin_password=? WHERE admin_id=?');
					   $sql->bindParam(1,$dbpwd);
					   $sql->bindParam(2,$emp_id);
					   if($sql->execute())
					   {
						echo '1'; 	 
					   }
					   else
					   {
						  echo '<b style="color:red" >Update failed</b>';  
					   }
				 
				 
			 }
			 else{
				 
				  echo '<b style="color:red" >Wrong old password</b>';
			 }
		   }
		   
		   
		   
		   
		  
		   
		   
		   
		}
	  else
	  {
		  echo '<b style="color:red" >The server is busy, please try again after sometime</b>';
	  }
	  
	  }
	 }
	 else
	 {
		 echo '<b style="color:red" >Please enter all info</b>';
	 }
	 
	?> 