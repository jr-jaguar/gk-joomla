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

//Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_demotivator', JPATH_ADMINISTRATOR);
?>

<?php if( $this->item and ($this->item->state == 1 or $this->user->id == $this->item->created_by)) : ?>
    <div class="demotivator-item">
        <h1><?php echo $this->item->name; ?></h1>
        <?php if($this->item->state == 0): echo JText::_('COM_DEMOTIVATOR_ITEM_SEND_TO_MODERATE'); ?><?php endif; ?>
		<img src="../<?php echo $this->item->img; ?>" />        
    </div>
<?php elseif($this->item and $this->item->state == 0 and $this->user->get('guest')): 
        echo JText::_('COM_DEMOTIVATOR_ITEM_SEND_TO_MODERATE'); ?>
<?php  else: ?>
    Could not load the item
<?php endif; ?>
<a href="http://fonclub-blog.ru/com_demotivator.html" target="_blank" style="font-size:10px;color: grey; display: block; text-align: right;">powered by JDemotivator</a>