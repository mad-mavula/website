<?php

$conn = mysqli_connect("localhost","root","","contactus");

if(!$conn){
    die("Connection Failed: ".mysqli_connect_error());
}

?>