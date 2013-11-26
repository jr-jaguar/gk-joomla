<?php
/**
 * @version     1.0.0
 * @package     com_student
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Jack <j.jaguar@rambler.ru> - http://
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controllerform');

/**
 * List controller class.
 */
class StudentControllerList extends JControllerForm
{

    function __construct() {
        $this->view_list = 'lists';
        parent::__construct();
    }

}