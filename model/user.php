<?php
class User extends Db
{
    public function checkLogin($username, $password)
    {
        $sql = self::$connection->prepare("SELECT * FROM `user` WHERE `username` = ? AND `password` = ?");
        $password = md5($password);
        $sql->bind_param("ss", $username, $password);
        $sql->execute();
        $items = array();
        $items = $sql->get_result()->num_rows;
        if ($items == 1) {
            return true;
        } else {
            return false;
        }
    }

    public function getRoleId($username)
    {
        $sql = self::$connection->prepare("SELECT `role` FROM `user` WHERE `username` =?");
        $sql->bind_param("s", $username);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }

    public function getInfoByUsername($username)
    {
        $sql = self::$connection->prepare("SELECT * FROM `user`,`role` WHERE `username`=? AND `user`.`role_id`=`roles`.`role_id`");
        $sql->bind_param("s", $username);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
}
