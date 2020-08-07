<?php
include_once 'dbConnection.php';
ob_start();
$name = $_POST['name'];
$jeniskelamin = $_POST['jeniskelamin'];
$email = $_POST['email'];
$pendidikan = $_POST['pendidikan'];
$gabung = $_POST['gabung'];
$password = $_POST['password'];
$riwayat = $_POST['riwayat'];
$umur = $_POST['umur'];

$name = stripslashes($name);
$name = addslashes($name);
$name = ucwords(strtolower($name));

$jeniskelamin = stripslashes($jeniskelamin);
$jeniskelamin = addslashes($jeniskelamin);

$email = stripslashes($email);
$email = addslashes($email);

$pendidikan = stripslashes($pendidikan);
$pendidikan = addslashes($pendidikan);

$gabung = stripslashes($gabung);
$gabung = addslashes($gabung);

$riwayat = stripslashes($riwayat);
$riwayat = addslashes($riwayat);

$umur = stripslashes($umur);
$umur = addslashes($umur);

$password = stripslashes($password);
$password = addslashes($password);
$password = md5($password);

$q3 = mysqli_query($con, "INSERT INTO user VALUES  ('$name' , '$jeniskelamin' , '$pendidikan','$email' ,'$gabung', '$password', '$riwayat', '$umur')");
if ($q3) {
  session_start();
  $_SESSION["email"] = $email;
  $_SESSION["name"] = $name;

  header("location:index.php");
} else {
  header("location:index.php?q7=Email Already Registered!!!");
}
ob_end_flush();
