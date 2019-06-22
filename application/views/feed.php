<?php
if(!isset($_SESSION['user_id']))
{
	header("location:".site_url(''));
}
$id=$_SESSION['user_id'];
?>
<!DOCTYPE html>
<html class="gr__zinka_me" lang="en-US">
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="theme-color" content="#444444">
            <link rel="shortcut icon" href="http://emc2india.com/batch2/wp-content/themes/betube/emc2.jpg">
            <link rel="apple-touch-icon" href="http://emc2india.com/batch2/wp-content/themes/betube/emc2.jpg" >
			<link href="http://zinka.me/mentors/wp-content/themes/betube/assets/images/apple-icon-touch.html" rel="apple-touch-icon">
			<meta name="msapplication-TileColor" content="#444444">
			<meta name="msapplication-TileImage" content="../mentors/wp-content/themes/betube/favicon.png">
	    	<meta name="theme-color" content="#444444">
		   <link rel="pingback" href="http://zinka.me/xmlrpc.php">
			<meta property="description" content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ornare faucibus dignissim. Pellentesque at auctor tortor. Aliquam nec eleifend neque.">
	<title>Emc2India | feed</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<script src="<?php echo base_url()?>/Zinka _ feed_files/webfont.js.download" type="text/javascript" async=""></script>
<link rel="dns-prefetch" href="http://maps.googleapis.com/">
<link rel="dns-prefetch" href="http://fonts.googleapis.com/">
<link rel="dns-prefetch" href="http://s.w.org/">
<link rel="alternate" type="application/rss+xml" title="BeTube Video WordPress Theme » Feed" href="http://zinka.me/feed/index.html">
<link rel="alternate" type="application/rss+xml" title="BeTube Video WordPress Theme » Comments Feed" href="http://zinka.me/comments/feed/index.html">
<link rel="alternate" type="application/rss+xml" title="BeTube Video WordPress Theme » Posts by admin Feed" href="http://zinka.me/feed/feed/index.html">
<script src="<?php echo base_url()?>/Zinka _ feed_files/wp-emoji-release.min.js.download" type="text/javascript" defer=""></script>
<link rel="stylesheet" href="<?php echo base_url()?>/Zinka _ feed_files/bootstrap.min.css">
  <script src="<?php echo base_url()?>/Zinka _ feed_files/jquery.min.js.download"></script>
  <script src="<?php echo base_url()?>/Zinka _ feed_files/bootstrap.min.js.download"></script>
  <link rel="stylesheet" href="<?php echo base_url()?>/Zinka _ feed_files/jquery-ui.css">
  <link rel="stylesheet" href="<?php echo base_url()?>/Zinka _ feed_files/style.css">
  <script src="<?php echo base_url()?>/Zinka _ feed_files/jquery-ui.js.download"></script>
<link rel="stylesheet" id="layerslider-css" href="<?php echo base_url()?>/Zinka _ feed_files/layerslider76f9.css" type="text/css" media="all">
<link rel="stylesheet" id="ls-google-fonts-css" href="<?php echo base_url()?>/Zinka _ feed_files/css" type="text/css" media="all">
<link rel="stylesheet" id="betube-plugin-custom-css" href="<?php echo base_url()?>/Zinka _ feed_files/betube-plugin-custom125b.css" type="text/css" media="all">
<link rel="stylesheet" id="font-awesome-four-css" href="<?php echo base_url()?>/Zinka _ feed_files/font-awesome.min1849.css" type="text/css" media="all">
<link rel="stylesheet" id="nextend_fb_connect_stylesheet-css" href="<?php echo base_url()?>/Zinka _ feed_files/facebook-btn125b.css" type="text/css" media="all">
<link rel="stylesheet" id="nextend_google_connect_stylesheet-css" href="<?php echo base_url()?>/Zinka _ feed_files/google-btn125b.css" type="text/css" media="all">
<link rel="stylesheet" id="nextend_twitter_connect_stylesheet-css" href="<?php echo base_url()?>/Zinka _ feed_files/twitter-btn125b.css" type="text/css" media="all">
<link rel="stylesheet" id="parent-style-css" href="<?php echo base_url()?>/Zinka _ feed_files/style125b.css" type="text/css" media="all">
<link rel="stylesheet" id="child-style-css" href="<?php echo base_url()?>/Zinka _ feed_files/style125b(1).css" type="text/css" media="all">
<link rel="stylesheet" id="custom-css" href="<?php echo base_url()?>/Zinka _ feed_files/custom125b.css" type="text/css" media="all">
<link rel="stylesheet" id="app-css" href="<?php echo base_url()?>/Zinka _ feed_files/app68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="betube-theme-css" href="<?php echo base_url()?>/Zinka _ feed_files/theme68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="hover-min-css" href="<?php echo base_url()?>/Zinka _ feed_files/hover-min68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="jquery.kyco.easyshare-css" href="<?php echo base_url()?>/Zinka _ feed_files/jquery.kyco.easyshare68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="ninja-slider-css" href="<?php echo base_url()?>/Zinka _ feed_files/ninja-slider68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="owl.carousel-css" href="<?php echo base_url()?>/Zinka _ feed_files/owl.carousel68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="owl.theme.default-css" href="<?php echo base_url()?>/Zinka _ feed_files/owl.theme.default68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="betube-responsive-css" href="<?php echo base_url()?>/Zinka _ feed_files/responsive68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="thumbnail-slider-css" href="<?php echo base_url()?>/Zinka _ feed_files/thumbnail-slider68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="simple-likes-public-css" href="<?php echo base_url()?>/Zinka _ feed_files/simple-likes-public68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="font-awesome-css" href="<?php echo base_url()?>/Zinka _ feed_files/font-awesome.min68b3.css" type="text/css" media="all">
<link rel="stylesheet" id="buttons-css" href="<?php echo base_url()?>/Zinka _ feed_files/buttons.min125b.css" type="text/css" media="all">
<link rel="stylesheet" id="dashicons-css" href="<?php echo base_url()?>/Zinka _ feed_files/dashicons.min125b.css" type="text/css" media="all">
<link rel="stylesheet" id="mediaelement-css" href="<?php echo base_url()?>/Zinka _ feed_files/mediaelementplayer.min51cd.css" type="text/css" media="all">
<link rel="stylesheet" id="wp-mediaelement-css" href="<?php echo base_url()?>/Zinka _ feed_files/wp-mediaelement.min125b.css" type="text/css" media="all">
<link rel="stylesheet" id="media-views-css" href="<?php echo base_url()?>/Zinka _ feed_files/media-views.min125b.css" type="text/css" media="all">
<link rel="stylesheet" id="imgareaselect-css" href="<?php echo base_url()?>/Zinka _ feed_files/imgareaselect3bf4.css" type="text/css" media="all">
<link rel="stylesheet" id="motion-ui-css" href="<?php echo base_url()?>/Zinka _ feed_files/motion-ui.min125b.css" type="text/css" media="all">
<link rel="stylesheet" id="site-css" href="<?php echo base_url()?>/Zinka _ feed_files/style125b(2).css" type="text/css" media="all">
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/loading-overlay.js.download"></script>
<script src="<?php echo base_url()?>/Zinka _ feed_files/sweetalert.min.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/jsfiels.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/jqueryb8ff.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/jquery-migrate.min330a.js.download"></script>
<link rel="stylesheet" href="<?php echo base_url()?>/Zinka _ feed_files/w3.css">
<link rel="https://api.w.org/" href="http://zinka.me/wp-json/index.html">
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://zinka.me/xmlrpc0db0.php?rsd">
<link rel="wlwmanifest" type="application/wlwmanifest+xml" href="http://zinka.me/mentors/wp-includes/wlwmanifest.xml">
<meta name="generator" content="WordPress 4.7.4">
<link rel="stylesheet" href="<?php echo base_url()?>/Zinka _ feed_files/icon">
<link rel="stylesheet" href="<?php echo base_url()?>/Zinka _ feed_files/font-awesome.min.css">
<link rel="stylesheet" href="<?php echo base_url()?>/Zinka _ feed_files/new.css">
	
	<style>	
    .postanu{
            border: none;
    box-shadow: none;
    margin-top: 0%;
    font-size: 14px;
    word-wrap: break-word;
    padding: 0;
    overflow-x: hidden;
    min-width: 320px;
    font-family: Segoe UI, Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
    line-height: 1.42em;
    color: #2d2626 !important;
    } 

    .nameanu{
border: none;
box-shadow: none;
font-weight: lighter;
margin-top: 4%;
font-size: 0.9em;
word-wrap: break-word;
color: #2d2626;
padding: 0;
overflow-x: hidden;
min-width: 320px;
font-family: Segoe UI, Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
    line-height: 1.42em;
    font-weight: 600;
    }
