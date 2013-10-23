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

require_once JPATH_COMPONENT.'/controller.php';

/**
 * Img controller class.
 */
class DemotivatorControllerImg extends DemotivatorController
{

	/**
	 * Method to check out an item for editing and redirect to the edit form.
	 *
	 * @since	1.6
	 */
	public function edit()
	{
		$app			= JFactory::getApplication();

		// Get the previous edit id (if any) and the current edit id.
		$previousId = (int) $app->getUserState('com_demotivator.edit.img.id');
		$editId	= JFactory::getApplication()->input->getInt('id', null, 'array');

		// Set the user id for the user to edit in the session.
		$app->setUserState('com_demotivator.edit.img.id', $editId);

		// Get the model.
		$model = $this->getModel('Img', 'DemotivatorModel');

		// Check out the item
		if ($editId) {
            $model->checkout($editId);
		}

		// Check in the previous user.
		if ($previousId) {
            $model->checkin($previousId);
		}

		// Redirect to the edit screen.
		$this->setRedirect(JRoute::_('index.php?option=com_demotivator&view=img&layout=edit', false));
	}

	/**
	 * Method to save a user's profile data.
	 *
	 * @return	void
	 * @since	1.6
	 */
	public function save()
	{
		// Check for request forgeries.
		JSession::checkToken() or jexit(JText::_('JINVALID_TOKEN'));

		// Initialise variables.
		$app	= JFactory::getApplication();
		$model = $this->getModel('Img', 'DemotivatorModel');

		// Get the user data.
		$data = JFactory::getApplication()->input->get('jform', array(), 'array');

		// Validate the posted data.
		$form = $model->getForm();
		if (!$form) {
			JError::raiseError(500, $model->getError());
			return false;
		}

		// Validate the posted data.
		$data = $model->validate($form, $data);

		// Check for errors.
		if ($data === false) {
			// Get the validation messages.
			$errors	= $model->getErrors();

			// Push up to three validation messages out to the user.
			for ($i = 0, $n = count($errors); $i < $n && $i < 3; $i++) {
				if ($errors[$i] instanceof Exception) {
					$app->enqueueMessage($errors[$i]->getMessage(), 'warning');
				} else {
					$app->enqueueMessage($errors[$i], 'warning');
				}
			}

			// Save the data in the session.
			$app->setUserState('com_demotivator.edit.img.data', $data);

			// Redirect back to the edit screen.
			$id = (int) $app->getUserState('com_demotivator.edit.img.id');
			$this->setRedirect(JRoute::_('index.php?option=com_demotivator&view=img&layout=edit&id='.$id, false));
			return false;
		}

		// Attempt to save the data.
		$return	= $model->save($data);

		// Check for errors.
		if ($return === false) {
			// Save the data in the session.
			$app->setUserState('com_demotivator.edit.img.data', $data);

			// Redirect back to the edit screen.
			$id = (int)$app->getUserState('com_demotivator.edit.img.id');
			$this->setMessage(JText::sprintf('Save failed', $model->getError()), 'warning');
			$this->setRedirect(JRoute::_('index.php?option=com_demotivator&view=img&layout=edit&id='.$id, false));
			return false;
		}

            
        // Check in the profile.
        if ($return) {
            $model->checkin($return);
        }
        
        // Clear the profile id from the session.
        $app->setUserState('com_demotivator.edit.img.id', null);

        // Redirect to the list screen.
        $this->setMessage(JText::_('Item saved successfully'));
        $this->setRedirect(JRoute::_('index.php?option=com_demotivator&view=imgs', false));

		// Flush the data from the session.
		$app->setUserState('com_demotivator.edit.img.data', null);
	}
    
    
    function cancel() {
        
		$app			= JFactory::getApplication();

		//Get the edit id (if any)
		$id = (int) $app->getUserState('com_demotivator.edit.img.id');
        if ($id) {
            //Redirect back to details
            $app->setUserState('com_demotivator.edit.img.id', null);
			$this->setRedirect(JRoute::_('index.php?option=com_demotivator&view=img&id='.$id, false));
        } else {
            //Redirect back to list
			$this->setRedirect(JRoute::_('index.php?option=com_demotivator&view=imgs', false));
        }
        
    }
    
    
}