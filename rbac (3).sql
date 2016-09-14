-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 14 2016 г., 22:55
-- Версия сервера: 5.7.11
-- Версия PHP: 5.4.45

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rbac`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `adress` varchar(225) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `raiting` float DEFAULT NULL,
  `rait_count` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`, `adress`, `link`, `raiting`, `rait_count`) VALUES
(1, 0, 'Авиа/ЖД Кассы', '#415182', 'images/img1.png', '', 'http://business/category/1', 10, 10),
(2, 0, 'Авто-Мото', '#500552', 'images/img2.png', '', 'http://business/category/2', 45, 15),
(3, 0, 'Аптеки', '#372542', 'images/img3.png', '', 'http://business/category/3', 60, 20),
(4, 0, 'Безопасность и охрана', '#11F9D6', 'images/img4.png', '', 'http://business/category/4', 5, 5),
(5, 0, 'Бытовая техника', '#8C00FF', 'images/img5.png', '', 'http://business/category/5', 80, 30),
(6, 0, 'Электротовары', '#8C00FF', 'images/img6.png', '', 'http://business/category/6', 1, 1),
(7, 0, 'Музыкальные инструменты', '#FF00EE', 'images/img7.png', '', 'http://business/category/7', 0, 0),
(8, 0, 'Все для красоты', '#FF003C', 'images/img8.png', '', 'http://business/category/8', 0, 0),
(9, 0, 'Гостиницы-Отели', '#CD0074', 'images/img9.gif', '', 'http://business/category/9', 0, 0),
(10, 0, 'Готовая кухня', '#1919B3', 'images/img10.png', '', 'http://business/category/10', 0, 0),
(11, 0, 'Грузовые перевозки', '#009999', 'images/img11.png', '', 'http://business/category/11', 0, 0),
(12, 0, 'Детские товары и одежда', '#00B366', 'images/img12.png', '', 'http://business/category/12', 0, 0),
(13, 0, 'Дизайн и декор', '#33FF00', 'images/img13.png', '', 'http://business/category/13', 0, 0),
(14, 0, 'Досуг и развлечение', '#FFB200', 'images/img13.png', '', 'http://business/category/14', 0, 0),
(15, 0, 'Здоровье', '#FF3300', 'images/img15.png', '', 'http://business/category/15', 0, 0),
(16, 0, 'Зоо магазины ', '#FF4300', 'images/img16.png', '', 'http://business/category/16', 0, 0),
(17, 0, 'Интернет и телевидение', '#FF3322', 'images/img17.png', '', 'http://business/category/17', 0, 0),
(18, 0, 'Канцтовары', '#FF3323', 'images/img18.png', '', 'http://business/category/18', 0, 0),
(19, 0, 'Компьютеры - Оргтехника', '#FF3324', 'images/img19.png', '', 'http://business/category/19', 0, 0),
(20, 0, 'Кондитерские изделия', '#990099', 'images/img20.png', '', 'http://business/category/20', 0, 0),
(21, 0, 'Кондиционеры и вентиляция', '#995099', 'images/img21.png', '', 'http://business/category/21', 0, 0),
(22, 0, 'Мебель и интерьер', '#790099', 'images/img22.png', '', 'http://business/category/22', 0, 0),
(23, 0, 'Мужская и женская одежда', '#990399', 'images/img23.jpg', '', 'http://business/category/23', 0, 0),
(24, 0, 'Недвижимость ', '#99FF00', 'images/img24.png', '', 'http://business/category/24', 0, 0),
(25, 0, 'Обучение - Образование', '#00CC00', 'images/img25.png', '', 'http://business/category/25', 0, 0),
(26, 0, 'Окна и двери', '#0066B3', 'images/img26.png', '', 'http://business/category/26', 0, 0),
(27, 0, 'Организация праздников', '#003DC7', 'images/img27.png', '', 'http://business/category/27', 0, 0),
(28, 0, 'Подарки, сувениры', '#330099', 'images/img28.png', '', 'http://business/category/28', 0, 0),
(29, 0, 'Рекламные агентства', '#990099', 'images/img29.png', '', 'http://business/category/29', 0, 0),
(30, 0, 'Рестораны - Кафе', '#660099', 'images/img30.png', '', 'http://business/category/30', 0, 0),
(31, 0, 'Сантехника и отопление', '#218887', 'images/img31.png', '', 'http://business/category/31', 0, 0),
(32, 0, 'Сотовые телефоны ', '#054748', 'images/img32.png', '', 'http://business/category/32', 0, 0),
(33, 0, 'Спорт - Товары для спорта', '#358373', 'images/img33.png', '', 'http://business/category/33', 0, 0),
(34, 0, 'Такси', '#141017', 'images/img34.png', '', 'http://business/category/34', 0, 0),
(35, 0, 'Товары для дома\r\n\r\n', '#366538', 'images/img35.png', '', 'http://business/category/35', 0, 0),
(36, 0, 'Туристические агентства', '#034219', 'images/img36.png', '', 'http://business/category/36', 0, 0),
(37, 0, 'Услуги', '#000720', 'images/img37.png', '', 'http://business/category/37', 0, 0),
(38, 0, 'Хозтовары', '#905257', 'images/img38.png', '', 'http://business/category/38', 0, 0),
(39, 0, 'Инструменты', '#517807', 'images/img39.png', '', 'http://business/category/39', 0, 0),
(40, 0, 'Цветы, растения', '#411748', 'images/img40.png', '', 'http://business/category/40', 0, 0),
(41, 0, 'Ювелирные изделия\r\n\r\n', '#178381', 'images/img41.png', '', 'http://business/category/41', 0, 0),
(42, 0, 'Юридические услуги', '#945570', 'images/img42.png', '', 'http://business/category/42', 0, 0),
(43, 0, 'Стоматологии', '#952855', 'images/img43.gif', '', 'http://business/category/43', 0, 0),
(44, 0, 'Чай - кофе', '#642574', 'images/img44.png', '', 'http://business/category/44', 0, 0),
(45, 0, 'Заправка картриджей', '#601341', 'images/img45.png', '', 'http://business/category/45', 0, 0),
(46, 0, 'Оптика', '#697738', 'images/img46.png', '', 'http://business/category/46', 0, 0),
(47, 0, 'Строительные материалы', '#362313', 'images/img47.png', '', 'http://business/category/47', 0, 0),
(48, 0, 'Строительство и ремонт', '#464564', 'images/img48.png', '', 'http://business/category/48', 0, 0),
(49, 0, 'Торговое оборудование', '#468391', 'images/img49.gif', '', 'http://business/category/49', 0, 0),
(50, 0, 'Пассажирские перевозки', '#461213', 'images/img50.png', '', 'http://business/category/50', 0, 0),
(51, 0, 'Кадастровые работы', '#461293', 'images/img51.png', '', 'http://business/category/51', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Comment`
--

CREATE TABLE IF NOT EXISTS `Comment` (
  `id` int(11) NOT NULL,
  `entity` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `entityId` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `parentId` int(11) DEFAULT NULL,
  `level` smallint(6) NOT NULL DEFAULT '1',
  `createdBy` int(11) NOT NULL,
  `updatedBy` int(11) NOT NULL,
  `relatedTo` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `createdAt` int(11) NOT NULL,
  `updatedAt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(10) unsigned NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `approver` enum('0','1') NOT NULL DEFAULT '0',
  `comment_product` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_author`, `comment_text`, `parent`, `approver`, `comment_product`, `created`, `is_admin`) VALUES
(1, 'Андрей', 'Привет мир', 0, '0', 2, '2016-08-31 11:21:32', 0),
(2, 'Жора', 'Хорошая организация', 0, '0', 3, '2016-08-31 11:23:15', 0),
(3, 'Петя', 'Да дошел', 2, '0', 3, '2016-08-31 11:23:15', 0),
(4, 'Вася', 'Вася', 0, '0', 3, '2016-08-31 18:00:06', 0),
(5, 'user', 'Новый коммент', 0, '0', 3, '2016-09-01 09:08:54', 0),
(6, 'user', 'Да ладно', 0, '0', 3, '2016-09-01 09:42:21', 0),
(7, 'user', 'Коммент', 0, '0', 6, '2016-09-01 09:43:25', 0),
(8, 'user', 'Данное кино относится к разделу Комедия и его можно загрузить в различном качестве: DVDRip, HDRip, BDRip. Ссылка на скачку torrent файла находится под описанием.\r\nСупер Майк\r\nНазвание: Супер Майк\r\nОригинальное название: Magic Mike\r\nГод: 2012\r\nСтрана: США\r\nСлоган: «Они делают это за деньги»\r\nРежиссер: Стивен Содерберг\r\nВ главных ролях: Ченнинг Татум, Алекс Петтифер, Мэтт Бомер, Джо Манганьелло, Мэттью МакКонахи, Оливия Манн, Джеймс Мартин Келли, Коуди Хорн, Рейд Каролин, Эйвери Кэмп\r\nСценарий: Рейд Каролин\r\nПродюсер: Рейд Каролин, Грегори Джейкобс, Ченнинг Татум\r\nОператор: Стивен Содерберг\r\nЖанр: драма, комедия\r\nБюджет: $5 000 000\r\nПремьера (мир): 28 июня 2012, ...\r\nДата выхода в России: 28 июня 2012, «Top Film Distribution»\r\nВремя: 110 мин. / 01:50\r\nРейтинг КиноПоиска: 6.670 (843)\r\nРейтинг IMDB: 6.00 (798)\r\n \r\n\r\nГлавным героев эта фильма является танцор, у которого предельно есть все. Он привлекает тысячи женщин, так как он богат и к тому же еще успешный танцор. Женщины, конечно же, понимают, что отношения с ним не могут завязаться надолго, но это не останавливает их, потому что он становится идеалом и мечтой всей жизни для них. Мало того, женщины сами платят Майку большие деньги для того чтобы получить удовольствие и развлечь себя. Так как в фильме бурно развиты отношения между мужчиной и женщиной, поэтому просмотр менее 14 лет строго запрещен. Майк берет себе в ученики молодого человека, чтобы научить всему мастерству, что умеет сам. Этот фильм основан на крепких дружеских отношениях, и отношениях полов. Супер Майк начали показывать в кинотеатрах с лета 2012 года', 0, '0', 6, '2016-09-01 10:11:29', 0),
(9, 'Manager', 'Плохо работают', 0, '0', 1, '2016-09-01 10:19:08', 0),
(10, 'Manager', 'Автобусов мало', 0, '0', 99, '2016-09-01 11:13:13', 0),
(11, 'Manager', 'Комментарий', 0, '0', 7, '2016-09-01 18:32:32', 0),
(12, 'user', 'Кооммент', 0, '0', 11, '2016-09-07 07:13:13', 0),
(13, 'Manager', 'Коммент', 0, '0', 10, '2016-09-13 13:14:26', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `coommi`
--

CREATE TABLE IF NOT EXISTS `coommi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `coommi`
--

INSERT INTO `coommi` (`id`, `name`, `text`, `parent`) VALUES
(1, 'имя', 'текст', 0),
(2, 'имя', 'текст', 0),
(3, 'имя', 'текст', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(20) NOT NULL,
  `isMain` int(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Categories/Category58/5e4304.jpg', 58, 1, 'Category', '61cdd482ba-1', ''),
(2, 'Categories/Category62/00c1df.png', 62, 1, 'Category', '4f2a86fc94-1', ''),
(3, 'Categories/Category62/a81b30.png', 62, NULL, 'Category', '80bc299f6d-2', ''),
(4, 'Categories/Category63/db2f78.jpg', 63, 1, 'Category', '0222b0e417-1', ''),
(5, 'Categories/Category64/519dcd.jpg', 64, 1, 'Category', '103a7450f5-1', ''),
(6, 'Categories/Category65/4223ed.jpg', 65, 1, 'Category', '81c40120da-1', ''),
(7, 'Categories/Category65/c77088.jpg', 65, NULL, 'Category', '03b5c37413-2', ''),
(8, 'Categories/Category65/5db8f1.jpg', 65, NULL, 'Category', '3461b62cec-3', ''),
(9, 'Categories/Category65/ae5246.jpg', 65, NULL, 'Category', '99b2fd8e22-4', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ip`
--

CREATE TABLE IF NOT EXISTS `ip` (
  `ip_id` int(10) unsigned NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `article_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `ip`
--

INSERT INTO `ip` (`ip_id`, `ip`, `article_id`) VALUES
(71, '12.22.22.2', 1),
(73, '12.22.22.2', 1),
(74, '12.22.22.2', 1),
(75, '12.22.22.2', 1),
(76, '12.22.22.2', 1),
(77, '12.22.22.2', 2),
(78, '12.22.22.2', 1),
(79, '12.22.22.2', 1),
(80, '12.22.22.2', 1),
(81, '12.22.22.2', 1),
(82, '12.22.22.2', 1),
(83, '12.22.22.2', 1),
(84, '12.22.22.2', 1),
(85, '12.22.22.2', 1),
(86, '12.22.22.2', 1),
(87, '12.22.22.2', 1),
(88, '12.22.22.2', 1),
(89, '12.22.22.2', 1),
(90, '12.22.22.2', 1),
(91, '12.22.22.2', 1),
(92, '12.22.22.2', 1),
(93, '12.22.22.2', 1),
(94, '12.22.22.2', 1),
(95, '12.22.22.2', 1),
(96, '12.22.22.2', 1),
(97, '12.22.22.2', 1),
(98, '12.22.22.2', 2),
(99, '12.22.22.2', 2),
(100, '12.22.22.2', 2),
(101, '12.22.22.2', 2),
(102, '12.22.22.2', 2),
(103, '12.22.22.2', 2),
(104, '12.22.22.2', 2),
(105, '12.22.22.2', 2),
(106, '12.22.22.2', 2),
(107, '12.22.22.2', 2),
(108, '12.22.22.2', 2),
(109, '12.22.22.2', 2),
(110, '12.22.22.2', 2),
(111, '12.22.22.2', 2),
(112, '12.22.22.2', 2),
(113, '12.22.22.2', 3),
(114, '12.22.22.2', 3),
(115, '12.22.22.2', 3),
(116, '12.22.22.2', 3),
(117, '12.22.22.2', 3),
(118, '12.22.22.2', 3),
(119, '12.22.22.2', 3),
(120, '12.22.22.2', 3),
(121, '12.22.22.2', 15),
(122, '12.22.22.2', 15),
(123, '12.22.22.2', 15),
(124, '12.22.22.2', 16),
(125, '12.22.22.2', 16),
(126, '12.21.22.2', 16),
(127, '12.21.22.2', 12),
(128, '12.21.22.2', 12),
(129, '12.21.22.2', 13),
(130, '12.21.22.2', 13),
(131, '12.21.22.2', 13),
(132, '12.21.22.2', 13),
(133, '12.21.22.2', 13),
(134, '12.21.22.2', 13),
(135, '12.21.22.2', 13),
(136, '12.21.22.2', 13),
(137, '12.21.22.2', 1),
(138, '12.21.22.2', 1),
(139, '12.21.22.2', 1),
(140, '12.21.22.2', 1),
(141, '12.21.22.2', 1),
(142, '12.21.22.2', 1),
(143, '12.21.22.2', 1),
(144, '12.21.22.2', 1),
(145, '12.21.22.2', 1),
(146, '12.21.22.2', 1),
(147, '12.21.22.2', 1),
(148, '12.21.22.2', 1),
(149, '12.21.22.2', 1),
(150, '12.21.22.2', 1),
(151, '12.21.22.2', 1),
(152, '12.21.22.2', 1),
(153, '12.21.22.2', 1),
(154, '12.21.22.2', 1),
(155, '12.21.22.2', 1),
(156, '12.21.22.2', 1),
(157, '12.21.22.2', 1),
(158, '12.21.22.2', 1),
(159, '12.21.22.2', 1),
(160, '12.21.22.2', 1),
(161, '12.21.22.2', 1),
(162, '12.21.22.2', 1),
(163, '12.21.22.2', 1),
(164, '12.21.22.2', 1),
(165, '12.21.22.2', 1),
(166, '12.21.22.2', 1),
(167, '12.21.22.2', 1),
(168, '12.21.22.2', 1),
(169, '12.21.22.2', 1),
(170, '12.21.22.2', 1),
(171, '12.21.22.2', 1),
(172, '12.21.22.2', 1),
(173, '12.21.22.2', 1),
(174, '12.21.22.2', 7),
(175, '12.21.22.2', 7),
(176, '12.21.22.2', 7),
(177, '12.21.22.2', 7),
(178, '12.21.22.2', 7),
(179, '12.21.22.2', 7),
(180, '12.21.22.2', 7),
(181, '12.21.22.2', 7),
(182, '12.21.22.2', 7),
(183, '12.21.22.2', 7),
(184, '12.21.22.2', 7),
(185, '12.21.22.2', 7),
(186, '12.21.22.2', 7),
(187, '12.21.22.2', 7),
(188, '12.21.22.2', 7),
(189, '12.21.22.2', 7),
(190, '12.21.22.2', 7),
(191, '12.21.22.2', 7),
(192, '12.21.22.2', 7),
(193, '15.21.22.2', 3),
(194, '15.21.22.2', 3),
(195, '15.21.22.2', 3),
(196, '15.21.27.2', 3),
(197, '15.21.27.2', 3),
(198, '15.21.27.2', 7),
(199, '15.21.47.2', 6),
(200, '15.21.47.2', 4),
(201, '16.21.87.2', 4),
(202, '16.21.87.2', 6),
(203, '16.21.87.2', 6),
(204, '16.21.87.2', 6),
(205, '16.21.87.2', 6),
(206, '16.21.87.2', 6),
(207, '16.21.87.2', 6),
(208, '16.21.87.2', 6),
(209, '16.21.87.2', 6),
(210, '16.21.87.2', 6),
(211, '16.21.87.2', 3),
(212, '16.21.87.2', 3),
(213, '16.21.87.2', 3),
(214, '16.21.87.2', 3),
(215, '16.21.87.2', 3),
(216, '16.21.87.2', 3),
(217, '16.21.87.2', 5),
(218, '16.21.87.2', 7),
(219, '16.81.87.2', 7),
(220, '16.81.87.2', 3),
(221, '16.81.87.2', 4),
(222, '16.81.87.2', 5),
(223, '16.81.87.2', 5),
(224, '16.81.87.2', 5),
(225, '16.81.87.2', 37),
(226, '16.81.87.2', 36),
(227, '16.81.87.2', 36),
(228, '16.81.87.2', 36),
(229, '16.81.87.2', 36),
(230, '16.81.87.2', 39),
(231, '127.0.0.1', 98),
(232, '127.0.0.1', 98),
(233, '127.0.0.1', 98),
(234, '127.0.0.1', 98),
(235, '127.0.0.1', 98),
(236, '127.0.0.1', 98),
(237, '127.0.0.1', 98),
(238, '127.0.0.1', 98),
(239, '127.0.0.1', 98),
(240, '127.0.0.1', 98),
(241, '127.0.0.1', 98),
(242, '127.0.0.1', 97),
(243, '127.0.0.1', 53),
(244, '127.0.0.1', 21),
(245, '127.0.0.1', 21),
(246, '127.0.0.1', 61),
(247, '127.0.0.1', 61),
(248, '127.0.0.1', 1),
(249, '127.0.0.1', 30),
(250, '127.0.0.1', 7),
(251, '127.0.0.1', 6),
(252, '127.0.0.1', 22),
(253, '127.0.0.1', 47),
(254, '127.0.0.1', 127),
(255, '127.0.0.1', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `maps`
--

CREATE TABLE IF NOT EXISTS `maps` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `maps` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `maps`
--

INSERT INTO `maps` (`id`, `title`, `adress`, `link`, `images`, `maps`) VALUES
(40, 'Продажа Авиа\\ЖД билетов', 'Адрес', 'organizat/1?idd=1', 'images/img1.png', '43.00076082, 44.68593824'),
(41, 'Авиабилеты', 'Адрес', 'organizat/2?idd=1', 'images/img1.png', '43.02983630, 44.68606500'),
(42, 'PLAZMA Автозапчасти', 'Адрес', 'organizat/3?idd=2', 'images/img2.png', '43.03371130, 44.68340600'),
(43, 'Аптека Надежда', 'Адрес: ул. Кирова, 62\r\n Адрес: ул. Чкалова, 10\r\n Адрес: пр. Коста, 282/1Адрес: ул. Кирова, 62\r\n Адрес: ул. Чкалова, 10\r\n Адрес: пр. Коста, 282/1', 'organizat/9?idd=3', 'images/img3.png', '43.03527930, 44.68519350'),
(44, 'SPECTR', 'ул.Х.Мамсурова, 31 (3 этаж)ул.Х.Мамсурова, 31 (3 этаж)', 'organizat/10?idd=4', '/web/images/img4.png', '43.03804730, 44.66129850'),
(45, 'Бытовая электроника', 'ул.Бутырина, 14ул.Бутырина, 14', 'organizat/11?idd=5', 'images/img5.png', '43.02709430, 44.68824750'),
(46, 'РУС ТЕХНО МАГАЗИН', 'ул.Дзусова, 30аул.Дзусова, 30а', 'organizat/12?idd=6', 'images/img6.png', '43.04931430, 44.62437750'),
(47, 'ЧУДО СВЕТА', 'пр.Доватора, 6пр.Доватора, 6', 'organizat/13?idd=6', '/web/images/img6.png', '43.01496680, 44.66263650'),
(48, 'МУЗЫКА И ИНСТРУМЕНТЫ', 'ул.Ленина, 19ул.Ленина, 19', 'organizat/14?idd=7', '/web/images/img7.png', '43.02808980, 44.68258850'),
(49, 'ПАРАДИЗ СТУДИЯ ДИЗАЙНА ТЕЛА', 'ул.Тельмана, 39а / Мичурина,71а (3 этаж)ул.Тельмана, 39а / Мичурина,71а (3 этаж)', 'organizat/15?idd=8', '/web/images/img8.png', '43.06918080, 44.67925550'),
(50, '5 ЗВЕЗД МОДЕЛЬ РЕСТОРАНА', ' ул.Иристонская, 86 (Бесланское шоссе) ул.Иристонская, 86 (Бесланское шоссе)', 'organizat/17?idd=9', '/web/images/img9.gif', '43.07559530, 44.65783100'),
(51, 'ГОСТИНИЦА ЛЮКС', 'ул.Куйбышева, 81ул.Куйбышева, 81', 'organizat/18?idd=9', '/web/images/img9.gif', '47.84766730, 35.18758450'),
(52, 'Султан кафе ', 'угол ул.Чапаева/ул.С.Кесаеваугол ул.Чапаева/ул.С.Кесаева', 'organizat/19?idd=10', '/web/images/img10.png', '43.04912230, 44.67146873'),
(53, 'ШАШЛЫК НА ЗАКАЗ', 'Гизельское шоссе Гизельское шоссе ', 'organizat/21?idd=10', '/web/images/img10.png', '43.02640954, 44.57165150'),
(55, 'Транспортная компания Лидер', 'Адрес', 'organizat/22?idd=11', '/web/images/img11.png', '43.03916903, 44.67478280'),
(56, 'АТМ-ЛОГИСТИК', ' ул.Толстого, 40а ул.Толстого, 40а', 'organizat/23?idd=11', '/web/images/img11.png', '43.02818180, 44.68027596'),
(57, 'IDSNEI МАГАЗИН ЖЕНСКОЙ ОДЕЖДЫ', 'ул.А.Кесаева,13ул.А.Кесаева,13', 'organizat/25?idd=12', '/web/images/img12.png', '43.16177650, 44.15524600'),
(58, 'ПРОДАЖА ПАМПЕРСОВ MERRIES', '8-918-821-26-628-918-821-26-62', 'organizat/26?idd=12', '/web/images/img12.png', '43.03819282, 44.67180690'),
(59, 'ХУДОЖЕСТВЕННОЕ ЛИТЬЕ', 'Карцинское шоссе (территория моторно-ремонтного завода)Карцинское шоссе (территория моторно-ремонтного завода)', 'organizat/27?idd=13', '/web/images/img13.png', '43.04211253, 44.70990650'),
(60, 'КОВАНЫЙ МИР', 'ул.Гвардейская,4ул.Гвардейская,4', 'organizat/28?idd=13', '/web/images/img13.png', '43.05076380, 44.67559950'),
(61, 'NANO ДОКТОР', ' ул.Цаголова, 44 ул.Цаголова, 44', 'organizat/32?idd=15', '/web/images/img15.png', '43.01728388, 44.68512600'),
(62, 'ДОКТОР СЛУХ', ' ул.Барбашова, 4 ул.Барбашова, 4', 'organizat/33?idd=15', '/web/images/img15.png', '43.02800406, 44.65633950'),
(63, 'ВЕТЕРИНАРНАЯ АПТЕКА', 'ул.Митькина, 28ул.Митькина, 28', 'organizat/34?idd=16', '/web/images/img16.png', '43.02034530, 44.67456650'),
(64, 'ВЕТЕРИНАРНАЯ ЛЕЧЕБНИЦА', 'ул.Гоголя, 5ул.Гоголя, 5', 'organizat/35?idd=16', '/web/images/img16.png', '43.03848201, 44.67765700'),
(65, 'видеолайн', ' г. Алагир, ул.Кодоева, д.43, ЦУМ г. Алагир, ул.Кодоева, д.43, ЦУМ', 'organizat/36?idd=17', '/web/images/img17.png', '43.03720330, 44.22213900'),
(66, 'ГЛОБАЛ АЛАНИЯ', 'ул.Нальчикская, 13ул.Нальчикская, 13', 'organizat/37?idd=17', '/web/images/img17.png', '43.02484730, 44.67271600'),
(67, 'КИТ КАНЦТОВАРЫ ', 'ул.Московская, 27/1ул.Московская, 27/1', 'organizat/38?idd=18', '/web/images/img18.png', '43.055816574500504, 44.642289999999996'),
(68, 'КОМПЬЮТЕРНЫЙ МИР', 'г.Владикавказ, ул.Плиева, 18г.Владикавказ, ул.Плиева, 18', 'organizat/40?idd=19', '/web/images/img19.png', '43.019877574506616, 44.67609349999998'),
(69, 'АНЕЧКА', 'ул. Гугкаева, 61ул. Гугкаева, 61', 'organizat/42?idd=20', '/web/images/img20.png', '43.05088207451249, 44.644382999999976'),
(70, '3D МЕБЕЛЬ', 'Т/Ц "Викалина"Т/Ц "Викалина"', 'organizat/43?idd=21', '/web/images/img21.png', '43.06766042515652, 44.630881107697824'),
(71, 'МОНОЛИТ МЕБЕЛЬ', 'ул.Калинина, 64\r\nул.Калинина, 64\r\n', 'organizat/44?idd=21', '/web/images/img21.png', '43.06766042515652, 44.630881107697824'),
(72, 'ГРАНДЕ МЕБЕЛЬ', 'ул. А. Кесаева, 2а, ТЦ "Столица", 3 этажул. А. Кесаева, 2а, ТЦ "Столица", 3 этаж', 'organizat/45?idd=22', '/web/images/img22.png', '43.161776500188324, 44.155245999999956'),
(73, 'DALI МЕБЕЛЬ', 'ул.Леваневского, 277аул.Леваневского, 277а', 'organizat/46?idd=22', '/web/images/img22.png', '43.05302957449332, 44.64734749999998'),
(74, 'BOMOND Магазин женской одежды', 'ул.Кирова, 30 ул.Кирова, 30 ', 'organizat/47?idd=23', '/web/images/img23.jpg', '43.03433057449451, 44.677512999999934'),
(75, 'СТРОИТЕЛЬСТВО ДЕРЕВЯННЫЙ ДОМОВ', 'Торговые ряды на Первомайской, склад №36 Торговые ряды на Первомайской, склад №36 ', 'organizat/49?idd=24', '/web/images/img24.png', '43.02427037887081, 44.67296749999996'),
(76, 'ЦЕНТР РАННЕГО РАЗВИТИЯ МАЛЕНЬКИЙ ', 'ул.Морских Пехотинцев,13 ул.Морских Пехотинцев,13 ', 'organizat/50?idd=25', '/web/images/img25.png', '43.039450574507725, 44.63523849999996'),
(77, 'РЕСПУБЛИКАНСКАЯ ШКОЛА ВОА', 'г.Владикавказ, ул.Тамаева, 4 г.Владикавказ, ул.Тамаева, 4 ', 'organizat/51?idd=25', '/web/images/img25.png', '43.027753574477565, 44.68661299999999'),
(78, 'ОКНА СТИЛЬ', 'ул.Барбашова, 14 ул.Барбашова, 14 ', 'organizat/52?idd=26', '/web/images/img26.png', '43.028004056218336, 44.656339500000016'),
(79, 'ОКНА 21 ВЕК', 'ул.Чапаева, 21 ул.Чапаева, 21 ', 'organizat/53?idd=26', '/web/images/img26.png', '43.047193074503, 44.66998499999996'),
(80, 'БАНКЕТКА', 'ул.Маркуса, 52 ул.Маркуса, 52 ', 'organizat/55?idd=27', '/web/images/img27.png', '43.04020857450964, 44.682103500000004'),
(81, 'ОРИГИНАЛЬНЫЕ ПОДАРКИ', 'пр.Коста, 223 (маг."НАР") отдел сотовых аксессуаров пр.Коста, 223 (маг."НАР") отдел сотовых аксессуаров ', 'organizat/56?idd=28', '/web/images/img28.png', '43.04019557450959, 44.6607055'),
(82, 'ИМЕННЫЕ СУВЕНИРЫ', 'ул.Ген.Плиева, 17 ул.Ген.Плиева, 17 ', 'organizat/57?idd=28', '/web/images/img28.png', '43.01932357450523, 44.67723449999999'),
(83, 'EXPRESS PRINT ', 'пр.Коста, 133 пр.Коста, 133 ', 'organizat/58?idd=29', '/web/images/img29.png', '43.02434607449349, 44.672060499999986'),
(84, 'МАВР ТИПОГРАФИЯ', 'г.Владикавказ, ул.Авг. Событий, 8 г.Владикавказ, ул.Авг. Событий, 8 ', 'organizat/59?idd=29', '/web/images/img29.png', '43.03523357449686, 44.675949999999986'),
(85, 'KOYROI РЕСТОРАН', 'г.Владикавказ, ул.Коцоева, 26 г.Владикавказ, ул.Коцоева, 26 ', 'organizat/61?idd=30', '/web/images/img30.png', '43.022421574513224, 44.67815099999991'),
(86, 'РЕСТОРАН ЕЛЕНА', 'Весенняя/Цоколаева (р-н 7 поликлиники) Весенняя/Цоколаева (р-н 7 поликлиники) ', 'organizat/62?idd=30', '/web/images/img30.png', '43.041770186831414, 44.63373350000001'),
(87, 'ИР - КЛИМАТ САНТЕХНИКА', 'ул.Дзусова, 2 ул.Дзусова, 2 ', 'organizat/63?idd=31', '/web/images/img31.png', '43.055223574498925, 44.633244'),
(88, 'САНТЕХНИКА', 'ул.Первомайская, 27 (Торговые ряды) маг. №16 ул.Первомайская, 27 (Торговые ряды) маг. №16 ', 'organizat/64?idd=31', '/web/images/img31.png', '43.023278574515395, 44.66265499999999'),
(89, 'УДАЧА МАГАЗИН', ' ул. Пушкинская, 43, р-к Привоз  ул. Пушкинская, 43, р-к Привоз ', 'organizat/65?idd=31', '/web/images/img31.png', '43.035167574496676, 44.69694349999998'),
(90, '21 ВЕК', 'л.Маркуса,9 СЦ "21ВЕК" л.Маркуса,9 СЦ "21ВЕК" ', 'organizat/66?idd=32', '/web/images/img32.png', '43.037141311282284, 44.68257499999997'),
(91, 'DANCE ЛИДЕР', ' ул.Никитина, 21/пр.Мира, 50 Дом моды, 3 этаж  ул.Никитина, 21/пр.Мира, 50 Дом моды, 3 этаж ', 'organizat/67?idd=33', '/web/images/img33.png', '43.03342757449221, 44.67927349999991'),
(92, 'МАГИЯ ШТОР', ' ул.Димитрова, 37  ул.Димитрова, 37 ', 'organizat/71?idd=35', '/web/images/img35.png', '43.0207340744841, 44.68416949999993'),
(93, 'ТКАНИ EXCLUSIVE', 'ул.Маркуса, 29 ул.Маркуса, 29 ', 'organizat/72?idd=35', '/web/images/img35.png', '43.03371157449291, 44.683406000000026'),
(94, 'BEST TOUR', 'ул.Никитина, 22, 2 этаж ул.Никитина, 22, 2 этаж ', 'organizat/73?idd=36', '/web/images/img36.png', '43.033651574492765, 44.68092649999993'),
(95, 'ЗОЛОТОЙ ГЛОБУС', 'ул.Куйбышева, 21а, офис № 318 ул.Куйбышева, 21а, офис № 318 ', 'organizat/74?idd=36', '/web/images/img36.png', '43.031477074511855, 44.68522949999997'),
(96, 'МИР СПЕЦТЕХНИКИ', ' г.Владикавказ, ул. 1-ая Промышленная, 3а  г.Владикавказ, ул. 1-ая Промышленная, 3а ', 'organizat/75?idd=37', '/web/images/img37.png', '43.061672074490865, 44.69821049999998'),
(97, '31 МАГАЗИН', 'ул.Первомайска, 27, магазин № 31 ул.Первомайска, 27, магазин № 31 ', 'organizat/77?idd=38', '/web/images/img38.png', '43.023278574515395, 44.66265499999999'),
(98, 'ПРОРАБ МАГАЗИН', 'ул.Калоева, 402 ул.Калоева, 402 ', 'organizat/78?idd=38', '/web/images/img38.png', '43.04209957451457, 44.657444499999954'),
(99, 'ПРОКАТ И ПРОДАЖА ИНСТРУМЕНТОВ', ' ул.Первомайская, 27  ул.Первомайская, 27 ', 'organizat/79?idd=39', '/web/images/img39.png', '43.023278574515395, 44.66265499999999'),
(100, 'ЦВЕТОК', 'ул. Маркуса, 45 ул. Маркуса, 45 ', 'organizat/81?idd=40', '/web/images/img40.png', '43.036380074475076, 44.6826695'),
(101, 'МОЙ ГОРОД', 'г.Владикавказ, ул.Ватутина, 62 г.Владикавказ, ул.Ватутина, 62 ', 'organizat/82?idd=40', '/web/images/img40.png', '43.03095657448582, 44.690376999999955'),
(102, 'МАЛАХИТОВАЯ ШКАТУЛКА', 'ул.Маркуса, 8 ул.Маркуса, 8 ', 'organizat/83?idd=41', '/web/images/img41.png', '43.032096574488726, 44.6841874999999'),
(103, 'ЦЕНТР ДЕЛОВОГО РАЗВИТИЯ', ': ул.Джанаева, 42, офис № 304 : ул.Джанаева, 42, офис № 304 ', 'organizat/85?idd=42', '/web/images/img42.png', '43.05209309648443, 44.639719063415484'),
(104, 'СТОМАТОЛОГИЯ ДЛЯ ВСЕЙ СЕМЬИ', 'угол пр.Коста, 180/ Островского, 13 угол пр.Коста, 180/ Островского, 13 ', 'organizat/87?idd=43', '/web/images/img43.gif', '43.002315574510725, 44.67419849999997'),
(105, 'ПРЕЗИДЕНТ СТОМАТОЛОГИЧЕСКИЙ ЦЕНТР', 'г.Владикавказ, ул.К.Маркса, 44 г.Владикавказ, ул.К.Маркса, 44 ', 'organizat/88?idd=43', '/web/images/img43.gif', '43.028544574479575, 44.67185350000001'),
(106, 'ПРЕЗИДЕНТ СТОМАТОЛОГИЧЕСКИЙ ЦЕНТР', 'г.Владикавказ, ул.К.Маркса, 44 г.Владикавказ, ул.К.Маркса, 44 ', 'organizat/88?idd=43', '/web/images/img43.gif', '43.028544574479575, 44.67185350000001'),
(107, 'ПРЕЗИДЕНТ СТОМАТОЛОГИЧЕСКИЙ ЦЕНТР', 'г.Владикавказ, ул.К.Маркса, 44 г.Владикавказ, ул.К.Маркса, 44 ', 'organizat/88?idd=43', '/web/images/img43.gif', '43.028544574479575, 44.67185350000001'),
(108, 'ВЕТА ТЕХНИЧЕСКИЙ ЦЕНТР', 'ул.Шмулевича, 41 ул.Шмулевича, 41 ', 'organizat/90?idd=45', '/web/images/img45.png', '43.02555907449657, 44.70232449999996'),
(109, 'МАСТЕР СЕРВИС', ' ул.Бородинская, 34 / Бутырина  ул.Бородинская, 34 / Бутырина ', 'organizat/91?idd=45', '/web/images/img45.png', '43.02751007450161, 44.68766399999997'),
(110, 'АЙКРАФТ ОПТИКА', 'г.Владикавказ, ул.Бутырина, 11 г.Владикавказ, ул.Бутырина, 11 ', 'organizat/92?idd=46', '/web/images/img46.png', '43.02691007450007, 44.68364849999998'),
(111, 'ХДМ', 'пер. Партизанский, 2 пер. Партизанский, 2 ', 'organizat/93?idd=47', '/web/images/img47.png', '43.04680407450194, 44.67647999999999'),
(112, 'КАМИНЫ И САУНЫ', 'пр.Доватора, 88 пр.Доватора, 88 ', 'organizat/94?idd=47', '/web/images/img47.png', '43.03232057448928, 44.6506804999999'),
(113, 'БЕТОН', 'Ул.Промышленная, 1 Ул.Промышленная, 1 ', 'organizat/95?idd=48', '/web/images/img48.png', '43.061672074490865, 44.69821049999998'),
(114, 'ЛЕСТНИЦЫ', 'ул.Первомайская, 32 ул.Первомайская, 32 ', 'organizat/96?idd=48', '/web/images/img48.png', '43.0225865745136, 44.660696499999936'),
(115, 'ПРОМХОЛОД', 'ул.Пожарского, 36 ул.Пожарского, 36 ', 'organizat/97?idd=49', '/web/images/img49.gif', '43.05849757450742, 44.684995999999956'),
(116, 'ТОРГСЕРВИС', 'пр.Доватора, 7 пр.Доватора, 7 ', 'organizat/98?idd=49', '/web/images/img49.gif', '43.01479557449353, 44.66111849999995'),
(117, 'CITYLINE', 'с: г.Владикавказ, ул.П.Морозова/Тельмана, 49/64а с: г.Владикавказ, ул.П.Морозова/Тельмана, 49/64а ', 'organizat/101?idd=51', '/web/images/img51.png', '43.073784574497424, 44.67815099999991');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1472302683),
('m010101_100001_init_comment', 1472668590),
('m140506_102106_rbac_init', 1472312496),
('m140602_111327_create_menu_table', 1472312456),
('m140622_111540_create_image_table', 1473519703),
('m140622_111545_add_name_to_image_table', 1473519704),
('m160312_050000_create_user', 1472312456),
('m160629_121330_add_relatedTo_column_to_comment', 1472668590),
('m160827_124829_cteate_post', 1472302685);

-- --------------------------------------------------------

--
-- Структура таблицы `organizat`
--

CREATE TABLE IF NOT EXISTS `organizat` (
  `id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `phone_2` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `mars` text NOT NULL,
  `grafic` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `maps` varchar(255) DEFAULT NULL,
  `rauting` int(11) DEFAULT NULL,
  `rait_count` int(4) NOT NULL DEFAULT '0',
  `raiting` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `organizat`
--

INSERT INTO `organizat` (`id`, `category_id`, `name`, `phone`, `phone_2`, `adress`, `mars`, `grafic`, `keywords`, `description`, `logo`, `images`, `maps`, `rauting`, `rait_count`, `raiting`) VALUES
(1, 1, 'Продажа Авиа\\ЖД билетов', ' 44-52-25 ', '+7 (8672) 54-24-24', 'Адрес: угол Кирова, 74/ Маркова, 23 (р-н ж/д вокзала)', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.2249926989184!2d44.68559811493041!3d43.03669740009471!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a90076b6477%3A0xb5ce4a772945792!2z0YPQuy4g0JrQuNGA0L7QstCwLCA3NCwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDI3!5e0!3m2!1sru!2sru!4v1470587178958" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', ' с 9-00 до 19-00 без выходных', '', '', 'img1.png', '', '<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=TE1xsu99qnyIzMRpc-Gkr5QQlItQIAa6&amp;width=500&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>', 0, 2, 5),
(2, 1, 'Авиабилеты', '40-33-03 ', '53-19-21', ' Адрес: г.Владикавказ ул.Тамаева, 18', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.5200275867064!2d44.68378531493013!3d43.03048890049166!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a83c2c8bbc7%3A0xe6dc3794c1d8b015!2z0YPQuy4g0KLQsNC80LDQtdCy0LAsIDE4LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwNDA!5e0!3m2!1sru!2sru!4v1470587064125" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'График работы: с 9:00 до 19:00', 'Авиабилеты', '', '', '', '', 25, 2, 10),
(3, 2, 'PLAZMA Автозапчасти', ' +7 (919) 428-30-70 ', '+7 (8672) 44-29-30', 'Адрес: ул.Маркуса, 27', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.3355070797934!2d44.68099431493032!3d43.034371900243414!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9b4ecbe739%3A0x4e40c7203e39b7ce!2z0YPQuy4g0JzQsNGA0LrRg9GB0LAsIDI3LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjc!5e0!3m2!1sru!2sru!4v1470587225919" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'с 9:00 до 18:00', 'Запчасти', '', '', '', '', 3, 5, 24),
(4, 2, 'Компьютерная диагностика иномарок', '+7 (928) 066-06-63 ', '+7 (928) 686-84-03', 'Архонское шоссе, 1', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.197532767407!2d44.64112431493118!3d43.058312898712195!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4050755000eea065%3A0x7198a507b13025d2!2z0JDRgNGF0L7QvdGB0LrQvtC1INGILiwgMSwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDM1!5e0!3m2!1sru!2sru!4v1470587281588" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', 'Автозапчасти', '', '', '', '', 5, 15, 26),
(5, 2, 'Аккумуляторы', '+7 (960) 403-32-20', '', 'ул. Гвардейская, 4', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.465054893745!2d44.673643654881566!3d43.05268566171488!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500ab7e6ff3df3%3A0x26cc4bd3cfad4556!2z0JPQstCw0YDQtNC10LnRgdC60LDRjyDRg9C7LiwgNCwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDIx!5e0!3m2!1sru!2sru!4v1470587318148" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00-18:00', 'Аккумуляторы\r\nОптовый склад\r\n', 'Оптом и в розницу\r\nофициальный партнер завода изготовителя «АкТех»', '', '', '', 25, 11, 20),
(6, 2, 'Мастер аудио', ' +7 (8672) 44-35-81 ', '+7 (8672) 76-28-26', 'ул.Курская,1', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.8568223099865!2d44.66509231493067!3d43.04444389959926!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500aa4f172647f%3A0x5f0771fac379cfbe!2z0JrRg9GA0YHQutCw0Y8g0YPQuy4sIDEsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAwMg!5e0!3m2!1sru!2sru!4v1470587345963" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', 'Автозапчасти \r\nУстановкой и настройкой автозвука\r\nОхранных и противоугонных систем', '', '', '', '', 22, 22, 34),
(7, 2, 'АВТОСПЕКТР', '+7 (8672) 55-10-93', '', 'угол ул.Ардонская,192/ Островского,20', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.452460326115!2d44.66288241493028!3d43.031910800400794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa0747280d10b%3A0xef8127d55f5027e4!2z0JDRgNC00L7QvdGB0LrQsNGPINGD0LsuLCAxOTIsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyMA!5e0!3m2!1sru!2sru!4v1470587377834" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Пн-пт. 9.00-19.00, Сб. 9.00-17.00, Вс.- вых', 'Автозапчасти', '', '', '', '', 60, 68, 144),
(8, 3, 'Аптека', ' 40-00-61', '', 'ул.Куйбышева, 21', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.449224237406!2d44.68609431493026!3d43.031978900396446!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a841421404d%3A0xf501b91c15cf311f!2z0YPQuy4g0JrRg9C50LHRi9GI0LXQstCwLCAyMSwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDI1!5e0!3m2!1sru!2sru!4v1470587436303" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', 'Аптека', '', '', '', '', 100, 45, 0),
(9, 3, 'Аптека Надежда', '51-50-25 ', '53-02-46 ', 'Адрес: ул. Кирова, 62\r\n Адрес: ул. Чкалова, 10\r\n Адрес: пр. Коста, 282/1', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.2918816800875!2d44.68332031493035!3d43.03528990018477!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9ad47b867b%3A0x5391db099e421e85!2z0YPQuy4g0JrQuNGA0L7QstCwLCA2Miwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDI3!5e0!3m2!1sru!2sru!4v1470587470547" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '24 часа', 'Аптека', '', '', '', '', 12, 4, 2),
(10, 4, 'SPECTR', '8 (918) 705-68-42', '', 'ул.Х.Мамсурова, 31 (3 этаж)', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2917.1868128186793!2d44.669383714929594!3d43.016454901388876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa08a05a4b91f%3A0x422c680e95018f2a!2z0YPQuy4g0JzQsNC80YHRg9GA0L7QstCwLCAzMSwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDA4!5e0!3m2!1sru!2sru!4v1470587523692" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00- 18:00', 'Охрана', '', '', '', '', 55, 13, 0),
(11, 5, 'Бытовая электроника', '+7 (8672) 54-97-79', '', 'ул.Бутырина, 14', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.679061824837!2d44.68605041493001!3d43.02714200070569!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a8044038cfd%3A0x5b8ae2443034a067!2z0YPQuy4g0JHRg9GC0YvRgNC40L3QsCwgMTQsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyNQ!5e0!3m2!1sru!2sru!4v1470587555261" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', 'Аудио-Видео, бытовая техника', '', '', '', '', 66, 6, 0),
(12, 6, 'РУС ТЕХНО МАГАЗИН', '+7 (8672) 61-63-78 ', '+7 (928) 862-25-19', 'ул.Дзусова, 30а', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.603328130871!2d44.622264314930895!3d43.04977689925815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405a9fe4c774343f%3A0xfdb546e77b75f3!2z0YPQuy4g0JPQtdC90LXRgNCw0LvQsCDQlNC30YPRgdC-0LLQsCwgMzAsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjA0Nw!5e0!3m2!1sru!2sru!4v1470587596009" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'с 10:00 до 20:00 без перерывов и выходных', 'Электроника', '', '', '', '', 22, 7, 9),
(13, 6, 'ЧУДО СВЕТА', '52-34-86 ', '44-12-24', 'пр.Доватора, 6', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2917.16519754449!2d44.65929721492965!3d43.0169099013598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa060ae57cf3f%3A0x8dbed08274972f9!2z0L_RgC4g0JTQvtCy0LDRgtC-0YDQsCwgNiwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDAx!5e0!3m2!1sru!2sru!4v1470587621474" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', '', '', '', '', '', 66, 23, 40),
(14, 7, 'МУЗЫКА И ИНСТРУМЕНТЫ', '44-34-37', '', 'ул.Ленина, 19', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.6627117262015!2d44.68049261493006!3d43.0274861006838!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa07f50405249%3A0xd35e1becfbfff72f!2z0YPQuy4g0JvQtdC90LjQvdCwLCAxOSwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDQw!5e0!3m2!1sru!2sru!4v1470587655292" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', 'Музыка', '', '', '', '', NULL, 0, 0),
(15, 8, 'ПАРАДИЗ СТУДИЯ ДИЗАЙНА ТЕЛА', '+7 (928) 495-16-81', '', 'ул.Тельмана, 39а / Мичурина,71а (3 этаж)', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2914.9958232659515!2d44.67040311493138!3d43.062555398440736!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4050753335d5edb1%3A0xc3288460ed3593ec!2z0YPQuy4g0KLQtdC70YzQvNCw0L3QsCwgMzksINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAxMw!5e0!3m2!1sru!2sru!4v1470587688141" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', 'Салон красоты', '', '', '', '', NULL, 3, 15),
(16, 8, 'САЛОН МАГАЗИН БТД', '+7 (919) 429-51-60', '', ' ул.А.Кесаева, 13', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.29002829686!2d44.6634123149303!3d43.03532890018218!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa07546f7de4b%3A0xa06cfbb85517af87!2z0YPQuy4g0JrQtdGB0LDQtdCy0LAsIDEzLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjA!5e0!3m2!1sru!2sru!4v1470587796970" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', 'Салон красоты', '', '', '', '', NULL, 3, 9),
(17, 9, '5 ЗВЕЗД МОДЕЛЬ РЕСТОРАНА', '+7 (918) 838-61-22 ', '+7 (918) 829-67-68', ' ул.Иристонская, 86 (Бесланское шоссе)', '<a href="https://yandex.ru/maps/?um=constructor:D-M5HuUuC7gLqH5ZC-Q9o9NmFXYTSYBa&amp;source=constructorStatic" target="_blank"><img src="https://api-maps.yandex.ru/services/constructor/1.0/static/?sid=D-M5HuUuC7gLqH5ZC-Q9o9NmFXYTSYBa&amp;width=500&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor" alt="" style="border: 0;" /></a>', '9:00 - 18:00', 'Ресторан', '', '', '', '', NULL, 0, 0),
(18, 9, 'ГОСТИНИЦА ЛЮКС', '54-08-50', '', 'ул.Куйбышева, 81', '<a href="https://yandex.ru/maps/?um=constructor:D-M5HuUuC7gLqH5ZC-Q9o9NmFXYTSYBa&amp;source=constructorStatic" target="_blank"><img src="https://api-maps.yandex.ru/services/constructor/1.0/static/?sid=D-M5HuUuC7gLqH5ZC-Q9o9NmFXYTSYBa&amp;width=500&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor" alt="" style="border: 0;" /></a>', '9:00 - 18:00', 'Отель', '', '', '', '', NULL, 0, 0),
(19, 10, 'Султан кафе ', '99-05-11', '', 'угол ул.Чапаева/ул.С.Кесаева', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2491.8456982701305!2d48.27893911525588!3d51.35074792996658!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500abb1dbf741b%3A0xdb82286bd6cbf36b!2z0YPQuy4g0KfQsNC_0LDQtdCy0LA!5e0!3m2!1sru!2sru!4v1470587847554" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 24:00', 'Кафе', '', '', '', '', NULL, 0, 0),
(20, 10, 'ЭКСПРЕСС ЧАРМА', ' +7 (8672) 25-66-24 ', '+7 (8672) 70-79-77', 'пр.Коста, 224 (р-н 26 школы)', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.1372193298967!2d44.66141601493053!3d43.0385442999766!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500aa08e168cd5%3A0x94c850bf8179b001!2z0L_RgNC-0YHQvy4g0JrQvtGB0YLQsCwgMjI0LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjA!5e0!3m2!1sru!2sru!4v1470587905204" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', 'готовая кухня', '', '', '', '', NULL, 0, 0),
(21, 10, 'ШАШЛЫК НА ЗАКАЗ', '44-03-04 ', '+7 (988) 838-11-16', 'Гизельское шоссе ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.7610055468103!2d44.635845314929945!3d43.02541740081598!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa03ef829d97d%3A0x21bb598da0d222c9!2z0JPQuNC30LXQu9GM0YHQutC-0LUg0YguLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwNDc!5e0!3m2!1sru!2sru!4v1470587939883" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '24 часа ', '', '', '', '', '', NULL, 2, 10),
(22, 11, 'Транспортная компания Лидер', '+7 (926) 325-69-54', '', '', '', '', 'Грузоперевозки\r\nМосква-Владикавказ\r\nОт порога до порога', '', '', '', '', NULL, 1, 4),
(23, 11, 'АТМ-ЛОГИСТИК', '99-72-15 +7 (8672) 505-806 +7 (8672) 505-948', '', ' ул.Толстого, 40а', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.1827198562323!2d44.67909531493043!3d43.037586900037844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9a30e05a1f%3A0x3bdfe358108efe63!2z0YPQuy4g0KLQvtC70YHRgtC-0LPQviwgNDAsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyNw!5e0!3m2!1sru!2sru!4v1470587978821" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(24, 11, 'ГРУЗОВОЕ ТАКСТИ', ' +7 (919) 421-44-55 405-405', '', '', '', '', '', '', '', '', '', NULL, 0, 0),
(25, 12, 'IDSNEI МАГАЗИН ЖЕНСКОЙ ОДЕЖДЫ', ' +7 (919) 426-67-69 +7 (918) 832-49-49', '', 'ул.А.Кесаева,13', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.2900282968594!2d44.663412314930305!3d43.035328900182186!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa07546f7de4b%3A0xa06cfbb85517af87!2z0YPQuy4g0JrQtdGB0LDQtdCy0LAsIDEzLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjA!5e0!3m2!1sru!2sru!4v1470588019379" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 9),
(26, 12, 'ПРОДАЖА ПАМПЕРСОВ MERRIES', '', '', '8-918-821-26-62', '', '', 'Продажа памперсов (трусиков) Merries с бесплатной доставкой на дом', '', '', '', '', NULL, 0, 5),
(27, 13, 'ХУДОЖЕСТВЕННОЕ ЛИТЬЕ', '53-18-47 +7 (928) 493-42-83', '', 'Карцинское шоссе (территория моторно-ремонтного завода)', '', '', '', '', '', '', '', NULL, 0, 0),
(28, 13, 'КОВАНЫЙ МИР', ' 8-988-717-29-28 40-34-47', '', 'ул.Гвардейская,4', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.4590918355034!2d44.673182314931005!3d43.0528110990641!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500ab7e6ff3df3%3A0x26cc4bd3cfad4556!2z0JPQstCw0YDQtNC10LnRgdC60LDRjyDRg9C7LiwgNCwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDIx!5e0!3m2!1sru!2sru!4v1470588056471" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '- Изделия из металла любой сложности\r\n- перила\r\n- решетки\r\n- ворота\r\n- ограды\r\n- лексан\r\n- двери', '', '', '', '', NULL, 0, 0),
(29, 13, 'ПАРФЕНОН', '25-50-20', '', 'пр.Коста, 102', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.98680987701!2d44.67177031492982!3d43.020664801119786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa062d7692ac3%3A0xd2ba2cd039784b5f!2z0L_RgNC-0YHQvy4g0JrQvtGB0YLQsCwgMTAyLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMDg!5e0!3m2!1sru!2sru!4v1470588073685" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(30, 14, 'BINGO BOOM', '', '', 'пр.Доватора 20', '<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=D-M5HuUuC7gLqH5ZC-Q9o9NmFXYTSYBa&amp;width=500&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>', '', '', '', '', '', '', NULL, 1, 4),
(31, 14, 'АЭРОУЛУБ', '8-918-825-92-50 44-62-39 8-928-066-59-92', '', '', '', '', '• Прыжки с парашютом\r\n• Планерные полеты\r\n• Корпоративные полеты в горах\r\n• Полеты на дельтапланах и аэрошютах\r\n• Аэрофотосъемка\r\n• Мониторинг местности\r\n• Авиахимработы', '', '', '', '', NULL, 0, 0),
(32, 15, 'NANO ДОКТОР', '7 (8672) 54-89-29', '', ' ул.Цаголова, 44', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2917.1442946867883!2d44.68166331492973!3d43.01734990133169!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa085e3b378bf%3A0xae910901466236bc!2z0YPQuy4g0KbQsNCz0L7Qu9C-0LLQsCwgNDQsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAwNw!5e0!3m2!1sru!2sru!4v1470588119507" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'NANO ДокторЪ - аппаратная медицина нового поколения для лечения опорно -двигательного аппарата и активизации внутренних резервов организма', '', '', '', NULL, 0, 0),
(33, 15, 'ДОКТОР СЛУХ', '+7 (918) 828-61-01', '', ' ул.Барбашова, 4', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.51413530268!2d44.664552314930205!3d43.03061290048369!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa076adbb5715%3A0xea72122d774d0948!2z0YPQuy4g0JHQsNGA0LHQsNGI0L7QstCwLCA0LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjA!5e0!3m2!1sru!2sru!4v1470588148345" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '- Диагностика слуха\r\n- Слуховые аппараты\r\n- Аксессуары\r\n- Комплектующие', '"Доктор Слух" - это медицинский кабинет, в котором Вам предложат широкий спектр услуг по диагностике слуха и слухопротезированию. ', '', '', '', NULL, 0, 0),
(34, 16, 'ВЕТЕРИНАРНАЯ АПТЕКА', '+7 (928) 686-96-80', '', 'ул.Митькина, 28', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2917.004673437279!2d44.672080814929785!3d43.02028880114384!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa062c4e1aa9f%3A0xb386c1d3d5303b7f!2z0YPQuy4g0JzQuNGC0YzQutC40L3QsCwgMjgsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAwOA!5e0!3m2!1sru!2sru!4v1470588174242" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'Ветеринарная аптека предлагает широкий спектр ветеринарных препаратов и корма для ваших любимцев. Имеются препараты для с/хоз. животных и птиц.', '', '', '', NULL, 0, 0),
(35, 16, 'ВЕТЕРИНАРНАЯ ЛЕЧЕБНИЦА', '8 (918) 824-16-24 8 (918) 839-00-78 44-50-78', '', 'ул.Гоголя, 5', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.176826790304!2d44.67553331493041!3d43.03771090002989!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9969412921%3A0x625641884fbc33c5!2z0YPQuy4g0JPQvtCz0L7Qu9GPLCA1LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMDI!5e0!3m2!1sru!2sru!4v1470588192643" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'с 10.00-18.00 суббота: с 10.00-13.00 вых.: воскресенье', '', 'доктор БИЦИЕВ Тамерлан Борисович', '', '', '', NULL, 0, 0),
(36, 17, 'видеолайн', '8 (86737) 3-69-55 8-918-821-23-83 8 (86731) 3-28-44 28-28-28', '', ' г. Алагир, ул.Кодоева, д.43, ЦУМ', '<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=D-M5HuUuC7gLqH5ZC-Q9o9NmFXYTSYBa&amp;width=500&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>', 'с 9:00 до 18:00, выходной воскресенье', '', '', '', '', '', NULL, 4, 4),
(37, 17, 'ГЛОБАЛ АЛАНИЯ', '+7 (8672) 40-55-55 8-800-770-00-15 40-26-00', '', 'ул.Нальчикская, 13', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.7839546369173!2d44.67077641492998!3d43.02493440084684!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa07ba1557e97%3A0xf611eb1406d4ed02!2z0J3QsNC70YzRh9C40LrRgdC60LDRjyDRg9C7LiwgMTMsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAwMQ!5e0!3m2!1sru!2sru!4v1470588220010" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 1, 5),
(38, 18, 'КИТ КАНЦТОВАРЫ ', '74-32-83 51-54-55', '', 'ул.Московская, 27/1', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.3179089952496!2d44.64010431493113!3d43.05578089887415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40507550fa7c87bd%3A0xea6a644e46b89533!2z0JzQvtGB0LrQvtCy0YHQutCw0Y8g0YPQuy4sIDI3LzEsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAzNQ!5e0!3m2!1sru!2sru!4v1470588273667" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(39, 17, 'УЧЕБНИКИ КАНЦТОВАРЫ', ' +7 (960) 403-30-32 91-30-62', '', ' ул.Иристонская, 13', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.259504415641!2d44.66344051493118!3d43.05700939879551!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500ab515b71dc9%3A0xebaca28f1f78fd57!2z0JjRgNC40YHRgtC-0L3RgdC60LDRjyDRg9C7LiwgMTMsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyMQ!5e0!3m2!1sru!2sru!4v1470588238300" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '- Учебники (новые и б/у)\r\n- Канцтовары\r\n- Портфели\r\n- Учебные пособия\r\n- Развивающие игры\r\n- Все для школы и дет/сада', '', '', '', '', NULL, 1, 5),
(40, 19, 'КОМПЬЮТЕРНЫЙ МИР', '25-39-22 44-34-52 44-10-13', '', 'г.Владикавказ, ул.Плиева, 18', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2917.040628222386!2d44.67379421492976!3d43.01953200119212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa062a5e61981%3A0x56b722518bbc2269!2z0YPQuy4g0JPQtdC90LXRgNCw0LvQsCDQn9C70LjQtdCy0LAsIDE4LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMDg!5e0!3m2!1sru!2sru!4v1470588301022" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'Компьютеры, комплектующие\r\nРасходные материалы\r\nПокупка и продажа б/у техники, ремонт\r\nБумага, канцтовары', '', '', '', '', NULL, 0, 0),
(41, 20, 'ШОКОЛАДНИЦА', '57-11-10 44-28-17 24-08-40 50-54-46\r\n', '', 'ул. Маркуса, 33', '<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=D-M5HuUuC7gLqH5ZC-Q9o9NmFXYTSYBa&amp;width=500&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.3160943445964!2d44.681150114930304!3d43.034780400217265!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9b37ffb0c9%3A0xa45c1dca1e79e74f!2z0YPQuy4g0JzQsNGA0LrRg9GB0LAsIDMzLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjc!5e0!3m2!1sru!2sru!4v1470589133341" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(42, 20, 'АНЕЧКА', ' 51-79-07 44-46-99 40-47-72 259-988 49-05-33', '', 'ул. Гугкаева, 61', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.5236526356325!2d44.6414646149309!3d43.051452999151074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4050755468def283%3A0x7a66ca8da1ac3a8a!2z0YPQuy4g0JPRg9Cz0LrQsNC10LLQsCwgNjEsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8!5e0!3m2!1sru!2sru!4v1470589152738" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(43, 21, '3D МЕБЕЛЬ', '+7 (918) 824-04-00', '', 'Т/Ц "Викалина"', '<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?sid=D-M5HuUuC7gLqH5ZC-Q9o9NmFXYTSYBa&amp;width=500&amp;height=400&amp;lang=ru_RU&amp;sourceType=constructor&amp;scroll=true"></script>', '', '', '', '', '', '', NULL, 8, 15),
(44, 21, 'МОНОЛИТ МЕБЕЛЬ', '58-95-30 58-94-80 58-82-28', '', 'ул.Калинина, 64\r\n', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.148863055793!2d44.64160011493046!3d43.03829929999225!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa005166a8ad7%3A0x73698f23b19824cf!2z0YPQuy4g0JrQsNC70LjQvdC40L3QsCwgNjQsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjA0Nw!5e0!3m2!1sru!2sru!4v1470589185573" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00-19:00', '', '', '', '', '', NULL, 1, 4),
(45, 22, 'ГРАНДЕ МЕБЕЛЬ', '+7 (8672) 40-37-84', '', 'ул. А. Кесаева, 2а, ТЦ "Столица", 3 этаж', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.4620011712173!2d44.63669131493097!3d43.05274989906803!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40507556f9f12bb3%3A0x81fa99dc87b140e4!2z0YPQuy4g0JDRgdGC0LDQvdCwINCa0LXRgdCw0LXQstCwLCAy0JAsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAzOQ!5e0!3m2!1sru!2sru!4v1470589231177" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(46, 22, 'DALI МЕБЕЛЬ', '+7 (8672) 51--51-78 +7 (8672) 553-444', '', 'ул.Леваневского, 277а', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.4465559832774!2d44.64481241493106!3d43.05307479904723!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40507553bbc55575%3A0x9939df02cf29661c!2z0YPQuy4g0JvQtdCy0LDQvdC10LLRgdC60L7Qs9C-LCAyNzcsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAzNQ!5e0!3m2!1sru!2sru!4v1470589251005" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(47, 23, 'BOMOND Магазин женской одежды', '+7 (928) 066-68-80', '', 'ул.Кирова, 30 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.332651028544!2d44.67782400000001!3d43.034431999999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9c5c35423f%3A0x9ff2aa4f9845f764!2z0YPQuy4g0JrQuNGA0L7QstCwLCAzMCwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDQw!5e0!3m2!1sru!2sru!4v1471696867087" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 1, 3),
(48, 24, 'Сэндвич -панели', ' 8-988-877-79-79', '', 'РСО-Алания, Бесланское шоссе, 17 километр ', '', '', '\r\n- ПРОДАЖА\r\n- МОНТАЖ\r\n- СЕРВИС\r\nСТРОИТЕЛЬСТВО: овощехранилищ, складов, холодильных камер любых объемов\r\nПРОДАЖА СЭНДВИЧ-ПАНЕЛЕЙ любого размера за 1 день\r\n', '', '', '', '', NULL, 0, 0),
(49, 24, 'СТРОИТЕЛЬСТВО ДЕРЕВЯННЫЙ ДОМОВ', '+7 (918) 706-40-09', ' 40-48-01', 'Торговые ряды на Первомайской, склад №36 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.9077621631604!2d44.661084100000004!3d43.0223286!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa065fc48014b%3A0xb99ade9c10695d50!2z0KLQvtGA0LPQvtCy0YvQtSDRgNGP0LTRiyDQvdCwINCf0LXRgNCy0L7QvNCw0LnRgdC60L7QuQ!5e0!3m2!1sru!2sru!4v1471697360705" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '9:00 - 18:00', 'Строительство деревянных домов, бань из оцилиндрованного бревна, бруса\r\nпо индивидуальным заказам', '', '', '', '', NULL, 0, 0),
(50, 25, 'ЦЕНТР РАННЕГО РАЗВИТИЯ МАЛЕНЬКИЙ ', ' 93-55-66', '', 'ул.Морских Пехотинцев,13 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.09802472733!2d44.635233!3d43.039369!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa01cc4042661%3A0x8f21e81602f4e2b!2z0YPQuy4g0JzQvtGA0YHQutC40YUg0L_QtdGF0L7RgtC40L3RhtC10LIsIDEzLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwNDc!5e0!3m2!1sru!2sru!4v1471697455125" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(51, 25, 'РЕСПУБЛИКАНСКАЯ ШКОЛА ВОА', '53-91-68', '', 'г.Владикавказ, ул.Тамаева, 4 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.6627640259626!2d44.686577!3d43.02748499999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a81ca700ef1%3A0x27b24dc774828200!2z0YPQuy4g0KLQsNC80LDQtdCy0LAsIDQsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyNQ!5e0!3m2!1sru!2sru!4v1471697603047" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '• Подготовка водителей категории “А” “В” “С” “Д” “Е”\r\n• Повышение навыков вождения', '', '', '', '', NULL, 0, 0),
(52, 26, 'ОКНА СТИЛЬ', '52-05-95', '+7 (918) 827-94-94', 'ул.Барбашова, 14 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.538459918001!2d44.665315!3d43.030100999999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa0715be4b63f%3A0x8c6d189be3dcdb4a!2z0YPQuy4g0JHQsNGA0LHQsNGI0L7QstCwLCAxNCwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDIw!5e0!3m2!1sru!2sru!4v1471697947002" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(53, 26, 'ОКНА 21 ВЕК', '97-20-18 ', '91-93-18', 'ул.Чапаева, 21 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.7339000118386!2d44.668448999999995!3d43.04703!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500abac42ba201%3A0xc87f9db1bfe6cd7f!2z0YPQuy4g0KfQsNC_0LDQtdCy0LAsIDIxLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMDI!5e0!3m2!1sru!2sru!4v1471698014648" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 1, 4),
(54, 27, 'ДИЗАЙНЕР ПО ОФОРМЛЕНИЮ ТОРЖЕСТВ', ' +7 (928) 861-51-61', ' 51-42-34', '', '', '', '', '', '', '', '', NULL, 0, 0),
(55, 27, 'БАНКЕТКА', '999-065 ', '44-36-44', 'ул.Маркуса, 52 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.3162796914157!2d44.683338799999994!3d43.03477650000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9b37ffb0c9%3A0x141a278776b3bc5f!2z0YPQuy4g0JzQsNGA0LrRg9GB0LAsIDUyLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjc!5e0!3m2!1sru!2sru!4v1471698120719" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(56, 28, 'ОРИГИНАЛЬНЫЕ ПОДАРКИ', '8 (928) 9-381-381', '', 'пр.Коста, 223 (маг."НАР") отдел сотовых аксессуаров ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.060511976568!2d44.6607203!3d43.040158299999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500aa747a8d853%3A0xc38d52460d997daa!2z0L_RgNC-0YHQvy4g0JrQvtGB0YLQsCwgMjIzLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjA!5e0!3m2!1sru!2sru!4v1471699536722" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'Кружки\r\nПодушки,\r\nЧехлы мобильных телефонов,\r\nБрелоки гос номер,\r\nмайки, фотокристаллы\r\nИ МНОГОЕ ДРУГОЕ...', '', '', '', '', NULL, 0, 0),
(57, 28, 'ИМЕННЫЕ СУВЕНИРЫ', ' 8-928-938-32-22', ' 8-918-835-52-58 8', 'ул.Ген.Плиева, 17 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2917.0528854765853!2d44.677229999999994!3d43.019273999999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa0880436d557%3A0x8cee498c7b087de8!2z0YPQuy4g0JPQtdC90LXRgNCw0LvQsCDQn9C70LjQtdCy0LAsIDE3LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMDg!5e0!3m2!1sru!2sru!4v1471699592151" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(58, 29, 'EXPRESS PRINT ', '91-50-03 ', '91-60-04', 'пр.Коста, 133 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.888315788438!2d44.67185199999999!3d43.02273789999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa07b566e8bc3%3A0xde8ea4d58e82824a!2z0L_RgNC-0YHQvy4g0JrQvtGB0YLQsCwgMTMzLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMDg!5e0!3m2!1sru!2sru!4v1471699702371" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(59, 29, 'МАВР ТИПОГРАФИЯ', '+7 (8672) 44-19-31', '', 'г.Владикавказ, ул.Авг. Событий, 8 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d729.0362231772111!2d44.674931918979645!3d43.03838284167098!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a98df2fc225%3A0x774cf0187d950690!2z0JDQstCz0YPRgdGC0L7QstGB0LrQuNGFINCh0L7QsdGL0YLQuNC5INGD0LsuLCAzMCwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDAy!5e0!3m2!1sru!2sru!4v1471699901898" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'с 9:00 до 18:00, суб.- с 9:00 до 13:00, вых.- воскресенье ', '- журналы, бланки, буклеты\r\n- изготовление папок, удостоверений\r\n- набор, верстка, печать брошюр, авторефератов, монографий\r\n- переплет, тиснение\r\n- дизайн и печать визиток\r\nа также многое другое…', '', '', '', '', NULL, 0, 0),
(60, 29, 'ПИКСЕЛЬ РЕКЛАМНОЕ АГЕНСТВО', '+7(963) 176-33-40 ', '+7(918) 703-40-70', '', '', '', 'Эффективная реклама для вашего бизнеса !!!', '', '', '', '', NULL, 0, 0),
(61, 30, 'KOYROI РЕСТОРАН', ' 25-47-32', '', 'г.Владикавказ, ул.Коцоева, 26 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.9039137597474!2d44.678160999999996!3d43.02240959999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa07daf38199d%3A0xf22655fe9d37daec!2z0YPQuy4g0JrQvtGG0L7QtdCy0LAsIDI2LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMDg!5e0!3m2!1sru!2sru!4v1471700291402" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'с 12:00 до 0:00 ', '', '', '', '', '', NULL, 2, 6),
(62, 30, 'РЕСТОРАН ЕЛЕНА', '40-48-55', '+7 (962) 748-19-19 ', 'Весенняя/Цоколаева (р-н 7 поликлиники) ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.0496805599123!2d44.6326862!3d43.0403862!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa01d3fa356cb%3A0x76002a6385382972!2z0KPQvdC40LLQtdGA0YHQsNC70YzQvdCw0Y8g0L_QvtC70LjQutC70LjQvdC40LrQsCDihJYgNw!5e0!3m2!1sru!2sru!4v1471700383332" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '- Зал торжеств на 400 мест\r\n- Холодные, горячие закуски\r\n- Кавказская и европейская кухня\r\n- Осетинские пироги\r\n- Шоу-программы каждую пятницу\r\n- шашлыки на мангале\r\n- море разных салатов\r\n- хаш, лагман, шурпа\r\nи мн.друго', 'В нашем ресторане можно отдохнуть небольшой теплой компанией, провести праздник в кругу семьи, устроить грандиозный банкет с большим количеством приглашенных. В Вашем распоряжении имеются большой зал вместимостью до 300 человек, малый  зал - до 100 челове', '', '', '', NULL, 0, 0),
(63, 31, 'ИР - КЛИМАТ САНТЕХНИКА', ' 57-91-95 ', '8-818-826-44-45', 'ул.Дзусова, 2 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.5255588278364!2d44.631435999999994!3d43.05141289999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405a9ffd3b782301%3A0x2a26d844514ae93a!2z0YPQuy4g0JPQtdC90LXRgNCw0LvQsCDQlNC30YPRgdC-0LLQsCwgOS8yLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMzk!5e0!3m2!1sru!2sru!4v1471700498402" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '- Душевые кабины\r\n- Джакузи, ванны\r\n- Конвекторы\r\n- Тепловые пушки, завесы\r\n- Системы отопления\r\nКРЕДИТ И РАССРОЧКА\r\nПодключение под ключ Гарантия до 6 лет', '', '', '', '', NULL, 0, 0),
(64, 31, 'САНТЕХНИКА', '8-928-481-74-75', '8-928-069-70-86 52-66-27 ', 'ул.Первомайская, 27 (Торговые ряды) маг. №16 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.924609549479!2d44.660979999999995!3d43.02197399999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa06608861b8d%3A0x5315716c0f3b3102!2z0J_QtdGA0LLQvtC80LDQudGB0LrQsNGPINGD0LsuLCAyNywg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDAx!5e0!3m2!1sru!2sru!4v1471700603945" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '- Ванны акриловые, стальные, чугунные\r\n- Мебель для ванной\r\n- Душевые кабины\r\n- Раковины\r\n- Унитазы\r\n- Аксессуары\r\n- Сушилки\r\n- Смесители\r\n- Отопление\r\n- Водоснабжение\r\n- Котлы напольные\r\n- Котлы навесные\r\n- Батареи\r\n- Колонки\r\n- Трубы, фитинги\r\n- Жидкие ', '', '', '', '', NULL, 0, 0),
(65, 31, 'УДАЧА МАГАЗИН', '+7 (988) 836-36-20', '', ' ул. Пушкинская, 43, р-к Привоз ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.322172434487!2d44.696711199999996!3d43.0346525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a88d9a05ebf%3A0x88b23a4e8ec5da27!2z0J_Rg9GI0LrQuNC90YHQutCw0Y8g0YPQuy4sIDQzLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjU!5e0!3m2!1sru!2sru!4v1471700673850" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '\r\nБыстрый переход\r\n\r\nУдача магазин\r\n\r\n• Отопление\r\n• Водоснабжение\r\n• Котлы напольные\r\n• Котлы навесные\r\n• Батареи\r\n• Колонки\r\n• Трубы\r\n• Фитинги\r\n• Ванны акриловые, стальные, чугунные\r\n• Мебель для ванной комнаты\r\n• Душевые кабины\r\n• Раковины\r\n• Унитазы\r', '', '', '', '', NULL, 0, 0),
(66, 32, '21 ВЕК', '+7 (8672) 53-50-42', ' +7 (960) 40-400-21 ', 'л.Маркуса,9 СЦ "21ВЕК" ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.4442774515696!2d44.683639899999996!3d43.032083!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a836dfd9361%3A0xba2959ff591898f4!2z0YPQuy4g0JzQsNGA0LrRg9GB0LAsIDksINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjA0MA!5e0!3m2!1sru!2sru!4v1471700844682" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '21 Век – сервисный центр основан в 2004 году. Сегодня тысячи покупателей ежедневно выбирают наш магазин за доступные цены и уникальный ассортимент.\r\nНаш интернет-магазин www.21vek.mobi  создан для удобства выбора заказа покупателями.\r\n        Основные пре', '', '', '', NULL, 0, 0),
(67, 33, 'DANCE ЛИДЕР', '+7(906) 188 98 92', '997-235 ', ' ул.Никитина, 21/пр.Мира, 50 Дом моды, 3 этаж ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.3635353046184!2d44.68084219999999!3d43.03378209999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9ca4aa83ab%3A0x1d07f8dd36127e73!2z0YPQuy4g0J3QuNC60LjRgtC40L3QsCwgMjEsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjA0MA!5e0!3m2!1sru!2sru!4v1471703849360" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(68, 33, 'МИР СПОРТА', '+7 (8672) 53-47-81', '40-39-90', 'ул.Маркова, 1а/44 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.218196779063!2d44.68806779999999!3d43.03684039999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a900449bd19%3A0x9b660b41998a91c9!2z0YPQuy4g0JzQsNGA0LrQvtCy0LAsIDEsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyNw!5e0!3m2!1sru!2sru!4v1471703916798" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '«Мир Спорта» – это спортивный магазин, где качественная, технологичная одежда, обувь и инвентарь для спорта (футбол, теннис, фитнес, бег, горные лыжи, коньки/ролики) и отдыха.\r\n\r\nМы дарим Вам уверенность. Уверенность для нас – это не просто слова, мы гара', '', '', '', NULL, 0, 0),
(69, 34, 'ТАКСИ ', '555-666', '62-65-85', '', '', '', '', '', '', '', '', NULL, 0, 0),
(70, 34, 'ТАКСИ 77777', '777777', '', '', '', '', '', '', '', '', '', NULL, 0, 0),
(71, 35, 'МАГИЯ ШТОР', '+7 (918) 822-29-91', '+7 (8672) 56-32-46 ', ' ул.Димитрова, 37 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2917.020788596688!2d44.68441!3d43.0199496!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa086e5dd6297%3A0x1469032aa9e210be!2z0YPQuy4g0JTQuNC80LjRgtGA0L7QstCwLCAzNywg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDA3!5e0!3m2!1sru!2sru!4v1471704090923" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'Портьерная ткань по каталогам\r\nИзготовление карнизов для сложных эркеров и арок\r\nПошив портьер, ламбрекенов и покрывал\r\nЖалюзи, рулонные шторы, плиссе\r\nКарнизы', '', '', '', '', NULL, 0, 0),
(72, 35, 'ТКАНИ EXCLUSIVE', '+7 (928) 494-65-60', '', 'ул.Маркуса, 29 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.328179216591!2d44.6831683!3d43.034526099999994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9b48935035%3A0x2ef4786ca2ea475d!2z0YPQuy4g0JzQsNGA0LrRg9GB0LAsIDI5LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjc!5e0!3m2!1sru!2sru!4v1471704165377" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', ' с 10:00 до 19:00 суб., воскр.- с 11:00 до 18:00 ', '\r\nБыстрый переход\r\n\r\nТкани Exclusive\r\n\r\n- Эксклюзивные ткани Италии и Франции\r\n- Ткани высокой моды\r\n- Элитная фурнитура', '', '', '', '', NULL, 0, 0),
(73, 36, 'BEST TOUR', '+7 (918) 826-07-74', '+7 (919) 420-16-72 ', 'ул.Никитина, 22, 2 этаж ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.369109546201!2d44.6808664!3d43.03366479999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9cba5ece8f%3A0xfe95aba00e1daf8!2z0YPQuy4g0J3QuNC60LjRgtC40L3QsCwgMjIsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjA0MA!5e0!3m2!1sru!2sru!4v1471704248676" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(74, 36, 'ЗОЛОТОЙ ГЛОБУС', '93-83-98', '28-23-55', 'ул.Куйбышева, 21а, офис № 318 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.4494095830332!2d44.688283!3d43.03197500000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a841421404d%3A0xf501b91c15cf311f!2z0YPQuy4g0JrRg9C50LHRi9GI0LXQstCwLCAyMSwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDI1!5e0!3m2!1sru!2sru!4v1471704312474" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(75, 37, 'МИР СПЕЦТЕХНИКИ', '+7 (8672) 76-68-88 ', '+7 (928) 986-18-10', ' г.Владикавказ, ул. 1-ая Промышленная, 3а ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.027023242759!2d44.6926806!3d43.0618992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500ad0e2635569%3A0x95b1849f159cee61!2zMS3RjyDQn9GA0L7QvNGL0YjQu9C10L3QvdCw0Y8g0YPQuy4sINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAxMw!5e0!3m2!1sru!2sru!4v1471704379983" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'Запчасти на погрузчики производства Японии, Китая, Болгарии на все модели\r\nПродажа погрузчиков\r\nВесь спектр услуг\r\nМанжеты и сальники на имп. гидроцилиндры\r\nГидротележки, запчасти', '', '', '', '', NULL, 0, 0),
(76, 37, 'РАБОТА', '+7 (918) 822-76-54', '', '', '', '', 'ДОЛЖНОСТНЫЕ ОБЯЗАННОСТИ:\r\n- Поиск и подбор персонала различного уровня\r\n- Проведение телефонного интервью и\r\n  собеседования с кандидатами\r\n- Подбор персонала на открытые вакансии компании\r\n- Поиск специалистов (исход. звонки), прием вход. звонков\r\n- Обуч', '', '', '', '', NULL, 0, 0),
(77, 38, '31 МАГАЗИН', '+7 (928) 073-64-00', '+7 (928) 073-64-24 ', 'ул.Первомайска, 27, магазин № 31 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.924609549479!2d44.660979999999995!3d43.02197399999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa06608861b8d%3A0x5315716c0f3b3102!2z0J_QtdGA0LLQvtC80LDQudGB0LrQsNGPINGD0LsuLCAyNywg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDAx!5e0!3m2!1sru!2sru!4v1471704519377" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(78, 38, 'ПРОРАБ МАГАЗИН', '91-53-53', '', 'ул.Калоева, 402 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.0416912317964!2d44.656982299999996!3d43.0405543!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa0082ca125df%3A0x7b4b00ec17138ffa!2z0YPQuy4g0JrQsNC70L7QtdCy0LAsIDQwMiwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDIw!5e0!3m2!1sru!2sru!4v1471704572806" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'ХОЗТОВАРЫ:\r\nДекоративные багеты\r\nКраски\r\nИнструмент\r\nКрепеж\r\nСАНТЕХНИКА\r\nОтопление\r\nВодоснабжение\r\nКанализация\r\nСмесители', '', '', '', '', NULL, 0, 0),
(79, 39, 'ПРОКАТ И ПРОДАЖА ИНСТРУМЕНТОВ', '+7 (988) 831-80-81', '', ' ул.Первомайская, 27 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.924609549479!2d44.660979999999995!3d43.02197399999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa06608861b8d%3A0x5315716c0f3b3102!2z0J_QtdGA0LLQvtC80LDQudGB0LrQsNGPINGD0LsuLCAyNywg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDAx!5e0!3m2!1sru!2sru!4v1471704635184" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'Прокат и продажа инструментов', 'ПРОКАТ ИНСТРУМЕНТОВ ', '', '', '', NULL, 0, 0),
(80, 39, 'ПРОКАТ И ПРОДАЖА ИНСТВУМЕНТОВ', '+7 (988) 877-87-87', '', ' ул. Гадиева, 10 А ', '', '', '', '" Алмаз " осуществляет сдачу в аренду частным лицам и строительно - ремонтным организациям профессионального строительного оборудования. Ассортимент предлагаемого в прокат инструмента включает в себя: перфораторы различной мощности, буры, отбойные молотки', '', '', '', NULL, 0, 0),
(81, 40, 'ЦВЕТОК', '8-918-830-77-71', ' 53-05-14', 'ул. Маркуса, 45 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.3162796914166!2d44.6833388!3d43.0347765!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a9b37ffb0c9%3A0x35c9fb56bd0115eb!2z0YPQuy4g0JzQsNGA0LrRg9GB0LAsIDQ1LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjc!5e0!3m2!1sru!2sru!4v1471705226690" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'с 10:00 до 20:00 ', ' Эксклюзивные букеты и корзины\r\n- Свадебная флористика\r\n- Комнатные растения\r\n- Земля\r\n- Удобрения\r\n- Керамика', '', '', '', '', NULL, 0, 0),
(82, 40, 'МОЙ ГОРОД', '53-70-05', '', 'г.Владикавказ, ул.Ватутина, 62 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.4757828729453!2d44.69025100000002!3d43.03141999999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a8699029e4b%3A0x79ab7c2a8e4ab18a!2z0YPQuy4g0JLQsNGC0YPRgtC40L3QsCwgNjIsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyNQ!5e0!3m2!1sru!2sru!4v1471705292122" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'Семена овощных и цветочных культур, удобрения, живые цветы, средства защиты, садовый инвентарь', '', '', '', NULL, 0, 0);
INSERT INTO `organizat` (`id`, `category_id`, `name`, `phone`, `phone_2`, `adress`, `mars`, `grafic`, `keywords`, `description`, `logo`, `images`, `maps`, `rauting`, `rait_count`, `raiting`) VALUES
(83, 41, 'МАЛАХИТОВАЯ ШКАТУЛКА', '+7 (8672) 54-66-81', '', 'ул.Маркуса, 8 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.4385750711217!2d44.684475000000006!3d43.032203!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a837bcb0475%3A0x22666b5214c8a131!2z0YPQuy4g0JzQsNGA0LrRg9GB0LAsIDgsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjA0MA!5e0!3m2!1sru!2sru!4v1471705369609" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'Широкий выбор золотых и серебряных ювелирных украшений, столовое серебро, часы, иконы и другие изделия в эксклюзивном исполнении.\r\nПодарочные сертификаты.', '', '', '', NULL, 0, 0),
(84, 41, 'BRILLIANCE ЮВЕЛИРНЫЙ САЛОН', '+7 (8672) 61-81-61', '', 'ул.А.Кесаева, 2, т/ц Столица, 2 этаж ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.3700362092172!2d44.66704199999999!3d43.033645299999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa07509cef555%3A0xaaee5e1c5c948b1f!2z0YPQuy4g0JrQtdGB0LDQtdCy0LAsIDIsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyMA!5e0!3m2!1sru!2sru!4v1471705436931" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(85, 42, 'ЦЕНТР ДЕЛОВОГО РАЗВИТИЯ', '+7 (918) 838-14-55 ', '+7 (8672) 54-98-50', ': ул.Джанаева, 42, офис № 304 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.3595007436215!2d44.689428!3d43.033867!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a85a5cf2509%3A0xccd59727d78946ae!2z0YPQuy4g0JTQttCw0L3QsNC10LLQsCwgNDIsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyNQ!5e0!3m2!1sru!2sru!4v1471705559076" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(86, 42, 'ЮРИДИЧЕСКАЯ КОМПАНИЯ ДУДАЕВА И', '+7 (962) 748-93-34 ', ' 97-67-86', '', '', '', '', 'Приватизация земельных участков, домов и квартир\r\nПрописка в дачном (садоводческом) доме\r\nОформление и регистрация любой недвижимости,\r\nКадастровый учет\r\nУзаконение индивидуального отопления, самовольных построек, балконов, гаражей и т.д.\r\nРегистрация, ли', '', '', '', NULL, 0, 0),
(87, 43, 'СТОМАТОЛОГИЯ ДЛЯ ВСЕЙ СЕМЬИ', '95-13-33 ', '25-48-27', 'угол пр.Коста, 180/ Островского, 13 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.337764376675!2d44.665506500000006!3d43.0343244!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa0750fedbe53%3A0x9fde8c9aa9f6dba4!2z0L_RgNC-0YHQvy4g0JrQvtGB0YLQsCwgMTgwLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMjA!5e0!3m2!1sru!2sru!4v1471705782917" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '- лечение\r\n- удаление\r\n- протезирование\r\n- снятие зубного камня\r\n- безметалловая керамика\r\n- детский прием\r\n- плазмолифтинг', '', '', '', '', NULL, 0, 0),
(88, 43, 'ПРЕЗИДЕНТ СТОМАТОЛОГИЧЕСКИЙ ЦЕНТР', ' 25-71-96', '+7 (918) 821-22-27', 'г.Владикавказ, ул.К.Маркса, 44 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.648285951312!2d44.672285600000016!3d43.027789699999985!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa079f83b6cc3%3A0xc42685a6347dbbf0!2z0YPQuy4g0JrQsNGA0LvQsCDQnNCw0YDQutGB0LAsIDQ0LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGPLCAzNjIwMDE!5e0!3m2!1sru!2sru!4v1471705861147" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', ' Лечение и удаление зубов\r\n- Эстетическое восстановление зубов\r\n- Профессиональное отбеливание зубов\r\n- Все виды протезирования (безметалловая керамика)\r\n- Современнаа безупречная имплантация\r\n- Цифровая рентген-диагностика', '', '', '', '', NULL, 0, 0),
(89, 44, 'МАГИЯ МАГАЗИН ЧАЯ И КОФЕ', '44-30-56 ', '44-30-56 ', 'Угол улиц Ленина и Никитина, 29 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.961639198822!2d44.683930000000004!3d43.0211946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa08735d05f13%3A0x7e981d9cddcc7953!2z0YPQuy4g0JTQuNC80LjRgtGA0L7QstCwLCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGP!5e0!3m2!1sru!2sru!4v1471706002592" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'Магазин "Магия"- магазин для тонких ценителей чая и кофе.\r\nА Вы ценитель?\r\nСпециалисты нашего магазина помогут Вам почувствовать истинный и такой знакомый с детства, вкус и аромат настоящего чая и кофе!\r\nМагазин "Магия" - подарки дорогим людям!', '', '', '', NULL, 0, 0),
(90, 45, 'ВЕТА ТЕХНИЧЕСКИЙ ЦЕНТР', ' +7 (8672) 44-61-91', ' +7 (8672) 54-09-06 ', 'ул.Шмулевича, 41 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.7373150636868!2d44.704749!3d43.02591599999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a7b0593731b%3A0x56b2d33508d2a747!2z0YPQuy4g0KjQvNGD0LvQtdCy0LjRh9CwLCA0MSwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDE5!5e0!3m2!1sru!2sru!4v1471706090378" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'Продажа, сервисное обслуживание и ремонт копировально-множительной техники "Canon", "Xerox" и др. производителей.\r\nПродажа фирменных и совместимых расходных материалов, (чернил, тонеров, термопленки, бумаги, фотобумаги).\r\nЗАПРАВКА КАРТРИДЖЕЙ', '', '', '', NULL, 0, 0),
(91, 45, 'МАСТЕР СЕРВИС', '+7 (918) 821-52-33', '', ' ул.Бородинская, 34 / Бутырина ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.727622127036!2d44.687368899999996!3d43.02612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500a8018d1522f%3A0xf68c2e72541f73a8!2z0JHQvtGA0L7QtNC40L3RgdC60LDRjyDRg9C7LiwgMzQsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyNQ!5e0!3m2!1sru!2sru!4v1471706190532" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '- Заправка картриджей\r\n- Продажа картриджей\r\n- Восстановление картриджей\r\n- Расходные материалы\r\n- Ремонт принтеров\r\n- Ремонт компьютеров\r\n- Установка программ\r\n- Компьютерные аксессуары\r\n- Шлейфы, кабели, переходники', '', '', '', '', NULL, 0, 0),
(92, 46, 'АЙКРАФТ ОПТИКА', '+7 (8672) 40-45-88', '', 'г.Владикавказ, ул.Бутырина, 11 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.68794722151!2d44.684104999999995!3d43.02695500000002!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa07f646c1fe1%3A0x4c11b9f15cdbe1e!2z0YPQuy4g0JHRg9GC0YvRgNC40L3QsCwgMTEsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjA0MA!5e0!3m2!1sru!2sru!4v1471706935735" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'Компьютерная диагностика зрения\r\nБЕСПЛАТНО', '', '', '', NULL, 0, 0),
(93, 47, 'ХДМ', '76-40-83 ', '76-41-61', 'пер. Партизанский, 2 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.744499862369!2d44.676443000000006!3d43.046806999999994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500abc0eea7c95%3A0x7030b6259eb56404!2z0J_QsNGA0YLQuNC30LDQvdGB0LrQuNC5INC_0LXRgC4sIDIsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAwMg!5e0!3m2!1sru!2sru!4v1471707028970" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(94, 47, 'КАМИНЫ И САУНЫ', '52-21-44 ', '44-06-53', 'пр.Доватора, 88 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.387666502775!2d44.6500096!3d43.033274299999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa00df83e3d6f%3A0x79b3bbc92018c922!2z0L_RgC4g0JTQvtCy0LDRgtC-0YDQsCwgODgsINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAyMA!5e0!3m2!1sru!2sru!4v1471707088430" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'Мы выполняем строительство, монтаж, расчет, комплектование и проектирование русских бань, инфракрасных саун, турецких бань, каминов, барбекю более 10 лет.\r\nМагазин «Камины и сауны» сотрудничает с финскими производителями дровяных и электрических печей для', '', '', '', NULL, 0, 0),
(95, 48, 'БЕТОН', '999-290', '', 'Ул.Промышленная, 1 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.027023242759!2d44.6926806!3d43.0618992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500ad0e2635569%3A0x95b1849f159cee61!2zMS3RjyDQn9GA0L7QvNGL0YjQu9C10L3QvdCw0Y8g0YPQuy4sINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAxMw!5e0!3m2!1sru!2sru!4v1471707218224" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(96, 48, 'ЛЕСТНИЦЫ', '+7 (918) 824-87-50', '', 'ул.Первомайская, 32 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2916.883274815308!2d44.661076!3d43.022844!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa06f58186625%3A0xa441da5198dae6bd!2z0J_QtdGA0LLQvtC80LDQudGB0LrQsNGPINGD0LsuLCAzMiwg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDAx!5e0!3m2!1sru!2sru!4v1471707268539" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '', '', '', '', NULL, 0, 0),
(97, 49, 'ПРОМХОЛОД', '405-404', '76-88-88 ', 'ул.Пожарского, 36 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2915.1850858970342!2d44.67438680000001!3d43.0585747!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40500acbc02c1405%3A0xdce391e93d612b51!2z0YPQuy4g0J_QvtC20LDRgNGB0LrQvtCz0L4sIDM2LCDQktC70LDQtNC40LrQsNCy0LrQsNC3LCDQoNC10YHQvy4g0KHQtdCy0LXRgNC90LDRjyDQntGB0LXRgtC40Y8t0JDQu9Cw0L3QuNGP!5e0!3m2!1sru!2sru!4v1471707400555" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', '- Холодильное оборудование\r\n- Холодильные камеры от 2 до 10 тыс м3\r\n- Кондиционеры - Комплектующие\r\n- Авторефрижераторы\r\n- Отопительное оборудование\r\n- Технологическое торговое оборудование для супермаркетов, баров, ресторанов, пищевые мини-цеха\r\nМОНТАЖ -', '', '', '', NULL, 1, 4),
(98, 49, 'ТОРГСЕРВИС', '52-07-30', '', 'пр.Доватора, 7 ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2917.264122806309!2d44.6608661!3d43.014827499999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405aa05e4f032713%3A0xbf087e408f5748b!2z0L_RgC4g0JTQvtCy0LDRgtC-0YDQsCwgNywg0JLQu9Cw0LTQuNC60LDQstC60LDQtywg0KDQtdGB0L8uINCh0LXQstC10YDQvdCw0Y8g0J7RgdC10YLQuNGPLdCQ0LvQsNC90LjRjywgMzYyMDAx!5e0!3m2!1sru!2sru!4v1471707471715" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', '', 'Холодильное и тепловое оборудование.', '', '', '', NULL, 11, 50),
(99, 50, 'ЭКСПРЕСС ПОЕЗДКИЙ В ГРУЗИЮ ', '+7 (918) 827-04-07 ', '+7 (8672) 44-24-79 ', '', '', '', '', 'Мерседес имеет двадцать посадочных мест и дополнительный багажный отсек, что исключает неудобства в виде торчащего в разные стороны инвентаря.\r\n- Удобство. Выбрав Trans-Kavkaz, можно забыть, что такое задержка транспорта. Вы также можете не беспокоиться о', '', '', '', NULL, 0, 0),
(100, 50, 'ВЛАДИКАВКАЗ - МОСКВА АВТОБУС', '+7 919-429-25-25', '44-05-72', '', '', '', '2-х этажный автобус премиум класса со спальными местами', '', '', '', '', NULL, 0, 0),
(101, 51, 'CITYLINE', '+7 (8672) 58-11-33', '', 'с: г.Владикавказ, ул.П.Морозова/Тельмана, 49/64а ', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2914.8632020674486!2d44.67370729999999!3d43.065344599999996!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x405075327c62f411%3A0x6a2abdf4e6c61da2!2z0YPQuy4g0J_QsNCy0LvQuNC60LAg0JzQvtGA0L7Qt9C-0LLQsCwgNDksINCS0LvQsNC00LjQutCw0LLQutCw0LcsINCg0LXRgdC_LiDQodC10LLQtdGA0L3QsNGPINCe0YHQtdGC0LjRjy3QkNC70LDQvdC40Y8sIDM2MjAxMw!5e0!3m2!1sru!2sru!4v1471707734169" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'Все виды инженерных  изысканий в строительстве:- Инженерно-геодезические изыскания- Инженерно-геологические изыскания- Инженерно-экологические изыскания- Инженерно-гидрометеорологические изысканияКадастровые работы- Межевые планы- Технич', '', '', '', '', NULL, 0, 0),
(125, 1, 'Ремонт компьютро', '61-22-62', '', '', '', '', '', '', '', NULL, NULL, NULL, 0, 0),
(126, 10, 'Ремонт компьютро', '61-22-62', '', '', '', '', '', '', '', NULL, NULL, NULL, 0, 0),
(127, 76, 'Новая', '61-22-62', '', '', '', '', '', '', '', NULL, NULL, NULL, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `user_id`) VALUES
(1, 'Пост 1', 'Описание поста1 ', NULL),
(2, 'Пост 2', 'Описание поста 2', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `rait_ip`
--

CREATE TABLE IF NOT EXISTS `rait_ip` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `stati_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user', '51EY4jBnkZ3k-H6ZamkZt911n92FE4Zr', '$2y$13$292Hf8rtaXME9JQhw80RE.nvVGSU3VBHwgdvY56QflID5CVNgqm.O', NULL, 'user@mail.ru', 10, 1472314734, 1472314734),
(2, 'Manager', 'dTg8swAtsztvZYWAjsRr98H8weSPj4Qi', '$2y$13$IvVXAF/Gehspq4BXN3wEXOXhqLvLWhVy82XrWZVc3XZB6NzAMdq8y', NULL, 'manager@mail.ru', 10, 1472314776, 1472314776),
(3, 'Rahim', '7uUAElcgCp1BreTRaWtWBJhPxcWYJlnh', '$2y$13$/qqSE7C8RSg0mLAjj2a23uL8QRvhuL23BOuF5zLM6EVvTUUka7oSO', NULL, 'admin@mail.ru', 10, 1472314823, 1472314823),
(4, 'user36', '6ouyXIPbwkENxFFqzXxaSYBKmiDNnaTD', '$2y$13$FP0Gw88rhm9sk5BMrOp47.qz..bmB6BH9UdhYqINmVPlvYR68bWrK', NULL, 'user36@mail.ru', 10, 1472635640, 1472635640);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `auth_key`) VALUES
(1, 'user1', 'user1@mail.ru', '$2y$13$DDV.GGYMLt3YUbDMWV.VGOrt83MUqO.S1mpNpMuQOIpC2CRxbLDDm', ''),
(2, 'user2', 'user2@mail.ru', '$2y$13$6HjqVOeMM.fQFX330FmpFuhAIMlHq9lI6RLgiF7ADL7JYHD6ySwBG', ''),
(3, 'user3', 'user3@mail.ru', '$2y$13$49gu/kkmdwx9HdCRd7b.duXnj5A.j0ppdeAafkUQJSfOfW.5zonmG', ''),
(4, 'user3', 'user4@mail.ru', '$2y$13$5Nwb0BZr4wmfQs4U.eZpmeTiolPlKazunBRxrTIay7smmqZvSAVmi', ''),
(5, 'user3', 'user5@mail.ru', '$2y$13$ltK023gq93XnnU8cLwjjUebUhzEckC/NdrlFtTrkdDws.HT87KPWu', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-Comment-entity` (`entity`),
  ADD KEY `idx-Comment-status` (`status`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Индексы таблицы `coommi`
--
ALTER TABLE `coommi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`ip_id`);

--
-- Индексы таблицы `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `organizat`
--
ALTER TABLE `organizat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `rait_ip`
--
ALTER TABLE `rait_ip`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT для таблицы `Comment`
--
ALTER TABLE `Comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `coommi`
--
ALTER TABLE `coommi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `ip`
--
ALTER TABLE `ip`
  MODIFY `ip_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=256;
--
-- AUTO_INCREMENT для таблицы `maps`
--
ALTER TABLE `maps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `organizat`
--
ALTER TABLE `organizat`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `rait_ip`
--
ALTER TABLE `rait_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
