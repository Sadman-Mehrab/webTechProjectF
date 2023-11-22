<?php
    // session_start();
    require_once('../controllers/sessionCheck.php');
    require_once('../models/notificationModel.php');
    $userName = $_SESSION['currentUserName'];
    $notifications = getUserNotifications($userName);

    while($notification = mysqli_fetch_assoc($notifications)){ 
        echo "<b> {$notification['description']} </b> | {$notification['time']}  | <button id='{$notification['id']}' onclick='deleteNotification(event)'>Delete</button> <hr>";
                    
    }
?>