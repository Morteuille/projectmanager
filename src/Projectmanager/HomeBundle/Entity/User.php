<?php
namespace Projectmanager\HomeBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity
*/

class User 			
{
	//Attributes
		
	 /**
	* @ORM\Column(name="id", type="integer")
	* @ORM\Id
	*/	
	 
	var $id; // type : int
	
	/**
	* @ORM\Column(name="User_FName", type="string", length=255)
	*/
	var $User_FName; // type : string
	/**
	* @ORM\Column(name="User_LName", type="string", length=255)
	*/
	var $User_LName; // type : string
	/**
	* @ORM\Column(name="User_Mail", type="string", length=255)
	*/
	var $User_Mail; // type : string
	/**
	* @ORM\Column(name="User_Phone_Office", type="string", length=255)
	*/
	var $User_Phone_Office; // type : string
	/**
	* @ORM\Column(name="User_Phone_Mobile", type="string", length=255)
	*/
	var $User_Phone_Mobile; // type : string
	/**
	* @ORM\Column(name="User_Service", type="string", length=255)
	*/
	var $User_Service; // type : string

	//Operations
	 	
	public function getUser_FName()
	{
		return $this->User_FName;
	}
	
	public function setUser_FName($User_FName)
	{
		$this->User_FName = $User_FName;
	}  
	public function getUser_LName()
	{
		return $this->User_LName;
	}
	
	public function setUser_LName($User_LName)
	{
		$this->User_LName = $User_LName;
	}  
	public function getUser_Mail()
	{
		return $this->User_Mail;
	}
	
	public function setUser_Mail($User_Mail)
	{
		$this->User_Mail = $User_Mail;
	}  
	public function getUser_Phone_Office()
	{
		return $this->User_Phone_Office;
	}
	
	public function setUser_Phone_Office($User_Phone_Office)
	{
		$this->User_Phone_Office = $User_Phone_Office;
	}  
	public function getUser_Phone_Mobile()
	{
		return $this->User_Phone_Mobile;
	}
	
	public function setUser_Phone_Mobile($User_Phone_Mobile)
	{
		$this->User_Phone_Mobile = $User_Phone_Mobile;
	}  
	public function getUser_Service()
	{
		return $this->User_Service;
	}
	
	public function setUser_Service($User_Service)
	{
		$this->User_Service = $User_Service;
	}  
	

} // End Class User


/**
* @ORM\Entity
*/


class Manager  extends User			
{
	//Attributes
		
	 
	
	//Operations
	 	
	 
	

} // End Class Manager

?>

