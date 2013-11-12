<?php
/**
 * @version     0.9.0
 * @package     com_demotivator
 * @copyright   Copyright (C) 2012. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Fonclub <sfonclub@gmail.com> - http://fonclub-blog.ru
 */


// no direct access
defined('_JEXEC') or die;

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_demotivator')) 
{
	throw new Exception(JText::_('JERROR_ALERTNOAUTHOR'));
}

// Include dependancies
jimport('joomla.application.component.controller');

$controller	= JController::getInstance('Demotivator');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
