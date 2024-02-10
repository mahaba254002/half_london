<?php
$name = $_POST['name'];
$phone = $_POST['phone'];
$person = $_POST['person'];
$reserdate = $_POST['reservation_date'];
$resertime = $_POST['reservation_time'];
$message = $_POST['message'];


$servername = "localhost";
$db_username = "root";
$db_password = "";
$db_name = "half_london";
$conn = new mysqli($servername, $db_username, $db_password, $db_name);
if ($conn->connect_error) {
  die("Connection failed" . $conn->connect_error);
} else {
  $stmt = $conn->prepare("INSERT INTO reservations(name, phone, person, reservation_date, reservation_time, message) VALUES (?,?,?,?,?,?)");
  $stmt->bind_param("ssssss", $name, $phone, $person, $reserdate, $resertime, $message);
  $stmt->execute();
  echo "Booking Successful!!";
  $stmt->close();
  $conn->close();
}