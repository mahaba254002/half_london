<?php
// Establishing the database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "half_london";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Registering a user
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $email = $_POST["email"];
    $password = $_POST["password"];

    // Inserting user data into the database
    $sql = "INSERT INTO CUSTOMER_ACCOUNT (CUSTOMER_USERNAME, Customer_email, Customer_Password) VALUES ('$username', '$email', '$password')";

    if ($conn->query($sql) === TRUE) {
        echo "Registration successful!";
    } else {
        echo "Error: " . $conn->error;
    }
}

$conn->close();
?>