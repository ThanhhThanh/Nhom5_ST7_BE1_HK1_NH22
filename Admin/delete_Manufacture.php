<?php
require "config.php";
require "models/db.php";
require "models/product.php";
require "models/manufacture.php";
require "models/protype.php";

$product = new Product;
$manufacture = new Manufacture;
$protype = new Protype;
if (isset($_GET['manu_id'])) {
    $manufacture->deleteManufacture($_GET['manu_id']);
    /*  header('location:manufactures.php'); */
}
