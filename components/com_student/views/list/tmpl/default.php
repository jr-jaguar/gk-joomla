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

//Load admin language file
$lang = JFactory::getLanguage();
$lang->load('com_student', JPATH_ADMINISTRATOR);
$canEdit = JFactory::getUser()->authorise('core.edit', 'com_student.' . $this->item->id);
if (!$canEdit && JFactory::getUser()->authorise('core.edit.own', 'com_student' . $this->item->id)) {
	$canEdit = JFactory::getUser()->id == $this->item->created_by;
}
?>
<?php if ($this->item) : ?>

    <div class="item_fields">

        <ul class="fields_list">

            			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_ID'); ?>:
			<?php echo $this->item->id; ?></li>
			<!--<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_ORDERING'); ?>:
			<?php echo $this->item->ordering; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_STATE'); ?>:
			<?php echo $this->item->state; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_CHECKED_OUT'); ?>:
			<?php echo $this->item->checked_out; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_CHECKED_OUT_TIME'); ?>:
			<?php echo $this->item->checked_out_time; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_CREATED_BY'); ?>:
			<?php echo $this->item->created_by; ?></li>-->
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_FIO'); ?>:
			<?php echo $this->item->fio; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_STUDENT_INFO'); ?>:
			<?php echo $this->item->student_info; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_BIRTHDAY'); ?>:
			<?php echo $this->item->birthday; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_MALE'); ?>:
			<?php echo $this->item->male; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_GRUP'); ?>:
			<?php echo $this->item->grup; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_BAL'); ?>:
			<?php echo $this->item->bal; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_NOM_ZACH'); ?>:
			<?php echo $this->item->nom_zach; ?></li>
			<li><?php echo JText::_('COM_STUDENT_FORM_LBL_LIST_FOTO'); ?>:

			<?php 
				$uploadPath = 'administrator' . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_student' . DIRECTORY_SEPARATOR . 'Foto' . DIRECTORY_SEPARATOR . $this->item->foto;
			?>
			<a href="<?php echo JRoute::_(JUri::base() . $uploadPath, false); ?>" target="_blank"><?php echo $this->item->foto; ?></a></li>

        </ul>

    </div>
    <?php if($canEdit): ?>
		<a href="<?php echo JRoute::_('index.php?option=com_student&task=list.edit&id='.$this->item->id); ?>"><?php echo JText::_("COM_STUDENT_EDIT_ITEM"); ?></a>
	<?php endif; ?>
								<?php if(JFactory::getUser()->authorise('core.delete','com_student.list.'.$this->item->id)):
								?>
									<a href="javascript:document.getElementById('form-list-delete-<?php echo $this->item->id ?>').submit()"><?php echo JText::_("COM_STUDENT_DELETE_ITEM"); ?></a>
									<form id="form-list-delete-<?php echo $this->item->id; ?>" style="display:inline" action="<?php echo JRoute::_('index.php?option=com_student&task=list.remove'); ?>" method="post" class="form-validate" enctype="multipart/form-data">
										<input type="hidden" name="jform[id]" value="<?php echo $this->item->id; ?>" />
										<input type="hidden" name="jform[ordering]" value="<?php echo $this->item->ordering; ?>" />
										<input type="hidden" name="jform[state]" value="<?php echo $this->item->state; ?>" />
										<input type="hidden" name="jform[checked_out]" value="<?php echo $this->item->checked_out; ?>" />
										<input type="hidden" name="jform[checked_out_time]" value="<?php echo $this->item->checked_out_time; ?>" />
										<input type="hidden" name="jform[created_by]" value="<?php echo $this->item->created_by; ?>" />
										<input type="hidden" name="jform[fio]" value="<?php echo $this->item->fio; ?>" />
										<input type="hidden" name="jform[student_info]" value="<?php echo $this->item->student_info; ?>" />
										<input type="hidden" name="jform[birthday]" value="<?php echo $this->item->birthday; ?>" />
										<input type="hidden" name="jform[male]" value="<?php echo $this->item->male; ?>" />
										<input type="hidden" name="jform[grup]" value="<?php echo $this->item->grup; ?>" />
										<input type="hidden" name="jform[bal]" value="<?php echo $this->item->bal; ?>" />
										<input type="hidden" name="jform[nom_zach]" value="<?php echo $this->item->nom_zach; ?>" />
										<input type="hidden" name="jform[foto]" value="<?php echo $this->item->foto; ?>" />
										<input type="hidden" name="option" value="com_student" />
										<input type="hidden" name="task" value="list.remove" />
										<?php echo JHtml::_('form.token'); ?>
									</form>
								<?php
								endif;
							?>
<?php
else:
    echo JText::_('COM_STUDENT_ITEM_NOT_LOADED');
endif;
?>
