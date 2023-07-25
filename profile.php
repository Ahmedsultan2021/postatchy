<?php
session_start();

if (empty($_SESSION["user"])) {
    header("location:unauth.php");
}

$user = unserialize($_SESSION["user"]);
require_once("navbar.php")

?>

<center>

    <h1>welcome   <?= $user["name"] ?>   </h1>
</center>









<?php
require_once("footer.php")
?>