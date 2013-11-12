<?php
/**
 * @version     0.9.0
 * @package     com_demotivator
 * @copyright   Copyright (C) 2012. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Fonclub <sfonclub@gmail.com> - http://fonclub-blog.ru
 */

defined('JPATH_BASE') or die;

jimport('joomla.form.formfield');

/**
 * Supports an HTML select list of categories
 */
class JFormFieldType extends JFormField
{
	/**
	 * The form field type.
	 *
	 * @var		string
	 * @since	1.6
	 */
	protected $type = 'type';

		/**
	 * Method to get the field input markup for a generic list.
	 * Use the multiple attribute to enable multiselect.
	 *
	 * @return  string  The field input markup.
	 *
	 * @since   11.1
	 */
	protected function getInput()
	{
		// Initialize variables.
		$html = array();
		$attr = '';

		// Initialize some field attributes.
		$attr .= $this->element['class'] ? ' class="' . (string) $this->element['class'] . '"' : '';
 
		// Initialize JavaScript field attributes.
		$attr .= $this->element['onchange'] ? ' onchange="' . (string) $this->element['onchange'] . '"' : '';

		// Get the field options.
		$options = (array) $this->getOptions();
        
        if($this->element['onchange']) /** for reset filter*/
            $options[]->text = 'all';

		$html[] = JHtml::_('select.genericlist', $options, $this->name, trim($attr), 'value', 'text', $this->value, $this->id);

		return implode($html);
	}

	/**
	 * Method to get the field options.
	 *
	 * @return  array  The field option objects.
	 *
	 * @since   11.1
	 */
	protected function getOptions()
	{
		// Initialize variables.
		$options = array();
        
        $params = &JComponentHelper::getParams('com_demotivator'); /** получаем параметры типов мотиваторов*/
        if($params->get('types')){
            $types = explode( ";", trim($params->get('types'), ";") );       

    		foreach ($types as $type)
    		{    
    			$tps = explode("|",$type);
                if(!$tps)
                    continue;
    
    			// Create a new option object based on the <option /> element.
    			$tmp = JHtml::_(
    				'select.option', (string) $tps[1], $tps[0], 'value', 'text'
    			);
    
    			// Add the option object to the result set.
    			$options[] = $tmp;
    		}
        }

		reset($options);

		return $options;
	}
}