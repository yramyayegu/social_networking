<?php
try

	 {

		 $conn=new PDO("mysql:host=$db_server;dbname=$db_database;",$db_username,$db_password); 

		 $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);

	 }

	 catch(PDOException $e)

	 {

		/*echo $e->getMessage(); */

		 

	 }
	
    if(isset($_POST['pid']))	
	 {	
         $sector=$_POST['sector'];	 
		 $require_description=$_POST['update'];
		$req=$_POST['pid'];
		
	 
	  if($sector == "" && $require_description == "")
	  {
		  echo '<b style="color:red" >Please enter all feilds</b>';
	  }
	  else
	  {
		  
		  if($conn)
		   { 
	   
						  $sql=$conn->prepare('update requirements set sector_ids=?,requirement_des=? where requirement_id=?');
						   $sql->bindParam(1,$sector);
						   $sql->bindParam(2,$require_description);
						   $sql->bindParam(3,$req);
						   if($sql->execute())
						   {
							echo '1'; 	 
						   }
						   else
						   {
							  echo '<b style="color:red" >Details Already existed</b>';  
						   }
			}
		  else
		  {
			  echo '<b style="color:red" >The server is busy, please try again after sometime</b>';
		  }
	  
	  }
	 }
     
	  
	
	 
	 
	 
	 
	