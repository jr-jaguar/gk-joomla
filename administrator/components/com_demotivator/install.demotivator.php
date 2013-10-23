<?php
/**
 * @version     0.9.0
 * @package     com_demotivator
 * @copyright   Copyright (C) 2012. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Fonclub <sfonclub@gmail.com> - http://fonclub-blog.ru
 */
 
defined( '_JEXEC' ) or die( 'Restricted access' );
jimport( 'joomla.filesystem.folder' );

function com_install() {
	
    $img_path = JPATH_ROOT .DS. 'images' .DS. 'com_demotivator';
    if (!JFolder::exists($img_path)){
        if(JFolder::create($img_path, 0755)){
            $data = "<html>\n<body bgcolor=\"#FFFFFF\">\n</body>\n</html>";
			JFile::write($img_path.DS."index.html", $data);
            echo '<div><b><span style="color:#009933">Folder</span> ' . $img_path .' <span style="color:#009933">created!</span></b></div>';
        }
        else
            echo '<div><b><span style="color:#CC0033">Folder</span> ' . $img_path .' <span style="color:#CC0033">creation failed!</span></b> Please create it manually.</div>';
    }	
}
?>