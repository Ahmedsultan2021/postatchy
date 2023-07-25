<?php
// var_dump($_POST);
require_once("classes.php");
if (!empty($_POST["name"]) && !empty($_POST["email"]) && !empty($_POST["password"]) && !empty($_POST["cpassword"]) ) {
    if ($_POST["password"] == $_POST["cpassword"]) {
        echo "10/10";
      
        $name = $_POST["name"];
        $email = $_POST["email"];
        $password = $_POST["password"];
        user::signup($name,$email,md5($password));
        header("location:index.php");
    }else{
        header("location:signup.php?msg=pNc");
    }
}
else{
    header("location:signup.php?msg=empty_filed");
}