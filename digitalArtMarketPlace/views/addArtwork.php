<?php
    require_once('../controllers/sessionCheck.php');
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Artwork</title>
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


        <h2>Add Artwork</h2>
        
        <form action="../controllers/addArtworkCheck.php" method="post" enctype="multipart/form-data" onsubmit="return validate();">
            <table>
                <tr>
                <td>
                    <b>Image</b> 
                </td>
                <td>:
                <input type="file" accept="image/*" id="uploadedImage" name="uploadedImage">
                </td>
            </tr>
            <tr>
                <td>
                    <b>Name</b> 
                </td>
                <td>:
                    <input type="text" id="artworkName" name="artworkName" value="">
                </td>
            </tr>
            <tr>
                <td>
                    <b>Description</b> 
                </td>
                <td>:
                    <textarea name="artworkDescription" id="artworkDescription" cols="20" rows="2" ></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Price</b> 
                </td>
                <td>:
                    <input type="number" id="artworkPrice"  name="artworkPrice" value="0">
                </td>
            </tr>
            <tr>
                <td>
                    <b>Purchaseable</b> 
                </td>
                <td>:
                    <input type="radio" name="artworkPurchaseable" id="Yes" value="Yes" > Yes
                    <input type="radio" name="artworkPurchaseable" id="No" value="No"> No
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name= "submit" value="Add Artwork">
                </td>
            </tr>
        </table>
    </form>
</center>
<script>
    
    function validate(){
        
            let artworkName = document.getElementById('artworkName').value;
            let artworkPrice = document.getElementById('artworkPrice').value;
            let artworkDescription = document.getElementById('artworkDescription').value;
            let isYesSelected = document.getElementById('Yes').checked;
            let isNoSelected = document.getElementById('No').checked;
            let uploadedImage = document.getElementById('uploadedImage');
            
            if(uploadedImage.files.length == 0){
                alert("Please Select a Picture!");
                return false;
            }
            
            if(artworkName == ""){
                alert("Artwork Name Cannot Be Empty!");
                return false;
            }

            if(artworkDescription == ""){
                alert("Artwork Description Cannot Be Empty!");
                return false;
            }

            if(artworkPrice <= 0){
                alert("Artwork Price Must Be Greater Than 0!");
                return false;
            }

            if(!isYesSelected && !isNoSelected){
                alert("Must Select: Purchaseable or Not Purchaseable!");
                return false;
            }
            
            return true;   

        }
            
    </script>
</body>
</html>