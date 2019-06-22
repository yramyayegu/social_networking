<?php
    include("config.php");
	 if(isset($_POST['umail']))	
	 {		 
	  $email=$_POST['umail'];
	  $pswd=$_POST['upwd'];
	  $pswd1=md5($pswd);	
	  if($conn)
	   {
		   $sql=$conn->prepare('SELECT * FROM  admin WHERE admin_email=? AND admin_password=?');
		   $sql->bindParam(1,$email);
		   $sql->bindParam(2,$pswd1);
		   if($sql->execute())
		   {
			 $count=$sql->rowCount();
			 if($count>0)
			 {
				$row=$sql->fetch(PDO::FETCH_OBJ); 
				if($row->admin_active==1)
				{
						$employee_id=$row->admin_id;
						$_SESSION['admin_id']=$employee_id;
						
						$_SESSION['admin_email']=$row->admin_email;
						$_SESSION['admin_full_name']=$row->admin_full_name;
						if(isset($_SESSION['admin_id']))
						{
							echo '1';	
						}
				}
				else
				{
					echo '<b style="color:red" >Your account is deactivated, please contact your management</b>';
				}
				
				
			 }
			 else
			  {
				echo '<b style="color:red" >Invalid email or password</b>';  
			  }		 
		   }
		   else
		   {
			  echo '<b style="color:red" >Invalid email or password</b>';  
		   }
		}
	  else
	  {
		  echo '<b style="color:red" >The server is busy, please try again after sometime</b>';
	  }
	 }
	 else
	 {
		 echo '<b style="color:red" >Please enter email and password</b>';
	 }
	 
	?> 