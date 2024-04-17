-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 17 2024 г., 13:03
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kinoteatrmihhalenkov1`
--

DELIMITER $$
--
-- Процедуры
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_filmid` (`pikkus_val` INT)   BEGIN
	SELECT filmnimetus, pikkus
    FROM film
    WHERE pikkus < pikkus_val;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tervist` ()  DETERMINISTIC COMMENT 'A procedure' BEGIN
	SELECT 'Hello World!';
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `film`
--

CREATE TABLE `film` (
  `filmID` int(11) NOT NULL,
  `filmNimetus` varchar(25) NOT NULL,
  `zanrID` int(11) NOT NULL,
  `keelID` int(11) NOT NULL,
  `pikkus` int(11) NOT NULL,
  `rezisorID` int(11) NOT NULL,
  `filmtypeID` int(11) NOT NULL,
  `reklaam` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `film`
--

INSERT INTO `film` (`filmID`, `filmNimetus`, `zanrID`, `keelID`, `pikkus`, `rezisorID`, `filmtypeID`, `reklaam`) VALUES
(1, 'Pulp Fiction', 8, 1, 154, 1, 1, ''),
(2, 'Vabastatud Django', 1, 1, 165, 1, 2, ''),
(3, 'Ongi Karloson!', 4, 2, 80, 2, 2, ''),
(4, 'Roheline elevant', 7, 2, 86, 3, 1, ''),
(5, 'Kaardid, rahad, kaks püst', 4, 3, 107, 5, 2, '');

-- --------------------------------------------------------

--
-- Структура таблицы `filmtype`
--

CREATE TABLE `filmtype` (
  `filmTypeId` int(11) NOT NULL,
  `filmType` varchar(25) DEFAULT NULL,
  `kirjeldus` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `kinokava`
--

CREATE TABLE `kinokava` (
  `test` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `filmtype`
--
ALTER TABLE `filmtype`
  ADD PRIMARY KEY (`filmTypeId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `filmtype`
--
ALTER TABLE `filmtype`
  MODIFY `filmTypeId` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
