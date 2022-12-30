<?php
class Order extends Db
{

    public function addOrder($user_id, $product_id, $product_name, $address, $phone, $quantity, $total, $note)
    {

        $sql = self::$connection->prepare("INSERT INTO `order`(`user_id`, `product_id`, `product_name`, `address`,`phone`, `quantity`,`total`, `note`) VALUES (?,?,?,?,?,?,?,?)");
        $sql->bind_param("iisissis", $user_id, $product_id, $product_name, $address, $phone, $quantity, $total, $note);
        $sql->execute();
    }

    public function getOrderByUserID($user_id)
    {
        $sql = self::$connection->prepare("SELECT * FROM `order` WHERE `user_id`=? ORDER BY `order_id` DESC");
        $sql->bind_param("i", $user_id);
        $sql->execute();
        $item = array();
        $item = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $item; //return an array
    }
}
