-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Фев 02 2024 г., 17:45
-- Версия сервера: 8.0.36-0ubuntu0.22.04.1
-- Версия PHP: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tm`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tm_project`
--

CREATE TABLE `tm_project` (
  `id` int NOT NULL,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tm_project`
--

INSERT INTO `tm_project` (`id`, `name`, `description`, `cost`) VALUES
(1, 'DEMO', 'Demo project', 10000),
(2, 'TM', 'Task Manager', 13000),
(3, 'WEB-SITE', 'Portal', 23000);

-- --------------------------------------------------------

--
-- Структура таблицы `tm_task`
--

CREATE TABLE `tm_task` (
  `id` int NOT NULL,
  `name` text COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `project_id` int DEFAULT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tm_task`
--

INSERT INTO `tm_task` (`id`, `name`, `description`, `project_id`, `cost`) VALUES
(1, 'Create database for Task Manager', '', 2, NULL),
(2, 'Create table tm_task for Task Manager', '', 2, NULL),
(3, 'Create table tm_project for Task Manager', '', 2, NULL),
(4, 'Create git repository', '', 3, NULL),
(5, 'Create layout web-site', '', 3, NULL),
(7, 'Demo task', '', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tm_project`
--
ALTER TABLE `tm_project`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tm_task`
--
ALTER TABLE `tm_task`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tm_task`
--
ALTER TABLE `tm_task`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
