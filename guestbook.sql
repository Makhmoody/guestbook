-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 05 2018 г., 13:49
-- Версия сервера: 5.5.48
-- Версия PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `guestbook`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `homepage` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `ip`, `browser`, `username`, `email`, `homepage`, `text`, `created`) VALUES
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'wr-school', 'yaroslavl@wr-school.ru', 'wr-school.ru', 'Что вы получите?\n\nВы будете говорить с самого первого урока в нашей школе!\n\nВы будете изучать правила через игры и картинки\n\nВы будете общаться с позитивными, активными людьми\n\nВы будете пользоваться самыми современными учебными материалами\n\nВы будете получать удовольствие и результат!', '2018-12-05 13:13:30'),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'lang-8', 'info@lang-8.com', 'lang-8.com', 'Let our community of native speakers\nsupport your language learning.', '2018-12-05 13:16:53'),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'grammar', 'info@grammar.net', 'www.grammar.net', 'With the development of social media, people have become very lazy to take care of grammar in their everyday communications. When texting, they try to use simple sentences and fragments that are quite acceptable in these mediums. But, unfortunately, ignoring grammar rules is becoming a bad habit. Of course, English grammar is tough and riddled…', '2018-12-05 13:17:55'),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'lingualeo', 'info@lingualeo.com', 'lingualeo.com', 'Lingualeo — это эффективный сервис для нескучного изучения английского языка. Более 18 000 000 человек во всем мире выбрали Lingualeo. Присоединяйся!', '2018-12-05 13:19:01'),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'busuu', 'info@busuu.com', 'www.busuu.com', 'Ты решаешь, как и когда учиться\nНачинай на компьютере, продолжай на телефоне. Более того, можно скачать уроки и взять их в дорогу.', '2018-12-05 13:19:59'),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'rosettastone', 'info@rosettastone.com', 'www.rosettastone.com', 'The best way to learn a new language is to surround yourself with it, so our proven Dynamic Immersion® method does just that.', '2018-12-05 13:21:05'),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'britishcouncil', 'info@britishcouncil.org', 'learnenglish.britishcouncil.org', 'Learn English online using our high-quality resources to quickly improve your English.', '2018-12-05 13:23:05'),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'bbc', 'info@bbc.uk', 'www.bbc.co.uk', 'Examples:\n\nOur teacher gave us the third degree for being late to class.\nMy wife gave me the third degree because I missed her phone calls.\n\nWhy are you giving me the third degree? Leave me alone! ', '2018-12-05 13:24:29'),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'list-english', 'info@list-english.ru', 'list-english.ru', 'Только упорный труд, желание, практика, практика и еще раз практика. И в этом вам поможет наш сайт, на котором собраны все самые полезные ресурсы или ссылки по изучению Английского языка, отфильтрованные от обмана и сомнительных техник.', '2018-12-05 13:25:09'),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'lyricstraining', 'info@lyricstraining.com', 'lyricstraining.com', 'Learn languages through music now on your smartphone!', '2018-12-05 13:25:48'),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'ororo', 'info@ororo.tv', 'ororo.tv', 'Субтитры на английском и других языках. \nПереводите незнакомые слова или целые предложения во время просмотра.', '2018-12-05 13:26:28'),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'thefreedictionary', 'info@thefreedictionary.com', 'www.thefreedictionary.com', 'TheFreeDictionary.com now allows you to create your own personal homepage by adding and removing, dragging and dropping, and &quot;using or losing&quot; existing content windows. In addition, you can add your own bookmarks, weather information, horoscope, and RSS feeds from anywhere on the web.', '2018-12-05 13:27:30'),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'real-english', 'info@real-english.com', 'www.real-english.com', 'Read the comments made by students and teachers during the last 6 months', '2018-12-05 13:28:07'),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'learnit90', 'info@learnit90.ru', 'learnit90.ru', 'самый крупный онлайн марафон изучения английского языка', '2018-12-05 13:28:48'),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'esolcourses.com', 'info@esolcourses.com', 'www.esolcourses.com', 'ESOLCourses', '2018-12-05 13:29:37'),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'readlang', 'info@readlang.com', 'readlang.com', 'Learn a language by reading whatever you like', '2018-12-05 13:31:03'),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'britishcouncil', 'info@britishcouncil.org', 'britishcouncil.org', 'Make a Hanukkah card! You can print one with the words to colour or one to write yourself. ', '2018-12-05 13:32:34'),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'rong-chang', 'info@rong-chang.com', 'www.rong-chang.com', 'ESL: English as a Second Language', '2018-12-05 13:33:26'),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'easyworldofenglish', 'info@easywglish.com', 'easyworldofenglish.com', 'Easy world of english', '2018-12-05 13:34:22'),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'corporate-alchemists', 'info@corporate-alchemists.com', 'www.corporate-alchemists.com', 'In der Zukunft werden Unternehmenskultur und Technologien immer mehr verschmelzen. Bilden Sie jetzt die Basis für das digitale Zeitalter in Ihrem Unternehmen, sei es auf der menschlichen Ebene als auch auf der technologischen. Erfahren Sie auf unseren Seiten wie Sie von unserem Wissen als Corporate Alchemists davon profitieren.', '2018-12-05 13:35:10'),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'fluentu', 'info@fluentu.com', 'www.fluentu.com', 'FluentU brings language learning to life with real world videos!', '2018-12-05 13:35:48'),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'busuu', 'info@busuu.com', 'www.busuu.com', 'Выучи иностранный язык, занимаясь по 10 минут в день', '2018-12-05 13:36:19'),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'duolingvo', 'info@duolingvo.com', 'duolingvo.com', 'The Sponsored Listings displayed above are served automatically by a third party. ', '2018-12-05 13:36:58'),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'tv411', 'info@tv411.org', 'www.tv411.org', 'TV411 will help you read for success, fine-tune your writing, expand your vocabulary, get a grip on math, and explore science.', '2018-12-05 13:37:58'),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'gcfglobal', 'info@gcfglobal.org', 'edu.gcfglobal.org', 'Life is filled with chaos, and we must learn to solve problems in the midst of it every day. These interactives give you a chance to practice these challenges without real-life consequences.', '2018-12-05 13:38:37'),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'esl-lab', 'info@esl-lab.com', 'www.esl-lab.com', 'General Listening Quizzes', '2018-12-05 13:39:28'),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'eslpod', 'info@eslpod.com', 'www.eslpod.com', 'When Americans say “the holidays,” they are usually referring to mid- to late-December, when the religious holidays of Christmas and Hanukkah are celebrated. It’s a happy time of year for most people.', '2018-12-05 13:40:15'),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'librivox', 'info@librivox.org', 'librivox.org', 'Free public domain audiobooks', '2018-12-05 13:40:53'),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'tunein', 'info@tunein.com', 'tunein.com', 'London FM', '2018-12-05 13:41:32'),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36', 'storylineonline', 'info@storylineonline.net', 'www.storylineonline.net', 'storyline online', '2018-12-05 13:42:17');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
