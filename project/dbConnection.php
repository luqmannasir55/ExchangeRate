<?php

// Database connection
$host = "localhost";
$user = "root"; // Default XAMPP user
$pass = ""; // No password in XAMPP by default
$dbname = "exchange_rates";

$conn = new mysqli($host, $user, $pass, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>