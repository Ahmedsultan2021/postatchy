<?php
session_start();
require_once("classes.php");
if (!empty($_POST["email"]) && !empty($_POST["password"])) {


    // $cre = ["email" => "ahmed@gmail.com", "password" => "123456"];



    $email = htmlspecialchars(trim($_POST["email"]));
    $password = md5($_POST["password"]);

    $user =  user::login($email, $password);

    var_dump($user);
    if ($email == $user->email && $password == $user->GetPass()) {
        $_SESSION["user"] = serialize($user);
        header("location:home.php");
    } else {
        header("location:index.php?msg=wrong_pass");
    }
} else {
    header("location:index.php?msg=empty_field");
}

//filtiration
