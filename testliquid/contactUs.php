<?php
include 'dbconn.php';

$name = $_POST['name'];
$email = $_POST['email'];
$subject = $_POST['subject'];
$msg = $_POST['msg'];

$sql = "INSERT INTO contactdata(name, email, subject, msg) 
VALUES ('$name', '$email', '$subject', '$msg')";
$result = $conn->query($sql);

header("Location: contact-us.php");

?>