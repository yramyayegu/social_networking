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
            <link rel="shortcut icon" href="http://theblackbucks.com/img/logo.png">
            <link rel="apple-touch-icon" href="http://theblackbucks.com/img/logo.png" >
			<link href="http://zinka.me/mentors/wp-content/themes/betube/assets/images/apple-icon-touch.html" rel="apple-touch-icon">
			<meta name="msapplication-TileColor" content="#444444">
			<meta name="msapplication-TileImage" content="../mentors/wp-content/themes/betube/favicon.png">
	    	<meta name="theme-color" content="#444444">
		   <link rel="pingback" href="http://zinka.me/xmlrpc.php">
			<meta property="description" content="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ornare faucibus dignissim. Pellentesque at auctor tortor. Aliquam nec eleifend neque.">
	<title>BlackBuck | feed</title>
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

font-weight: lighter;

margin-top: 4%;

font-size: 15px;

word-wrap: break-word;
padding: 0;

overflow-x: hidden;

min-width: 320px;

font-family: Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
    letter-spacing: 0.6px;
line-height: 20px;
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
font-family: Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
letter-spacing: 0.6px;
line-height: 20px;
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
    font-family: Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
    letter-spacing: 0.6px;
    line-height: 20px;
    }
	</style>	<meta class="foundation-mq"></head>


	<!-- Uncomment this line if using the Off-Canvas Menu -->
	<body class="archive author author-admin author-1" data-gr-c-s-loaded="true" data-whatinput="mouse">

		<div class="off-canvas-wrapper">
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
<script src="https://code.jquery.com/jquery-1.8.3.min.js"></script>	
  <style>              
  .image-upload > input
{
    display: none;
}

