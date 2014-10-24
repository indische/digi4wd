<?php
require_once("db.php");
require_once("models/user.php");

$u = new User();
$u->id = 1;
$u->getItems();


?>