<?php
    include("config.php");
	 if(isset($_POST['cname']))	
	 {		 
	  $cname=$_POST['cname'];
	  $caddress=$_POST['caddress'];
	  $pname=$_POST['pname'];  
	  $ptype=$_POST['ptype'];
	  $no_pages=$_POST['no_pages'];
	  $cemail=$_POST['cemail'];
	  $cmobile=$_POST['cmobile'];
	  $pfrom=$_POST['pfrom'];
	  $pto=$_POST['pto'];
	  $ccost=$_POST['ccost'];
	  $pdesc=$_POST['pdesc'];
	  $ids=$_POST['ids'];
	  
	  if($cname == "" )
	  {
		  echo '<b style="color:red" >Please enter CLient Name</b>';
	  }
	  else
	  {
	  if($conn)
	   {
		     $sql=$conn->prepare('update leads set client_name=?,client_address=?,project_name=?,project_type=?,no_of_pages=?,client_email=?,client_mobile=?,cost_from=?,cost_to=?,company_cost=?,project_description=? where lead_id=? ');
					   $sql->bindParam(1,$cname);
					   $sql->bindParam(2,$caddress);
					   $sql->bindParam(3,$pname);
					   $sql->bindParam(4,$ptype);
					   $sql->bindParam(5,$no_pages);
					   $sql->bindParam(6,$cemail);
					   $sql->bindParam(7,$cmobile);
					   $sql->bindParam(8,$pfrom);
					   $sql->bindParam(9,$pto);
					   $sql->bindParam(10,$ccost);
					   $sql->bindParam(11,$pdesc);
					   $sql->bindParam(12,$ids);
					   
					   if($sql->execute())
					   {
						echo '1'; 	 
					   }
					   else
					   {
						  echo '<b style="color:red" >Inserting failed</b>';  
					   }
				 
		}
	  else
	  {
		  echo '<b style="color:red" >The server is busy, please try again after sometime</b>';
	  }
	  
	  }
	 }
	 
	 if(isset($_POST['leadid']))
			{
				
				$act=$_POST['leadstatus'];
				$save_id1=$_POST['leadid'];
				if($conn)
				{
		$sql=$conn->prepare('update leads set lead_active=? where lead_id=?');
					$sql->bindParam(1,$act);
					$sql->bindParam(2,$save_id1);
					if($sql->execute())
					{
						echo '1';
					}
					else
					{
						 echo '<b style=color:red>Invalid data</b>';
					}
				}
				else
				{
					echo '<b style=color:red>Unable to connect</b>';
				}
			}
?>

