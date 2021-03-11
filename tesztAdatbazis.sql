-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Már 11. 09:20
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `telekonyv`
--
CREATE DATABASE IF NOT EXISTS `telekonyv` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `telekonyv`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tel_nevjegyzek`
--
-- Létrehozva: 2021. Jan 19. 01:37
--

DROP TABLE IF EXISTS `tel_nevjegyzek`;
CREATE TABLE IF NOT EXISTS `tel_nevjegyzek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(250) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `telefon` int(11) NOT NULL,
  `kep` varchar(200) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `keput` varchar(200) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- TÁBLA KAPCSOLATAI `tel_nevjegyzek`:
--

--
-- A tábla adatainak kiíratása `tel_nevjegyzek`
--

INSERT INTO `tel_nevjegyzek` (`id`, `nev`, `telefon`, `kep`, `keput`) VALUES
(1, 'Zoli', 62037393, 'kep.jpg', 'kepek/kep.jpg'),
(2, 'Timi', 63324393, 'kep.jpg', 'kepek/kep.jpg'),
(3, 'Márk', 62038331, 'kep.jpg', 'kepek/kep.jpg'),
(4, 'Vivi', 20903931, 'kep.jpg', 'kepek/kep.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
