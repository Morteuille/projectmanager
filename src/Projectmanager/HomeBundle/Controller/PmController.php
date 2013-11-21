<?php

// src/Sdz/BlogBundle/Controller/PmController.php

namespace Projectmanager\HomeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Response;

class PmController extends Controller
{
  public function indexAction()
  {
    	return $this->render('ProjectmanagerHomeBundle:Pm:index.html.twig');
  }
	public function seeProjectAction($id)
  {
   	
	return $this->render('ProjectmanagerHomeBundle:Pm:seeProject.html.twig', array('id' => $id));
  }
  
  public function menuAction()
  {  
    return $this->render('ProjectmanagerHomeBundle:Pm:menu.html.twig');

  }
}