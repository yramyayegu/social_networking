<?php 
ob_start();
date_default_timezone_set("Asia/Kolkata");
error_reporting(E_ALL ^ E_WARNING); 
if(session_id())
{

}
else{
	session_start();
}
$conn=0;
try
{

$conn=new PDO("mysql:host=localhost;dbname=konnipatis","ilander_user1","Developer@123");

}

catch(PDOException $exp)
{
$exp->getMessage();
}
?>