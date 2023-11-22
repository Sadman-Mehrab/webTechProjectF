<?php
    // session_start();
    require_once('../controllers/sessionCheck.php');
    require_once('../models/notificationModel.php');
    $userName = $_SESSION['currentUserName'];
    $notifications = getUserNotifications($userName);

    
    



?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $userName." Notifications" ?></title>
</head>
<body>
    <center>
        <table width="100%">
                <tr>
                    <td colspan="8"><a href=homepage.php><img src="../assets/head.PNG"></a></td>
                    <td>
                        <a href="user.php" >
                            User
                        </a><br>
                        <a href="menu.html" >
                            Menu
                        </a>
                    </td>
                </tr>
            </table>
        <table>


        <h2>Notifications</h2>
        
            <div id="notifications"></div>
                    
                    
                
     
    </center>
    <script>
        function retrieveNotifications(){
            let xhttp = new XMLHttpRequest();
            xhttp.open('GET', '../controllers/retrieveNotifications.php', true);
            xhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    let response = this.responseText;
                    document.getElementById('notifications').innerHTML = response;
                }
            }

            xhttp.send();
        }

        function deleteNotification(event){
            let notificationId = event.target.id;

            let xhttp = new XMLHttpRequest();

            xhttp.open('POST', '../controllers/deleteNotification.php', true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById('notifications').innerHTML = "";
                    retrieveNotifications(); 

                }
            }

            xhttp.send('id=' + notificationId);
        }

        retrieveNotifications();
    </script>
</body>
</html>