<?php

$sdgs = array();
$sql = 'SELECT * FROM sdgs';

$result = $conn->query($sql);

while ($row = $result->fetch_assoc()) {
    $sdgs[] = $row;
}