.commentanu{
    border: none;
    box-shadow: none;
    font-weight: lighter;
    font-size: 0.8em;
    word-wrap: break-word;
    padding: 0;
    overflow-x: hidden;
    min-width: 320px;
    font-family: Segoe UI, Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
    line-height: 1.42em;
    }
    
    .dropdown-menu {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    float: right;
    min-width: 100px;
    padding: 5px 0;
    margin: 2px -70px 0;
    font-size: 14px;
    text-align: left;
    list-style: none;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
}
.butt{
    color: #fff !important;
    background-color: #03adea !important;
    text-transform: capitalize;
    padding: 7px 15px;
    margin-top: 8px;
    font-size: 12px;
    text-decoration: none !important;
}
	</style>	<meta class="foundation-mq"></head>


	<!-- Uncomment this line if using the Off-Canvas Menu -->
	<body style='    background: #fff;' class="archive author author-admin author-1" data-gr-c-s-loaded="true" data-whatinput="mouse">

		<div class="off-canvas-wrapper" style='    overflow: hidden;'>
			<div class="off-canvas-wrapper-inner" data-off-canvas-wrapper="">

				<div class="off-canvas position-left light-off-menu " id="offCanvas-responsive" data-off-canvas="skqp3u-off-canvas" aria-hidden="true">
	<div class="off-menu-close">
        <h3>Menu</h3>
        <span data-toggle="offCanvas-responsive" aria-expanded="false" aria-controls="offCanvas-responsive"><i class="fa fa-times"></i></span>
    </div><!--off-menu-close-->
	<div class="is-drilldown" style="min-height: 343.438px; max-width: 248px;"><ul id="menu-top-menu" class="vertical menu vertical menu off-menu drilldown" data-responsive-menu="drilldown" role="menubar" data-drilldown="fj6eym-drilldown">
<li id="menu-item-71" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-71" role="menuitem"><a href="<?php echo base_url()?>/about" tabindex="0"><i class="fa fa-user"></i><span class="fontawesome-text"> About</span></a></li>

<li id="menu-item-59" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-59" role="menuitem"><a href="<?php echo base_url()?>/livementors"><i class="fa fa-edit"></i><span class="fontawesome-text"> Live Menntors</span></a></li>
<li id="menu-item-60" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-60" role="menuitem"><a href="<?php echo base_url()?>/resume"><i class="fa fa-envelope"></i><span class="fontawesome-text"> Contact</span></a></li>
<li id="menu-item-288" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-288" role="menuitem"><a href="<?php echo base_url()?>/dark/index.html"><i class="fa fa-desktop"></i><span class="fontawesome-text"> Resume</span></a></li>
<li id="menu-item-372" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-372" role="menuitem"><a href="http://theblackbucks.com/trainingcourses"><i class="fa fa-language"></i><span class="fontawesome-text">Training &amp; Projects</span></a></li>
<li id="menu-item-289" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-289" role="menuitem"><a href="<?php echo base_url()?>/feed/socitys/demo"><i class="fa fa-shopping-cart"></i><span class="fontawesome-text"> Societies</span></a></li>
<li id="menu-item-289" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-289" role="menuitem"><a href="<?php echo base_url()?>/feed/"><i class="fa fa-shopping-cart"></i><span class="fontawesome-text"> Startup</span></a></li>
</ul></div>
</div>
<div class="off-canvas-content" style=" line-height:12px;   background: #fff !important;" data-off-canvas-content="">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
<script src="https://code.jquery.com/jquery-1.8.3.min.js"></script>	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script>
 $(document).ready(	function()
	{
		$("#formid1").on('submit',function(e)
		{
			e.preventDefault(); 
            $("#success").empty(); 
			$('#success').html('<img src="<?php echo base_url()?>/images/AjaxLoader.gif" alt="" width="24" height=24">');		
			$.ajax({
				url: "<?php echo site_url('ajax-feed');?>",
				type: "POST",      
				data: new FormData(this),
				contentType: false,      
				cache: false,            
				processData:false,       
				success: function(data) 
				{
                   if(data==1)
                   {
                        document.getElementById('newpost').value="";  
                        document.getElementById('pimage').value="";  
                        document.getElementById('pfile').value="";  
                        document.getElementById('imgname').innerHTML=""; 
                        $("#success").empty(); 
                        $('#newfeed').load('<?php echo site_url('newfeed');?>');
                   }
                   else
                    {
                        $("#success").html(data); 
                    }	
				}													
			});	
		});	
	});
