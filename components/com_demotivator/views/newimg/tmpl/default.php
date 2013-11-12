<?php
// no direct access
defined('_JEXEC') or die('Restricted access');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
?>
<script type="text/javascript">
var buttonText = "<?php echo JText::_('COM_DEMOTIVATOR_API_BUTTON_TEXT')?>";
var checkCoordsAlert = "<?php echo JText::_('COM_DEMOTIVATOR_API_CHK_COORDS_ALERT')?>";
var showCoordsConfirm = "<?php echo JText::_('COM_DEMOTIVATOR_API_SH_COORDS_CONF')?>";
</script>
    <input type="file" size="32" id="upload" name="img" value="" />
    <div id="text-box" style="display: none; margin: 20px;">
        <form id="preview" method="post" enctype="multipart/form-data" class="form-validate" action="index.php?optiom=com_demotivator&view=newimg">
            <?php echo JText::_('COM_DEMOTIVATOR_API_TITLE_IMG')?>:&nbsp;<input type="text" name="title" value="<?php echo JText::_('COM_DEMOTIVATOR_API_TITLE_IMG')?>" />&nbsp;&nbsp;
            <?php echo JText::_('COM_DEMOTIVATOR_API_TEXT_IMG')?>:&nbsp;<input type="text" name="text" value="<?php echo JText::_('COM_DEMOTIVATOR_API_TEXT_IMG')?>" />&nbsp;&nbsp;
            <?php echo JText::_('COM_DEMOTIVATOR_API_TYPE_IMG')?>:&nbsp;<select name="type" onchange="thisPreview();">
            <?php 
                $types = explode( ";", trim($this->types, ";") );
        		foreach ($types as $type){    
        			$tps = explode("|",$type);
                    if(!$tps)
                        continue;        
                    echo '<option value="'.$tps[1].'">'.$tps[0].'</option>';
        		}                
            ?>
            </select> 
            <input type="hidden" id="original" name="original" />     
            <input type="hidden" name="x" id="x" />
            <input type="hidden" name="y" id="y" />
            <input type="hidden" name="w" id="w" value="0" />
            <input type="hidden" name="h" id="h" value="0" />
        </form>    
    </div>
    <div class="action-box" style="display: none;">
        <a href="javascript:thisPreview();" class="uploadify-button"><?php echo JText::_('COM_DEMOTIVATOR_API_PREVIEW_IMG')?></a>
        <a href="javascript:thisSave();" class="uploadify-button save"><?php echo JText::_('COM_DEMOTIVATOR_API_SAVE_IMG')?></a>
    </div>
    <div id="image-box" style="margin: 0 auto;"></div>

<a href="http://fonclub-blog.ru/com_demotivator.html" target="_blank" style="font-size:10px;color: grey; display: block; text-align: right;">powered by JDemotivator</a>