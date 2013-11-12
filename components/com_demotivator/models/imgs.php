<?php

/**
 * @version     0.9.0
 * @package     com_demotivator
 * @copyright   Copyright (C) 2012. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      Fonclub <sfonclub@gmail.com> - http://fonclub-blog.ru
 */
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');

/**
 * Methods supporting a list of Demotivator records.
 */
class DemotivatorModelImgs extends JModelList {
    
    protected $_pagination = null;
    
    protected $limit = null;     
    
    protected $limitstart = null;       

    /**
     * Constructor.
     *
     * @param    array    An optional associative array of configuration settings.
     * @see        JController
     * @since    1.6
     */
    public function __construct($config = array()) {
        parent::__construct($config);
        
        $app = JFactory::getApplication();

        // List state information
        $params		= $app->getParams('com_demotivator');
        $limit = $params->get('pagelist');
        $this->setState('limit', $limit);
        
        $limitstart = JFactory::getApplication()->input->getInt('limitstart', 0);
        $this->setState('start', $limitstart);
    }

    /**
     * Method to auto-populate the model state.
     *
     * Note. Calling getState in this method will result in recursion.
     *
     * @since	1.6
     */
    protected function populateState($ordering = null, $direction = null) { 
		if(empty($ordering)) {
			$ordering = 'a.ordering';
		}
        
        // List state information.
        parent::populateState($ordering, $direction);
    }

    /**
     * Build an SQL query to load the list data.
     *
     * @return	JDatabaseQuery
     * @since	1.6
     */
    protected function getListQuery() {
        // Create a new query object.
        $db = $this->getDbo();
        $query = $db->getQuery(true);
        
        $app                = JFactory::getApplication();
        $params       = $app->getParams('com_demotivator');
        $type = $params->get('settype', 'all');

        // Select the required fields from the table.
        $query->select(
                $this->getState(
                        'list.select', 'a.*'
                )
        );
        
        $query->from('`#__demotivator_img` AS a');
        

    // Join over the users for the checked out user.
    $query->select('uc.name AS editor');
    $query->join('LEFT', '#__users AS uc ON uc.id=a.checked_out');
    
		// Join over the created by field 'created_by'
		$query->select('created_by.name AS created_by');
		$query->join('LEFT', '#__users AS created_by ON created_by.id = a.created_by');

    // Filter by published state
    $published = $this->getState('filter.state');
    if (is_numeric($published)) {
        $query->where('a.state = '.(int) $published);
    } else {
        $query->where('(a.state = 1)');
    }
    

		// Filter by search in title
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			if (stripos($search, 'id:') === 0) {
				$query->where('a.id = '.(int) substr($search, 3));
			} else {
				$search = $db->Quote('%'.$db->escape($search, true).'%');
                $query->where('( a.name LIKE '.$search.' )');
			}
		}


		//Filtering created
		$filter_created_from = $this->state->get("filter.created.from");
		if ($filter_created_from) {
			$query->where("a.created >= '".$filter_created_from."'");
		}
		$filter_created_to = $this->state->get("filter.created.to");
		if ($filter_created_to) {
			$query->where("a.created <= '".$filter_created_to."'");
		}
        
        if($type !== 'all')
            $query->where("a.type = '".$type."'");     
        
        return $query;
    }
    
    function getPagination()
  {        
        // Load the content if it doesn't already exist
        if (empty($this->_pagination)) {
            jimport('joomla.html.pagination');
            $this->_pagination = new JPagination($this->getTotal(), $this->getState('start'), $this->getState('limit') );
        }
        return $this->_pagination;
  }
  
  function getTotal()
  {
        // Load the content if it doesn't already exist
        if (empty($this->_total)) {
            $query = $this->getListQuery();
            $this->_total = $this->_getListCount($query);       
        }
        return $this->_total;
  }
  
  protected function _getList($query, $limitstart=0, $limit=0){
        $limit = $this->getState('limit');
        $limitstart = $this->getState('start');                
        $this->_db->setQuery($query, $limitstart, $limit);
		$result = $this->_db->loadObjectList();

		return $result;
  }

}