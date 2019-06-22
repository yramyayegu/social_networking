<!DOCTYPE html>
<html>
<title>KONNIPATIS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/styles1.css">
<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,900,500,700' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Tangerine">

<style>

</style>

<body>
<?php include('header.php'); 	?>
<div class="backgrounds2">



<h1 class="abc"><b>Find A Chapter</b></h1>
<h4 class="w3-text-white subheading">Get In Touch With Us & Visit A KONNIPATIS Chapter In Your City</h4>
</div>

<div class="w3-row">
    <div class="w3-col" style="width:10%"><p></p></div>
    <div class="w3-col" style="width:60%;"> 
	
	<button onclick="myFunction('Demo1')" class="w3-btn-block w3-left-align">
Accordion 1</button>
<div id="Demo1" class="w3-hide w3-border">
  <ul class="w3-ul">
    <li>Jill</li>
    <li>Eve</li>
    <li>Adam</li>
  </ul>  
</div>

   
	</div>	
    <div class="w3-col" style="width:20%"><p></p></div>
</div>


<div class="w3-center w3-padding">	
	<button class="w3-button w3-round-large w3-light-green w3-text-white" style="width:30%"> Get Invited to a KONNIPATIS Meeting</button>
	
	</div>

<br>
<br>



	

<?php include('footer.php'); 	?>
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
</body>
</html>