function newlike(x,y) {if(y=="liked"){    document.getElementById("liked"+x).src="<?php echo base_url()?>Zinka%20_%20feed_files/UnLike.png";}if(y=="unliked"){    document.getElementById("unliked"+x).src="<?php echo base_url()?>Zinka%20_%20feed_files/Like.png";}   $.post("<?php echo site_url('like');?>",{"post_id":x},function(output,status)        {                if(output==1)            {                                $('#postid'+x).load('<?php echo site_url('cpost');?>',{"post_id":x});            }        });
}


function deletepost(x) { $('#deleteimg'+x).html('<img src="<?php echo base_url()?>/images/AjaxLoader.gif" alt="loading" style="width: 24px;height: 24px;">')
   $.post("<?php echo site_url('deletepost');?>",{"post_id":x},function(output,status)
        {     
            if(output==1)
            {
                $('#newfeed').load('<?php echo site_url('newfeed');?>');
            }
        });
}
$(document).ready(function(){
 $(document).on('change', '.profileimage', function(){
  var name = document.getElementById("profileimage").files[0].name;
  var form_data = new FormData();
  var ext = name.split('.').pop().toLowerCase();
  if(jQuery.inArray(ext, ['gif','png','jpg','jpeg']) == -1) 
  {
   alert("Invalid Image File");
  }
  var oFReader = new FileReader();
  oFReader.readAsDataURL(document.getElementById("profileimage").files[0]);
  var f = document.getElementById("profileimage").files[0];
  var fsize = f.size||f.fileSize;
  if(fsize > 2000000)
  {
   alert("Image File Size is very big");
  }
  else
  {
   form_data.append("file", document.getElementById('profileimage').files[0]);
   $.ajax({
    url:"<?php echo site_url('ajax-upload');?>",
    method:"POST",
    data: form_data,
    contentType: false,
    cache: false,
    processData: false,
    beforeSend:function(){
        $('#uploaded_image').html('<img src="<?php echo base_url()?>/images/AjaxLoader.gif" alt="loading" style="width: 24px;height: 24px;">')
     
    },   
    success:function(data)
    {
        window.location.assign("<?php echo site_url('feed');?>")
    }
   });
  }
 });
});	

	function updatepost(x)       
    {      
    $('#modalimage'+x).html('<img src="<?php echo base_url()?>/images/AjaxLoader.gif" alt="loading" style="width: 24px;height: 24px;">')
      var pd = document.getElementById('newpost'+x).value;  
      $.post("<?php echo site_url('updatepost');?>",{"post_id":x,"pd":pd},function(output,status)
      {
          if(output==1)
          { 
      document.getElementById('modal'+x).style.display='none';
                $('#postid'+x).load('<?php echo site_url('cpost');?>',{"post_id":x}); 
          }        
       });    
      }        	

	function newcomment(e,pid,uid)     
    {                         
    var keycode = (event.keyCode ? event.keyCode : event.which);     
    if(keycode == '13'){              
    document.getElementById('loadcomment'+pid).innerHTML='<img src="<?php echo base_url()?>/images/AjaxLoader.gif" alt="loading" style="width: 24px;height: 24px;">';       
    var com = document.getElementById("comment"+pid).value;  
    $.post("<?php echo site_url('newcomment');?>",{"pid":pid,"uid":uid,"comment":com},function(output,status) 
    {                  
    var x=pid;              
    if(output==1)             
        {         
        
    document.getElementById('loadcomment'+pid).innerHTML='';  
    
    $('#postid'+x).load('<?php echo site_url('cpost');?>',{"post_id":x}); 
    }           
    });            
    }                
    }  

      function urllinking(x){  
    
      var val=document.getElementById("urllink"+x).value;
	  if(val!="" && val.indexOf("://")>-1)
          {	 
      $('#loading'+x).text('Loading...');	
      $('.container').hide();	
      $.ajax({ 
      type:'post',    
      url:'<?php echo site_url('fetchurl');?> ',  
      data:{            link:val          },
      cache: false,	   
      success:function(response) { 
      $('#loading'+x).hide();	
     
          if(response != '')
          {
          $('.containerlink'+x).show();	
          $('.containerlink'+x).html(response);	
          }
       }      
      });
      }    
      } 
      function getImg(evt){  
      var files = evt.target.files;            var file = files[0];            document.getElementById('imgname').innerHTML= file.name;        }    

function clap(x) { 


   $.post("<?php echo site_url('clappost');?>",{"post_id":x},function(output,status)
        {     
            if(output==1)
            {
                $('#newfeed').load('<?php echo site_url('newfeed');?>');
            }
        });
}


      </script> 
  <style>              
  .image-upload > input
{
    display: none;
}
pre {
   display: block;
    padding: 0px;
    margin: 0 0 10px;
    color: #333;
    background-color: #fff;
    border: 0px;
    font-size:14px;
    font-family: Segoe UI, Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
    line-height: 1.42em;
    white-space: pre-wrap; 
word-break: keep-all;    
}

