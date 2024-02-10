<?php
// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "half_london";

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to sanitize user inputs
function sanitizeInput($input)
{
    $input = trim($input);
    $input = stripslashes($input);
    $input = htmlspecialchars($input);
    return $input;
}

// Login User
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $CUSTOMER_USERNAME = sanitizeInput($_POST["CUSTOMER_USERNAME"]);
    $Customer_Password = sanitizeInput($_POST["password"]);

    // Validate input
    if (empty($CUSTOMER_USERNAME) || empty($Customer_Password)) {
        echo "Please enter a username and password.";
    } else {
        // Prepare and bind the select statement to prevent SQL injection
        $stmt = $conn->prepare("SELECT * FROM half_london.USERS WHERE USERNAME = ?");
        $stmt->bind_param("s", $CUSTOMER_USERNAME);
        $stmt->execute();
        $result = $stmt->get_result();

        if ($result->num_rows > 0) {
            $row = $result->fetch_assoc();
            $hashedPassword = $row['Customer_Password'];

            // Verify the password
            if (password_verify($password, $hashedPassword)) {
                echo "Login successful!";
            } else {
                echo "Invalid username or password.";
            }
        } else {
            echo "Invalid username or password.";
        }

        $stmt->close();
    }
}

// Close the connection
$conn->close();
?>