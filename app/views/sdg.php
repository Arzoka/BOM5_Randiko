<?php
if (!isset($_GET["id"])) {
    return;
}

$sdg_id = $_GET["id"];

$sql = 'SELECT * FROM sdgs WHERE ID = ?';
$stmt = $conn->prepare($sql);
$stmt->bind_param('i', $sdg_id);
$stmt->execute();

$sdg = $stmt->get_result()->fetch_assoc();