ul {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  list-style-type: none;
}@media only screen and (max-device-width: 480px) {        .mod {                padding-top: 45%;        }}
</style>             
                <header class="header" role="banner" style="border: 1px solid rgb(224, 224, 224);">
<nav class="navbar navbar-inverse navbar-fixed-top" style="border-color: #fff;background: #fff !important;    border: 1px solid rgb(224, 224, 224);">
  <div class="container-fluid" style="background-color: #000;padding-left: 9.3%;padding-right: 5%;    box-shadow: 0 0 10px rgba(10, 10, 10, 0.5);">
    <div class="navbar-header navbar-left">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" style="background-color: #21b3eb;border-color: #21b3eb;margin-top: 7%;">
        <span class="icon-bar"></span> 
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <a href="http://emc2india.com/batch3/" style="padding:0"><img style="margin: 10px 0px;" src="http://emc2india.com/images/emc2%20with%20gitam%20logo-1.jpg" alt="Zinka Logo"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" style="max-height: 400px;height: 355px;">
      <ul class="nav navbar-nav navbar-right" style="padding: 25px;    margin: 0;">
       
        <li><div style="padding-right: 15px;    padding-bottom: 2%;"><a class='butt' href="<?php echo site_url('logout');?>">Log out </a></div></li>         
        <li><div class="" style="padding-right: 15px;    padding-bottom: 2%;"><a class='butt' href="http://emc2india.com/batch3/books/">Books</a></div></li>         
        <li><div class="" style="padding-right: 15px;    padding-bottom: 2%;"><a class='butt' href="http://emc2india.com/batch3/classes/">Access Classes</a></div></li>         
                
       
        
              </ul>
    </div>
  </div>
</nav>
</header>



					
						 <!-- end .header --><br>
						 <div class="js-off-canvas-exit"></div></div><!--profile-stats-->
<!--Section topProfile-->
<div class="row" style="padding-top:9%">
	<!-- left sidebar
	<div class="large-3 columns col-sm-6"  style="width: 23%;" >-->
	<div class="large-3 columns col-sm-6" style="    margin-top: -1.7%;position:fixed;    width: 21%;">
    
    <aside class="secBg sidebar hidden-xs" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2);border: 0;    margin-bottom: 10px;    padding-bottom: 30px;">
				<div class="row">
					<!-- profile overview -->
					<div class="large-12 columns">
						<div class="widgetBox" style="    margin-bottom: -35px;    padding: 0px 0px;    margin-top: -24px;">
							<div class="widgetTitle">
	<section class="topProfile" style="background: url('http://zinka.me/assets/uploads/profilepic/SignIn.jpg') no-repeat;background-position: center;     margin-top: 0px;height: 100px;    margin-bottom: 64px;">
		<div class="profile-stats" style="padding-top: 0;">
			<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5">

    
				<div class="large-5 columns" align="center">
					<div class="profile-author-img" style="       border-radius: 50%;
    margin-bottom: -174%;
    background: #ffffff0d;
    box-shadow: 0px 0px 10px 0px #ececec05;
    border: 0;
    margin-left: -53%;">
						 <div class="image-upload">
        <label for="profileimage">
        
        <img style="    margin-top: 4%;
    height: 75px;
    width: 75px;
    border: 2px solid #fff;
    box-shadow: inset 0 1.5px 3px 0 rgba(0,0,0,.15), 0 1.5px 3px 0 rgba(0,0,0,.15);cursor: pointer;" src="<?php echo base_url().'images/uploads/profile/'.$_SESSION['user_image'] ?>" class="center">
        
        </label>
        <input id="profileimage" name="profileimage" type="file" class="profileimage"></div>
        <p id="uploaded_image"></p>
						</div>
					</div>
					</div>
                    	<div class="widgetContent">
							<p class="nameanu" style="text-transform: capitalize;
    padding-left: 40%;
    margin-top: 38%;" role="tab" aria-controls="" aria-selected="false" id="-label"><?php echo $_SESSION['user_name']?></p><p>
                            </p><p style="text-transform: capitalize;
    margin-top: -16px;
    padding-left: 40%;
    font-size: 11px;    color: #657786 !important;">BlackBucks</p>
							

							</div><!--widgetContent -->

					<div class="col-md-6"></div>

				</div>
			</div>
		</section>

							</div>
						
								<div class="widgetContent">
								<ul class="tabs vertical" id="vert-tabs" data-tabs="pdaakg-tabs">

								</ul>
							</div><!--widgetContent -->
						</div><!--widgetBox -->
					</div><!--Large12 -->
				</div><!--row-->
			</aside>
            
    <!--aside class="secBg sidebar hidden-xs" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2);border: 0;    margin-bottom: 10px;    padding-bottom: 30px;border-radius: 5px;">
				<div class="row">
		
					<div class="large-12 columns">
						<div class="widgetBox" style="    margin-bottom: -35px;    padding: 0px 15px;    margin-top: -10px;">
							<div class="widgetTitle">
	<section class="topProfile" style="background: url('http://zinka.me/assets/uploads/profilepic/SignIn.jpg') no-repeat;background-position: center;     margin-top: 0px;height: 100px;">
		<div class="profile-stats" style="padding-top: 0;">
			<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-5">

    
				<div class="large-5 columns" align="center">
					<div class="profile-author-img" style="    border-radius: 50%;    margin-bottom: -190%;    background: #ffffff0d;    box-shadow: 0px 0px 10px 0px #ececec05;    border: 0;">
						 <div class="image-upload">
        <label for="profileimage">
        
        <img style="border-radius: 50%;margin-top:4%;height: 90px;width: 100px;" src="<?php echo base_url().'images/uploads/profile/'.$_SESSION['user_image'] ?>" class="center">
        
        
        </label>
        <input id="profileimage" name="profileimage" type="file" class="profileimage"/></div>
        <p id="uploaded_image"></p>
						</div>
					</div>
					</div>

					<div class="col-md-6"></div>

				</div>
			</div>
		</section>

							</div>
							<div class="widgetContent">
							<p class="nameanu" style="text-align: center;text-transform: capitalize;min-width: 222px;" role="tab" aria-controls="" aria-selected="false" id="-label"><?php echo $_SESSION['user_name']?><p>
		

							</div>
								<div class="widgetContent">
								<ul class="tabs vertical" id="vert-tabs" data-tabs="pdaakg-tabs">

								</ul>
							</div>
						</div>
					</div>
				</div>
			</aside-->
            
            
            <aside class="secBg sidebar hidden-xs" style="padding-bottom: 38px;box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2);     border: 0;">
				<div class="row">
					<!-- profile overview -->
					<div class="large-12 columns">
						<div class="widgetBox" style=" margin-bottom: -35px;
    margin-top: -24px;
    padding-left: 0px;
    padding-right: 0px;">
							<div class="widgetTitle">

                        
                        <div class="Grid Grid--with-gutter ">
