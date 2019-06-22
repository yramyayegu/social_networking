<?php
    include("config.php");
	 include("seo-url.php");

	 if(isset($_POST['city']))	
	 {	
         $city=$_POST['city'];	 
		 $area_name=$_POST['area'];
		 $slug=create_seo_url($area_name);
		
	 
	  if($city == "" && $area_name == "")
	  {
		  echo '<b style="color:red" >Please enter all feilds</b>';
	  }
	  else
	  {
		  
		  if($conn)
		   { 
	   
						  $sql=$conn->prepare('insert into areas(city_ids,area_name,area_slug) values(?,?,?)');
						   $sql->bindParam(1,$city);
						   $sql->bindParam(2,$area_name);
						   $sql->bindParam(3,$slug);
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
	 
	 if(isset($_POST['empid']))
			{
				
				$act=$_POST['active'];
				$save_id1=$_POST['empid'];
				$area=$_POST['area'];	
                $slug=create_seo_url($area);				
				
				if($conn)
				{
		$sql=$conn->prepare('update areas set area_name=?,area_active=?,area_slug=? where area_id=?');
					$sql->bindParam(1,$area);
					$sql->bindParam(2,$act);
					$sql->bindParam(3,$slug);
					$sql->bindParam(4,$save_id1);					
					
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
				 
				   <th>City Name</th>	
				   <th>Area Name</th>
                  <th>Status</th>
                  <th></th>
                  <th></th>
				 </tr>
                </thead>
                <tbody>
				<?php 
				$sql1=$conn->prepare('select * from areas a LEFT JOIN cities c ON a.city_ids=c.city_id');
					if($sql1->execute())
					{
					$count1=$sql1->rowCount();
					if($count1>0)
					{
					
						while($row1=$sql1->fetch(PDO::FETCH_OBJ))
						{
							
							echo '<tr id="'.$row1->area_id.'">
								 <td>

									'.$row1->city_name.'

										

								  </td>												
							<td>							
							<p id="snid---'.$row1->area_id.'" style="dispaly:block">'.$row1->area_name.'</p>							
							<input typt="text" value="'.$row1->area_name.'" id="snid1---'.$row1->area_id.'" style="display:none"/>
							</td>							
							
                        
							
			<td>
<select name="cty" id="sd1---'.$row1->area_id.'" disabled class="form-control" style="display:block" onchange="active('.$row1->area_id.')">';
			
							if($row1->area_active==0)	
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
	<button type="button" name="value" id="editid---'.$row1->area_id.'" class="btn btn-primary" style="display:block" onclick="editData('.$row1->area_id.')">EDIT</button>
							
	<button type="button" name="value" id="saveid---'.$row1->area_id.'" class="btn btn-info" style="display:none" onclick="saveData('.$row1->area_id.')">Save</button>							
							</td>
							
							<td>
	
	
	<button type="button" name="value" id="cancelid---'.$row1->area_id.'" class="btn btn-danger" style="display:none" onclick="cancelData('.$row1->area_id.')">Cancel</button>
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
	 
	 
