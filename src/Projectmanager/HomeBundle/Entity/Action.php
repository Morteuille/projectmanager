<?php

namespace Projectmanager\HomeBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity
* @ORM\Entity(repositoryClass="Projectmanager\HomeBundle\Entity\ArticleRepository")
*/
class Action 			
{
	/**
	* @ORM\Column(name="Action_ID", type="integer")
	* @ORM\Id
	* @ORM\GeneratedValue(strategy="AUTO")
	*/	 
	private $Action_ID; // type : int
	/**
	* @ORM\Column(name="Action_Name", type="string", length=255)
	*/
	private $Action_Name; // type : string
	/**
	* @ORM\Column(name="Is_Checked", type="boolean", length=1)
	*/
	private $Is_Checked; // type : bool

	//getters & setters
	
	public function getAction_Name()
	{
		return $this->Action_Name;
	}
	
	public function setAction_name($Action_Name)
	{
		$this->Action_Name = $Action_Name;
	}	
	 
	public function getIs_Checked()
	{
		return $this->Is_Checked;
	} 
	 
	public function setIs_Checked($Is_Checked)
	{
		$this->Is_Checked = $Is_Checked;
	}

} 

?>

