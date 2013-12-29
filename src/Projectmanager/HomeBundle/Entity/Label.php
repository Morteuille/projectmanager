<?php

namespace Projectmanager\HomeBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity
*/


class Label 			
{
	//Attributes
	/**
	* @ORM\Column(name="id", type="integer")
	* @ORM\Id
	* @ORM\GeneratedValue(strategy="AUTO")
	*/	
	var $id; // type : int
	/**
	* @ORM\Column(name="Label_Name", type="string", length=255)
	*/
	var $Label_Name; // type : string

	//Operations
	 	
	public function getLabel_Name()
	{
		return $this->Label_Name;
	}
	
	public function setLabel_Name($Label_Name)
	{
		$this->Label_Name = $Label_Name;
	} 
	

} // End Class Label


?>

