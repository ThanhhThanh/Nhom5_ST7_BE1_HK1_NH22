<?php
session_start();
require "../config.php";
require "../model/db.php";
require "../model/user.php";
$user = new User;
if (isset($_POST['submit'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $getRoleId = $user->getRoleId($username);


    if ($user->checkLogin($username, $password)) {
        $_SESSION['user'] = $username;
        foreach ($getRoleId as $value) {          
            if ($value['role'] == 1) {
                $_SESSION['permision'] = 1;
                header('location:../Admin');
            }
            if ($value['role'] == 0) {
                $_SESSION['permision'] = 0;
                header('location:../index.php');
            }
        }
    }
    else{
        header('location:index.php');
    }
}