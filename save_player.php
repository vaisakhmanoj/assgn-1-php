<?php
$db_host = 'AWS';
$db_username = 'root';
$db_password = '1947ir';
$db_name = 'football_team';

$conn = new mysqli($db_host, $db_username, $db_password, $db_name);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$player_name = $_POST['player_name'];
$position_id = $_POST['position'];

$sql = "INSERT INTO players (player_name, position_id) VALUES ('$player_name', '$position_id')";

if ($conn->query($sql) === TRUE) {
    echo "Player added successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
