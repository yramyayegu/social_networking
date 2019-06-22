<?php
class User_model extends CI_Model
{
	function getUsers()
	{
		$var=$this->db->query('select * from users');
		return $var->result();	
	}
	function getUsersemail($d)
	{
		$var=$this->db->query('select * from user where email=? ',$d);
		return $var->result();	
	}
    
    function getCheckUserstatus($d)
	{
		$var=$this->db->query('select * from user where email=? and status=0',$d);
		return $var->result();	
	}
    function getUsersid($d)
	{
		$var=$this->db->query('select * from user where id=? ',$d);
		return $var->result();	
	}	
	function registeruser($data)
	{
	$var=$this->db->query('INSERT INTO `user`(`name`, `mobile`, `image`,`company`,`email`, `password`,`date`) VALUES (?,?,?,?,?,?,?)',$data);
		return $var;
	}
	function newpost($data)
	{
	$var=$this->db->query('INSERT INTO `feed`(`user_id`, `user_name`, `post_data`, `post_image`, `datetime`, `likes`) VALUES (?,?,?,?,?,?)',$data);
		return $var;
	}
	function getFeed()
	{
		$var=$this->db->query('select * from feed order by post_id desc');
		return $var->result();	
	}
	function getOneFeed($d)
	{
		$var=$this->db->query('select * from feed where post_id=?',$d);
		return $var->result();	
	}
    
	function checkLike($d)
	{
		$var=$this->db->query('select * from likes where user_id=? and post_id=?',$d);
		return $var->result();	
	} 
	function getUserLikes($d)
	{
		$var=$this->db->query('SELECT post_id FROM `likes` where user_id=?',$d);
		return $var->result();	
	}
    function getLike($d)
	{
		$var=$this->db->query('select likes from feed where post_id=?',$d);
		return $var->result();	
	}
    function newLike($data)
	{
	$var=$this->db->query('INSERT INTO `likes`(`user_id`, `post_id`, `no_likes`) VALUES (?,?,?)',$data);    
		return $var;
	}
    function setLike($data)
	{
	$var=$this->db->query('update feed set likes=? where post_id=?',$data);
		return $var;
	}
      function delLike($data)
	{
	$var=$this->db->query('DELETE FROM likes WHERE  likes_id = ?',$data);
		return $var;
	} 
    function delPost($data)
	{
	$var=$this->db->query('DELETE FROM feed WHERE post_id = ?',$data);
		return $var;
	} 
    function updImg($data)
	{
	$var=$this->db->query('update user set image=? where id=?',$data);
		return $var;
	}
     function updatepost($data)
	{
	$var=$this->db->query('update feed set post_data=? where post_id=?',$data);
		return $var;
	}
    function newcomment($data)
	{
	$var=$this->db->query('INSERT INTO `comments`(`comment`, `user_id`, `post_id`,`comment_date`) VALUES (?,?,?,?)',$data);    
		return $var;
	}
    function getcomments($d)
	{
        $var=$this->db->query('SELECT * FROM `comments` where post_id=? ',$d);
		return $var->result();	
	}
    
     function getSession()
	{
	$var=$this->db->query('SELECT * FROM `sessions`');    
		return $var->result();
	}
   
     function getOneSession()
	{
	$var=$this->db->query('SELECT * FROM `sessions` limit 1');    
		return $var->result();
	}   
    
    
    /*--------------------------------------------------------------*/
	function registermobile($data)
	{
	$var=$this->db->query('insert into users (user_full_name,user_password,user_mobile,user_registered_date,user_gender,user_dob) values(?,?,?,?,?,?)',$data);
		return $var;
	}
	function getCheckUserse($d)
	{
		$var=$this->db->query('select * from user where email=? and password=?',$d);
		return $var->result();	
	}

	function getprofile($d)
	{
		$var=$this->db->query('select * from users where user_id=?',$d);
		return $var->result();	
	}
	function getSector()
	{
		$var=$this->db->query('select * from sectors');
		return $var->result();	
	}
	
    function getPhoto($d)
	{
		$var=$this->db->query('update users set user_photo=? where user_id=?',$d);
		return $var;	
	}
	function getUpdatepass($d)
	{
		$var=$this->db->query('update users set user_password=? WHERE user_email=?',$d);
		return $var;	
	}

