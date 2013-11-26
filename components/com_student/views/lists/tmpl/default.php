<?php
/**
 * @version     1.0.0
 * @package     com_student
 * @copyright   © 2013. Все права защищены.
 * @license     GNU General Public License версии 2 или более поздней; Смотрите LICENSE.txt
 * @author      Jack <j.jaguar@rambler.ru> - http://
 */
// no direct access
defined('_JEXEC') or die;
?>
<script type="text/javascript">
    function deleteItem(item_id){
        if(confirm("<?php echo JText::_('COM_STUDENT_DELETE_MESSAGE'); ?>")){
            document.getElementById('form-list-delete-' + item_id).submit();
        }
    }
</script>

<div class="items">
    <ul class="items_list">
<?php $show = false; ?>
        <?php foreach ($this->items as $item) : ?>

            
				<?php
					if($item->state == 1 || ($item->state == 0 && JFactory::getUser()->authorise('core.edit.own',' com_student.list.'.$item->id))):
						$show = true;
						?>
							<li>
								<a href="<?php echo JRoute::_('index.php?option=com_student&view=list&id=' . (int)$item->id); ?>"><?php echo $item->fio; ?></a>
								<?php
									if(JFactory::getUser()->authorise('core.edit.state','com_student.list.'.$item->id)):
									?>
										<a href="javascript:document.getElementById('form-list-state-<?php echo $item->id; ?>').submit()"><?php if($item->state == 1): echo JText::_("COM_STUDENT_UNPUBLISH_ITEM"); else: echo JText::_("COM_STUDENT_PUBLISH_ITEM"); endif; ?></a>
										<form id="form-list-state-<?php echo $item->id ?>" style="display:inline" action="<?php echo JRoute::_('index.php?option=com_student&task=list.save'); ?>" method="post" class="form-validate" enctype="multipart/form-data">
											<input type="hidden" name="jform[id]" value="<?php echo $item->id; ?>" />
											<!--<input type="hidden" name="jform[ordering]" value="<?php echo $item->ordering; ?>" />
											<input type="hidden" name="jform[state]" value="<?php echo (int)!((int)$item->state); ?>" />
											<input type="hidden" name="jform[checked_out]" value="<?php echo $item->checked_out; ?>" />
											<input type="hidden" name="jform[checked_out_time]" value="<?php echo $item->checked_out_time; ?>" />-->
											<input type="hidden" name="jform[fio]" value="<?php echo $item->fio; ?>" />
											<input type="hidden" name="jform[student_info]" value="<?php echo $item->student_info; ?>" />
											<input type="hidden" name="jform[birthday]" value="<?php echo $item->birthday; ?>" />
											<input type="hidden" name="jform[male]" value="<?php echo $item->male; ?>" />
											<input type="hidden" name="jform[grup]" value="<?php echo $item->grup; ?>" />
											<input type="hidden" name="jform[bal]" value="<?php echo $item->bal; ?>" />
											<input type="hidden" name="jform[nom_zach]" value="<?php echo $item->nom_zach; ?>" />
											<input type="hidden" name="jform[foto]" value="<?php echo $item->foto; ?>" />
											<input type="hidden" name="option" value="com_student" />
											<input type="hidden" name="task" value="list.save" />
											<?php echo JHtml::_('form.token'); ?>
										</form>
									<?php
									endif;
									if(JFactory::getUser()->authorise('core.delete','com_student.list.'.$item->id)):
									?>
										<a href="javascript:deleteItem(<?php echo $item->id; ?>);"><?php echo JText::_("COM_STUDENT_DELETE_ITEM"); ?></a>
										<form id="form-list-delete-<?php echo $item->id; ?>" style="display:inline" action="<?php echo JRoute::_('index.php?option=com_student&task=list.remove'); ?>" method="post" class="form-validate" enctype="multipart/form-data">
											<input type="hidden" name="jform[id]" value="<?php echo $item->id; ?>" />
											<input type="hidden" name="jform[ordering]" value="<?php echo $item->ordering; ?>" />
											<input type="hidden" name="jform[state]" value="<?php echo $item->state; ?>" />
											<input type="hidden" name="jform[checked_out]" value="<?php echo $item->checked_out; ?>" />
											<input type="hidden" name="jform[checked_out_time]" value="<?php echo $item->checked_out_time; ?>" />
											<input type="hidden" name="jform[created_by]" value="<?php echo $item->created_by; ?>" />
											<input type="hidden" name="jform[fio]" value="<?php echo $item->fio; ?>" />
											<input type="hidden" name="jform[student_info]" value="<?php echo $item->student_info; ?>" />
											<input type="hidden" name="jform[birthday]" value="<?php echo $item->birthday; ?>" />
											<input type="hidden" name="jform[male]" value="<?php echo $item->male; ?>" />
											<input type="hidden" name="jform[grup]" value="<?php echo $item->grup; ?>" />
											<input type="hidden" name="jform[bal]" value="<?php echo $item->bal; ?>" />
											<input type="hidden" name="jform[nom_zach]" value="<?php echo $item->nom_zach; ?>" />
											<input type="hidden" name="jform[foto]" value="<?php echo $item->foto; ?>" />
											<input type="hidden" name="option" value="com_student" />
											<input type="hidden" name="task" value="list.remove" />
											<?php echo JHtml::_('form.token'); ?>
										</form>
									<?php
									endif;
								?>
							</li>
						<?php endif; ?>

<?php endforeach; ?>
        <?php
        if (!$show):
            echo JText::_('COM_STUDENT_NO_ITEMS');
        endif;
        ?>
    </ul>
</div>
<?php if ($show): ?>
    <div class="pagination">
        <p class="counter">
            <?php echo $this->pagination->getPagesCounter(); ?>
        </p>
        <?php echo $this->pagination->getPagesLinks(); ?>
    </div>
<?php endif; ?>


									<?php if(JFactory::getUser()->authorise('core.create','com_student')): ?><a href="<?php echo JRoute::_('index.php?option=com_student&task=list.edit&id=0'); ?>"><?php echo JText::_("COM_STUDENT_ADD_ITEM"); ?></a>
	<?php endif; ?>