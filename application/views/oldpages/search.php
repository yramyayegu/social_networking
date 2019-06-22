<?php

/*SELECT requirement_id,user_full_name,city_name,area_name,sector_name,requirement_des,requirement_date FROM requirements r left join sectors s on r.sector_ids=s.sector_id left join users u on u.user_id=r.user_ids left join cities on city_ids=city_id left join areas on area_id=area_ids where u.user_id!=? order by requirement_date desc
**/

try
	 {
		 $conn=new PDO("mysql:host=$db_server;dbname=$db_database;",$db_username,$db_password); 
		 $conn->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	 }
	 catch(PDOException $e)
	 {
		/*echo $e->getMessage(); */ 
	 }
	 $query= "select *  from requirements r left join sectors s on r.sector_ids=s.sector_id left join users u on u.user_id=r.user_ids left join cities c on r.city_ids=c.city_id left join areas a on a.area_id=r.area_ids";
	    	
				$query.= " where";
			
			if(isset($_POST['sector']))
			{
			 echo $sector=$_POST['sector'];
			}
			if(isset($_POST['city']))
			{
			 echo $city=$_POST['city'];
			}
			if(isset($_POST['area']))
			{
			 echo $area=$_POST['area'];
			}
			
		
					if(!empty($sector) && empty($city))
					{
					
						$query.= " r.sector_ids=".$sector;
					}
					if(empty($sector)  && !empty($city))
					{
				
							$query.= " r.city_ids=".$city;
					}
					
					 if (!empty($sector) && !empty($city) && empty($area) )
					{
				
						$query.= " r.sector_ids=".$sector." and r.city_ids=".$city;
					}
					if (!empty($sector) && !empty($city) && !empty($area) )
					{
			
						$query.= " r.city_ids=".$city." and r.sector_ids=".$sector." and r.area_ids=".$area;
					}
					if (empty($sector) &&  !empty($city) && !empty($area) )
					{
						
						$query.= " r.city_ids=".$city." and r.area_ids=".$area; 
					}
					
					
				
				?>
						<thead>
                <tr>
                  <th>Lead Id</th>
                  <th>Sector Name</th>
                  <th>Customer Name</th>
                  <th>City</th>
				  <th>Requirement</th>
				  <th>Date</th>
				  <th>Full Details</th>
                </tr>
                </thead>
                <tbody>
					<?php 
			
		  if($conn)
		   {
			    $sql=$conn->prepare($query);
						  
						   if($sql->execute())
						   {
							$count=$sql->rowCount();
							if($count>0)
							{
								
								while($row=$sql->fetch(PDO::FETCH_OBJ))
								{
									echo '
								<tr>
								 <td>'.$row->requirement_id.'</td>
								  <td>'.$row->sector_name.'</td>
								  <td>'.$row->user_full_name.'</td>
								  <td>'.$row->city_name.'</td>
								  <td>'.substr($row->requirement_des,0,100).'...</td>			 
								   <td>'.date('d M, Y  h:i A',strtotime($row->requirement_date)).'</td>
								  <td><a target="_blank" href="'.site_url('view-dashboard-requirements?requireid='.$row->requirement_id).'">Click Here</a></td>
								 ';
								 echo '</tr>';
								}
							}
							else
						   {
							echo 'no data found.'; 	 
						   }
							
						   }
						   else
						   {
							echo 'not execued'; 	 
						   }
		   }
		   else
		   {
			   echo "not connected";
		   }
	

?>