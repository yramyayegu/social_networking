<?php

    include("config.php");
    include("seo-url.php");

	 if(isset($_POST['title']))	

	 {		 

	   $cname=$_POST['title'];
	   $email=$_POST['email'];
	   $website=$_POST['website'];
	   
	  $slug=create_seo_url($cname);
	  if($cname=="" && $email=="" && $website=="")
	  {

		  echo '<b style="color:red" >Please enter all fields</b>';

	  }

	  else
     {

	  if($conn)

	   {

		     $sql=$conn->prepare('insert into chapters(chapter_title,chapter_seo_url,chapter_email,chapter_website)values(?,?,?,?)');
			 $sql->bindParam(1,$cname);
			 $sql->bindParam(2,$slug);
			 $sql->bindParam(3,$email);
			 $sql->bindParam(4,$website);
			   if($sql->execute())
			   {
				echo '1'; 	 
			   }
			   else
			   {

				  echo '<b style="color:red" >Adding failed</b>';  

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

				

				$name=$_POST['leadstatus'];

				$id=$_POST['leadid'];
				$email=$_POST['emil'];
				$website=$_POST['webs'];
				$sts=$_POST['sts'];
				$slug=create_seo_url($name);
				if($conn)

				{

		$sql=$conn->prepare('update chapters set chapter_title=?,chapter_email=?,chapter_website=?,chapter_seo_url=?,chapter_active=? where chapter_id=?');

					$sql->bindParam(1,$name);
					$sql->bindParam(2,$email);
					$sql->bindParam(3,$website);
					$sql->bindParam(4,$slug);
					$sql->bindParam(5,$sts);
					$sql->bindParam(6,$id);

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

				  <th> Title</th>
				  <th> Email</th>
				  <th> Website</th>
				  <th> Status</th>
				  <th></th>

                  <th></th>

				 </tr>

                </thead>

                <tbody>

				<?php 

				$sql1=$conn->prepare('select * from chapters');

					if($sql1->execute())

					{

					$count1=$sql1->rowCount();

					if($count1>0)

					{

						$i=0;

						while($row1=$sql1->fetch(PDO::FETCH_OBJ))

						{

							$i++;

							echo '<tr id="'.$row1->chapter_id.'">
							<td	>'.$i.'</td>
							 <td>
							<p style="display:block;" id="sid---'.$row1->chapter_id.'">'.$row1->chapter_title.'</p>
<input type="text" style="display:none;" name="sid1---'.$row1->chapter_id.'" id="sid1---'.$row1->chapter_id.'" value="'.$row1->chapter_title.'">
							</td>
							 <td>
							<p style="display:block;" id="sida---'.$row1->chapter_id.'">'.$row1->chapter_email.'</p>
<input type="text" style="display:none;" name="sida1---'.$row1->chapter_id.'" id="sida1---'.$row1->chapter_id.'" value="'.$row1->chapter_email.'">
							</td>
						 <td>
							<p style="display:block;" id="sidb---'.$row1->chapter_id.'">'.$row1->chapter_website.'</p>
<input type="text" style="display:none;" name="sidb1---'.$row1->chapter_id.'" id="sidb1---'.$row1->chapter_id.'" value="'.$row1->chapter_website.'">
							</td>
							
							<td>
								<select name="cty" id="sd1'.$row1->chapter_id.'" disabled class="form-control" style="display:block" onchange="active('.$row1->chapter_id.')">';
								if($row1->chapter_active==1)	
								{

?>
										<option value="1" selected>Active </option>
										<option value="0">In Active </option>
								<?php

										

								}
								else
								{   
								?>
									<option value="1">Active </option>
									<option value="0" selected >In Active </option>
									<?php 
								}
								echo '</select>
								</td>
							
							<td>

							
	<button type="button" name="value" id="editid---'.$row1->chapter_id.'" class="btn btn-primary" style="display:block" onclick="editData('.$row1->chapter_id.')">EDIT</button>

							

	<button type="button" name="value" id="saveid---'.$row1->chapter_id.'" class="btn btn-info" style="display:none" onclick="saveData('.$row1->chapter_id.')">Save</button>							

							</td>

							

							<td>

	

	

	<button type="button" name="value" id="cancelid---'.$row1->chapter_id.'" class="btn btn-danger" style="display:none" onclick="cancelData('.$row1->chapter_id.')">Cancel</button>

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



