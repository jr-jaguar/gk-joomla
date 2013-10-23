<?php
/**
 * @version     0.9.0
 * @package     com_demotivator
 * @copyright   Copyright (C) 2012. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Fonclub <sfonclub@gmail.com> - http://fonclub-blog.ru
 */

// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.view');

 
class DemotivatorViewNewImg  extends JView 
{
    protected $document;
    
	public function display($tpl = null)
	{
		
		$app = &JFactory::getApplication('site');
		$this->document	= &JFactory::getDocument();
		$uri 		= &JFactory::getURI();
		$user 		= &JFactory::getUser();
		$params		= $app ->getParams('com_demotivator');				
		$menus	= &JSite::getMenu();
        
        $return_url = base64_encode($uri);
        if (!$user->authorise( 'core.create','com_demotivator' )) {
          $app->redirect('index.php?option=com_users&view=login&return='.$return_url, JText::_('COM_DEMOTIVATOR_ERR_USER_LOGIN'));
        } 
                
        if( $params->get('jquery_on') == 1)
            $this->document->addScript('https://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js' );
            
        $assets_path = '/components/com_demotivator/assets/';
        $this->document->addScript( $assets_path.'js/uploadify/jquery.uploadify-3.1.min.js' );
		$this->document->addScript( $assets_path.'js/imgareaselect/jquery.imgareaselect.min.js' );
        $this->document->addScript( $assets_path.'js/imgareaselect/jquery.imgareaselect.pack.js' );
        $this->document->addScript( $assets_path.'js/main.js' );
        
        $this->document->addStyleSheet( $assets_path.'css/style.css' );
        $this->document->addStyleSheet( $assets_path.'js/imgareaselect/css/imgareaselect-animated.css' );
                    		

		$this->assignRef('params', $params);
        $this->assignRef('types', $params->get('types'));
        
        $this->prepareDocument();
		
		parent::display($tpl);
	}
    
    protected function prepareDocument()
	{
		$app		= JFactory::getApplication();
		$menus		= $app->getMenu();
		$title 		= null;

		// Because the application sets a default page title,
		// we need to get it from the menu item itself
		$menu = $menus->getActive();
		if ($menu) {
			$this->params->def('page_heading', $this->params->get('page_title', $menu->title));
		} 

		$title = $this->params->get('page_title', '');
		if (empty($title)) {
			$title = $app->getCfg('sitename');
		}
		elseif ($app->getCfg('sitename_pagetitles', 0) == 1) {
			$title = JText::sprintf('JPAGETITLE', $app->getCfg('sitename'), $title);
		}
		elseif ($app->getCfg('sitename_pagetitles', 0) == 2) {
			$title = JText::sprintf('JPAGETITLE', $title, $app->getCfg('sitename'));
		}
		$this->document->setTitle($title);

		if ($this->params->get('menu-meta_description'))
		{
			$this->document->setDescription($this->params->get('menu-meta_description'));
		}

		if ($this->params->get('menu-meta_keywords'))
		{
			$this->document->setMetadata('keywords', $this->params->get('menu-meta_keywords'));
		}

		if ($this->params->get('robots'))
		{
			$this->document->setMetadata('robots', $this->params->get('robots'));
		}
	}
}
?>