<div class="Grid__cell w:1of3 w:full@md ">
<div class="Flex-embed">
<div class="Flex-embed__ratio Flex-embed__ratio--16x9">
     
    <div class="Flex-embed__content Flex-embed__content--cover ">
 

    <iframe width='100%'  src="https://www.youtube.com/embed/A4F0eZG1WIo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
    
</div>
</div>
</div>

<div class="Grid__cell w:2of3 w:full@md ">
<div class="p-x:1@md p-b:1 p-t:1@md" style="background-color:#fff;padding: 6%;">
<div class="f:2 f-w:700 l-h:d m-b:.8 "><a target='_blank' href="https://www.youtube.com/watch?v=A4F0eZG1WIo" style="text-decoration: none;color: #33373D;" class="nameanu">HBS GITAM EMC2India students Response </a></div>
</div>
</div>
</div>
                        
                        </div>    
                        </div>    
                        </div>    
                        </div>    
                        </aside> 

		</div><!--Large4-->

        <div class="large-3 columns col-sm-6" style="margin-top: 20%;" ></div>
        
        <div id="foo" class="large-6 columns profile-inner" style="margin-top: -1.7%;">	<div class="tabs-content vertical" data-tabs-content="vert-tabs">
		<div class="tabs-panel  alldatapost is-active"  id="panel0v" role="tabpanel" aria-hidden="true" aria-labelledby="panel0v-label">
<div class="row secBg" style="    box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2);
    border: 0;
    padding-top: 1%;
    padding-bottom: 1%;">
<div class="large-12 columns">
<div class="row column head-text clearfix">
	  <div>
		<div class="large-12 columns">
        <form id="formid1" method="post" enctype="multipart/form-data">        
	  	<textarea style='    font-weight: 100;
    margin: 0px;
    z-index: auto;
    position: relative;
    line-height: 20px;
    font-size: 14px;
    transition: none 0s ease 0s;
    background: transparent !important;' autocomplete="off" type="text" rows="3" class="enter-qsn quations1 postanu" id="newpost" name="newpost" placeholder="Add to the AI Community."> </textarea>                        <div></div>     

 <hr style="margin-left: -20px;width: 107%;border: 0;border-top: 1px solid #eee;    margin-bottom: 3px;">         
        <ul style="margin-left: 0px;    margin-bottom: -10px;">
         <li style="    margin-top: 10px !important;">
        <div class="image-upload" style="  
    text-transform: capitalize;    width: 114px;
    font-size: 12px;
    font-weight: 700;
    border: 0px;">
        <label for="pimage" style="color:#000;background: #E0E1E2;;padding: 3%;cursor: pointer;position: relative;padding-bottom: 2px;">
        <img style="cursor:pointer;    width: 28px;    padding-bottom: 1%;" src="https://cdn0.iconfinder.com/data/icons/basic-outline/64/icon-basic-set_12-camera-512.png"/><span style="font-size:0.7rem;padding: 2px 8px 2px 2px;">Photo/Image</span>
        </label>
        <input id="pimage" name="pimage" type="file"  onchange='getImg(event)' />
        
        </div>
        </li>
   
       
        <li>
        
         <div class="image-upload" style="text-transform: capitalize;padding-top: 23%;">
        <label for="pfile" style="color:#000;line-height: 1.4;">
        <span style="padding: 12px 16px 10px 15px;    color: #000;    background: #e0e1e2;        cursor: pointer;   position: relative;    margin-left: 5%;    font-size: 0.7rem;">File/doc</span> 
        </label>
        <input id="pfile" name="pfile" type="file"  onchange='getImg(event)' />
        </div>
        </li>
        
        
        <li>
        <input type="submit" name="submit" id="submit" value="Post" style="padding: 10px 23px 9px 23px;margin: 10px;border: 0px;margin-top: 10px !important;color: #fff;font-size: 0.7rem;background:#ea4e8b;cursor: pointer;
        position: relative;margin-bottom: 10px !important;margin-left: 5%; ">    
        </li>
        </ul>
        </form>        <p id="imgname"></p>
        <p id="success"></p>

 

	  	</div>
	</div>
</div>
</div>
</div>

<br><hr style="margin-top: -11px;margin-left: -13px;margin-bottom: 12px;width: 105%;border: 0;border-top: 1px solid #9c9fa2;">


<div id="newfeed">
   <?php
    foreach($feeddata as $feed)
	{
           $originalDate = $feed->datetime;
            $day = date("d", strtotime($originalDate));
            $mon = date("F", strtotime($originalDate));
		?>

     <section id="postid<?=$feed->post_id?>" class="profile-videos" style="margin-bottom:10px">
									         <div class="row secBg" style=''>
									         <div class="large-12 columns" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2)">
									         <div class="display-posts " style="margin-bottom: -13px;">
									<div class="thumbnail" style="border: none;box-shadow: 0 0 0 1px rgba(251, 250, 250, 0.2);    margin-top: 5px;">
                                        <div class="profile-block">
          <p style="margin:0"><span class="nameanu" style="color: #21b3eb !important;"><?php echo $feed->user_name;?></span></p>
          <p style="margin-top:-7px;"><span class="nameanu" style="font-size:0.6em;color: #797878;font-weight: 100;"><?php echo $mon.' '.$day  ?></span></p>
          <div>    <p id="deleteimg<?php echo $feed->post_id; ?>"></p>
