-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Sept 15, 2014 kell 03:40 PL
-- Serveri versioon: 5.6.16
-- PHP versioon: 5.5.11

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Andmebaas: `blog`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `comment_text` text NOT NULL,
  `comment_author` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Andmete tõmmistamine tabelile `comment`
--

INSERT INTO `comment` (`comment_text`, `comment_author`, `comment_date`, `comment_id`, `post_id`) VALUES
('sadsa as dasdasd asda saf aw eera wfda fs afaw WDAW EGAW AFEARAW SGSRRA EA AW GAR AWR AW ATAEDAWEE AWF SET EARAWR AWRAWAW ARAWRAW EARAWE AARWA', 'KAIDO', '2014-09-15', 5, 4),
('sadsa as dasdasd asda saf aw eera wfda fs afaw WDAW EGAW AFEARAW SGSRRA EA AW GAR AWR AW ATAEDAWEE AWF SET EARAWR AWRAWAW ARAWRAW EARAWE AARWA', 'KAIDO', '2014-09-15', 6, 4);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_subject` varchar(255) NOT NULL,
  `post_text` text NOT NULL,
  `post_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Andmete tõmmistamine tabelile `post`
--

INSERT INTO `post` (`post_id`, `post_subject`, `post_text`, `post_created`, `user_id`) VALUES
(3, 'sadasdasdasdada', 'asdasdasdasdasdasdasdasdasd', '2014-09-10 13:37:04', 1),
(4, 'asdasdasdasdasda', 'asdasdasdasdasdasd', '2014-09-10 13:37:04', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`post_id`,`tag_id`),
  UNIQUE KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Andmete tõmmistamine tabelile `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`) VALUES
(4, 1),
(3, 4);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(25) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Andmete tõmmistamine tabelile `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`) VALUES
(1, 'seeeontag'),
(2, 'seeeontag2'),
(3, 'seeeontag'),
(4, 'seeeontag2');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`) VALUES
(1, 'demo', 'demo', 0);

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Piirangud tabelile `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Piirangud tabelile `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`),
  ADD CONSTRAINT `post_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`);
SET FOREIGN_KEY_CHECKS=1;
