<?php

require './Kapcsolat_letrehozas.php';

$mySql = new Kapcsolat();

$embereim = array();
$result = $mySql->lekerdez("szemelyek");


if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {

        $embereim[] = $row;
    }
    echo json_encode($embereim);
} else {
    echo "0 results";
}