<?php if($feed->user_id == $_SESSION['user_id']){ ?>
	
  <div class="dropdown" style="    float: right;margin-top: -43px;">
    <button class=" dropdown-toggle" type="button" data-toggle="dropdown">
    <i style="font-size: 20px;" class="fas fa-ellipsis-h"></i>
    </button>
    <ul class="dropdown-menu">
      <li role="presentation">
	  <a role="menuitem" style="background-color: #fff !important;line-height: 24px;white-space: nowrap;word-break: break-all;color: #14171a;font-size: 14px;font-weight: bold;" tabindex="-1" onclick="document.getElementById('modal<?php echo $feed->post_id ?>').style.display='block'" >Edit </a>
	  </li>
	  <li role="presentation"><a role="menuitem" style="background-color: #fff !important;line-height: 24px;white-space: nowrap;word-break: break-all;color: #14171a;font-size: 14px;font-weight: bold;" tabindex="-1" onclick="deletepost(<?=$feed->post_id?>)"> Delete </a></li>
    </ul>
  </div>

  
   <?php } ?>
	  </div>
 </div><hr style="margin-top:-11px;margin-left: -20px;margin-bottom: 12px;width: 107%;border: 0;border-top: 1px solid #eee;">
 <div style="padding:0; width: 100%;">
