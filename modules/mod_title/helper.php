<?php
// No direct access.
defined('_JEXEC') or die();

class modTitleHelper
{
	public static function getList($category,$number)
	{
		$db = JFactory::getDbo();
		$query = $db->getQuery(true);
		$query->select('title');
		$query->from('#__content');
        $query->where('catid='.$category);
		$db->setQuery($query,0,$number);
		
		$list = $db->loadObjectList();

		return $list;
	}
	
}
