<?php
 
//MySQLi Procedural
$conn = mysqli_connect("localhost","root","","e_learning");
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}
 
?>