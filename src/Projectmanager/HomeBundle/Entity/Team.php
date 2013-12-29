<?php
namespace Projectmanager\HomeBundle\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
* @ORM\Entity
*/

class Team 			
{
	//Attributes
	/**
	* @ORM\Column(name="id", type="string", length=255)
	* @ORM\Id
	*/	
	 
	var $id; // type : string
	/**
	* @ORM\Column(name="Team_Name", type="string", length=255)
	*/
	
	var $Team_Name; // type : string
/**
	 * @ORM\ManyToMany(targetEntity="Projectmanager\HomeBundle\Entity\User", cascade={"persist"})
	 */
	var $users;
	//Operations
	   public function getTeam_Name()
	{
		return $this->Team_Name;
	}
	
	public function setTeam_Name($Team_Name)
	{
		$this->Team_Name = $Team_Name;
	}  		
	 
	

} // End Class Team


?>

