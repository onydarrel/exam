<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "examgrab";

$con = new mysqli($servername, $username, $password, $database);

if ($con->connect_error) {
  die("Gagal koneksi : " . $con->connect_error);
}
