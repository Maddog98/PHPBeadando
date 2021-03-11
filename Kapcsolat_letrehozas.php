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
    }

    public function kapcsolat() {
        $this->kapcs = new mysqli($this->db_szerver, $this->db_felhnev, $this->db_jelszo, $this->db_nev);
        $this->kapcs->set_charset('utf8');
        if ($this->kapcs->connect_error) {
            die("Kapcsolódás nem sikerült: " . $this->kapcs->connect_error);
        }
    }

//    function lekerdez($tablaNeve, $where = 1) {
//        $sql = "SELECT * FROM " . $tablaNeve . " WHERE " . $where;
//        $sql = $this->kapcs->query($sql)or die("Hiba az adatok lekérésekor");
//        return $sql;
//    }

}
