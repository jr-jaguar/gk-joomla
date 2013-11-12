<?php
// No direct access.
defined('_JEXEC') or die('');

require_once dirname(__FILE__).'/helper.php';
// Выполняем getList метод из помошника
$list = modTitleHelper::getList($params);

require JModuleHelper::getLayoutPath('mod_title', $params->get('layout', 'default'));
