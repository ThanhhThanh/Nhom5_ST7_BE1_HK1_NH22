<?php
require "config.php";
require "models/db.php";
require "models/product.php";
$product = new Product;
if(isset($_POST['name'])){

    $name = $_POST['name'];
    $price = $_POST['price'];
    $image = $_FILES['image']['name'];
    $manu_id = $_POST['manufacture'];
    $type_id = $_POST['protype'];
    $description = $_POST['description'];
    $feature = isset($_POST['feature'])?1:0;

    $product->addProduct($name,$manu_id,$type_id,$price,$image,$description,$feature);

    $target_dir = "../img/";
    $target_file = $target_dir . basename($_FILES["image"]["name"]);
    move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
    header('location:product.php');
}