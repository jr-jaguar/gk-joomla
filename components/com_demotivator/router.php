<?php
/**
 * @version     0.9.0
 * @package     com_demotivator
 * @copyright   Copyright (C) 2012. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Fonclub <sfonclub@gmail.com> - http://fonclub-blog.ru
 */

// No direct access
defined('_JEXEC') or die;

/**
 * @param	array	A named array
 * @return	array
 */

function DemotivatorBuildRoute(&$query)
{
	$segments = array();
    
	if (isset($query['task'])) {
		$segments[] = $query['task'];
		unset($query['task']);
	}
    if (isset($query['view'])) {
		$segments[] = $query['view'];
  		unset($query['view']);
  	};
	if (isset($query['id'])) {
		$segments[] = $query['id'];
		unset($query['id']);
	}

	return $segments;
}

/**
 * @param	array	A named array
 * @param	array
 *
 * Formats:
 *
 * index.php?/demotivator/task/id/Itemid
 *
 * index.php?/demotivator/id/Itemid
 */
function DemotivatorParseRoute($segments)
{
	$vars = array();    
	// view is always the first element of the array
	$count = count($segments);
	if (count($segments) > 0) {

  		$vars['view'] = $segments[0];
      switch ($vars['view']) {
        case 'img':
      		$id   = explode(':', $segments[1]);      		
      		$vars['id']= (int) $id[0];        
			break;
      };
      
    } else {
      $vars['view'] = $segments[0];
    } // End count(segments) statement
	return $vars;
}
