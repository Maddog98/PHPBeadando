-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Már 11. 13:53
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
-- Adatbázis: `beadndophp`
--
CREATE DATABASE IF NOT EXISTS `beadndophp` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `beadndophp`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szemelyek`
--
-- Létrehozva: 2021. Már 11. 08:24
-- Utolsó frissítés: 2021. Már 11. 12:32
--

DROP TABLE IF EXISTS `szemelyek`;
CREATE TABLE IF NOT EXISTS `szemelyek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `kor` int(11) NOT NULL,
  `nem` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- TÁBLA KAPCSOLATAI `szemelyek`:
--

--
-- A tábla adatainak kiíratása `szemelyek`
--

INSERT INTO `szemelyek` (`id`, `nev`, `kor`, `nem`) VALUES
(1, 'Kopál Zoltán', 21, 'féri'),
(2, 'Benedek Csenge', 20, 'nő'),
(3, 'Tóth Márk', 19, 'férfi'),
(4, 'Winkler Vivien', 22, 'nő'),
(5, 'Vargovics Zsolt', 23, 'férfi');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telefonkonyvem`
--
-- Létrehozva: 2021. Már 11. 12:38
--

DROP TABLE IF EXISTS `telefonkonyvem`;
CREATE TABLE IF NOT EXISTS `telefonkonyvem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nev` int(11) NOT NULL,
  `tel` varchar(20) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `kep` varchar(50) COLLATE utf8mb4_hungarian_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `nev` (`nev`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- TÁBLA KAPCSOLATAI `telefonkonyvem`:
--   `nev`
--       `szemelyek` -> `id`
--

--
-- A tábla adatainak kiíratása `telefonkonyvem`
--

INSERT INTO `telefonkonyvem` (`ID`, `nev`, `tel`, `kep`) VALUES
(2, 3, '03-30-1234-567', ''),
(3, 4, '03-20-1234-567', 'kep.jpg'),
(4, 1, '03-20-63528', 'kep.jpg'),
(5, 2, '06-33-1598-147', 'kep.jpg'),
(6, 5, '06-80-9875-159', 'kep.jpg');

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `telefonkonyvem`
--
ALTER TABLE `telefonkonyvem`
  ADD CONSTRAINT `telefonkonyvem_ibfk_1` FOREIGN KEY (`nev`) REFERENCES `szemelyek` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
