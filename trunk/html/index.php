<?php

/*******************************************************************************

 LICENSE

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License (GPL)
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 GNU General Public License for more details.

 To read the license please visit http://www.gnu.org/copyleft/gpl.html

*******************************************************************************/

// require some things
require_once("lib/smarty/Smarty.class.php");
require_once("lib/adodb/adodb.inc.php");

// new template
$smarty = new Smarty();

// template settings
$smarty->template_dir = "tmpl";
$smarty->compile_dir = "tmpl_c";
$smarty->cache_dir = "cache";
$smarty->config_dir = "config";

// debugging
$smarty->debugging = FALSE;

// connect to database
$db = ADONewConnection("mysql");
$db->Connect("localhost", "medien", "1597530", "moviemanager");
// check for error
if ($db->ErrorNo() != 0) {
	die("Error.\nCould not connect to database.\n");
}

// get movies
$files = scandir("movies");
$movie_list = array();
foreach($files as $file) {
	if (strrchr($file, ".") == ".mov" || strrchr($file, ".") == ".mp4" || strrchr($file, ".") == ".3gp") {
		array_push($movie_list, $file);
	}
}

// set vars
$smarty->assign('title', "Movie Manager");
$smarty->assign('movie_list', $movie_list);

// compile everything
$smarty->display('index.tpl');

?>