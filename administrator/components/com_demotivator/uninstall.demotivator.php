<?php
/**
 * @version     0.9.1
 * @package     com_demotivator
 * @copyright   Copyright (C) 2012. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Fonclub <sfonclub@gmail.com> - http://fonclub-blog.ru
 */
 
defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.filesystem.folder' );

function com_uninstall() {
	
    $img_path = JPATH_ROOT .DS. 'images' .DS. 'com_demotivator';
    if (JFolder::exists($img_path)){
        JFolder::delete($img_path);
    }	
}
?>