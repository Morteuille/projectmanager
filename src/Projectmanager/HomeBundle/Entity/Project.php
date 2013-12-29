<?php
namespace Projectmanager\HomeBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity
*/

class Project 			
{
	//Attributes
		
	/**
	* @ORM\Column(name="id", type="integer")
	* @ORM\Id
	* @ORM\GeneratedValue(strategy="AUTO")
	*/	 
	var $id; // type : int
	/**
	 * @ORM\ManyToMany(targetEntity="Projectmanager\HomeBundle\Entity\Manager", cascade={"persist"})
	 */
	var $managers;
	
	/**
	* @ORM\Column(name="Project_Name", type="string", length=255)
	*/
	var $Project_Name; // type : string
	/**
	* @ORM\Column(name="Creation_Date", type="datetime")
	*/
	var $Creation_Date; // type : 
	/**
	* @ORM\Column(name="Created_By", type="integer")
	*/
	var $Created_By; // type : int
	/**
	* @ORM\Column(name="Completion_Percentage", type="integer")
	*/
	var $Completion_Percentage; // type : int
	/**
	* @ORM\Column(name="Project_Color", type="string", length=255)
	*/
	var $Project_Color; // type : string

	//Operations
	 public function getProject_Name()
	{
		return $this->Project_Name;
	}
	
	public function setProject_Name($Project_Name)
	{
		$this->Project_Name = $Project_Name;
	}  	
	 
	 public function getCreation_Date()
	{
		return $this->Creation_Date;
	}
	
	public function setCreation_Date($Creation_Date)
	{
		$this->Creation_Date = $Creation_Date;
	} 
	 public function getCreated_By()
	{
		return $this->Created_By;
	}
	
	public function setCreated_By($Created_By)
	{
		$this->Created_By = $Created_By;
	}  	
	 
	 public function getCompletion_Percentage()
	{
		return $this->Completion_Percentage;
	}
	
	public function setCompletion_Percentage($Completion_Percentage)
	{
		$this->Completion_Percentage = $Completion_Percentage;
	} 
	 public function getProject_Color()
	{
		return $this->Project_Color;
	}
	
	public function setProject_Color($Project_Color)
	{
		$this->Project_Color = $Project_Color;
	}  	
	 

} // End Class Project


?>

