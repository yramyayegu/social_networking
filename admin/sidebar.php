<?php
include('config.php');
	 
	  $employee_id=$_SESSION['admin_id'];
	 
	  $employee_name="";
	  if($conn)
	   {
		   $sql=$conn->prepare('SELECT * FROM admin WHERE admin_id=?');
		   $sql->bindParam(1,$employee_id);
		  
		   if($sql->execute())
		   {
			 $count=$sql->rowCount();
			 if($count>0)
			 {
				$row=$sql->fetch(PDO::FETCH_OBJ); 
				
				$employee_name=$row->admin_full_name;
				
			 }
				 
		   }
		   
		}
	
echo '
	<div class="w3-container">
  <div class="w3-card-4">
    <div class="w3-container">
	<img src="images/male.png" class="w3-center w3-circle" alt="Person" style="width:150px">
      
    </div>
    <p class="w3-btn-block w3-light-blue">'.$employee_name.'</p>
  </div>
</div>
	
	
	';



	?> 



 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 
 <div class="w3-accordion w3-light-blue">
    <button onclick="myFunction('Demo1')" class="w3-btn-block w3-left-align w3-deep-purple">
	<i class="glyphicon glyphicon-user w3-padding"></i>Personal 
	</button>
	
    <div id="Demo1" class="w3-accordion-content w3-container w3-show">
        <ul class="w3-ul">
   
    <li><a href="change-password.php">Change Password</a></li>
  </ul>
    </div>
	<button onclick="myFunction('Demo3')" class="w3-btn-block w3-left-align w3-deep-purple">
	<i class="glyphicon glyphicon-usd w3-padding"></i>Sectors</button>
    <div id="Demo3" class="w3-accordion-content w3-container w3-show">
       <ul class="w3-ul">
    <li><a href="add-sectors.php">Add Sectors</a></li>
    
  </ul>
    </div>
  
	<button onclick="myFunction1('Demo4')" class="w3-btn-block w3-left-align w3-deep-purple">
	<i class="glyphicon glyphicon-usd w3-padding"></i>Chapters</button>
    <div id="Demo4" class="w3-accordion-content w3-container w3-show">
       <ul class="w3-ul">
    <li><a href="add-chapters.php">Add Chapter</a></li>
    
  </ul>
    </div>
	<button onclick="myFunction('Demo5')" class="w3-btn-block w3-left-align w3-deep-purple">
	<i class="glyphicon glyphicon-user w3-padding"></i>Locations 
	</button>
	
    <div id="Demo5" class="w3-accordion-content w3-container w3-show">
        <ul class="w3-ul">
   
    <li><a href="add-cities.php">Add Cities</a></li>
	<li><a href="add-areas.php">Add Areas</a></li>
  </ul>
    </div>
	
	
  </div>
  <script>
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
function myFunction1(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else { 
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>