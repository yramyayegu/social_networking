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
	  
	  if($cname == "" )
	  {
		  echo '<b style="color:red" >Please enter CLient Name</b>';
	  }
	  else
	  {
	  if($conn)
	   {
		     $sql=$conn->prepare('insert into leads (client_name,client_address,project_name,project_type, no_of_pages,client_email,client_mobile,cost_from,cost_to,company_cost,project_description) values(?,?,?,?,?,?,?,?,?,?,?) ');
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
	 
	 
	 
	 
	 
	 
	
	 
 if(isset($_POST['tabkey']))	
	 {
		 ?>
	<table id="example1" class="table table-bordered table-striped">
    <thead>
	<tr>
				  <th>S.No</th>
				  <th>Client Name</th>
				  <th>Project Price</th>
				  <th>Client Email</th>
				  <th>Client Mobile</th>
				  <th>Edit</th>
				  <th>Status</th>
				  <th></th>
                  <th></th>
				 </tr>
                </thead>
                <tbody>
				<?php 
				$sql1=$conn->prepare('select * from  leads');
					if($sql1->execute())
					{
					$count1=$sql1->rowCount();
					if($count1>0)
					{
						$i=0;
						while($row1=$sql1->fetch(PDO::FETCH_OBJ))
						{
							$i++;
							echo '<tr id="'.$row1->lead_id.'">

							

							<td>'.$i.'</td>
							<td>'.$row1->client_name.'</td>
							<td>'.$row1->project_name.'</td>
							<td>'.$row1->client_email.'</td>
							<td>'.$row1->client_mobile.'</td>
							
			<td><a href="edit-leads.php?edit_key='.$row1->lead_id.'" target="_blank">EDIT</a></td>
							
			<td>
<select name="cty" id="sd1---'.$row1->lead_id.'" disabled class="form-control" style="display:block" onchange="active('.$row1->lead_id.')">';
			
							if($row1->lead_active==1)	
								    {
										?>
										<option value="2" >Approved </option>
										<option value="1" selected>Not Approved</option>									
								<?php }
									else if($row1->lead_active==2)
									{   ?>
										<option value="2" selected>Approved </option>
										<option value="1">Not Approved</option>
									<?php }
							echo '</select>
							</td>
							<td>
	<button type="button" name="value" id="editid---'.$row1->lead_id.'" class="btn btn-primary" style="display:block" onclick="editData('.$row1->lead_id.')">EDIT</button>
							
	<button type="button" name="value" id="saveid---'.$row1->lead_id.'" class="btn btn-info" style="display:none" onclick="saveData('.$row1->lead_id.')">Save</button>							
							</td>
							
							<td>
	
	
	<button type="button" name="value" id="cancelid---'.$row1->lead_id.'" class="btn btn-danger" style="display:none" onclick="cancelData('.$row1->lead_id.')">Cancel</button>
							</td>
							</tr>';
				
						} 
					}
					}
				
				?>

               

                </tbody>

            

              </table>
	
<?php
}
?>