<div style="width:600px"></div>
          <?php 
          $url = $feed->post_data;   
          preg_match_all('#\bhttps?://[^,\s()<>]+(?:\([\w\d]+\)|([^,[:punct:]\s]|/))#', $url, $match);
          if( sizeof($match[0]) != 0 ) {
              if (strpos($url, 'youtube') !== false) { 
              $value = explode("v=", $url);   
              $videoId = $value[1];
              if (! empty($videoId))     { 
              echo '<iframe id="iframe" style="width: 100%; height: 340px;border:0px" src="//www.youtube.com/embed/'.$videoId .'"                data-autoplay-src="//www.youtube.com/embed/'.$videoId.'?autoplay=1"></iframe>';   
              }  
              }
              else{ 
              echo ' <p class="postanu">';    
              ?>
              <img style="height: 30px;width: 30px;border-radius: 19px;margin: 6px;display:none;" class="profileimg"  alt="Lights" src="<?php echo base_url().'images/uploads/profile/'.$_SESSION['user_image'] ?>" onload="urllinking(<?php echo $feed->post_id ?>)">  
              <?php      
              echo  '<a target="_blank" href='.$feed->post_data.'>'.$feed->post_data.'</a></p>  
              <textarea style="display:none" id="urllink'.$feed->post_id.'" placeholder="Enter Complete URL" >'.$feed->post_data.'</textarea>   
              <div id="loading'.$feed->post_id.'" style="clear:both;" ></div>  
              <div class="containerlink'.$feed->post_id.'" style="display:none;padding: 6px;"></div>';    }
              }else{     
              echo '<p class="postanu" style="margin: -9px 15px 15px 0px;"><pre>'.$feed->post_data.'</pre></p>';
              }
              ?>
              <?php
 if($feed->post_image != '')
 {         $temporary=basename($feed->post_image);    
               $imageFileType = pathinfo($temporary,PATHINFO_EXTENSION);   
               if($imageFileType=="xlsx" || $imageFileType=="ppt" || $imageFileType=="docx" || $imageFileType=="pdf" || $imageFileType=="rtf" || $imageFileType=="doc" ) 	
                   {             
                echo '<p class="postanu">'.$feed->post_image .'</p>';
                if($imageFileType=="ppt")
                {
                    echo '<a target="_blank" href="'.base_url().'images/uploads/documents/'.$feed->post_image.'"><img src="'.base_url().'images/icons/ppt.jpg" alt="Cinque Terre" style="width:100px;"></a>'; 
                } 
                else if($imageFileType=="pdf")
                {
                    echo '<a target="_blank" href="'.base_url().'images/uploads/documents/'.$feed->post_image.'"><img src="'.base_url().'images/icons/pdf.png" alt="Cinque Terre" style="width:100px;"></a>'; 
                }
                else if(($imageFileType=="docx")||($imageFileType=="doc"))
                {
                    echo '<a target="_blank" href="'.base_url().'images/uploads/documents/'.$feed->post_image.'"><img src="'.base_url().'images/icons/docx.png" alt="Cinque Terre" style="width:100px;"></a>'; 
                } 
                else if(($imageFileType=="xlsx"))
                {
                    echo '<a target="_blank" href="'.base_url().'images/uploads/documents/'.$feed->post_image.'"><img src="'.base_url().'images/icons/xls.png" alt="Cinque Terre" style="width:100px;"></a>'; 
                }
                else{
               echo '<a target="_blank" href="'.base_url().'images/uploads/documents/'.$feed->post_image.'"><img src="https://image.freepik.com/icones-gratis/arquivos-simbolo-da-folha-de-papel-duplo_318-67548.jpg" alt="Cinque Terre" style="width:100px;"></a>';  
                }               
               }
               else{  
               echo '<img src="'.base_url().'images/uploads/posts/'.$feed->post_image.'" alt="Cinque Terre" style="width:600px;">';    
               }
 }
 ?>
 </div>
 <p style="float: right;margin-top: 15px;margin-bottom: 3px;color: #8e8e8e !important;"></p>
 <!--hr style="margin-left: -20px;margin-bottom: -9px;margin-top: -23px;width: 107%;border: 0;border-top: 1px solid #eee;"-->
							<div class="caption" style="padding-top:2%;    padding-left: 0px;    margin-bottom: -15px;">

											<div id="comments" style="background-color: #E8FAF2;padding-bottom: 5%;    margin-left: -3.5%;margin-right: -5.2%;padding-left: 3%;padding-right:3%;padding-top: 1%;"> 
                                            <!--
                                            <?php  if (in_array($feed->post_id, $likedata))  {  echo ' <button  class="btn bbb postlike" id="like"><span><img id="liked'.$feed->post_id.'" onclick="newlike('.$feed->post_id.',\'liked\')" src="'. base_url().'/Zinka _ feed_files/Like.png" alt="Cinque Terre">'.$feed->likes.'</span></button>';  }else  {  echo '<button  class="btn bbb postlike" id="like"><span><img id="unliked'.$feed->post_id.'" onclick="newlike('.$feed->post_id.',\'unliked\')" src="'. base_url().'/Zinka _ feed_files/UnLike.png" alt="Cinque Terre">'.$feed->likes.'</span></button>';  }                                 ?>
                                            -->
<!--*****************************************************************************-->


<div class="enter-comment" style=" padding:1px" id="commentbox<?php echo $feed->post_id?>">	
				</div><p style="line-height:20px">
                <?php    
                foreach($allcomments as $postcomment)	{  
                if($postcomment['post_id'] == $feed->post_id) 
                    {        
                ?>
                <div class="profile-block" style="    margin-left: 2px;">		
				<div class="profilepic">				
                <img style="height: 30px;width: 30px;border-radius: 19px;margin: 6px;margin-left: 0px;" src="<?php echo base_url().'images/uploads/profile/'.$postcomment['user_img'] ?>" width="25" height="40" class="profileimg" alt="Lights">			
                </div>        
                <p class="commentanu" style="margin-top: 7px;color: #000000d4 !important;"><?php echo $postcomment['comment'] ?></p>					</div>               <?php        }           } ?></p>
                <div class="enter-comment">		
                <div class="profile-block">				
                <div class="profilepic">		
				<img style="height: 30px;width: 30px;border-radius: 19px;margin: 6px;margin-left: 0px;" src="<?php echo base_url().'images/uploads/profile/'.$_SESSION['user_image'] ?>" width="25" height="40" class="profileimg" alt="Lights">						</div>            					
                
                <input type="text" placeholder="Enter your comment first" class="form-control postcomment " id="comment<?php echo $feed->post_id?>" name="comment<?php echo $feed->post_id?>" style="height: 35px;margin-top: 2px;border-radius: 0px;font-size:12px;width:86%;margin-bottom: 0; color: #6c6c6c;border: 01px solid #ccccccb5;" onkeydown="newcomment(event,<?php echo $feed->post_id?>,<?php echo $_SESSION['user_id']?> )">                     
                <div id="loadcomment<?php echo $feed->post_id?>"></div>		
                </div>														
                </div><!--*****************************************************************************-->
										
									</div>
									</div>
									</div></div>
									</div>
									</div></section>
                                    
                                     
                                    <!------------------------------------modal------------------------------------------->  <div id="modal<?php echo $feed->post_id ?>" class="w3-modal mod" style="padding-top: 15%;">  
                                    <div class="w3-modal-content" style="width: 560px;">   
                                    <div class="w3-container ">    
                                    <span onclick="document.getElementById('modal<?php echo $feed->post_id ?>').style.display='none'" class="w3-button w3-display-topright">&times;</span>   
                                    <div class="row secBg">	
                                    <div class="large-12 columns" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2)">		
                                    <div class="display-posts ">
									<div class="thumbnail" style="border: none;box-shadow: 0 0 0 1px rgba(251, 250, 250, 0.2);">      
                                    <div class="profile-block"> 
                                    <p style="margin:0"><span style="font-size: 15px;color: #3f51b5;"><?php echo $feed->user_name;?></span></p>  
                                    <p style="margin:0">
                                    <span style="font-size: 12px;color: #797878;"><?php echo $day.' '.$mon ?></span></p>
                                    <div><p> <br></p>
                                    </div> 
                                    </div><hr style="margin-top:-11px;margin-left: -20px;margin-bottom: 12px;width: 107%;border: 0;border-top: 1px solid #eee;"> 
                                    <p></p> <div style="padding: 8px 0; width: 100%;">
                                    <div style="width:600px"></div> <p style="margin: -9px 15px 15px 5px;">  
                                    <textarea autocomplete="off" type="text" rows="3" class=" " id="newpost<?php echo $feed->post_id ?>" name="newpost<?php echo $feed->post_id ?>" style="border:none;box-shadow:none;font-weight:lighter;color:#8e8e8e; font-size:14px;line-height: 21px;margin-top: 4%;" placeholder="Edit your post.">
                                    <?php echo $feed->post_data;?>     </textarea></p> 
                                    <input type="submit" name="submit" id="submit" value="POST" style="color: #fff;background-color: #3F51B5 !important;    text-transform: capitalize;padding: 15px 20px;margin: 10px;font-size: 12px;font-weight: 700;border: 0px;" onclick="updatepost(<?php echo $feed->post_id ?>)">
                                    
                                    <p id="modalimage<?php echo $feed->post_id ?>"></p>
                                    </div> 
                                    <p style="float: right;margin-top: 15px;margin-bottom: 3px;color: #8e8e8e !important;"></p>			
                                    </div>       
                                    </div>		
                                    </div>		
                                    </div>
                                    </div>  
                                    </div> 
                                    </div>	<!------------------------------------------------------------------------------->	
    <?php } ?>

