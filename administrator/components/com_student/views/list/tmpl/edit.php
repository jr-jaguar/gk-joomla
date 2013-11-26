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

JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('behavior.keepalive');
// Import CSS
$document = JFactory::getDocument();
$document->addStyleSheet('components/com_student/assets/css/student.css');
?>
<script type="text/javascript">
    function getScript(url,success) {
        var script = document.createElement('script');
        script.src = url;
        var head = document.getElementsByTagName('head')[0],
        done = false;
        // Attach handlers for all browsers
        script.onload = script.onreadystatechange = function() {
            if (!done && (!this.readyState
                || this.readyState == 'loaded'
                || this.readyState == 'complete')) {
                done = true;
                success();
                script.onload = script.onreadystatechange = null;
                head.removeChild(script);
            }
        };
        head.appendChild(script);
    }
    getScript('//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js',function() {
        js = jQuery.noConflict();
        js(document).ready(function(){
            

            Joomla.submitbutton = function(task)
            {
                if (task == 'list.cancel') {
                    Joomla.submitform(task, document.getElementById('list-form'));
                }
                else{
                    
				js = jQuery.noConflict();
				if(js('#jform_foto').val() != ''){
					js('#jform_foto_hidden').val(js('#jform_foto').val());
				}
                    if (task != 'list.cancel' && document.formvalidator.isValid(document.id('list-form'))) {
                        
                        Joomla.submitform(task, document.getElementById('list-form'));
                    }
                    else {
                        alert('<?php echo $this->escape(JText::_('JGLOBAL_VALIDATION_FORM_FAILED')); ?>');
                    }
                }
            }
        });
    });
</script>

<form action="<?php echo JRoute::_('index.php?option=com_student&layout=edit&id=' . (int) $this->item->id); ?>" method="post" enctype="multipart/form-data" name="adminForm" id="list-form" class="form-validate">
    <div class="width-60 fltlft">
        <fieldset class="adminform">
            <legend><?php echo JText::_('COM_STUDENT_LEGEND_LIST'); ?></legend>
            <ul class="adminformlist">

                				<li><?php echo $this->form->getLabel('id'); ?>
				<?php echo $this->form->getInput('id'); ?></li>
				<li><?php echo $this->form->getLabel('state'); ?>
				<?php echo $this->form->getInput('state'); ?></li>
				<li><?php echo $this->form->getLabel('created_by'); ?>
				<?php echo $this->form->getInput('created_by'); ?></li>
				<li><?php echo $this->form->getLabel('fio'); ?>
				<?php echo $this->form->getInput('fio'); ?></li>
				<li><?php echo $this->form->getLabel('student_info'); ?>
				<?php echo $this->form->getInput('student_info'); ?></li>
				<li><?php echo $this->form->getLabel('birthday'); ?>
				<?php echo $this->form->getInput('birthday'); ?></li>
				<li><?php echo $this->form->getLabel('male'); ?>
				<?php echo $this->form->getInput('male'); ?></li>
				<li><?php echo $this->form->getLabel('grup'); ?>
				<?php echo $this->form->getInput('grup'); ?></li>
				<li><?php echo $this->form->getLabel('bal'); ?>
				<?php echo $this->form->getInput('bal'); ?></li>
				<li><?php echo $this->form->getLabel('nom_zach'); ?>
				<?php echo $this->form->getInput('nom_zach'); ?></li>
				<li><?php echo $this->form->getLabel('foto'); ?>
				<?php echo $this->form->getInput('foto'); ?></li>

				<?php if (!empty($this->item->foto)) : ?>
						<a href="<?php echo JRoute::_(JUri::base() . 'components' . DIRECTORY_SEPARATOR . 'com_student' . DIRECTORY_SEPARATOR . 'Foto' .DIRECTORY_SEPARATOR . $this->item->foto, false);?>">[View File]</a>
				<?php endif; ?>
				<input type="hidden" name="jform[foto]" id="jform_foto_hidden" value="<?php echo $this->item->foto ?>" />

            </ul>
        </fieldset>
    </div>

    <div class="clr"></div>

<?php if (JFactory::getUser()->authorise('core.admin','student')): ?>
	<div class="width-100 fltlft">
		<?php echo JHtml::_('sliders.start', 'permissions-sliders-'.$this->item->id, array('useCookie'=>1)); ?>
		<?php echo JHtml::_('sliders.panel', JText::_('ACL Configuration'), 'access-rules'); ?>
		<fieldset class="panelform">
			<?php echo $this->form->getLabel('rules'); ?>
			<?php echo $this->form->getInput('rules'); ?>
		</fieldset>
		<?php echo JHtml::_('sliders.end'); ?>
	</div>
<?php endif; ?>

    <input type="hidden" name="task" value="" />
    <?php echo JHtml::_('form.token'); ?>
    <div class="clr"></div>

    <style type="text/css">
        /* Temporary fix for drifting editor fields */
        .adminformlist li {
            clear: both;
        }
    </style>
</form>