<?php

class Kapcsolat {

    private $db_szerver;
    private $db_felhnev;
    private $db_jelszo;
    private $db_nev;
    private $kapcs;

    public function __construct() {
        $this->db_szerver = "localhost";
        $this->db_felhnev = "root";
        $this->db_jelszo = "";
        $this->db_nev = "beadndophp";
        $this->kapcsolat();

        $this->kapcsolat->query("SET NAMES UTF8");
        $this->kapcsolat->query("set character set UTF8");
        $this->kapcsolat->query("set collation_connection='utf8_hungary_ci'");
    }

    public function kapcsolat() {
        $this->kapcs = new mysqli($this->db_szerver, $this->db_felhnev, $this->db_jelszo, $this->db_nev);
        $this->kapcs->set_charset('utf8');
        if ($this->kapcs->connect_error) {
            die("Kapcsolódás nem sikerült: " . $this->kapcs->connect_error);
        }
    }

//    function lekerdez1($tabla) {
//        $sql = "SELECT * FROM " . $tabla;
//        $lekerdezes = $this->kapcsolat->query($sql) or die("Hiba az adatok lekérésekor");
//        return $lekerdezes;
//    }
//
//    function oszlopok($tablaNeve) {
//        $sql2 = "SHOW COLUMNS FROM " . $tablaNeve;
//        $lekerdezes = $this->kapcsolat->query($sql2) or die("Hiba az adatok lekérésekor2");
//        return $lekerdezes;
//    }
//    function kiirTabla($tabla1) {
////echo $tabla1;
//        $adatok = $this->lekerdez1($tabla1);
////adatok feldolgozása
////var_dump($adatok);
////echo $adatok->num_rows;
//        if ($adatok->num_rows > 0) {
//            echo "<table>";
//            echo "<tr>";
////fejléc oszlopok
//            $oszlopok = $this->oszlopok($tabla1);
//            $oszlopokSzama = $oszlopok->num_rows;
//            while ($row = $oszlopok->fetch_row()) {
//                echo "<th>";
//                echo $row[0];
//                echo "</th>";
//            }
//            echo "</tr>";
//
////lekérdezés feldolgozása
//            while ($row1 = $adatok->fetch_row()) {
//                echo "<tr>";
//                for ($index = 0; $index < $oszlopokSzama; $index++) {
//                    echo "<td>";
//                    echo $row1[$index];
//                    echo "</td>";
//                }
//
//                echo "</tr>";
//            }
//
//            echo "</table>";
//        } else {
//            echo "Nincsenek adatok a " . $tabla1 . " táblában!";
//        }
//    }

    function bezar() {
        $this->kapcs->close();
    }

}
