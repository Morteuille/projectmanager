<?php

namespace Projectmanager\HomeBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity
*/

class Event 			
{
	/**
	* @ORM\Column(name="Event_ID", type="integer")
	* @ORM\Id
	* @ORM\GeneratedValue(strategy="AUTO")
	*/	
	private $Event_ID; // type : int
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


?>

