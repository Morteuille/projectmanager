<?php

namespace Projectmanager\HomeBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity
*/	

class Planification 			
{
	//Attributes
		
	 /**
   * @ORM\Id
   * @ORM\ManyToOne(targetEntity="Projectmanager\HomeBundle\Entity\Event")
    */
  private $event;

 /**
    * @ORM\Id
   * @ORM\ManyToOne(targetEntity="Projectmanager\HomeBundle\Entity\User")
  *     */
  private $user;

	/**
	* @ORM\Column(name="Event_Date", type="datetime")
	*/
	var $Event_Date; // type : datetime

	//Operations
	 	
	 
	

} // End Class Planification


?>

