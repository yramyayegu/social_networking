<?php

    include("config.php");
    include("seo-url.php");

	 if(isset($_POST['cname']))	

	 {		 

	   $cname=$_POST['cname'];
	   $slug=create_seo_url($cname);
	  if($cname == "" )

	  {

		  echo '<b style="color:red" >Please enter Sector Name</b>';

	  }

	  else

	  {

	  if($conn)

	   {

		     $sql=$conn->prepare('insert into sectors(sector_name,sector_slug)values(?,?)');
					   $sql->bindParam(1,$cname);
					   $sql->bindParam(2,$slug);
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
				$slug=create_seo_url($name);

				if($conn)

				{

		$sql=$conn->prepare('update sectors set sector_name=?,sector_slug=? where sector_id=?');

					$sql->bindParam(1,$name);
                    $sql->bindParam(2,$slug);
					$sql->bindParam(3,$id);

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

				  <th>Sector Name</th>

				  <th></th>

                  <th></th>

				 </tr>

                </thead>

                <tbody>

				<?php 

				$sql1=$conn->prepare('select * from sectors');

					if($sql1->execute())

					{

					$count1=$sql1->rowCount();

					if($count1>0)

					{

						$i=0;

						while($row1=$sql1->fetch(PDO::FETCH_OBJ))

						{

							$i++;

							echo '<tr id="'.$row1->sector_id.'">
							<td	>'.$i.'</td>
							 <td>
							<p style="display:block;" id="sid---'.$row1->sector_id.'">'.$row1->sector_name.'</p>
<input type="text" style="display:none;" name="sid1---'.$row1->sector_id.'" id="sid1---'.$row1->sector_id.'" value="'.$row1->sector_name.'">
							</td>
							<td>

	<button type="button" name="value" id="editid---'.$row1->sector_id.'" class="btn btn-primary" style="display:block" onclick="editData('.$row1->sector_id.')">EDIT</button>

							

	<button type="button" name="value" id="saveid---'.$row1->sector_id.'" class="btn btn-info" style="display:none" onclick="saveData('.$row1->sector_id.')">Save</button>							

							</td>

							

							<td>

	

	

	<button type="button" name="value" id="cancelid---'.$row1->sector_id.'" class="btn btn-danger" style="display:none" onclick="cancelData('.$row1->sector_id.')">Cancel</button>

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



