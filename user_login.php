<?php
    include('connection.php');
    if (isset($_POST['submit'])) {
        $username = $_POST['CUSTOMER_USERNAME'];
        $password = $_POST['Customer_Password'];

        $sql = "select * from customer_account where CUSTOMER_USERNAME = '$username' and Customer_Password = '$password'";  
        $result = mysqli_query($conn, $sql);
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  

        if($count == 1){  
            header("Location: index.php");
        }
        else{  
            echo  '<script>
                        window.location.href = "login.php";
                        alert("Login failed. Invalid email or password!!")
                    </script>';
        }
    }
?>