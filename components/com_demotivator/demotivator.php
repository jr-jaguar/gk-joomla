<?php
/**
 * @version     0.9.0
 * @package     com_demotivator
 * @copyright   Copyright (C) 2012. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Fonclub <sfonclub@gmail.com> - http://fonclub-blog.ru
 */

defined('_JEXEC') or die;

// Include dependancies
jimport('joomla.application.component.controller');

if(JFactory::getApplication()->input->get('task') == 'api'){    
    require_once (JPATH_COMPONENT.DS.'helpers/demotivator.php' );/** подключили хелпер*/
    $api = new DemotivatorHelper(); /** непосредственно создание демотиватора*/
    exit;
}

// Execute the task.
$controller	= JController::getInstance('Demotivator');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();
