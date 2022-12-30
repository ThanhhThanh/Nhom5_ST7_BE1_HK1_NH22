<?php
require "config.php";
require "models/db.php";
require "models/product.php"; 
require "models/manufacture.php"; 
require "models/protype.php";

$product = new Product;
$manufacture = new Manufacture;
$protype = new Protype;
if(isset($_POST['submit'])){
    $type_name = $_POST['type_name'];
    $protype->addProtype($type_name);
    header('location:protype.php?status=ac');
}