<?php

$servername = 'localhost';
$dbname = 'hierarchical_member_management';
$username = 'root';
$password = '';

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM Members";
$result = $conn->query($sql);

$members = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $members[] = $row;
    }
}

header('Content-Type: application/json');
echo json_encode(array('members' => $members));

$conn->close();
?>
