<?php

	 
	  $user_id=$_SESSION['user_id'];
	  $user_full_name=$_SESSION['user_full_name'];
      $user_photo=$_SESSION['user_photo'];
	 
if($user_photo == "")
{
	echo '
	<div class="w3-container">
  <div class="w3-card-4" style="width: 208px;margin-left: -15px;">
    <div class="w3-container">
	<img src="'.base_url().'/assets/images/male.png" class="w3-center w3-circle" alt="Person" style="width:150px">
      
    </div>';
	
		 echo '<p class="w3-btn-block w3-light-blue">'.$_SESSION['user_full_name'].'</p>';
	
	
   
	echo '<a href="'.site_url('logout').'" class="w3-btn-block w3-light-blue">Logout</a>
  </div>
</div>
	
	
	';
}	
else
{
	echo '
	
	<div class="w3-container">
  <div class="w3-card-4" style="width: 208px;margin-left: -15px;">
    <div class="w3-container">
      <img src="'.base_url().'/assets/uploads/photos/'.$user_photo.'" alt="Person" class="w3-center w3-circle" style="width:150px">
    </div>
    <p class="w3-btn-block w3-light-blue">'.$user_full_name.'</p>
	<a href="'.site_url('logout').'" class="w3-btn-block w3-light-blue">Logout</a>
  </div>
</div>';
}
	?> 



 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
 
 <div class="w3-accordion w3-white">
    <button onclick="myFunction('Demo1')" class="w3-btn-block w3-left-align" style="background-color: #6d0203;">
	<i class="glyphicon glyphicon-user w3-padding"></i>Personal Profile 
	</button>
	
    <div id="Demo1" class="w3-accordion-content w3-container w3-show">
        <ul class="w3-ul">
 
			<li><a href="<?php echo site_url('update-photo');?>">Update Photo</a></li>
			<li><a href="<?php echo site_url('change-password');?>">Change Password</a></li>
			<li><a href="<?php echo site_url('my-profile');?>">My profile</a></li>
		  </ul>
    </div>
    <button onclick="myFunction('Demo2')" class="w3-btn-block w3-left-align" style="background-color: #6d0203;">
	<i class="glyphicon glyphicon-file w3-padding"></i>Bussiness Profile</button>
    <div id="Demo2" class="w3-accordion-content w3-container w3-show">
        <ul class="w3-ul">
    
	<li><a href="#">Bank details</a></li>
  </ul>
    </div>
	<button onclick="myFunction('Demo3')" class="w3-btn-block w3-left-align" style="background-color: #6d0203;">
			<i class="glyphicon glyphicon-usd w3-padding"></i>
	References</button>
    <div id="Demo3" class="w3-accordion-content w3-container w3-show">
       <ul class="w3-ul">
	
    <li><a href="<?php echo site_url('view-reference');?>">view References</a></li>
  </ul>
    </div>
	<button onclick="myFunction('Demo4')" class="w3-btn-block w3-left-align" style="background-color: #6d0203;">
	<i class="glyphicon glyphicon-usd w3-padding"></i>
	Requirements</button>
    <div id="Demo4" class="w3-accordion-content w3-container w3-show">
       <ul class="w3-ul">
	
    <li><a href="<?php echo site_url('add-requirement');?>">Add Requirement</a></li>
	<li><a href="<?php echo site_url('view-requirement');?>">View Requirement</a></li>
  </ul>
    </div>
	<button onclick="myFunction('Demo5')" class="w3-btn-block w3-left-align" style="background-color: #6d0203;">
			<i class="glyphicon glyphicon-user w3-padding"></i>
	Make Friends</button>
    <div id="Demo5" class="w3-accordion-content w3-container w3-show">
       <ul class="w3-ul">
	
    <li><a href="<?php echo site_url('add-friends');?>">Add Friends</a></li>
	<li><a href="<?php echo site_url('view-friends-requests');?>">View Friends Request</a></li>
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
</script>