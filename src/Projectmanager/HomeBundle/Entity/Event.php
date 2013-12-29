<?php

namespace Projectmanager\HomeBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity
*/

class Event 			
{
	/**
	* @ORM\Column(name="id", type="integer")
	* @ORM\Id
	* @ORM\GeneratedValue(strategy="AUTO")
	*/	
	private $id; // type : int
	 /**
   	* @ORM\ManyToOne(targetEntity="Projectmanager\HomeBundle\Entity\Project")
	*/
	var $project;
	/**
	 * @ORM\ManyToMany(targetEntity="Projectmanager\HomeBundle\Entity\Label", cascade={"persist"})
	 */
	var $users;
	/**
	* @ORM\Column(name="Event_Name", type="string", length=255)
	*/
	private $Event_Name; // type : string

	//getters & setters
	
	public function getEvent_Name()
	{
		return $this->Event_Name;
	}
	
	public function setEvent_Name($Event_Name)
	{
		$this->Event_Name = $Event_Name;
	}

} // End Class Event

/**
* @ORM\Entity
*/

class Task  extends Event			
{
	/**
	 * @ORM\ManyToMany(targetEntity="Projectmanager\HomeBundle\Entity\Label", cascade={"persist"})
	 */
	var $labels;
	
	//Attributes
	/**
	* @ORM\Column(name="Task_Percentage", type="integer")
	*/ 
	var $Task_Percentage; // type : int
	/**
	* @ORM\Column(name="Task_Creation_Date", type="string", length=255)
	*/
	var $Task_Creation_Date; // type : string
	/**
	* @ORM\Column(name="Task_Due_Date", type="string", length=255)
	*/
	var $Task_Due_Date; // type : string

	//Operations
	  public function getTask_Percentage()
	{
		return $this->Task_Percentage;
	}
	
	public function setTask_Percentage($Task_Percentage)
	{
		$this->Task_Percentage = $Task_Percentage;
	}  	
	 
	 public function getTask_Creation_Date()
	{
		return $this->Task_Creation_Date;
	}
	
	public function setCreation_Date($Task_Creation_Date)
	{
		$this->Task_Creation_Date = $Task_Creation_Date;
	} 
	 public function getTask_Due_Date()
	{
		return $this->Task_Due_Date;
	}
	
	public function setTask_Due_Date($Task_Due_Date)
	{
		$this->Task_Due_Date = $Task_Due_Date;
	} 
} // End Class Task

/**
* @ORM\Entity
*/


class Meeting  extends Event			
{
	//Attributes
	/**
	* @ORM\Column(name="Meeting_Duration", type="string", length=255)
	*/	
	 
	var $Meeting_Duration; // type : string

	//Operations
	public function getMeeting_Duration()
	{
		return $this->Meeting_Duration;
	}
	
	public function setMeeting_Duration($Meeting_Duration)
	{
		$this->Meeting_Duration = $Meeting_Duration;
	}  	
	 
	

} // End Class Meeting


?>

