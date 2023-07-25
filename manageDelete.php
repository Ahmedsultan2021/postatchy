<?php
session_start();
require_once("classes.php");
$user = unserialize($_SESSION["user"]);
$postID = $_GET["id"];
$user->deletePost($postID);
header("location:home.php");

//filtiration