.image-upload img
{
    width: 80px;
    cursor: pointer;
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
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar" style="background-color: #00864f;border-color: #00864f;">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     <a href="http://theblackbucks.com/Artificial_Intelligence" style="padding:0"><img style="margin: 10px 0px;height: 80px;width: 276px;" src="http://theblackbucks.com/C.jpg" alt="Zinka Logo"></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar" style="max-height: 400px;height: 355px;">
      <ul class="nav navbar-nav navbar-right" style="padding: 25px;    margin: 0;">
       
        <li><div style="margin-top: 14px;padding-right: 15px;    padding-bottom: 2%;"><a style="color:#fff;background-color: #03adea !important;text-transform: capitalize;border-radius: 5px;padding: 7px 15px;margin-top: 8px;font-size: 12px;font-weight: 700;" href="<?php echo site_url('logout');?>">Log out </a></div></li>         
        <li><div class="hidden-md hidden-lg" style="margin-top: 14px;padding-right: 15px;    padding-bottom: 2%;"><a style="color:#fff;background-color: #03adea !important;text-transform: capitalize;border-radius: 5px;padding: 7px 15px;margin-top: 8px;font-size: 12px;font-weight: 700;" href="<?php echo site_url('demo');?>">Demo Sessions</a></div></li>         
                
       
        
              </ul>
    </div>
  </div>
</nav>
</header>



					
						 <!-- end .header --><br>
						 <div class="js-off-canvas-exit"></div></div><!--profile-stats-->
<!--Section topProfile-->
<div class="row" style="padding-top:9%">
	
	<div class="large-3 columns col-sm-6" style="margin-top: -1.7%;">
        
			<aside class="secBg sidebar " style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2);     border: 0;">
				<div class="row">

					<!-- profile overview -->
					<div class="large-12 columns">
						<div class="widgetBox" style="    margin-bottom: -133px;    padding: 0px 15px;    margin-top: -10px;">
							<div class="widgetTitle">
	<section class="topProfile" style="margin-bottom: 0px;">
		<div class="profile-stats">
			<div class="row">
					<!-- profile overview -->
					<div class="large-12 columns">
						<div class="widgetBox" style="margin-bottom: 0px;">
							<div class="widgetTitle">
								<h5 class="nameanu" style="font-size: 15px;   min-width: 156px !important;margin-bottom: 5px;
    padding-bottom: 10px;">Artificial Intelligence</h5>
							</div>
							<div class="widgetContent">
							<ul class="tabs vertical" id="vert-tabs" data-tabs="pdaakg-tabs" style="background-color: #38242400;">
                            <li class="tabs-title is-active" role="presentation">
							<a href="<?php echo base_url()?>/feed/#panel0v" role="tab" aria-controls="panel0v" aria-selected="false" id="panel0v-label" style="border: 1px solid #f0f0f0;margin-bottom: 7%;border-radius: 0px;">
							<span style="padding: 0px 22px;" class="nameanu" >Previous demos</span></a></li>
                            <li class="tabs-title " role="presentation">
							<a href="<?php echo base_url()?>/feed/#panel1v" role="tab" aria-controls="panel1v" aria-selected="true" id="panel2v-label" style="border: 1px solid #f0f0f0;margin-bottom: 7%;border-radius: 0px;">
							<span style="    padding: 0px 47px;" class="nameanu" >Demo 1</span> 	</a></li>
                            
                             <li class="tabs-title " role="presentation">
							<a href="<?php echo base_url()?>/feed/#panel2v" role="tab" aria-controls="panel2v" aria-selected="true" id="panel2v-label" style="border: 1px solid #f0f0f0;margin-bottom: 7%;border-radius: 0px; ">
							<span style="    padding: 0px 47px;" class="nameanu" >Demo 2</span> 	</a></li>
                            
                             <li class="tabs-title" role="presentation">
							<a href="<?php echo base_url()?>/feed/#panel3v" role="tab" aria-controls="panel3v" aria-selected="true" id="panel4v-label" style="border: 1px solid #f0f0f0 !important;margin-bottom: 7%;border-radius: 0px;">
							<span style="    padding: 0px 46px;">Week 1</span> 	</a></li>
                           </ul>
							</div><!--widgetContent -->
						</div><!--widgetBox -->
					</div><!--Large12 -->
				</div><!--row-->
			</div>
		</section>

							</div>
						
								
						</div><!--widgetBox -->
					</div><!--Large12 -->
				</div><!--row-->
			</aside><!--aside-->
	<!--aside-->

		</div><!--Large4-->

     
        
        <div id="foo" class="large-6 columns profile-inner" style="margin-top: -1.7%;">	<div class="tabs-content vertical" data-tabs-content="vert-tabs">
		<div class="tabs-panel  alldatapost is-active"  id="panel0v" role="tabpanel" aria-hidden="true" aria-labelledby="panel0v-label">
  <?php
    foreach($onesessiondata as $session)
	{
          $originalDate = $session->datetime;
            $day = date("d", strtotime($originalDate));
            $mon = date("M", strtotime($originalDate));
            $year = date("y", strtotime($originalDate));
		?>
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
											<!--div style="padding-bottom:2%">
                                            <span style="color:#797878;font-size: 15px;"><?php echo $session->clap; ?></span>
                                            <button onclick="clap(<?php echo $session->id;?>)"><img src="<?php echo base_url()?>/images/icons/claps.png" alt="Cinque Terre"></button>
											</div-->

										</div>

									</div>

							</div>
						</div><!--large-12-->
					</div><!--row-->
                    </section>
                     
        <?php
    }
    ?>

	  		</div>
	
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
											<!--div style="padding-bottom:2%">
                                            <span style="color:#797878;font-size: 15px;"><?php echo $session->clap; ?></span>
                                            <button onclick="clap(<?php echo $session->id;?>)"><img src="<?php echo base_url()?>/images/icons/claps.png" alt="Cinque Terre"></button>
											</div-->

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
    
    
    <div class="large-3 columns col-sm-6 hidden-xs" style="    margin-top: -1.7%;">
			<aside class="secBg sidebar" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2);     border: 0;">
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
     
    <div class="Flex-embed__content Flex-embed__content--cover " style="background-image:url(http://theblackbucks.com/img/img/9.jpg);background-repeat: no-repeat;">
    
    <img src="http://theblackbucks.com/img/img/9.jpg" alt="alt">
</div>
    
</div>
</div>
</div>

<div class="Grid__cell w:2of3 w:full@md ">
<div class="p-x:1@md p-b:1 p-t:1@md" style="background-color:#fff;padding: 6%;">
<div class="f:2 f-w:700 l-h:d m-b:.8 "><a href="pgp.php" style="text-decoration: none;color: #33373D;" class="nameanu">Formal education from NAAC A+ Accredited GITAM, HBS </a></div>

<p class="d:n d:b@md" style="font-size:9"><a class="postanu" style="text-decoration: none;">GITAM brings best of technology and management education through the tie-up for executive education.
Experience world-class programs through the best faculty from IIMs and IITs. </a></p>
<div class="" style="padding:1%; align:center!important ">             </div>
</div>
</div>
</div>
                        
                        </div>    
                        </div>    
                        </div>    
                        </div>    
                        </aside> 
                        
                        
                        <aside class="secBg sidebar" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2);     border: 0;">
				<div class="row">
					<!-- profile overview -->
					<div class="large-12 columns">
						<div class="widgetBox" style="  margin-bottom: -35px;
    margin-top: -24px;
    padding-left: 0px;
    padding-right: 0px;">
							<div class="widgetTitle">
								<h5 style="font-size: 15px;    text-align: center;">Featured </h5>
							</div>
                        
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

<p class="d:n d:b@md"><a class="postanu" style="font-size:1rem;text-decoration:none">EMC2 - <b>emc2india.com</b> - is a program specifically designed for professionals who aim to become global leaders in Industry 4.0...</a></p>

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
