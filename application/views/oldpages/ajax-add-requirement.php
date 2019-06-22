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
	
    if(isset($_POST['sector']))	
	 {	
         $sector=$_POST['sector'];	 
		 $require_description=$_POST['descri'];
		 $city=$_POST['city'];
		 $area=$_POST['area'];
		
		
	 
	  if($sector == "" && $require_description == "")
	  {
		  echo '<b style="color:red" >Please enter all feilds</b>';
	  }
	  else
	  {
		  
		  if($conn)
		   { 
	   
						   $sql=$conn->prepare('insert into requirements(sector_ids,user_ids,city_ids,area_ids,requirement_des,requirement_date) values(?,?,?,?,?,NOW())');
						   $sql->bindParam(1,$sector);
						   $sql->bindParam(2,$_SESSION['user_id']);
						   $sql->bindParam(3,$city);
						   $sql->bindParam(4,$area);						   
						   $sql->bindParam(5,$require_description);
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
     
	 
	
	 
	 
	 
	 
	