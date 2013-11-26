<?php
// No direct access.
defined('_JEXEC') or die('');

require_once dirname(__FILE__).'/helper.php';
// Выполняем getList метод из помошника
$category = $params->get('mycategory');
$number = $params->get('nambArt');

$list = modTitleHelper::getList($category,$number);

require JModuleHelper::getLayoutPath('mod_title', $params->get('layout', 'default'));
