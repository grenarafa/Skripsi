-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 10, 2017 at 09:36 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Test`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `contest_id` int(10) unsigned DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `contest_id` (`contest_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `AuthAssignment`
--

CREATE TABLE IF NOT EXISTS `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AuthItem`
--

CREATE TABLE IF NOT EXISTS `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AuthItemChild`
--

CREATE TABLE IF NOT EXISTS `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE IF NOT EXISTS `chapters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_time` datetime NOT NULL,
  `next_chapter_id` int(10) DEFAULT NULL,
  `first_subchapter_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `next_chapter_id` (`next_chapter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=202 ;

--
-- Dumping data for table `chapters`
--

INSERT INTO `chapters` (`id`, `name`, `description`, `created_time`, `next_chapter_id`, `first_subchapter_id`) VALUES
(201, 'Chapter 1', 'Pada suatu hari', '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chapters_problems`
--

CREATE TABLE IF NOT EXISTS `chapters_problems` (
  `chapter_id` int(10) unsigned NOT NULL,
  `problem_id` int(10) unsigned NOT NULL,
  UNIQUE KEY `chapter_id` (`chapter_id`,`problem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chapters_problems`
--

INSERT INTO `chapters_problems` (`chapter_id`, `problem_id`) VALUES
(201, 801);

-- --------------------------------------------------------

--
-- Table structure for table `chapters_users`
--

CREATE TABLE IF NOT EXISTS `chapters_users` (
  `chapter_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `finish_time` datetime DEFAULT NULL,
  `status` int(10) unsigned NOT NULL,
  UNIQUE KEY `chapter_id` (`chapter_id`,`user_id`,`start_time`,`finish_time`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chapters_users`
--

INSERT INTO `chapters_users` (`chapter_id`, `user_id`, `start_time`, `finish_time`, `status`) VALUES
(201, 14536, NULL, NULL, 0),
(201, 14715, NULL, NULL, 1),
(201, 14716, NULL, NULL, 0),
(201, 14717, NULL, NULL, 0),
(201, 14718, NULL, NULL, 0),
(201, 14719, NULL, NULL, 0),
(201, 14720, NULL, NULL, 0),
(201, 14721, NULL, NULL, 0),
(201, 14722, NULL, NULL, 0),
(201, 14723, NULL, NULL, 0),
(201, 14724, NULL, NULL, 0),
(201, 14725, NULL, NULL, 0),
(201, 14726, NULL, NULL, 0),
(201, 14727, NULL, NULL, 0),
(201, 14728, NULL, NULL, 0),
(201, 14729, NULL, NULL, 0),
(201, 14730, NULL, NULL, 0),
(201, 14731, NULL, NULL, 0),
(201, 14732, NULL, NULL, 0),
(201, 14733, NULL, NULL, 0),
(201, 14734, NULL, NULL, 0),
(201, 14735, NULL, NULL, 0),
(201, 14736, NULL, NULL, 0),
(201, 14737, NULL, NULL, 0),
(201, 14738, NULL, NULL, 0),
(201, 14739, NULL, NULL, 0),
(201, 14740, NULL, NULL, 0),
(201, 14741, NULL, NULL, 0),
(201, 14742, NULL, NULL, 0),
(201, 14743, NULL, NULL, 0),
(201, 14744, NULL, NULL, 0),
(201, 14745, NULL, NULL, 0),
(201, 14746, NULL, NULL, 0),
(201, 14747, NULL, NULL, 0),
(201, 14748, NULL, NULL, 0),
(201, 14749, NULL, NULL, 0),
(201, 14750, NULL, NULL, 0),
(201, 14751, NULL, NULL, 0),
(201, 14752, NULL, NULL, 0),
(201, 14753, NULL, NULL, 0),
(201, 14754, NULL, NULL, 0),
(201, 14755, NULL, NULL, 0),
(201, 14756, NULL, NULL, 0),
(201, 14757, NULL, NULL, 0),
(201, 14758, NULL, NULL, 0),
(201, 14759, NULL, NULL, 0),
(201, 14760, NULL, NULL, 0),
(201, 14761, NULL, NULL, 0),
(201, 14762, NULL, NULL, 0),
(201, 14763, NULL, NULL, 0),
(201, 14764, NULL, NULL, 0),
(201, 14765, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `clarifications`
--

CREATE TABLE IF NOT EXISTS `clarifications` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contest_id` int(10) unsigned DEFAULT NULL,
  `chapter_id` int(14) unsigned DEFAULT NULL,
  `problem_id` int(10) unsigned DEFAULT NULL,
  `questioner_id` int(11) unsigned NOT NULL,
  `questioned_time` datetime NOT NULL,
  `subject` text COLLATE latin1_general_ci NOT NULL,
  `question` text COLLATE latin1_general_ci NOT NULL,
  `answerer_id` int(11) unsigned DEFAULT NULL,
  `answered_time` datetime DEFAULT NULL,
  `answer` text COLLATE latin1_general_ci,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contest_id` (`contest_id`),
  KEY `questioner_id` (`questioner_id`),
  KEY `answerer_id` (`answerer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1193 ;

-- --------------------------------------------------------

--
-- Table structure for table `clustering_option`
--

CREATE TABLE IF NOT EXISTS `clustering_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `testcase_option` int(11) NOT NULL,
  `method_option` int(11) NOT NULL,
  `hapus_include_option` int(11) NOT NULL,
  `method` varchar(50) NOT NULL,
  `i` varchar(10) DEFAULT NULL,
  `k` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `clustering_option`
--

INSERT INTO `clustering_option` (`id`, `contest_id`, `problem_id`, `testcase_option`, `method_option`, `hapus_include_option`, `method`, `i`, `k`) VALUES
(58, 901, 801, 0, 0, 1, 'average_linkage', '0.95', NULL),
(59, 901, 801, 1, 1, 1, 'average_linkage', '0.95', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clusters`
--

CREATE TABLE IF NOT EXISTS `clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clustering_option_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `clusters` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `clusters`
--

INSERT INTO `clusters` (`id`, `clustering_option_id`, `username`, `clusters`) VALUES
(10, 58, 'user1', 1),
(11, 59, 'user1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE IF NOT EXISTS `configurations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `contestnews`
--

CREATE TABLE IF NOT EXISTS `contestnews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `contest_id` int(11) unsigned NOT NULL,
  `created_date` datetime NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`author_id`),
  KEY `contest_id` (`contest_id`),
  KEY `author_id_2` (`author_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=407 ;

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE IF NOT EXISTS `contests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  `contest_type_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'open, closed, hidden',
  `invitation_type` int(11) NOT NULL DEFAULT '0',
  `configuration` text,
  `span_type` int(5) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=912 ;

--
-- Dumping data for table `contests`
--

INSERT INTO `contests` (`id`, `owner_id`, `name`, `contest_type_id`, `description`, `start_time`, `end_time`, `status`, `invitation_type`, `configuration`, `span_type`) VALUES
(901, 14536, 'KOM202 Algoritme ', 902, 'blabla', '2017-07-07 04:11:36', '0000-00-00 00:00:00', 1, 0, NULL, 0),
(911, 14536, 'KOM302 BAHASA PEMROGRAMAN', 902, 'ini adalah contoh', '2017-07-24 12:03:59', '0000-00-00 00:00:00', 1, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contests_problems`
--

CREATE TABLE IF NOT EXISTS `contests_problems` (
  `contest_id` int(11) NOT NULL,
  `alias` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`contest_id`,`problem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contests_problems`
--

INSERT INTO `contests_problems` (`contest_id`, `alias`, `problem_id`, `timestamp`, `status`) VALUES
(901, 1, 801, '0000-00-00 00:00:00', 0),
(911, 1, 811, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contests_users`
--

CREATE TABLE IF NOT EXISTS `contests_users` (
  `contest_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `status` int(11) unsigned NOT NULL,
  `role` int(11) NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `register_date` datetime DEFAULT NULL,
  `last_page` text,
  PRIMARY KEY (`contest_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contests_users`
--

INSERT INTO `contests_users` (`contest_id`, `user_id`, `status`, `role`, `last_activity`, `register_date`, `last_page`) VALUES
(901, 14536, 0, 1, NULL, NULL, NULL),
(911, 14716, 0, 2, NULL, NULL, NULL),
(901, 14715, 0, 2, NULL, NULL, NULL),
(901, 14717, 0, 2, NULL, NULL, NULL),
(901, 14718, 0, 2, NULL, NULL, NULL),
(901, 14719, 0, 2, NULL, NULL, NULL),
(901, 14720, 0, 2, NULL, NULL, NULL),
(901, 14721, 0, 2, NULL, NULL, NULL),
(901, 14722, 0, 2, NULL, NULL, NULL),
(901, 14723, 0, 2, NULL, NULL, NULL),
(901, 14724, 0, 2, NULL, NULL, NULL),
(901, 14725, 0, 2, NULL, NULL, NULL),
(901, 14726, 0, 2, NULL, NULL, NULL),
(901, 14727, 0, 2, NULL, NULL, NULL),
(901, 14728, 0, 2, NULL, NULL, NULL),
(901, 14729, 0, 2, NULL, NULL, NULL),
(901, 14730, 0, 2, NULL, NULL, NULL),
(901, 14731, 0, 2, NULL, NULL, NULL),
(901, 14732, 0, 2, NULL, NULL, NULL),
(901, 14733, 0, 2, NULL, NULL, NULL),
(901, 14734, 0, 2, NULL, NULL, NULL),
(901, 14735, 0, 2, NULL, NULL, NULL),
(901, 14736, 0, 2, NULL, NULL, NULL),
(901, 14737, 0, 2, NULL, NULL, NULL),
(901, 14738, 0, 2, NULL, NULL, NULL),
(901, 14739, 0, 2, NULL, NULL, NULL),
(901, 14740, 0, 2, NULL, NULL, NULL),
(901, 14741, 0, 2, NULL, NULL, NULL),
(901, 14742, 0, 2, NULL, NULL, NULL),
(901, 14743, 0, 2, NULL, NULL, NULL),
(901, 14744, 0, 2, NULL, NULL, NULL),
(901, 14745, 0, 2, NULL, NULL, NULL),
(901, 14746, 0, 2, NULL, NULL, NULL),
(901, 14747, 0, 2, NULL, NULL, NULL),
(901, 14748, 0, 2, NULL, NULL, NULL),
(901, 14749, 0, 2, NULL, NULL, NULL),
(901, 14750, 0, 2, NULL, NULL, NULL),
(901, 14751, 0, 2, NULL, NULL, NULL),
(901, 14752, 0, 2, NULL, NULL, NULL),
(901, 14753, 0, 2, NULL, NULL, NULL),
(901, 14754, 0, 2, NULL, NULL, NULL),
(901, 14755, 0, 2, NULL, NULL, NULL),
(901, 14756, 0, 2, NULL, NULL, NULL),
(901, 14757, 0, 2, NULL, NULL, NULL),
(901, 14758, 0, 2, NULL, NULL, NULL),
(901, 14759, 0, 2, NULL, NULL, NULL),
(901, 14760, 0, 2, NULL, NULL, NULL),
(901, 14761, 0, 2, NULL, NULL, NULL),
(901, 14762, 0, 2, NULL, NULL, NULL),
(901, 14763, 0, 2, NULL, NULL, NULL),
(901, 14764, 0, 2, NULL, NULL, NULL),
(901, 14765, 0, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contest_logs`
--

CREATE TABLE IF NOT EXISTS `contest_logs` (
  `id` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `contest_id` int(14) unsigned NOT NULL,
  `actor_id` int(14) NOT NULL,
  `action_type` int(11) NOT NULL,
  `time` int(20) NOT NULL,
  `log_content` text,
  PRIMARY KEY (`id`),
  KEY `time` (`time`),
  KEY `contest_id` (`contest_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=543445 ;

--
-- Dumping data for table `contest_logs`
--

INSERT INTO `contest_logs` (`id`, `contest_id`, `actor_id`, `action_type`, `time`, `log_content`) VALUES
(903, 901, 0, 0, 0, NULL),
(913, 911, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contest_types`
--

CREATE TABLE IF NOT EXISTS `contest_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=903 ;

--
-- Dumping data for table `contest_types`
--

INSERT INTO `contest_types` (`id`, `name`, `description`) VALUES
(902, 'Contest Type', 'Pada suatu hari');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=102 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(101, 'Groups', 'Pada suatu hari');

-- --------------------------------------------------------

--
-- Table structure for table `groups_users`
--

CREATE TABLE IF NOT EXISTS `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_users`
--

INSERT INTO `groups_users` (`group_id`, `user_id`) VALUES
(101, 14715),
(101, 14716);

-- --------------------------------------------------------

--
-- Table structure for table `info_clear`
--

CREATE TABLE IF NOT EXISTS `info_clear` (
  `contest_id` int(10) NOT NULL,
  `admin` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  UNIQUE KEY `contest_id` (`contest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(128) DEFAULT NULL,
  `category` varchar(128) DEFAULT NULL,
  `logtime` int(11) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_lc_utsp`
--

CREATE TABLE IF NOT EXISTS `nilai_lc_utsp` (
  `full_name` tinytext,
  `username` varchar(32) DEFAULT NULL,
  `submitter_id` int(10) unsigned DEFAULT NULL,
  `sum( s.score )` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pastebin`
--

CREATE TABLE IF NOT EXISTS `pastebin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_id` (`owner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `plagiarism`
--

CREATE TABLE IF NOT EXISTS `plagiarism` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contest_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `plagiat` varchar(25) NOT NULL,
  `submitted_time` datetime NOT NULL,
  `note` varchar(255) NOT NULL,
  `value_testcase` varchar(250) NOT NULL,
  `examiner` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `plagiarism`
--

INSERT INTO `plagiarism` (`id`, `contest_id`, `problem_id`, `username`, `plagiat`, `submitted_time`, `note`, `value_testcase`, `examiner`) VALUES
(1, 901, 801, 'user1', '0', '0000-00-00 00:00:00', '', '111', 'grena');

-- --------------------------------------------------------

--
-- Table structure for table `privatemessages`
--

CREATE TABLE IF NOT EXISTS `privatemessages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) unsigned NOT NULL,
  `send_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subject` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Storing private messaging' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `privatemessages_recipients`
--

CREATE TABLE IF NOT EXISTS `privatemessages_recipients` (
  `privatemessage_id` int(10) unsigned NOT NULL,
  `recipient_id` int(10) unsigned NOT NULL,
  `unread` tinyint(1) NOT NULL,
  KEY `recipient_id` (`recipient_id`),
  KEY `private_message_id` (`privatemessage_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Storing private messaging recipients';

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE IF NOT EXISTS `problems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `comment` text NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `problem_type_id` int(10) unsigned NOT NULL,
  `description` text,
  `token` varchar(32) NOT NULL,
  `visibility` int(11) NOT NULL,
  `available_languages` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `author_id` (`author_id`),
  KEY `problem_type_id` (`problem_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Storing problems' AUTO_INCREMENT=1712 ;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `title`, `author_id`, `comment`, `created_date`, `modified_date`, `problem_type_id`, `description`, `token`, `visibility`, `available_languages`) VALUES
(801, 'Sorting', 401, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 802, NULL, '', 0, NULL),
(811, 'Java Programming', 401, '', '2017-08-01 00:00:00', '2017-08-02 00:00:00', 802, NULL, '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `problemsets`
--

CREATE TABLE IF NOT EXISTS `problemsets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=804 ;

--
-- Dumping data for table `problemsets`
--

INSERT INTO `problemsets` (`id`, `parent_id`, `status`, `created_date`, `modified_date`, `name`, `description`) VALUES
(803, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Problem set', 'Pada suatu malam');

-- --------------------------------------------------------

--
-- Table structure for table `problemsets_problems`
--

CREATE TABLE IF NOT EXISTS `problemsets_problems` (
  `problemset_id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`problemset_id`,`problem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problemsets_problems`
--

INSERT INTO `problemsets_problems` (`problemset_id`, `problem_id`, `status`, `rank`) VALUES
(803, 802, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `problem_types`
--

CREATE TABLE IF NOT EXISTS `problem_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='Problem types' AUTO_INCREMENT=803 ;

--
-- Dumping data for table `problem_types`
--

INSERT INTO `problem_types` (`id`, `name`, `description`) VALUES
(802, 'Sorting', 'blablabla');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE IF NOT EXISTS `submissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `submitter_id` int(10) unsigned NOT NULL,
  `contest_id` int(10) unsigned DEFAULT NULL,
  `chapter_id` int(10) unsigned DEFAULT NULL,
  `submitted_time` datetime NOT NULL,
  `submit_content` text NOT NULL,
  `grade_time` datetime DEFAULT NULL,
  `grade_content` text,
  `grade_output` longtext,
  `grade_status` int(11) DEFAULT NULL,
  `verdict` text,
  `score` float NOT NULL,
  `comment` text NOT NULL,
  `file` longblob,
  PRIMARY KEY (`id`),
  KEY `submitter_id` (`submitter_id`,`contest_id`),
  KEY `contest_id` (`contest_id`),
  KEY `submitted_time` (`submitted_time`),
  KEY `grade_status` (`grade_status`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=506136 ;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `problem_id`, `submitter_id`, `contest_id`, `chapter_id`, `submitted_time`, `submit_content`, `grade_time`, `grade_content`, `grade_output`, `grade_status`, `verdict`, `score`, `comment`, `file`) VALUES
(501, 801, 14715, 901, 201, '0000-00-00 00:00:00', '{"source_lang":"c","original_name":"bubble1.c","source_content":"#include <stdio.h>\n#define input "Masukkan Jumlah Angka\\n"\n#define masuk "Masukkan nilai sebanyak %d\\n"\n#define output "Urutan dari kecil ke besar :\\n"\n#define keluar "%d\\n" \n\nint main()\n{\n	int array[100], n, c, d, swap;\n\n	printf(input);\n	scanf("%d", &n);\n\n\n	printf(masuk, n);\n	for(c=0;c<n;c+=1)\n		scanf("%d", &array[c]);\n	\n	for(c=0;c<n-1;c++)\n	{\n		for(d=0;d<n-c-1;d++)\n		{\n			if(array[d] > array[d+1])\n			{\n				swap = array[d];\n				array[d] = array[d+1];\n				array[d+1] = swap;\n			}\n		}\n	}\n\n	printf(output);\n\n	for(c=0;c<n;c++)\n		printf(keluar, array[c]);\n\n	return 0;\n}"}', NULL, '{"verdict":"Accepted","output":"Testcase #1\\tin : 2a3.in out:2a3.out\\n\\tOK (0.040 sec real, 0.043 sec wall, 0 syscalls)\\n\\tAccepted\\nTestcase #2\\tin : 2a2.in out: 2a2.out\\n\\tOK (0.036 sec real, 0.039 sec wall, 0 syscalls)\\n\\tAccepted\\nTestcase #3\\tin : 2a3.in out: 2a3.out\\n\\tOK (0.032 sec real, 0.035 sec wall, 0 syscalls)\\n\\tAccepted\\n","total_testcase":3,"right_testcase":3}', NULL, NULL, 'Accepted', 100, '', 0x23696e636c756465203c737464696f2e683e0a0a696e74206d61696e28290a7b0a09696e742061727261795b3130305d2c206e2c20632c20642c20737761703b0a0a097072696e746628224d6173756b6b616e204a756d6c616820416e676b615c6e22293b0a097363616e6628222564222c20266e293b0a0a097072696e746628224d6173756b6b616e206e696c616920736562616e79616b2025645c6e222c206e293b0a09666f7228633d303b633c6e3b632b2b290a09097363616e6628222564222c202661727261795b635d293b0a090a09666f7228633d303b633c6e2d313b632b2b290a097b0a0909666f7228643d303b643c6e2d632d313b642b2b290a09097b0a09090969662861727261795b645d203e2061727261795b642b315d290a0909097b0a0909090973776170203d2061727261795b645d3b0a0909090961727261795b645d203d2061727261795b642b315d3b0a0909090961727261795b642b315d203d20737761703b0a0909097d0a09097d0a097d0a0a097072696e7466282255727574616e2064617269206b6563696c206b65206265736172203a5c6e22293b0a0a09666f7228633d303b633c6e3b632b2b290a09097072696e7466282225645c6e222c2061727261795b635d293b0a0a0972657475726e20303b0a7d),
(511, 811, 14716, 911, 201, '0000-00-00 00:00:00', '{"source_lang":"c","original_name":"hello.c","source_content":"#include <stdio.h>\\n\\nint main()\\n{\\nprintf("Hello World!!");\\nreturn 0;\\n}\\n"}', NULL, NULL, NULL, NULL, 'Accepted', 100, '', 0x23696e636c756465203c737464696f2e683e0a0a696e74206d61696e28290a7b0a097072696e7466282248656c6c6f20576f726c6421215c6e22293b0a0972657475726e20303b0a7d);

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE IF NOT EXISTS `trainings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_time` datetime NOT NULL,
  `creator_id` int(10) unsigned NOT NULL,
  `first_chapter_id` int(10) unsigned NOT NULL,
  `status` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `first_chapter_id` (`first_chapter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=602 ;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `name`, `description`, `created_time`, `creator_id`, `first_chapter_id`, `status`) VALUES
(601, 'Training', 'pada suatu hari', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(127) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` char(50) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_ip` text,
  `full_name` tinytext NOT NULL,
  `join_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `site_url` tinytext,
  `institution` tinytext,
  `institution_address` tinytext,
  `institution_phone` tinytext,
  `address` tinytext NOT NULL,
  `postal_code` tinytext NOT NULL,
  `city` tinytext NOT NULL,
  `handphone` tinytext,
  `phone` tinytext,
  `active` tinyint(1) NOT NULL,
  `activation_code` varchar(32) DEFAULT NULL,
  `additional_information` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`),
  KEY `last_activity` (`last_activity`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14766 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `type`, `logins`, `last_login`, `last_activity`, `last_ip`, `full_name`, `join_time`, `site_url`, `institution`, `institution_address`, `institution_phone`, `address`, `postal_code`, `city`, `handphone`, `phone`, `active`, `activation_code`, `additional_information`) VALUES
(14536, 'grenarafa@gmail.com', 'grena', '7c222fb2927d828af22f592134e8932480637c0d', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-06-07 06:29:29', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14765, 'user51@gmail.com', 'user51', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14764, 'user50@gmail.com', 'user50', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14763, 'user49@gmail.com', 'user49', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14762, 'user48@gmail.com', 'user48', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14761, 'user47@gmail.com', 'user47', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14760, 'user46@gmail.com', 'user46', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14759, 'user45@gmail.com', 'user45', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14758, 'user44@gmail.com', 'user44', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14757, 'user43@gmail.com', 'user43', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14756, 'user42@gmail.com', 'user42', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14755, 'user41@gmail.com', 'user41', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14754, 'user40@gmail.com', 'user40', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14753, 'user39@gmail.com', 'user39', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14752, 'user38@gmail.com', 'user38', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14751, 'user37@gmail.com', 'user37', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14750, 'user36@gmail.com', 'user36', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14749, 'user35@gmail.com', 'user35', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14748, 'user34@gmail.com', 'user34', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14747, 'user33@gmail.com', 'user33', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14746, 'user32@gmail.com', 'user32', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14745, 'user31@gmail.com', 'user31', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14744, 'user30@gmail.com', 'user30', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14743, 'user29@gmail.com', 'user29', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14742, 'user28@gmail.com', 'user28', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14741, 'user27@gmail.com', 'user27', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14740, 'user26@gmail.com', 'user26', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14739, 'user25@gmail.com', 'user25', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14738, 'user24@gmail.com', 'user24', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14737, 'user23@gmail.com', 'user23', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14736, 'user22@gmail.com', 'user22', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14735, 'user21@gmail.com', 'user21', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14734, 'user20@gmail.com', 'user20', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14733, 'user19@gmail.com', 'user19', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14732, 'user18@gmail.com', 'user18', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14731, 'user17@gmail.com', 'user17', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14730, 'user16@gmail.com', 'user16', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14729, 'user15@gmail.com', 'user15', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14728, 'user14@gmail.com', 'user14', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14727, 'user13@gmail.com', 'user13', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14726, 'user12@gmail.com', 'user12', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14725, 'user11@gmail.com', 'user11', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14724, 'user10@gmail.com', 'user10', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14715, 'user1@gmail.com', 'user1', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14716, 'user2@gmail.com', 'user2', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14717, 'user3@gmail.com', 'user3', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14718, 'user4@gmail.com', 'user4', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14719, 'user5@gmail.com', 'user5', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14720, 'user6@gmail.com', 'user6', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14721, 'user7@gmail.com', 'user7', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14722, 'user8@gmail.com', 'user8', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL),
(14723, 'user9@gmail.com', 'user9', '', 0, 0, '0000-00-00 00:00:00', NULL, NULL, '', '2017-07-14 13:01:03', NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
