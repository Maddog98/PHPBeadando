<?php

require './Kapcsolat_letrehozas.php';
$mySql = new Kapcsolat();
$nev = $_POST["nev"];
$kor = $_POST["kor"];
$neme = $_POST["neme"];

$mySql->ujRekord("szemelyek", "(nev,kor,neme)", "('$nev','$kor','$neme')");
echo json_encode($_POST);
