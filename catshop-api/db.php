<?php
$host = "localhost";
$user = "root";
$pass = "";   // รหัสผ่านของ MySQL บน XAMPP โดยปกติจะว่าง
$db = "catshop_db";  // ชื่อฐานข้อมูลต้องตรงกับที่สร้าง

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die(json_encode(["error" => "Connection failed: " . $conn->connect_error]));
}
?>
