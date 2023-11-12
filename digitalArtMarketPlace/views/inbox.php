<?php
    session_start();

    require_once('../models/chatModel.php');
    require_once('../models/userModel.php');
    $userName = $_SESSION['currentUserName'];
    $chatlist = getChatList($userName);


    
    



?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $userName." Inbox" ?></title>
</head>
<body>
    <center>
        <h2>Inbox</h2>
        
        
            <?php while($chat = mysqli_fetch_assoc($chatlist)){ ?>
                <?php $receiver = getUser($chat['receiver']); ?>
                  
                <a href="message.php?userName=<?php echo $chat['receiver'] ?>#message">
                    <img src="<?php echo $receiver['profilePicture']?>" alt="" width="40px"> <br>
                    <?php echo $chat['receiver'] ?>
                </a>
                <hr>
            <?php } ?>
                    
                    
                

        
        
    </center>
    
</body>
</html>