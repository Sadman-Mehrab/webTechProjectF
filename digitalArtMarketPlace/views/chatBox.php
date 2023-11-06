<?php
    session_start();

    
    $sender = $_SESSION['currentUserName'];
    $receiver = $_REQUEST['userName'];

    
    



?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo "Chat With ".$receiver ?></title>
</head>
<body>
    <center>
        <h2><?php echo $receiver ?></h2>
        
            <?php while($notification = mysqli_fetch_assoc($notifications)){ ?>
                
                <b><?php echo $notification['description'] ?></b> | <?php echo $notification['time'] ?> | <a href="../controllers/deleteNotification.php?id=<?php echo $notification['id'] ?>">Delete</a>
                <hr>
            <?php } ?>
            
                    
                

        </center>
        
        
    
</body>
</html>