<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller 
{

	 function __construct()
	 {
		 parent::__construct();
		 $this->load->model('user_model');
	 }
     public $dbu1="localhost";
		public $dbu2="root";
		public $dbu3="";
		public $dbu4="blackbucks";
	public function index()
	{
        date_default_timezone_set("Asia/Bangkok");
		$count=$this->uri->total_segments();		
		$data['css_files']='assets/';
		$data['admin']='admin/';
		$data['db_server']=$this->dbu1;
	    $data['db_username']=$this->dbu2;
	    $data['db_password']=$this->dbu3;
	    $data['db_database']=$this->dbu4;
	
		$cssfile=$data['css_files'];
		
		if($count==0)
		{
			
			$this->load->view('index',$data);
		}
		else if($count==1)
		{			
			$segment=$this->uri->segment(1);
		
		if($segment=="pending")
			{
				$this->load->view('landing',$data);
			}

            if($segment=="signup")
			{
				$this->load->view('signup',$data);
			} 
        if($segment=="logout")
            {				
                session_destroy();
                header("location:".site_url(''));				
            }
         if($segment=="feed")
			{
               
                if(isset($_POST['email']))
				{
                   
					 $mail=$_POST['email'];
					 $pwd=$_POST['pass'];
					 $password=md5($pwd);
					
						$res=$this->user_model->getCheckUserse(array($mail,$password));
						if(count($res)>0)
						{
                          
                                $userid=$res[0]->id;
                                $_SESSION['user_id']=$userid;
                                $_SESSION['user_name']=$res[0]->name;
                                $_SESSION['user_email']=$res[0]->email;
                                $_SESSION['user_image']=$res[0]->image;
                        
							
						}
						else
						{
							$data['error']='<b style="color:red">Invalid details</b>';
                            $this->load->view('index',$data);
						}
				}
                $alikes=array();
                $commentslist=array();
                empty($_SESSION['user_id']) ? $user_id=3 :  $user_id=$_SESSION['user_id'];
                
                
                $likedata=$this->user_model->getUserLikes($user_id);
                foreach($likedata as $likes)
                {
                    array_push($alikes,$likes->post_id);
                }
                $data['likedata']=$alikes;
                
               
               
               $feeddata=$this->user_model->getFeed();
               foreach($feeddata as $feed)
                {
                    $comments=$this->user_model->getcomments($feed->post_id);
                         foreach($comments as $comment)
                        {
                             $uid=$this->user_model->getUsersid($comment->user_id);
                             foreach($uid as $user)
                            {
                                array_push($commentslist,array('user_id'=>$comment->user_id,'user_img'=>$user->image,'post_id'=>$comment->post_id, 'comment'=>$comment->comment));
                            }
                        }

                }
               $data['allcomments']=$commentslist;
                $sessiondata=$this->user_model->getSession();
                $data['sessiondata']=$sessiondata;

                $data['feeddata']=$feeddata;
               
                    $this->load->view('feed',$data);
                
			}
            
            
            
            if($segment=="login")
			{
                   if(isset($_POST['email']))
				{
					
					 $name=$_POST['name'];
					 $mobile=$_POST['mobile']; 
                     $email=$_POST['email'];
                     $company=$_POST['company'];
					 $password=$_POST['pass'];
					 $newpassword=md5($password);
                     $image="newuser.jpg";
                     $date=date('Y-m-d H:i:s');
					$users=$this->user_model->getUsersemail(array($email));
						 if(count($users)>0)
						{
							$data['error']= '<b style="color:red">User already exits</b>'; 
                            $this->load->view('signup',$data);
						}
						else
						{
                            
						$register=$this->user_model->registeruser(array($name,$mobile,$image,$company,$email,$newpassword,$date));
						if(count($register)>0)
                        {
                            $this->load->view('index',$data);
                        }
						else
						{
							$data['error']='<b style="color:red">please enter valid email and password</b>';
                            $this->load->view('signup',$data);
						}
                        }
					
				}
                else{
                    $this->load->view('feed',$data);
                }
				
			}
            
            if($segment=="ajax-feed")
			{
                if(isset($_FILES['pimage']['name']))
				{
                  $id=$_SESSION['user_id'];
                  $name=$_SESSION['user_name'];
                  $newpost=$_POST['newpost'];
                  $date=date('Y-m-d H:i:s');
                  $likes=0;
                  $source_file=$_FILES["pimage"]["tmp_name"];
                  $document_file = $_FILES['pfile']['name'];
                  $id1=$_SESSION['user_id'];
                  $temporary=basename($_FILES['pimage']['name']);
                   $document = basename($_FILES['pfile']['name']);
                   $imageFileType = pathinfo($temporary,PATHINFO_EXTENSION);
                   $dbfile=$id1.'-'.rand(000000,999999).'.'.$imageFileType;
                     $destination_file="images/uploads/posts/".$dbfile;
                    if($temporary!="")
                    {
                        if($imageFileType!="jpg" && $imageFileType!="png" && $imageFileType!="jpeg" && $imageFileType!="gif" ) 
						{
						  echo '<b style="color:red;">please upload only png and jpg formates</b>';
						}
						 else
						{
                         if(move_uploaded_file($source_file,$destination_file))
                           {	
                               
                            $newregpost=$this->user_model->newpost(array($id,$name,$newpost,$dbfile,$date,$likes));
                            if(count($newregpost)>0)
                            {
                                echo "1";
                            }
                            else
                            {
                                echo '<b style="color:red">Not Posted! Try Again.</b>';    
                            }
                           }
                           else
                            {
                                echo '<b style="color:red;">image is already existing1</b>';
                            }
						}
                    }
                    else if( $document!="")
                    {
                     
                     
                     $folder = "images/uploads/documents/";                  
                        $temp = explode(".", $_FILES["pfile"]["name"]);
                        $newfilename = round(microtime(true)).'.'. end($temp);
                        $db_path ="$folder".$newfilename  ;
                        $listtype = array(
                        '.xlsx' => 'application/vnd.ms-excel',
                        '.xls' => 'application/vnd.ms-excel',
                        '.ppt' => 'application/vnd.ms-powerpoint',
                        '.doc'=>'application/msword',
                        '.docx'=>'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
                        '.rtf'=>'application/rtf',
                        '.pdf'=>'application/pdf'); 
                                if ( is_uploaded_file( $_FILES['pfile']['tmp_name'] ) )
                                {
                                if($key = array_search($_FILES['pfile']['type'],$listtype))
                                {
                                    if (move_uploaded_file($_FILES['pfile']  ['tmp_name'],"$folder".$newfilename))
                                    {
                                       
                                   $newregpost=$this->user_model->newpost(array($id,$name,$newpost,$newfilename,$date,$likes));
                                        if(count($newregpost)>0)
                                        {
                                            echo "1";
                                        }
                                    }
                                }
                                else    
                                {
                                echo "File Type Should Be .Docx or .Pdf or .Rtf Or .Doc";
                                }
                                }
                    }
                    else
                    {
                        if($newpost != '')
                        {
                            $img="";
                            $newregpost=$this->user_model->newpost(array($id,$name,$newpost,$img,$date,$likes));
                            if(count($newregpost)>0)
                            {
                                echo "1";
                            }
                            else
                            {
                                echo '<b style="color:red">Not Posted! Try Again.</b>';    
                            }
                        }
                        else{
                             echo '<b style="color:red">Write Some Thing...</b>';
                        }
                    }
                }
                
                else
                {
                    $this->load->view('feed',$data);
                }				
			}            
            
            
            
       if($segment=="newfeed")
			{
                
	
			$feeddata=$this->user_model->getFeed();
                foreach($feeddata as $feed)
                {
                       $originalDate = $feed->datetime;
                        $day = date("d", strtotime($originalDate));
                        $mon = date("F", strtotime($originalDate));
                    echo '
                          <section id="postid'.$feed->post_id.'" class="profile-videos" style="margin-bottom:10px">
									         <div class="row secBg">
									         <div class="large-12 columns" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2)">
									         <div class="display-posts ">
									<div class="thumbnail" style="border: none;box-shadow: 0 0 0 1px rgba(251, 250, 250, 0.2); margin-top: 5px;">
                                        <div class="profile-block">
                                        <span class="nameanu" style="color: #21b3eb !important;">'.$feed->user_name .'</span></p>
                             <p style="margin-top:-22px;">
                             <span class="nameanu" style="font-size: 0.6em;color: #797878;font-weight: 100;">'.$mon.' '.$day  .'</span></p>
                             
          
          <div><p id="deleteimg'.$feed->post_id.'"></p>';

           if($feed->user_id == $_SESSION['user_id']){
               echo '
  <div class="dropdown" style="    float: right;margin-top: -43px;">
    <button class=" dropdown-toggle" type="button" data-toggle="dropdown">
    <i style="font-size: 20px;" class="fas fa-ellipsis-h"></i>
    </button>
     <ul class="dropdown-menu" role="menu" aria-labelledby="menu1" style="left: 80%;margin-top: -21px;"> 
        <li role="presentation">
	  <a role="menuitem" style="background-color: #fff !important;line-height: 24px;white-space: nowrap;word-break: break-all;color: #14171a;font-size: 14px;font-weight: bold;" tabindex="-1" onclick="document.getElementById(\'modal'.$feed->post_id .'\').style.display=\'block\'" >Edit </a>
	  </li>
	  <li role="presentation"><a role="menuitem" style="background-color: #fff !important;line-height: 24px;white-space: nowrap;word-break: break-all;color: #14171a;font-size: 14px;font-weight: bold;" tabindex="-1" onclick="deletepost('.$feed->post_id.')"> Delete </a></li>
    </ul>
  </div>';
  
           }
	  echo '</div>
 </div><hr style="margin-top:-11px;margin-left: -20px;margin-bottom: 12px;width: 107%;border: 0;border-top: 1px solid #eee;">
 <p></p>
 <div style="padding: 8px 0; width: 100%;">
		<div style="width:600px"></div>';
  $url = $feed->post_data;
preg_match_all('#\bhttps?://[^,\s()<>]+(?:\([\w\d]+\)|([^,[:punct:]\s]|/))#', $url, $match);



if( sizeof($match[0]) != 0 ) 
{

if (strpos($url, 'youtube') !== false) 
{    
    $value = explode("v=", $url);
    $videoId = $value[1];
    if (! empty($videoId)) 
    {
        
        echo '<iframe id="iframe" style="width: 525px; height: 340px;border:0px" src="//www.youtube.com/embed/'.$videoId .'"
                data-autoplay-src="//www.youtube.com/embed/'.$videoId.'?autoplay=1"></iframe>';

    }
   
}
 else{
     echo ' <p class="postanu">';
        ?>
<img style="height: 30px;width: 30px;border-radius: 19px;margin: 6px;display:none;" class="profileimg" alt="Lights" src="<?php echo base_url().'images/uploads/profile/'.$_SESSION['user_image'] ?>" onload="urllinking(<?php echo $feed->post_id ?>)">
        <?php
        echo  '<a target="_blank" href='.$feed->post_data.'>'.$feed->post_data.'</a></p> <textarea style="display:none" id="urllink'.$feed->post_id.'" placeholder="Enter Complete URL" >'.$feed->post_data.'</textarea>
              <div id="loading'.$feed->post_id.'" style="clear:both;" ></div>
              <div class="containerlink'.$feed->post_id.'" style="display:none;padding: 6px;"></div>';
    }


}
else{
    echo '<p class="postanu" style="margin: -9px 15px 15px 0px;"><pre>'.$feed->post_data.'</pre></p>';
}
 if($feed->post_image != '')

 {
         $temporary=basename($feed->post_image);
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
 
 
 echo '</div>
 <p style="float: right;margin-top: 15px;margin-bottom: 3px;color: #8e8e8e !important;"></p>
 <!--hr style="margin-left: -20px;margin-bottom: -9px;margin-top: -23px;width: 107%;border: 0;border-top: 1px solid #eee;"-->
							<div class="caption" style="    padding-left: 0px;padding-top:2%;margin-bottom: -28px;">

											<div id="comments" style="background-color: #E8FAF2;padding-bottom: 5%;    margin-left: -3.5%;margin-right: -5.3%;padding-left: 3%;padding-right:3%;padding-top: 1%;">';
                $alikes=array();	
                $likedata=$this->user_model->getUserLikes($feed->user_id);
                foreach($likedata as $likes)
                {
                    array_push($alikes,$likes->post_id);
                } 

 if (in_array($feed->post_id, $alikes))
  {
  echo ' <!--button  class="btn bbb postlike" id="like"><span><img id="liked'.$feed->post_id.'" onclick="newlike('.$feed->post_id.',\'liked\')" src="'. base_url().'/Zinka _ feed_files/Like.png" alt="Cinque Terre">'.$feed->likes.'</span></button-->';
  }
else
  {
  echo '<!--button  class="btn bbb postlike" id="like"><span><img id="unliked'.$feed->post_id.'" onclick="newlike('.$feed->post_id.',\'unliked\')" src="'. base_url().'/Zinka _ feed_files/UnLike.png" alt="Cinque Terre">'.$feed->likes.'</span></button-->';
  }
echo '<p style="line-height:20px">';
                    $comments=$this->user_model->getcomments($feed->post_id);
                    $user_pic = $_SESSION['user_image'];
                         foreach($comments as $comment)
                        {
                              if($comment->post_id == $feed->post_id)
                            {
                                $uid=$this->user_model->getUsersid($comment->user_id);
                                foreach($uid as $user)
                                {
                                    echo '  
                                    <div class="profile-block" style="    margin-left: 2px;">
                                    <div class="profilepic">
                                    <img style="height: 30px;width: 30px;border-radius: 19px;margin: 6px;margin-left: 0px;" src="'.base_url().'images/uploads/profile/'.$user->image.'" width="25" height="40" class="profileimg" alt="Lights">
                                    </div>
                                    <p class="commentanu" style="margin-top: 7px;color: #000000d4 !important;">'.$comment->comment.'</p>
                                    </div>';
                                }
                            }
                        }

                
echo '</p>' ;
                
 
$pic = $_SESSION['user_image'];
$user_id=$_SESSION['user_id'];
echo '
<div class="enter-comment">
					<div class="profile-block">
						<div class="profilepic">
						<img style="height: 30px;width: 30px;border-radius: 19px;margin: 6px;margin-left: 0px;" src="'.base_url().'images/uploads/profile/'.$pic.'" width="25" height="40" class="profileimg" alt="Lights">
						</div>

            
					<input type="text" placeholder="Enter your comment" class="form-control postcomment " id="comment'. $feed->post_id .'" name="comment'.$feed->post_id.'" style="height: 35px;margin-top: 2px;border-radius: 0px;font-size:12px;width:86%;margin-bottom: 0; color: #6c6c6c;border: 01px solid #ccccccb5;" onkeydown="newcomment(event,'.$feed->post_id.','.$user_id.' )">
                     <div id="loadcomment'.$feed->post_id.'"></div>
					</div>
														   </div>



                                                           
									</div>
									</div>
									</div></div>
									</div>
									</div></section>
                                    
                                    
                                    
 
  <div id="modal'.$feed->post_id.'" class="w3-modal mod" style="padding-top: 15%;">
    <div class="w3-modal-content" style="width: 560px;">
      <div class="w3-container ">
        <span onclick="document.getElementById('.$feed->post_id .').style.display=\'none\'" class="w3-button w3-display-topright">&times;</span>
        <div class="row secBg">

									         <div class="large-12 columns" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2)">

									         <div class="display-posts ">

									<div class="thumbnail" style="border: none;box-shadow: 0 0 0 1px rgba(251, 250, 250, 0.2);margin-top: 5px;">

                                        <div class="profile-block">

          <span class="nameanu" style="color: #21b3eb !important;">'.$feed->user_name.'</span>

          <p style="margin-top:-7px"><span  class="nameanu" style="font-size:0.6em;color: #797878;font-weight: 100;">'. $day.' '.$mon .'</span></p>

          <div><p> <br></p>




	  </div>
 </div><hr style="margin-top:-11px;margin-left: -20px;margin-bottom: 12px;width: 107%;border: 0;border-top: 1px solid #eee;">
 <p></p>
 <div style="padding: 8px 0; width: 100%;">
<div style="width:600px"></div>
 <p style="margin: -9px 15px 15px 5px;">
 
 	<textarea autocomplete="off" type="text" rows="3" class=" " id="newpost'. $feed->post_id .'" name="newpost'. $feed->post_id .'" style="border:none;box-shadow:none;font-weight:lighter;color:#8e8e8e; font-size:14px;line-height: 21px;margin-top: 4%;" placeholder="Edit your post.">
 '.$feed->post_data.'     </textarea></p>
   <input type="submit" name="submit" id="submit" value="POST" style="color: #fff;background-color: #3F51B5 !important;    text-transform: capitalize;padding: 15px 20px;margin: 10px;font-size: 12px;font-weight: 700;border: 0px;" onclick="updatepost('.$feed->post_id .')">
 </div>
<p id="modalimage'.$feed->post_id .'"></p>
 <p style="float: right;margin-top: 15px;margin-bottom: 3px;color: #8e8e8e !important;"></p>

									</div>
                                    </div>

									</div>

									</div>
                                    
                                    
                                    
      </div>
    </div>
  </div>	                       
                        
                        ';

                }
			}
            
            if($segment=="like")
			{
                $num_likes=0;
                  if(isset($_POST['post_id']))
				{
                      $user_id=$_SESSION['user_id'];
                      $post_id=$_POST['post_id'];
                      
                       $checkLike=$this->user_model->checkLike(array($user_id,$post_id));
                     
                       if(count($checkLike)>0)
                        {
                            foreach($checkLike as $checkLikes)
                                {
                                    $likes_id=$checkLikes->likes_id;
                                     $newlike=$this->user_model->delLike(array($likes_id));
                                  
                                }
                                    $getlikes=$this->user_model->getLike(array($post_id));
                                        foreach($getlikes as $getlike1)
                                        {
                                            $num_likes=$getlike1->likes;
                                        }
                                        $num_likes=$num_likes-1;
                                        $setlike=$this->user_model->setLike(array($num_likes,$post_id));
                                        echo "1";
                        }else{
                        
                                 $getlikes=$this->user_model->getLike(array($post_id));
                                  foreach($getlikes as $getlike1)
                                {
                                    $num_likes=$getlike1->likes;
                                }
                                 $num_likes=$num_likes+1;
                                
                               $newlike=$this->user_model->newLike(array($user_id,$post_id,$num_likes));
                                $setlike=$this->user_model->setLike(array($num_likes,$post_id));
                                if(count($newlike)>0)
                                {
                                    echo "1";
                                }
                                else
                                {
                                    echo '<b style="color:red">Not Posted! Try Again.</b>'; 
                                }
                        }
                }
                else{
                    echo "no postid";
                }
			} 
            if($segment=="deletepost")
			{
                  if(isset($_POST['post_id']))
				{
                     
                      $post_id=$_POST['post_id'];
                      
                       $delpost=$this->user_model->delPost(array($post_id));
                     
                       if(count($delpost)>0)
                        {
                            echo "1";
                        }
                }
				
			}
             if($segment=="ajax-upload")
			{ 
                if($_FILES["file"]["name"] != '')
                {
                     $user_id=$_SESSION['user_id'];
                 $test = explode('.', $_FILES["file"]["name"]);
                 $ext = end($test);
                 $name = rand(100, 999) . '.' . $ext;
                 $location = "images/uploads/profile/" . $name;                
                 move_uploaded_file($_FILES["file"]["tmp_name"], $location);
                    
                 $updateprofile=$this->user_model->updImg(array($name,$user_id));
                 $_SESSION['user_image']=$name;    
                       if(count($updateprofile)>0)
                        {
                            echo "1";
                        }
                }
            
            
            }
            
              if($segment=="updatepost")
			{
                  if(isset($_POST['post_id']))
				{
                     $pid=$_POST['post_id'];
                     $pd=$_POST['pd'];
                    
                     $updatepost=$this->user_model->updatepost(array($pd,$pid));
                       if(count($updatepost)>0)
                        {
                            echo "1";
                        }
                }
				
			}
              if($segment=="newcomment")
			{
                  if(isset($_POST['pid']))
				{
                    date_default_timezone_set("Asia/Bangkok");
                     $pid=$_POST['pid'];
                     $uid=$_POST['uid'];
                     $comment=$_POST['comment'];
                     $newdate=date('Y-d-m H:i:s');
                     $newcomment=$this->user_model->newcomment(array($comment,$uid,$pid,$newdate));
                       if(count($newcomment)>0)
                        {
                            echo "1";
                        }
                }
				
			}
           
             if($segment=="fetchurl")
			{
               
                if(isset($_POST["link"]))
                {		
                   $main_url=$_POST["link"];
                   @$str = file_get_contents($main_url);


                   // This Code Block is used to extract title
                   if(strlen($str)>0)
                   {
                     $str = trim(preg_replace('/\s+/', ' ', $str)); // supports line breaks inside <title>
                     preg_match("/\<title\>(.*)\<\/title\>/i",$str,$title);
                   }
                  

                   // This Code block is used to extract description 
                   $b =$main_url;
                   @$url = parse_url( $b ) ;
                   @$tags = get_meta_tags( $main_url );

                   // This Code Block is used to extract og:image which facebook extracts from webpage it is also considered 
                   // the default image of the webpage
                   $d = new DomDocument();
                   @$d->loadHTML($str);
                   $xp = new domxpath($d);
                   foreach ($xp->query("//meta[@property='og:image']") as $el)
                   {
                     $l2=parse_url($el->getAttribute("content"));
                     if($l2['scheme'])
                     {
                       $img[]=$el->getAttribute("content");
                      // print_r($img2);
                     }
                     else
                     {
                    
                     }
                   }
                }   
                  echo' <a href="'.$main_url.'" style="text-decoration: none;"  target="_blank">';
                   
                      if(!empty($img)) {
                         echo "<img  style='max-height:100%; max-width:100%;' src='".$img[0]."'><br>";
                      }
                      if(!empty($title[1])) {
                         echo "<br><h2 style='font-size: 17px;font-weight: 500;' id='title' >".$title[1]."</h2>";
                      }
                      if(!empty($tags['description'])) {
                         echo "<p style='font-size: 12px;' id='desc'>".$tags['description']."</p>";
                      }
                       
                     
                       
                echo '   </a>';
    
				
			}
            if($segment=="cpost")
			{
               
				 if(isset($_POST["post_id"]))
                {	
                     $post_id=$_POST["post_id"];
                    	$feeddata=$this->user_model->getOneFeed($post_id);
                        foreach($feeddata as $feed)
                        {
                         $originalDate = $feed->datetime;
                         $day = date("d", strtotime($originalDate));
                         $mon = date("F", strtotime($originalDate));
                    
                     echo '
                     <section id="postid'.$feed->post_id.'" class="profile-videos" style="margin-bottom:10px">
                             <div class="row secBg">
                             <div class="large-12 columns" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2)">
                             <div class="display-posts ">
                             <div class="thumbnail" style="border: none;box-shadow: 0 0 0 1px rgba(251, 250, 250, 0.2);margin-top: 5px;">
                             <div class="profile-block">
                             <p style="margin:0">
                             
                             <span class="nameanu" style="color: #21b3eb !important;">'.$feed->user_name .'</span></p>
                             <p style="margin-top:-7px;">
                             <span class="nameanu" style="font-size: 0.6em;color: #797878;font-weight: 100;">'.$mon.' '.$day  .'</span></p>
                                  <div>
                                <p id="deleteimg'.$feed->post_id.'"></p>';
                                 if($feed->user_id == $_SESSION['user_id']){
                                     echo '
                                     <div class="dropdown" style="    float: right;margin-top: -43px;">
                                        <button class=" dropdown-toggle" type="button" data-toggle="dropdown">
                                        <i style="font-size: 20px;" class="fas fa-ellipsis-h"></i>
                                        </button>
                                      <ul class="dropdown-menu" role="menu" aria-labelledby="menu1" style="left: 80%;margin-top: -21px;">
                                    <li role="presentation"><a role="menuitem" style="background-color: #fff !important;line-height: 24px;white-space: nowrap;word-break: break-all;color: #14171a;font-size: 14px;font-weight: bold;" tabindex="-1" onclick="document.getElementById(\'modal'.$feed->post_id .'\').style.display=\'block\'" >Edit </a>
                                      </li>
                                  <li role="presentation"><a role="menuitem" style="background-color: #fff !important;line-height: 24px;white-space: nowrap;word-break: break-all;color: #14171a;font-size: 14px;font-weight: bold;" tabindex="-1" onclick="deletepost('.$feed->post_id.')"> Delete </a></li>
                                  </ul>
                                      </div>';
                                 }
                              echo '</div>
                             </div><hr style="margin-top:-11px;margin-left: -20px;margin-bottom: 12px;width: 107%;border: 0;border-top: 1px solid #eee;">
                             <p></p>
                             <div style="padding: 8px 0; width: 100%;">
                                    <div style="width:600px"></div>';
                              $url = $feed->post_data;
                            preg_match_all('#\bhttps?://[^,\s()<>]+(?:\([\w\d]+\)|([^,[:punct:]\s]|/))#', $url, $match);
                            if( sizeof($match[0]) != 0 ) 
                            {
                            if (strpos($url, 'youtube') !== false) 
                            {    
                                $value = explode("v=", $url);
                                $videoId = $value[1];
                                if (! empty($videoId)) 
                                {
                                    
                                    echo '<iframe id="iframe" style="width: 525px; height: 340px;border:0px" src="//www.youtube.com/embed/'.$videoId .'"
                                            data-autoplay-src="//www.youtube.com/embed/'.$videoId.'?autoplay=1"></iframe>';
                                }
                            }
                             else{
                                 echo ' <p class="postanu">';
                                    ?>
                            <img style="height: 30px;width: 30px;border-radius: 19px;margin: 6px;display:none" class="profileimg" alt="Lights" src="<?php echo base_url().'images/uploads/profile/'.$_SESSION['user_image'] ?>" onload="urllinking(<?php echo $feed->post_id ?>)">
                                    <?php
                                    echo  '<a target="_blank" href='.$feed->post_id.'>'.$feed->post_data.'</a></p> <textarea style="display:none" id="urllink'.$feed->post_id.'" placeholder="Enter Complete URL" >'.$feed->post_data.'</textarea>
                                          <div id="loading'.$feed->post_id.'" style="clear:both;" ></div>
                                          <div class="containerlink'.$feed->post_id.'" style="display:none;padding: 6px;"></div>';
                                }
                            }
                            else{
                                echo '<p class="postanu" style="margin: -9px 15px 15px 0px;"><pre>'.$feed->post_data.'</pre></p>';
                            }
                              if($feed->post_image != '')

                             {
                                     $temporary=basename($feed->post_image);
                                               $imageFileType = pathinfo($temporary,PATHINFO_EXTENSION);
                                                if($imageFileType=="xlsx" || $imageFileType=="ppt" ||$imageFileType=="docx" || $imageFileType=="pdf" || $imageFileType=="rtf" || $imageFileType=="doc" ) 
                                                    {
                                                        echo '<p>'.$feed->post_image .'</p>';
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
                             echo '</div>
                             <p style="float: right;margin-top: 15px;margin-bottom: 3px;color: #8e8e8e !important;"></p>
                             <!--hr style="margin-left: -20px;margin-bottom: -9px;margin-top: -23px;width: 107%;border: 0;border-top: 1px solid #eee;"-->
                             <div class="caption" style="    padding-left: 0px;padding-top:2%;margin-bottom: -28px;">
                             <div id="comments" style="background-color: #E8FAF2;padding-bottom: 5%;margin-left: -3.5%;    margin-right: -5.3%;padding-left: 3%;padding-right:3%;padding-top: 1%;">';
                            $alikes=array();	
                            $likedata=$this->user_model->getUserLikes($feed->user_id);
                            foreach($likedata as $likes)
                            {
                                array_push($alikes,$likes->post_id);
                            } 
                             if (in_array($feed->post_id, $alikes))
                              {
                              echo ' <!--button  class="btn bbb postlike" id="like"><span><img id="liked'.$feed->post_id.'" onclick="newlike('.$feed->post_id.',\'liked\')" src="'. base_url().'/Zinka _ feed_files/Like.png" alt="Cinque Terre">'.$feed->likes.'</span></button!-->';
                              }
                            else
                              {
                              echo '<!--button  class="btn bbb postlike" id="like"><span><img id="unliked'.$feed->post_id.'" onclick="newlike('.$feed->post_id.',\'unliked\')" src="'. base_url().'/Zinka _ feed_files/UnLike.png" alt="Cinque Terre">'.$feed->likes.'</span></button-->';
                              }                                      
                         
                            echo '<p style="line-height:20px">';
                            $comments=$this->user_model->getcomments($feed->post_id);
                            
                                 foreach($comments as $comment)
                                {
                                      if($comment->post_id == $feed->post_id)
                                    {
                                        
                                        $uid=$this->user_model->getUsersid($comment->user_id);
                                         foreach($uid as $user)
                                        {
                                            echo '<div class="profile-block" style="    margin-left: 2px;">
                                            <div class="profilepic">
                                            <img style="height: 30px;width: 30px;border-radius: 19px;margin: 6px;margin-left: 0px;" src="'.base_url().'images/uploads/profile/'.$user->image.'" width="25" height="40" class="profileimg" alt="Lights">
                                            </div>
                                            <p class="commentanu" style="margin-top: 7px;color: #000000d4 !important;">'.$comment->comment.'</p>
                                            </div>';  
                                        }
                                    }
                                } 
                            echo '</p>' ;
                            $pic = $_SESSION['user_image'];
                            $user_id=$_SESSION['user_id'];
                            echo '
                            <div class="enter-comment">
                            <div class="profile-block">
                                <div class="profilepic">
                                <img style="height: 30px;width: 30px;border-radius: 19px;margin: 6px;margin-left: 0px;" src="'.base_url().'images/uploads/profile/'.$pic.'" width="25" height="40" class="profileimg" alt="Lights">
                                </div>
                            <input type="text" placeholder="Enter your comment" class="form-control postcomment " id="comment'. $feed->post_id .'" name="comment'.$feed->post_id.'" style="height: 35px;margin-top: 2px;border-radius: 0px;font-size:12px;width:86%;margin-bottom: 0; color: #6c6c6c;border: 01px solid #ccccccb5;" onkeydown="newcomment(event,'.$feed->post_id.','.$user_id.' )">
                            
                            <div id="loadcomment'.$feed->post_id.'"></div>
                            </div>
                            </div>
                            </div>
                            </div>
                            </div></div>    
                            </div>
                            </div></section> 
                              <div id="modal'.$feed->post_id.'" class="w3-modal mod" style="padding-top: 15%;">
                                <div class="w3-modal-content" style="width: 560px;">
                                  <div class="w3-container ">
                                    <span onclick="document.getElementById('.$feed->post_id .').style.display=\'none\'" class="w3-button w3-display-topright">&times;</span>
                                    <div class="row secBg">
                                 <div class="large-12 columns" style="box-shadow: 0 0 0 1px rgba(0,0,0,.1), 0 2px 3px rgba(0,0,0,.2)">
                                 <div class="display-posts ">
                                <div class="thumbnail" style="border: none;box-shadow: 0 0 0 1px rgba(251, 250, 250, 0.2);margin-top: 5px;">
                                <div class="profile-block">
                                
                                
                         <p style="margin:0"><span style="font-size: 15px;color: #3f51b5;">'.$feed->user_name.'</span></p>
                         <p style="margin:0"><span style="font-size: 12px;color: #797878;">'. $day.' '.$mon .'</span></p>
                             <div><p> <br></p>
                             </div>
                             </div><hr style="margin-top:-11px;margin-left: -20px;margin-bottom: 12px;width: 107%;border: 0;border-top: 1px solid #eee;">
                             <p></p>
                             <div style="padding: 8px 0; width: 100%;">
                            <div style="width:600px"></div>
                             <p style="margin: -9px 15px 15px 5px;">
                                <textarea autocomplete="off" type="text" rows="3" class=" " id="newpost'. $feed->post_id .'" name="newpost'. $feed->post_id .'" style="border:none;box-shadow:none;font-weight:lighter;color:#8e8e8e; font-size:14px;line-height: 21px;margin-top: 4%;" placeholder="Edit your post.">
                             '.$feed->post_data.'     </textarea></p>
                               <input type="submit" name="submit" id="submit" value="POST" style="color: #fff;background-color: #3F51B5 !important;    text-transform: capitalize;padding: 15px 20px;margin: 10px;font-size: 12px;font-weight: 700;border: 0px;" onclick="updatepost('.$feed->post_id .')">
                               <p id="modalimage'.$feed->post_id .'"></p>
                             </div>
                             <p style="float: right;margin-top: 15px;margin-bottom: 3px;color: #8e8e8e !important;"></p>
                            </div>
                            </div>
                            </div>
                            </div>                        
                                  </div>
                                </div>
                              </div>';
                        }
                    
                }
                
			}
      if($segment=="demo")
			{
              
                $alikes=array();
                $commentslist=array();
                $user_id=$_SESSION['user_id'];
                if($user_id == ''){ $user_id=3; }
                
                $likedata=$this->user_model->getUserLikes($user_id);
                foreach($likedata as $likes)
                {
                    array_push($alikes,$likes->post_id);
                }
                $data['likedata']=$alikes;
                
               
               
               $feeddata=$this->user_model->getFeed();
               foreach($feeddata as $feed)
                {
                    $comments=$this->user_model->getcomments($feed->post_id);
                         foreach($comments as $comment)
                        {
                             $uid=$this->user_model->getUsersid($comment->user_id);
                             foreach($uid as $user)
                            {
                                array_push($commentslist,array('user_id'=>$comment->user_id,'user_img'=>$user->image,'post_id'=>$comment->post_id, 'comment'=>$comment->comment));
                            }
                        }

                }
               $data['allcomments']=$commentslist;
                $sessiondata=$this->user_model->getSession();
                $data['sessiondata']=$sessiondata;

                $onesessiondata=$this->user_model->getOneSession();
                $data['onesessiondata']=$onesessiondata;

                $data['feeddata']=$feeddata;
			   $this->load->view('demoxs',$data);
                
			}
            /******************************************************************************************/
            
            
            
            
		if($segment=="findachapter")
			{
				$ffindchap=array();
				$findchap=$this->user_model->getChapters(); 
				if(count($findchap)>0)
				{
					$ffindchap=$findchap;
				}
				$data['findchaps']=$findchap;
				$this->load->view('findachapter',$data);
			}
		if($segment=="enquiry")
			{
				$this->load->view('enquiry',$data);
			}
		
		if($segment=="register")
			{
				$this->load->view('register',$data);
			}
		if($segment=="contact")
			{
				$this->load->view('contact',$data);
			}
		
		if($segment=="search-requirement")
			{
				
				$this->load->view('search',$data);
			}
		if($segment=="view-reference")
			{
			$user_id=0;
			if(isset($_SESSION['user_id']))
			{
				$user_id=$_SESSION['user_id'];
			}
			
					$refered_id=array();
				
				
					$reference=$this->user_model->getReferences(array($user_id));
					if(count($reference)>0)
					{
						$refered_id=$reference;
					}
					$data['myreference']=$refered_id;
				$this->load->view('view-reference',$data);
			}
		if($segment=="add-friends")
			{
			$user_id=0;
			if(isset($_SESSION['user_id']))
			{
				$user_id=$_SESSION['user_id'];
			}
				$usernames=array();
				$requestedusernames=array();
				
					$users=$this->user_model->AddUsers(array($user_id));
					if(count($users)>0)
					{
						foreach($users as $user)
						{
							$u_id=$user->user_id;
							$actives=$this->user_model->getActiveUsers(array($user_id,$u_id,$user_id,$u_id));
							if(count($actives)>0)
							{
								
							}
							else 
							{
								
						array_push($usernames,array("user_id" => $user->user_id , "user_full_name" => $user->user_full_name , "my_friend_active" => 3 ));
							}
						}
						
						
					}
				
					$data['users']=$usernames;
				$this->load->view('add-friends',$data);
			}
		if($segment=="ajax-add-friend")
			{
				$user_id=$_SESSION['user_id'];
				if(isset($_POST['friend']))
				{
					$friend_id=$_POST['friend'];
					   $addfriend=$this->user_model->getAddNewfriend(array($user_id,$friend_id));
				}
			}
			if($segment=="ajax-again-friend")
			{
				$user_id=$_SESSION['user_id'];
				if(isset($_POST['friend']))
				{
					$friend_id=$_POST['friend'];
					   $addfriend=$this->user_model->getAgainNewfriend(array($user_id,$friend_id));
				}
			}
		if($segment=="view-friends-requests")
			{
				
				$user_id=0;
			if(isset($_SESSION['user_id']))
			{
				$user_id=$_SESSION['user_id'];
			}
				$usernames=array();
				$requestedusernames=array();
				
					$users=$this->user_model->AddUsers(array($user_id));
					if(count($users)>0)
					{
						foreach($users as $user)
						{
							$u_id=$user->user_id;
							$actives=$this->user_model->getViewFriendrequest(array($user_id,$u_id,$u_id,$user_id
						));
							if(count($actives)>0)
							{
								array_push($usernames,array("user_id" => $user->user_id , "user_full_name" => $user->user_full_name , "my_friend_active" => $actives[0]->my_friend_active,"friend_id" => $actives[0]->friend_id,"my_id" => $actives[0]->my_id,"my_friend_id" => $actives[0]->my_friend_id ));
							}
							else 
							{
								
						
							}
						}
						
						
					}
				
				
				
				
					$data['viewfriendsrequests']=$usernames;
				$this->load->view('view-friends-requests',$data);
			}
      if($segment=="ajax-del-friend")
			{
				$user_id=$_SESSION['user_id'];
				if(isset($_POST['delfriend']))
				{
					$friend_id=$_POST['delfriend'];
					   $addfriend=$this->user_model->getDeletefriend(array($friend_id));
					  if($addfriend>0)
					{
						echo "updates";
					}					
						else{
							echo "no";
						}
				}
			}
	if($segment=="ajax-confirm-friend")
			{
				
				$user_id=$_SESSION['user_id'];
				if(isset($_POST['confriend']))
				{
					$friend_id=$_POST['confriend'];
					$confirmfriend=$this->user_model->getConfirmfriend(array($friend_id));
					  
				}
			}
		if($segment=="ajax-un-friend")
			{
				
				$user_id=$_SESSION['user_id'];
				if(isset($_POST['unfriend']))
				{
					$friend_id=$_POST['unfriend'];
					$confirmfriend=$this->user_model->getUnfriend(array($friend_id));
					  
				}
			}
		if($segment=="ajax-ref-friend")
			{
				
				$user_id=$_SESSION['user_id'];
				if(isset($_POST['friend_id']))
				{
					$friend_id=$_POST['friend_id'];
					 $req_id=$_POST['req_id'];
					$reffriend=$this->user_model->getReffriend(array($user_id,$friend_id,$req_id));
					  if($reffriend == 1)
					  {
						  echo "1";
					  }
					  else
					  {
						  echo "Cannot Refer Again";
					  }
				}
			}
			
		if($segment=="dashboard")
			{
				$user_id=0;
			if(isset($_SESSION['user_id']))
			{
				$user_id=$_SESSION['user_id'];
			}
                $view_requirements=$this->user_model->getAllDashRequirements(array($user_id));
				$sectors=$this->user_model->getSector();
                $users=$this->user_model->getUsers();
                $city=$this->user_model->getCity();
				
				$data['sectors']=$sectors;	
                $data['users']=$users;	
                $data['city']=$city;	
                $data['viewrequirements']=$view_requirements;	
				$this->load->view('dashboard',$data);
			}
		if($segment=="view-dashboard-requirements")
			{
				$user_id=0;
			if(isset($_SESSION['user_id']))
			{
				$user_id=$_SESSION['user_id'];
			}
				$r_id=$_GET['requireid'];
				
				$allfriends=array();
				$refe=array();
				$id=0;
                $view_requirements=$this->user_model->getDashRequirements(array($r_id));
				
				
                $friends=$this->user_model->getFriends(array($user_id,$user_id));
				
				if(count($friends)>0)
					{
						foreach($friends as $friend)
						{
							$my_id=$friend->my_id;
							$friend_id=$friend->friend_id;
							if($my_id ==$user_id){	$id=$friend_id;	} else { $id=$my_id; }
							
							$user=$this->user_model->getDashFriends(array($id));
							if(count($user)>0)
							{
								$u_id=$user[0]->user_id;
								 $refreq=$this->user_model->getReferedreq(array($r_id,$user_id,$u_id));
							
							if(count($refreq)>0)
							{
			array_push($allfriends,array("user_id" => $user[0]->user_id , "user_full_name" => $user[0]->user_full_name,"refer_active"=> $refreq[0]->refer_active));
							}
							else{
								if($view_requirements[0]->user_id == $user[0]->user_id)
								{}
							else
							{
			array_push($allfriends,array("user_id" => $user[0]->user_id , "user_full_name" => $user[0]->user_full_name,"refer_active"=> ""));							
							}
				
							}
							
							}
						}
						
						
					}
					
             
                $data['allfriends']=$allfriends;
                $data['viewrequirements']=$view_requirements;
				$this->load->view('view-dashboard-requirements',$data);
			}
		if($segment=="update-photo")
			{
			
				$this->load->view('updatephoto',$data);
			}


		if($segment=="ajax-req-del")
			{
				 $req_id=$_POST['req_id'];
				  $del_requirements=$this->user_model->getDeleteRequirements(array($req_id));
				  if(count($del_requirements)>0)
							{
								
								echo '1'; 
								
							}
							
							else
							{
								echo '<b style="color:red">Failed to Delete Please try again';
								
							}
				 
			}
		if($segment=="ajax-areas")
			{
				 $city=$_POST['city'];
				  $areas=$this->user_model->getAreas(array($city));
				  
				  if(count($areas)>0)
				   { echo '<option value="">Select Area</option>';	
					   foreach($areas as $area)
					   {
						    echo '<option value="'.$area->area_id.'">'.$area->area_name.'</option>';
					   }
					  
				   }
				   else{
					   echo '<option>no data avaliable</option>';
				   }
			}
		if($segment=="change-password")
			{
				$this->load->view('changepassword',$data);
			}
		if($segment=="forgot-password")
			{
				$this->load->view('forgetpassword',$data);
			}
		if($segment=="ajax-forgot-password")
			{
				if(isset($_POST['mail']))	
				 {		 
				  $mail2=$_POST['mail'];
				   $test=explode('@',$mail2);
				  $password=rand(000000,999999);
				  $pwd1=md5($password);
				  
				  if(count($test)>1)
					{
					
						$res=$this->user_model->getUsersemail(array($mail2));
						if(count($res)>0)
						{
							
							$subject='konnipatis.com';
								$from="admin@ilandertech.com";
								$headers = "From: " . strip_tags($from) . "\r\n";
								$headers .= "Reply-To: ". strip_tags($from) . "\r\n";
								$headers .= "MIME-Version: 1.0\r\n";
								$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
								$content=' <br><br><br>Your OTP is : '.$password.'';
								if(mail($mail2, $subject, $content, $headers))
								{
									
								}
							echo '<b style="color:green">please check your email for password</b>';
						}
						else
						{
							echo '<b style="color:red">please enter valid email</b>';
						}
					}
					else
					{
					
						$res1=$this->user_model->getUsersmobile(array($mail2));
						if(count($res1)>0)
						{
							$msgs='Konnipatis: Your OTP is:'.$password;
							$result=$this->smsapi($mail2,$msgs);
							echo '<b style="color:green">please check your mobile for password</b>';
						}
						else
						{
							echo '<b style="color:red">please enter valid Mobile number</b>';
						}
					}
				 }
				
			}
			
			
		  if($segment=="add-requirement")
			{
				
				
				$sectors=$this->user_model->getSector();
                $users=$this->user_model->getUsers();				
                $city=$this->user_model->getCity();				
				$data['sectors']=$sectors;	
				$data['city']=$city;	
                $data['users']=$users;				
				$this->load->view('addrequirement',$data);
			}
			if($segment=="ajax-add-requirement")
			{
				$this->load->view('ajax-add-requirement',$data); 
			}
			if($segment=="edit-requirements")
			{   
		        
		        $sectors=$this->user_model->getSector();
		        $city=$this->user_model->getCity();
		        $areas=$this->user_model->getAr();
            
				$array_edit_require=array();
				
				if(isset($_GET['requireid']))
				{
					
					$requirements=$_GET['requireid'];
					$req=$this->user_model->getRequirements(array($requirements));
					
				}
	            $data['sectors']=$sectors;	
	            $data['city']=$city;	
	            $data['areas']=$areas;	
				$data['requirements']=$requirements;
				$data['req']=$req;				
				$this->load->view('edit-requirements',$data);
			}
			if($segment=="view-requirement")
			{
			$user_id=0;
			if(isset($_SESSION['user_id']))
			{
				$user_id=$_SESSION['user_id'];
			}
				
				
                $view_requirements=$this->user_model->getViewRequirements(array($user_id));
               	
                $data['viewrequirements']=$view_requirements;				
				$this->load->view('view-requirements',$data);
			}
			if($segment=="ajax-edit-requirement")
			{
				$this->load->view('ajax-edit-requirement',$data); 
			}
		
			
		if($segment=="my-profile")
			{
			$user_id=0;
			if(isset($_SESSION['user_id']))
			{
				$user_id=$_SESSION['user_id'];
			}
				
				  $user=$this->user_model->getprofile(array($user_id)); 
				  $data['profile']=$user;
				$this->load->view('profile',$data);
			}
		if($segment=="ajax-profile")
			{
				 
			if(isset($_POST['user_id']))	
				 {
					  $user_id=$_POST['user_id'];
					  $fname=$_POST['fname'];
					  $pemail=$_POST['pemail'];
					  $pmobile=$_POST['pmobile'];
					   
					   $updata=$this->user_model->getprofile(array($user_id)); 
					   
						 if(count($updata)>0)
						 {
							    $updata=$this->user_model->getUpdateusers(array($fname,$pemail,$pmobile,$user_id)); 
						 }
				 }
			
			} 
		if($segment=="ajax-change-password")
			{
				if(isset($_POST['opwd']))	
				 {		 
				  $old=$_POST['opwd'];
				  $new=$_POST['npwd'];
				  $cnew=$_POST['cpwd'];
				  $dbpwd=md5($new);
				  $dbopwd=md5($old);
				  $user_email="";
				  $user_mobile="";
				  
				  if(isset($user_email))
				   {
					 $user_email=$_SESSION['user_email'];  
				   }
				   if(isset($user_mobile))
				   {
					 $user_email=$_SESSION['user_mobile'];  
				   }
				   if($old != "")
				   {
					   
					   $pwd=$this->user_model->getCheckUserse(array($user_email,$dbopwd)); 
					   
						 if(count($pwd)>0)
						 {
							 $pwd1=$this->user_model->getUpdatepass(array($dbpwd,$user_email)); 
								 
								 if($pwd1)
								   {
									  echo '<b style="color:green" >Password Changed successfully</b>';  
								   }
								   else
								   {
									  echo '<b style="color:red" >Update failed</b>';  
								   }
							 
							 
						 } 
						 else{
							 
							  echo '<b style="color:red" >Wrong old password</b>';
						 }
					}
				  else
				  {
					  echo '<b style="color:red" >Please enter old Password</b>';
				  }
				  
				  
				 }
				 else
				 {
					 echo '<b style="color:red" >Please enter all info</b>';
				 }
	 
			}
		if($segment=="photo")
			{
				
				if(isset($_FILES['pimage']['name']))
				{
				 $source_file=$_FILES["pimage"]["tmp_name"];
				 $id1=$_SESSION['user_id'];
				 $temporary=basename($_FILES['pimage']['name']);
				 $dbfile=$id1.'---'.rand(000000,999999).$temporary;
				 $destination_file="assets/uploads/photos/".$dbfile;
				$imageFileType = pathinfo($temporary,PATHINFO_EXTENSION);
				if($temporary!="")
				{
					if($imageFileType!="jpg" && $imageFileType!="png" && $imageFileType!="jpeg" && $imageFileType!="gif" ) 
						{
						  echo '<b style="color:red;">please upload only png and jpg formates</b>';
						}
						 else
						{
							 if(move_uploaded_file($source_file,$destination_file))
							   {
								  
								  $uphoto=$this->user_model->getPhoto(array($dbfile,$id1));
										
										if($uphoto)
										{
											echo '1';
												
										}
										else
										{
											echo '<b style="color:red;">image is already existing1</b>';
										}
								 
								
							   }
						}
				}
				else
				{
					echo '<b style="color:red;">image is required</b>';
				}
			}	
				
			}
		if($segment=="ajax-reg")
			{
			
				if(isset($_POST['email']))
				{
					$name=$_POST['uname'];
					$email=$_POST['email'];
					$pwd=$_POST['pwd'];
					$password=md5($pwd);
					$day=$_POST['day'];
					$month=$_POST['month'];
					$year=$_POST['year'];
					$gender=$_POST['gender'];
					$dob=$year.'-'.$month.'-'.$day;
					$date=date('Y-d-m H:i:s');
					$test=explode('@',$email);
					
					if(count($test)>1)
					{
						$users=$this->user_model->getUsersemail(array($email));
						 if(count($users)>0)
						{
							echo '<b style="color:red">User already exits</b>'; 
						}
						else
						{
							
							$register=$this->user_model->registeremail(array($name,$email,$password,$dob,$gender,$date));
							if(count($register)>0)
							{
								
								echo '1'; 
								
							}
							
							else
							{
								echo 'Registration failed Please try again';
							}
						}
					}
					else
					{
						$users=$this->user_model->getUsersmobile(array($email));
						 if(count($users)>0)
						{
							echo '<b style="color:red">User already exits</b>'; 
						}
						else
						{
							$register=$this->user_model->registermobile(array($name,$password,$email,$dob,$gender,$date));
							if(count($register)>0)
							{
								echo '1'; 
							}
							else
							{
								echo '<b style="color:red">Registration failed Please try again</b>'; 
							
							}
						}
					}
					
				}
			}
			if($segment=="ajax-login")
			{
				
				
			if(isset($_POST['umail']))
				{
					
					 $mail2=$_POST['umail'];
					 $test=explode('@',$mail2);
					 $pwd2=$_POST['upwd'];
					 $pswd1=md5($pwd2);
						
					if(count($test)>1)
					{
					
						$res=$this->user_model->getCheckUserse(array($mail2,$pswd1));
						if(count($res)>0)
						{
							$userid=$res[0]->user_id;
							$_SESSION['user_id']=$userid;
							$_SESSION['user_full_name']=$res[0]->user_full_name;
							$_SESSION['user_email']=$res[0]->user_email;
							$_SESSION['user_photo']=$res[0]->user_photo;
							echo '1';
							
						}
						else
						{
							echo '<b style="color:red">please enter valid email and password</b>';
						}
					}
					else
					{
					
						$res1=$this->user_model->getCheckUsersm(array($mail2,$pswd1));
						if(count($res1)>0)
						{
							$_SESSION['user_id']=$res1[0]->user_id;
							$_SESSION['user_full_name']=$res1[0]->user_full_name;
							$_SESSION['user_mob']=$res1[0]->user_mobile;
							$_SESSION['user_photo']=$res1[0]->user_photo;
							echo '1';
							
						}
						else
						{
							echo '<b style="color:red">please enter valid Mobile number and password</b>';
						}
					}
					
					
				}
			}
			
		}
		else if($count==2)
		{			
			$segment1=$this->uri->segment(1);
			$segment2=$this->uri->segment(2);
		
			if($segment1=="chapter")
			{
				$ffindchap=array();
				$findchap=$this->user_model->getChapterdata($segment2); 
				if(count($findchap)>0)
				{
					$ffindchap=$findchap;
				}
				$data['findchaps']=$findchap;
				
				$this->load->view('chapterwebsite',$data);
			}
		}
		
		
		
	}
	function smsapi($mobile_number, $msg) {
$url = 'http://bhashsms.com/api/sendmsg.php?';
$params = 'user=ishwarya&pass=123&sender=epdeal&phone=' . $mobile_number . '&text=' . $msg . '&priority=ndnd&stype=normal';
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        $result = curl_exec($ch);
        //log_message('INFO', $result);
        $sms_status = explode('.', $result);

        if (isset($sms_status[0]) && ($sms_status[0] == 'S')) {
            return true;
        } else {
            return false;
        }
    }
		
}

?>
