<?php
// No direct access.
defined('_JEXEC') or die();

class modTitleHelper
{
	public static function getList(&$params)
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select('title');
		$query->from('#__content');
		$db->setQuery($query);
		
		$list = $db->loadObjectList();

		return $list;
	}
	
}
