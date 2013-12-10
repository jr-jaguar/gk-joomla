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
    <div class="item_fields tester">
        <?php
        $uploadPath = 'administrator' . DIRECTORY_SEPARATOR . 'components' . DIRECTORY_SEPARATOR . 'com_student' . DIRECTORY_SEPARATOR . 'Foto' . DIRECTORY_SEPARATOR . $this->item->foto;
        ?>
        <img align="right" height="256" width="300" src="<?php echo JRoute::_(JUri::base() . $uploadPath, false); ?>"</img>

        <div class="body tester">
            <div>
                <p>ФИО</p>
                <p class="par1"><?php echo $this->item->fio; ?></p>
            </div>
            <div class="left" >
                <p>Дата рождения:</p>
                <p class="par"><?php echo $this->item->birthday; ?></p>
            </div>
            <div class="left">
                <p>Пол:</p>
                <p class="par"><?php echo $this->item->male; ?></p>
            </div>
            <div class="left" >
                <p>Група:</p>
                <p class="par"><?php echo $this->item->grup; ?></p>
            </div>
            <div class="left" >
                <p>Номер зачетки:</p>
                <p class="par"><?php echo $this->item->nom_zach; ?></p>
            </div>
            <div class="left" >
                <p>Средний бал</p>
                <p class="par"><?php echo $this->item->bal; ?></p>

            </div>
            <div class="left">
                <p>О себе</p>
                <p class="par"><?php echo $this->item->student_info; ?></p>
            </div>
        </div>



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
