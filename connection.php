<?php 
    $servername = "localhost";
    $db_username = "root";
    $db_password = "";
    $db_name = "half_london";  
    $conn = new mysqli($servername, $db_username, $db_password, $db_name, 3306);
    if($conn->connect_error){
        die("Connection failed".$conn->connect_error);
    }
?>