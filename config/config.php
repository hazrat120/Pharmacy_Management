
<?php 	

$localhost = "localhost";
$username = "root";
$password = "";
$dbname = "pharmanest_db";
$store_url = "http://localhost/PHP%20Project/Pharmacy_Management/";
// db connection
$db = new mysqli($localhost, $username, $password, $dbname);
// check connection
if($db->connect_error) {
  die("Connection Failed : " . $db->connect_error);
} else {
  // echo "Successfully connected";
}
?>