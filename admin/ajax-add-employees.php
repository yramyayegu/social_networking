<?php
    include("config.php");
	 if(isset($_POST['name']))	
	 {		 
		$name=$_POST['name'];
	 $email=$_POST['email'];  
	  $pwd1=rand(000000,999999);
	  $pwd=md5($pwd1);
	  if($name == "" || $email == "" )
	  {
		  echo '<b style="color:red" >Please enter all feilds</b>';
	  }
	  else
	  {
		  
	  if($conn)
	   { 
$sql=$conn->prepare('insert into employee_login(employee_full_name,employee_email,employee_password) values(?,?,?)');
					   $sql->bindParam(1,$name);
					   $sql->bindParam(2,$email);
					   $sql->bindParam(3,$pwd);
					   
					   
					   
					   if($sql->execute())
					   {
						echo '1'; 	 
					   }
					   else
					   {
						  echo '<b style="color:red" >Email Already existed</b>';  
					   }
		}
	  else
	  {
		  echo '<b style="color:red" >The server is busy, please try again after sometime</b>';
	  }
	  
	  }
	 }
	 
	 
	  if(isset($_POST['empid']))
			{
				
				$act=$_POST['leadstatus'];
				$save_id1=$_POST['empid'];
				$emailid=$_POST['emailid'];
				if($conn)
				{
		$sql=$conn->prepare('update employee_login set employee_email=?,employee_active=? where employee_login_id=?');
					$sql->bindParam(1,$emailid);
					$sql->bindParam(2,$act);
					$sql->bindParam(3,$save_id1);
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
				  <th>Company-Id</th>
				  <th>Name</th>
				  <th>Email</th>
				  <th>Status</th>
                  <th></th>
                  <th></th>
				 </tr>
                </thead>
                <tbody>
				<?php 
				$sql1=$conn->prepare('select * from employee_login');
					if($sql1->execute())
					{
					$count1=$sql1->rowCount();
					if($count1>0)
					{
						$i=0;
						while($row1=$sql1->fetch(PDO::FETCH_OBJ))
						{
							$i++;
							echo '<tr id="'.$row1->employee_login_id.'">

							

							<td>'.$i.'</td>
							<td>'.$row1->employee_id.'</td>
							<td>'.$row1->employee_full_name.'</td>
							
							<td>

							<p id="editep---'.$row1->employee_login_id.'" style="dispaly:block">'.$row1->employee_email.'</p>

							<input typt="text" value="'.$row1->employee_email.'" id="edite---'.$row1->employee_login_id.'" style="display:none"/>

							</td>
							
			<td>
<select name="cty" id="sd1---'.$row1->employee_login_id.'" disabled class="form-control" style="display:block" onchange="active('.$row1->employee_login_id.')">';
			
							if($row1->employee_active==0)	
								    {
										?>
										<option value="1" >Active </option>
										<option value="0" selected>In Active</option>									
								<?php }
									else
									{   ?>
										<option value="1" selected>Active </option>
										<option value="0">In Active</option>
									<?php }
							echo '</select>
							</td>
							<td>
	<button type="button" name="value" id="editid---'.$row1->employee_login_id.'" class="btn btn-primary" style="display:block" onclick="editData('.$row1->employee_login_id.')">EDIT</button>
							
	<button type="button" name="value" id="saveid---'.$row1->employee_login_id.'" class="btn btn-info" style="display:none" onclick="saveData('.$row1->employee_login_id.')">Save</button>							
							</td>
							
							<td>
	
	
	<button type="button" name="value" id="cancelid---'.$row1->employee_login_id.'" class="btn btn-danger" style="display:none" onclick="cancelData('.$row1->employee_login_id.')">Cancel</button>
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
	 
	 
