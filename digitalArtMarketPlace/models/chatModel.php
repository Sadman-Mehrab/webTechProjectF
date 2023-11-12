<?php
    require_once('db.php');

    function getMessages($sender, $receiver){
        $con = getConnection();
        $sql = "select * from Chats where (sender='{$sender}' and receiver='{$receiver}') or (sender='{$receiver}' and receiver='{$sender}') order by time";
        $result = mysqli_query($con, $sql);

        if(!$result) {
            return NULL;
        }

        return $result;
    }
    function getChatList($userName){
        $con = getConnection();
        $sql = "select distinct receiver from Chats where sender='{$userName}' order by time desc";
        $result = mysqli_query($con, $sql);

        if(!$result) {
            return NULL;
        }

        return $result;
    }

    function sendMessage($sender, $receiver, $message){
        $con = getConnection();

        $time = date_create()->format('Y-m-d H:i:s');
        $id = uniqid();

        $sql = "insert into Chats (sender, receiver, message, time, id) values ('{$sender}', '{$receiver}', '{$message}', '{$time}', '{$id}')";

        $result = mysqli_query($con, $sql);
        if($result){
            return true;
        }else{
            return false;
        }

    }
?>