</div>
  
	  		</div>
		<!--Panel3v Start-->
		
        
        	
		       

  

        

 
  <?php
    foreach($sessiondata as $session)
	{
          $originalDate = $session->datetime;
            $day = date("d", strtotime($originalDate));
            $mon = date("M", strtotime($originalDate));
            $year = date("y", strtotime($originalDate));
		?>
        <div class="tabs-panel  alldatapost" id="panel<?=$session->id?>v" role="tabpanel" aria-hidden="false" aria-labelledby="panel<?=$session->id?>v-label">
         <section class="content content-with-sidebar followers margin-bottom-10">
            <div class="row secBg">
						<div class="large-12 columns">


								<div class="eventsdisplay">

	 	   		<div class="" style="margin-top: 2%;">
	 	   		<div class="profile-block">
											
											<div><p style="font-weight: bold;"> <br>


											<span style="font-size: 12px;color: #797878;margin-bottom: 12px;">
                                            <?php echo $session->name; ?>
                                            </span></p></div></div><hr>
                                                     <div class="video-plugin-for-adv">
								<div class="flex-video widescreen">
									<div class="wp-video-shortcode-wrapper meplayer" style="" class="wp-video">
										<iframe width="560" height="315" src="<?php echo $session->link; ?>" frameborder="0" allowfullscreen></iframe>
									</div>
								</div>
							</div>
                                      
										<div class="caption">
										 	<div class="profile-block">
												<div class="profilepic">
                                                <p class="text-center" style="font-size: 12px;">
                                                    <span style="color:red;font-size: 20px;"><?=$day?></span>
                                                    <br> <?=$mon?>
                                                    <br><?=$year?></p>
                                                </div>
												<div class="event-content"><p><br>
                                                <span style="color:#797878;font-size: 11px;"><?php echo $session->description; ?> <br> 
                                                
                                                
                                                <!--span class="num"><?php echo $session->clap; ?></span> people interested -->
                                                
                                                </span></p></div>
											</div>
											<hr>
										</div>

									</div>

							</div>
						</div><!--large-12-->
					</div><!--row-->
                    </section>
                      </div>
        <?php
    }
    ?>
		</div>
	</div>
    
    
    <div class="large-3 columns col-sm-6" style="    margin-top: -1.7%;">
			<aside class="secBg sidebar" style="padding-bottom: 38px;box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2);border: 0;">
				<div class="row">
					<!-- profile overview -->
					<div class="large-12 columns">
						<div class="widgetBox" style="  margin-bottom: -35px;
    margin-top: -24px;
    padding-left: 0px;
    padding-right: 0px;">
						
                        
                 <div class="Grid Grid--with-gutter ">
<div class="Grid__cell w:1of3 w:full@md ">
<div class="Flex-embed">
<div class="Flex-embed__ratio Flex-embed__ratio--16x9">
<div class="Flex-embed__content Flex-embed__content--cover " style="background-image: url(http://theblackbucks.com/img/10.jpg)">

<img src="http://theblackbucks.com/img/10.jpg" alt="alt">
</div>
</div>
</div>
</div>

<div class="Grid__cell w:2of3 w:full@md ">
<div class="p-x:1@md p-b:1 p-t:1@md" style="background-color:#fff;padding: 6%;">
<div class="f:2 f-w:700 l-h:d m-b:.8 "><a target="_blank" href="http://emc2india.com/" class="nameanu" style="text-decoration:none;color: #33373D;">Dual PG Program with formal MBA(E)</a></div>

<p class="d:n d:b@md" style='    margin-bottom: 0rem;'><a class="postanu" style="font-size:1rem;text-decoration:none">EMC2 - <b>emc2india.com</b> - is a program specifically designed for professionals who aim to become global leaders in Industry 4.0...</a></p>

</div>
</div>
</div>
                        
                        </div>    
                        </div>    
                        </div>    
                        </div>    
                        </aside>    </div>  
                            
		</div>
        </div>
	</div>
                <a href="<?php echo base_url()?>/feed/#" id="back-to-top" title="Back to top"><i class="fas fa-angle-double-up"></i></a>
                    <div id="footer-bottom">
                        <div class="btm-footer-text text-center">
						 <p>All copyrights reserved © 2018 - Design &amp; Development by <a href="http://theblackbucks.com">theblackbucks.com</a></p>
						</div><!--CopyRightText -->
                    </div>
	<script type="text/html" id="tmpl-media-frame">
		<div class="media-frame-menu"></div>
		<div class="media-frame-title"></div>
		<div class="media-frame-router"></div>
		<div class="media-frame-content"></div>
		<div class="media-frame-toolbar"></div>
		<div class="media-frame-uploader"></div>
	</script>



	<script type="text/html" id="tmpl-crop-content">
		<img class="crop-image" src="{{ data.url }}" alt="Image crop area preview. Requires mouse interaction.">
		<div class="upload-errors"></div>
	</script>

	<script type="text/html" id="tmpl-site-icon-preview">
		<h2>Preview</h2>
		<strong aria-hidden="true">As a browser icon</strong>
		<div class="favicon-preview">
			<img src="http://demo.beetube.me/wp-admin/images/browser.png" class="browser-preview" width="182" height="" alt="" />

			<div class="favicon">
				<img id="preview-favicon" src="{{ data.url }}" alt="Preview as a browser icon"/>
			</div>
			<span class="browser-title" aria-hidden="true">BeTube Video WordPress Theme</span>
		</div>

		<strong aria-hidden="true">As an app icon</strong>
		<div class="app-icon-preview">
			<img id="preview-app-icon" src="{{ data.url }}" alt="Preview as an app icon"/>
		</div>
	</script>

	<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/betube-plugin-custom755c.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/jquery.matchHeight125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/app125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/inewsticker125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/jquery.kyco.easyshare125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/jquery.showmore.src125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/ninja-slider125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/owl.carousel.min125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/simple-likes-public125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/infinitescroll125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/underscore.min4511.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/shortcode.min125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/backbone.min9632.js.download"></script>

<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/media-models.min125b.js.download"></script>

<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/wp-plupload.min125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/core.mine899.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/widget.mine899.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/mouse.mine899.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/sortable.mine899.js.download"></script>

<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/mediaelement-and-player.min51cd.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/wp-mediaelement.min125b.js.download"></script>

<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/media-views.min125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/media-editor.min125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/media-audiovideo.min125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/what-input.min125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/foundationf731.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/scripts125b.js.download"></script>
<script type="text/javascript" src="<?php echo base_url()?>/Zinka _ feed_files/wp-embed.min125b.js.download"></script>
	

<!-- Mirrored from demo.beetube.me/author/admin/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 11 May 2017 07:34:44 GMT -->
 <!-- end page -->
</body></html>
