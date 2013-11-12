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
?>

<?php if($this->items) : ?>

    <div class="items">

        <ul class="items_list">

            <?php foreach ($this->items as $item) :
            
                $item->slug	= $item->alias ? ($item->id.':'.$item->alias) : $item->id;				
				$link = JRoute::_('index.php?option=com_demotivator&view=img&id='. $item->slug);
            ?>
                <div class="items" style="width: 30%; margin: 1%;float: left;">
                    <h3><a href="<?php echo $link; ?>"><?php echo $item->name; ?></a></h3>
            		<a href="<?php echo $link; ?>"><img src="../<?php echo $item->img; ?>" width="100%" /></a>
                </div>

            <?php endforeach; ?>

        </ul>

    </div>
     
     <div class="clear"></div>
     <div class="pagination">
        <p class="counter">
            <?php echo $this->pagination->getPagesCounter(); ?>
        </p>
        <?php echo $this->pagination->getPagesLinks(); ?>
    </div>
<?php else: ?>
    
    There are no items in the list

<?php endif; ?>
<a href="http://fonclub-blog.ru/com_demotivator.html" target="_blank" style="font-size:10px;color: grey; display: block; text-align: right;">powered by JDemotivator</a>