	function getChapters()
	{
		$var=$this->db->query('select * from chapters');
		return $var->result();
	}
	function getChapterdata($d)
	{
		$var=$this->db->query('select * from chapters where chapter_website=?',$d);
		return $var->result();
	}
	function getRequirements($d)
	{
		$var=$this->db->query('select * from requirements where requirement_id=?',$d);
		return $var->result();
	}
	function getViewRequirements($y)
	{
		$var=$this->db->query('select * from requirements r LEFT JOIN sectors s ON r.sector_ids=s.sector_id LEFT JOIN users u ON r.user_ids=u.user_id where u.user_id=?',$y);
		return $var->result();
	}
	function getAllDashRequirements($y)
	{
		$var=$this->db->query('SELECT requirement_id,user_full_name,city_name,area_name,sector_name,requirement_des,requirement_date FROM requirements r left join sectors s on r.sector_ids=s.sector_id left join users u on u.user_id=r.user_ids left join cities on city_ids=city_id left join areas on area_id=area_ids where u.user_id!=? order by requirement_date desc',$y);
		return $var->result();
	}
	function getDashRequirements($y)
	{
		$var=$this->db->query('SELECT requirement_id,city_name,area_name,user_id,user_full_name,sector_name,requirement_des,requirement_date FROM requirements r left join sectors s on r.sector_ids=s.sector_id left join users u on u.user_id=r.user_ids left join cities on city_ids=city_id left join areas on area_id=area_ids where r.requirement_id=?',$y);
		return $var->result();
	}
	function getDeleteRequirements($y)
	{
		$var=$this->db->query('DELETE FROM requirements WHERE requirement_id = ?',$y);
		return $var;
	}
	function getCity()
	{
		$var=$this->db->query('SELECT city_id,city_name FROM cities');
		return $var->result();
	}
	function getAr()
	{
		$var=$this->db->query('SELECT area_id,area_name FROM areas');
		return $var->result();
	}
	function getAreas($y)
	{
		$var=$this->db->query('SELECT area_id,area_name FROM areas where city_ids=?',$y);
		return $var->result();
	}
	function AddUsers($y)
	{
		$var=$this->db->query('SELECT user_id,user_full_name FROM users where user_id!=? ',$y);
		return $var->result();
	}
	function getFriendrequest($y)
	{
		$var=$this->db->query('SELECT user_id,user_full_name,my_friend_active FROM users u left join my_friends m on u.user_id=m.friend_id where m.my_friend_active=0 and u.user_id=?',$y);
		return $var->result();
	}
	function getAddNewfriend($y)
	{
		$var=$this->db->query('insert into my_friends(my_id,friend_id,my_friend_date) values(?,?,NOW())',$y);
		return $var;
	}
	function getViewFriendrequest($y)
	{
		$var=$this->db->query('select my_friend_id,my_friend_active,my_id,friend_id from my_friends where (my_id=? and friend_id=?) or (my_id=? and friend_id=?) ',$y);
		return $var->result();
	}
	function getDeletefriend($y)
	{
		$var=$this->db->query('update my_friends set my_friend_active=2 WHERE  my_friend_id=?',$y);
		return $var;
	}
	function FriendRequested($y)
	{
		$var=$this->db->query('SELECT user_id FROM users u LEFT JOIN my_friends m ON u.user_id = m.friend_id WHERE u.user_id in(select my_id from  my_friends where friend_id=?)',$y);
		return $var->result();
	}

	function getActiveUsers($y)
	{
		$var=$this->db->query('SELECT my_friend_active from my_friends where (friend_id=? and my_id=?) or (my_id=? and friend_id=?)  ',$y);
		return $var->result();
	}
	function getConfirmfriend($y)
	{
		$var=$this->db->query('update my_friends set my_friend_active=1 WHERE my_friend_id=?',$y);
		return $var;
	}
	function getUnfriend($y)
	{
		$var=$this->db->query('update my_friends set my_friend_active=2 WHERE my_friend_id=?',$y);
		return $var;
	}
	function getAgainNewfriend($y)
	{
		$var=$this->db->query('update my_friends set my_friend_active=0 WHERE my_id=? and friend_id=?',$y);
		return $var;
	}
	function getFriends($y)
	{
		$var=$this->db->query('SELECT my_id,friend_id FROM my_friends where (my_id=? or friend_id=?) and my_friend_active=1',$y);
		return $var->result();
	}
	function getDashFriends($y)
	{
		$var=$this->db->query('SELECT user_id,user_full_name FROM users where user_id=?',$y);
		return $var->result();
	}
	function getReffriend($y)
	{
		$var=$this->db->query('insert into refer_friends(my_id,friend_id,refer_date,requirement_ids) values(?,?,NOW(),?)',$y);
		return $var;
	}
	function getReferences($y)
	{
		$var=$this->db->query('SELECT * FROM refer_friends rf left join requirements rq on rq.requirement_id=rf.requirement_ids left join sectors s on s.sector_id=rq.sector_ids left join users u on u.user_id=rf.friend_id  where rf.my_id=?',$y);
		return $var->result();
	}
		function getReferedreq($y)
	{
		$var=$this->db->query('SELECT * FROM refer_friends  where requirement_ids=? and my_id=? and friend_id=? ',$y);
		return $var->result();
	}
		function getUpdateusers($y)
	{
		$var=$this->db->query('update users set user_full_name=? , user_email=? ,user_mobile=? WHERE user_id=?',$y);
		return $var;
	}
	
}
?>