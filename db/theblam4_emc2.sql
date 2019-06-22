-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2019 at 06:47 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theblam4_emc2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `photo`) VALUES
(1, 'admin', '', 'admin@12345', '');

-- --------------------------------------------------------

--
-- Table structure for table `aptitudetest`
--

CREATE TABLE `aptitudetest` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timetaken` int(11) NOT NULL,
  `attempted_qu` int(11) NOT NULL,
  `unattempted_qu` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aptitudetest`
--

INSERT INTO `aptitudetest` (`id`, `user_id`, `timetaken`, `attempted_qu`, `unattempted_qu`, `correct`, `wrong`, `time`) VALUES
(7, 228, 58, 20, 0, 8, 12, '2017-09-27 07:01:23'),
(8, 229, 87, 19, 1, 2, 17, '2017-10-03 03:09:35'),
(9, 230, 0, 0, 0, 0, 0, '2017-10-07 10:04:24'),
(11, 169, 0, 0, 0, 0, 0, '2017-10-07 17:11:18'),
(14, 180, 1315, 10, 10, 8, 2, '2017-10-10 00:06:29'),
(15, 168, 0, 0, 0, 0, 0, '2017-10-10 09:03:17'),
(16, 220, 1251, 20, 0, 18, 2, '2017-10-10 16:10:25'),
(17, 234, 0, 0, 0, 0, 0, '2017-10-27 12:06:51'),
(18, 269, 0, 0, 0, 0, 0, '2018-02-15 06:11:43'),
(19, 280, 608, 19, 1, 6, 13, '2018-03-03 16:09:40'),
(20, 302, 0, 0, 0, 0, 0, '2018-07-18 08:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `assgnmnt_submit`
--

CREATE TABLE `assgnmnt_submit` (
  `id` int(11) NOT NULL,
  `assignment_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `file` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assgnmnt_submit`
--

INSERT INTO `assgnmnt_submit` (`id`, `assignment_id`, `student_id`, `file`, `date`) VALUES
(23, 1, 0, 'ac7e14643ea92cac559a64479456d326.pdf', '2018-01-19 12:36:23'),
(24, 4, 1, 'af1a70a8b98b3e1618325a75806c1ea4.pdf', '2018-01-23 11:36:32'),
(25, 4, 1, '35120448ad811771c0dbfcb2673c7fe3.pdf', '2018-01-23 11:36:34'),
(26, 6, 47, '6c9815b027c0e4e62533fdee96417e75.docx', '2018-01-24 12:12:50'),
(27, 6, 42, 'e28e6e04cb54af5e7236e1c4e09f71cb.docx', '2018-01-24 16:20:31'),
(28, 6, 39, '67510d2b8632eca34eccc20da20737cb.docx', '2018-01-26 11:32:38'),
(29, 1, 39, '84eda9187f56d730b6bfebb3e07491be.pdf', '2018-01-26 11:42:03'),
(30, 1, 39, 'eaa3b396be864a20562f36fde826644d.pdf', '2018-01-26 11:42:06'),
(31, 3, 39, '7421a1492661cfbae95ca8636b460c4d.pdf', '2018-01-26 11:42:16'),
(32, 6, 45, 'aaaed2eacaad0ec5ab26f0828b58797c.docx', '2018-01-26 12:21:46'),
(33, 6, 45, 'd166ef468abeeffebec0b4895861a5ed.docx', '2018-01-26 12:22:07'),
(51, 6, 35, 'd3cb53a79dbd6782fb831c1ea3f0e4d7.xlsx', '2018-01-28 18:00:38'),
(52, 6, 41, '0806df4d10b3a110f3e5ff512d59c7e9.docx', '2018-01-29 15:19:30'),
(53, 6, 40, 'b1a66947bf9584d05c30243b19d2d3fe.docx', '2018-01-30 09:07:30'),
(54, 8, 39, 'a75de2c5a62be08cc0c53dff19d6b684.docx', '2018-02-01 10:17:01'),
(55, 8, 42, 'b2cb17c514e6d10625941196222f335f.docx', '2018-02-02 13:37:24'),
(56, 8, 34, '7b3011be2c40a4eb2b33aba3863c3915.pdf', '2018-02-03 09:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `heading` varchar(100) NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `faculty_id` int(10) NOT NULL,
  `video_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `heading`, `pdf`, `faculty_id`, `video_id`) VALUES
(1, 'Managerial Day 1', 'managerial-assignment-1.pdf', 1, 15),
(2, 'statistics day 1', 'statistics-assignment-1.pdf', 2, 16),
(3, 'Managerial Day 2', 'managerial-assignment-2.pdf', 1, 19),
(4, 'Marketing management day 2', 'marketing-assignment-2.pdf', 3, 21),
(5, 'Marketing management day 3', 'marketing-assignment-3.xls', 3, 26),
(6, 'financial-assignment-2', 'financial-assignment-2.PDF', 0, 30),
(7, 'marketing day 4', 'marketing-survey-example1.pdf', 3, 27),
(8, 'marketing management day 6', 'marketing-management-day-6.pdf', 3, 32);

-- --------------------------------------------------------

--
-- Table structure for table `book_review`
--

CREATE TABLE `book_review` (
  `id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `about_author` text NOT NULL,
  `discry` text NOT NULL,
  `genre` text NOT NULL,
  `Publisher` varchar(50) NOT NULL,
  `Rating` float NOT NULL,
  `links` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_review`
--

INSERT INTO `book_review` (`id`, `img`, `title`, `about_author`, `discry`, `genre`, `Publisher`, `Rating`, `links`, `time`) VALUES
(15, 'Capital in the Twentienth Century.jpg', 'Capital in the Twentienth Century', 'THOMAS PIKETTY\r\n', 'Capital in the Twentienth Century', 'Money', '', 4.5, '', '2017-12-04 08:54:55'),
(16, 'Built to Sell.jpg', 'Built to Sell', 'JOHN WARRILLOW\r\n', 'Built to Sell', 'Business, Selling', '', 4.5, '', '2017-12-04 08:54:36'),
(17, 'Create Wealth and Impact World.jpg', 'Create Wealth and Impact World', 'Peter Diamandis and Steven Kotler\r\n', '', 'Business, Money\r\n', '', 4, '', '2017-12-04 09:00:01'),
(18, 'Getting to Yes Negotiating Agreement Without Giving In.jpg', 'Getting to Yes', 'Roger Fisher and William Ury\r\n', '', 'Negotiation\r\n', '', 4.5, '', '2019-01-08 05:02:10'),
(19, 'Secrets of the Millionaire Mind.jpg', 'Secrets of the Millionaire Mind', 'T Harv Eker\r\n', '', 'Money', '', 4.5, '', '2017-12-04 09:03:33'),
(20, 'The Art of the Deal.jpg', 'The Art of the Deal', 'Donald J Trump\r\n', '', 'Deal Making, Negotiation\r\n', '', 4.5, '', '2017-12-04 09:07:16'),
(21, 'The Richest Man in Babylon.jpg', 'The Richest Man in Babylon', 'George Samuel Clason\r\n', '', 'Money\r\n', '', 4, '', '2017-12-04 09:08:29'),
(22, 'The Warren Buffett Way.jpg', 'The Warren Buffett Way', 'Robert G. Hagstrom\r\n', '', 'Investment, Money\r\n', '', 4, '', '2017-12-04 09:13:10'),
(23, 'Think and Grow Rich.jpg', 'Think and Grow Rich', 'Napoleon hill\r\n', '', 'Money', '', 4.5, '', '2017-12-04 09:14:09'),
(24, 'Trump Style Negotiation.jpg', 'Trump Style Negotiation', 'George H. Ross\r\n', '', 'Negotiation\r\n', '', 4, '', '2017-12-04 09:18:32'),
(25, 'Trump University-Wealth Building.jpg', 'Trump University Wealth Building', 'Donald Trump\r\n', '', 'Money\r\n', '', 4, '', '2017-12-04 08:45:48'),
(26, 'Design of Things.jpg', 'Design of Things.', 'Jonathan Cagan,Peter Boatwright,Craig M. Vogel\r\n', '', 'Strategy', '', 4, '', '2019-01-08 05:02:39'),
(27, 'Good Strategy Bad Strategy.jpg', 'Good Strategy Bad Strategy', 'Richard_Rumelt\r\n', '', 'Strategy', '', 4.5, '', '2017-12-04 09:27:39'),
(28, 'Leadership Strategies for women.jpg', 'Leadership Strategies', 'Paul_Vanderbroeck', '', 'Strategy', '', 4.5, '', '2019-01-08 05:04:05'),
(29, 'The Art of War.jpg', 'The Art of War', 'Sun Tzu\r\n', '', 'Strategy\r\n', '', 4.5, '', '2017-12-04 09:30:25'),
(30, 'The Strategy Consultants Approach to Problem Solving.jpg', 'The Strategy Consultants', 'Dr Marc Baaij\r\n', '', 'Strategy', '', 4.5, '', '2019-01-08 05:04:47'),
(31, 'Accept your Abundance.jpg', 'Accept your Abundance', 'Randy Gage\r\n', '', 'Motivational', '', 4.5, '', '2017-12-04 09:36:41'),
(32, 'Awaken the Giant Within.jpg', 'Awaken the Giant Within', 'Tony Robbins\r\n', '', 'Motivational', '', 4.5, '', '2017-12-04 09:38:22'),
(33, 'Hyperbole and a Half.jpg', 'Hyperbole and a Half', 'Allie Brosh\r\n', '', 'Motivational', '', 4, '', '2017-12-04 09:38:22'),
(34, 'Originals.jpg', 'Originals', 'Adam Grant\r\n', '', 'Motivational', '', 4, '', '2017-12-04 09:40:04'),
(35, 'Outliers.png', 'Outliers', 'Malcolm Gladwell\r\n', '', 'Motivational', '', 4, '', '2017-12-04 09:50:29'),
(36, 'Zero to One.jpg', 'Zero to One', 'Peter Thiel, Blake Masters\r\n', '', 'Motivational', '', 4, '', '2017-12-04 09:40:46'),
(37, 'Give and Take.jpg', 'Give and Take', 'Adam Grant\r\n', '', 'Management', '', 4, '', '2017-12-04 09:43:34'),
(38, 'The Tipping Point.jpg', 'The Tipping Point', 'Malcolm Gladwell\r\n', '', 'Management', '', 4, '', '2017-12-04 09:45:46'),
(39, 'Crucial Conversations.jpg', 'Crucial Conversations', 'Joseph Grenny,Al Switzler', '', 'Communication', '', 4, '', '2019-01-08 05:09:27'),
(40, 'Talk like TED.jpg', 'Talk like TED', 'Carmine Gallo, Joseph Michelli\r\n', '', 'Communication', '', 4.5, '', '2017-12-04 09:48:32'),
(41, 'The Seven Habits Of Highly Effective People.JPG', 'The Seven Habits Of Highly Effective People', 'Stephen R. Covey', '', '', '', 5, '', '2017-12-06 09:53:35'),
(42, 'hrm.jpg', 'HUMAN RESOURCE MANAGEMENT', 'GARY DESSLER\r\n', 'HUMAN RESOURCE MANAGEMENT', 'Managment', '', 4.5, '', '2018-07-05 04:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `certifications`
--

CREATE TABLE `certifications` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `authority` varchar(100) NOT NULL,
  `my_from` varchar(15) NOT NULL,
  `my_to` varchar(15) NOT NULL,
  `fileupload` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certifications`
--

INSERT INTO `certifications` (`id`, `name`, `authority`, `my_from`, `my_to`, `fileupload`, `date`, `user_id`) VALUES
(9, 'jhgjmn', 'uygmj', '', '', '0', '2017-07-17 05:24:10', 95),
(10, ' tgdrtrd dr gggg', ' trdtrd', '2017-06-15', '2017-06-12', '523109617Hydrangeas.jpg', '2017-07-17 05:24:10', 83),
(12, 'ergewrgg', 'fgdfgfdg', '2017-06-21', '2017-06-26', '1562936696Chrysanthemum.jpg', '2017-07-17 05:24:10', 87),
(14, 'cscscsc', 'sscss', '2017-07-18', '2017-07-20', '857896414companylogo.png', '2017-07-17 05:24:10', 90),
(15, 'cscscsc', 'sscss', '2017-07-18', '2017-07-20', '341698896companylogo.png', '2017-07-17 05:24:10', 90),
(16, 'hdtry', 'ydytdf', '2017-07-10', '2017-07-14', '1815977404Admissions Criteria.png', '2017-07-18 13:04:37', 117),
(18, 'Informatica Power Centre', 'Tata Consultancy Services Ltd', '2016-08-13', '2016-08-13', '1434139838963380_BIPM - Informatica Powercentre_Fo', '2017-07-27 15:57:26', 113),
(22, 'asdf', 'asdf', '2017-07-04', '2017-07-03', '2032340823Jellyfish.jpg', '2017-07-28 04:05:28', 132),
(23, 'asdf', 'asdf', '2017-07-19', '2017-07-26', '1447124014Koala.jpg', '2017-07-28 05:15:53', 135),
(24, 'asdf', 'asdf', '2017-07-05', '2017-07-11', '1649650609Penguins.jpg', '2017-07-28 16:19:59', 137),
(25, ' asdf', 'asdf', '2017-07-05', '2017-07-26', '754734540Koala.jpg', '2017-07-28 16:30:47', 137),
(26, 'sedae', 'faea', '2013-05-05', '2015-05-05', '1261238298website-checklist.pdf', '2017-08-01 20:26:06', 146),
(27, 'fdsfsd ', 'fsr s', '2017-08-07', '2017-08-24', '914607982logo.jpg', '2017-08-01 21:01:53', 81),
(31, 'java', 'satyam', '2017-01-03', '2017-08-08', '', '2017-08-02 17:03:42', 149),
(32, 'c', 'naresh', '2017-02-15', '2017-08-31', '384089496emc2brochure.pdf', '2017-08-02 17:04:12', 149),
(33, 'DEDFRGETHRTHRTH', 'RFGERYTY4TYYRE', '2017-08-14', '2017-08-15', '2067215529Blackbuck-Company-Profile.pdf', '2017-08-02 18:09:02', 150),
(34, 'zXcdhfgh', 'sdgfghfgj', '2017-08-08', '2017-08-15', '216909574IMAG1277_1.jpg', '2017-08-02 18:19:45', 151),
(35, 'zXcdhfgh', 'sdgfghfgj', '2017-08-08', '2017-08-15', '373781422IMAG1277_1.jpg', '2017-08-02 18:19:45', 151),
(36, 'dghyhjgh', 'fgjfhj', '2017-08-15', '2017-08-29', '1528153050Koala.jpg', '2017-08-02 18:20:14', 151),
(37, 'Sef', 'sff', '1221-02-01', '2210-02-02', '', '2017-08-02 18:36:04', 152),
(38, 'fgjh', 'dfghdfgh', '2017-08-07', '2017-08-14', '', '2017-08-02 18:43:11', 155),
(39, 'yruyrtwey', 'treuywrewt', '2017-07-31', '2017-08-30', '2060245176website-checklist.pdf', '2017-08-03 17:07:46', 160),
(41, 'dsgv', 'shvhbd', '2017-07-30', '2017-08-22', '1214728441website-checklist.pdf', '2017-08-03 17:09:22', 160),
(42, 'ISTQB IN MANUAL TESTING', 'BCS,THE CHARTERED INSTITUTE OF IT', '2016-10-01', '2030-10-01', '', '2017-08-22 18:06:09', 183),
(43, 'CCNA', 'NEtwork bulls', '2013-02-15', '2013-12-15', '', '2017-09-06 17:33:21', 197),
(44, 'Internal ITIL v3 foundation Certified Associate in IBM', 'IBM', '2016-09-13', '2016-08-19', '562186929(1) ITIL_certificate_Aug16.pdf', '2017-09-14 03:52:03', 219),
(45, 'BE', 'Vtu', '2011-07-01', '2014-08-01', '', '2018-08-22 14:36:54', 316),
(46, 'GOOGLE ADWORDS', 'GOOGLE', '2017-03-04', '2018-03-04', '', '2018-09-17 01:51:26', 325);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `c_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `v_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `Institute` varchar(50) NOT NULL,
  `my_from` varchar(25) NOT NULL,
  `my_to` varchar(25) NOT NULL,
  `fileupload` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `Institute`, `my_from`, `my_to`, `fileupload`, `date`, `user_id`) VALUES
(12, 'python', 'satyam', '2014', '2015', '27161map.jpg', '2017-07-17 05:25:51', 92),
(13, 'python', 'satyam', '2014', '2015', '31454map.jpg', '2017-07-17 05:25:51', 92),
(14, 'hgbhn', 'hgvb ', '', '', '0', '2017-07-17 05:25:51', 95),
(15, 'trdtd tert', 'yrtd', '2017-06-21', '2017-06-22', '1836047645Tulips.jpg', '2017-07-17 05:25:51', 83),
(17, '9+65232', '9+65232', '0066-06-06', '5656-06-06', '980711789Tulips.jpg', '2017-07-17 05:25:51', 87),
(19, 'asxas', 'asaxass', '2017-07-06', '2017-07-30', '2000337659companylogo.png', '2017-07-17 05:25:51', 90),
(20, 'asdf', 'dgdrgt', '2017-07-10', '2017-07-20', '993824980apssdc.png', '2017-07-19 00:35:47', 117),
(22, 'asdf', 'asdf', '2017-07-19', '2017-07-19', '207764329Lighthouse.jpg', '2017-07-28 04:05:47', 132),
(23, 'asdf', 'asdf', '2017-07-19', '2017-07-19', '684894229Lighthouse.jpg', '2017-07-28 04:05:50', 132),
(24, 'asdf', 'asdf', '2017-07-26', '2017-07-26', '473486328Lighthouse.jpg', '2017-07-28 05:16:10', 135),
(25, 'css grsfs', 'Brainwiz', '2017-07-06', '2017-07-05', '825339453aynampudisubbarao.jpg', '2017-07-29 18:30:00', 81),
(26, 'c', 'satyam', '2017-07-30', '2017-08-16', '329215662emc2brochure.pdf', '2017-08-02 17:04:49', 149),
(27, 'JAVA', 'NARESH', '2017-08-31', '2017-03-31', '', '2017-08-02 17:06:18', 149),
(28, 'GHtml', 'nonseNse', '2017-01-12', '2017-09-01', '1784299245TPachidis_CV_20150810_EN.pdf', '2017-08-02 17:08:34', 149),
(29, 'Css', 'nodont know', '2017-08-06', '2017-12-30', '122480042TPachidis_CV_20150810_EN.pdf', '2017-08-02 17:09:08', 149),
(30, ' eetetytryyu', 'ertrtuytuui', '2017-08-07', '2017-08-09', '1976185590Blackbuck-Company-Profile.pdf', '2017-08-02 18:08:40', 150),
(31, 'fgcgjghjk', 'cfghhvfjghj', '2017-08-14', '2017-08-29', '244979859Penguins.jpg', '2017-08-02 18:20:48', 151),
(32, 'nvbnbmjbnm,nm,', 'bcvbnvbn', '2017-08-16', '2017-08-30', '1879817849Penguins.jpg', '2017-08-02 18:21:38', 151),
(33, 'drfgyuio;oiuy', 'fgjk;lkjhgf', '2017-08-21', '2017-08-15', '511852125Tulips.jpg', '2017-08-02 18:21:56', 151),
(34, 'ty', 'jkgdfh', '2017-07-31', '2017-08-24', '', '2017-08-02 18:44:53', 155),
(36, 'svgbjd', 'gfvdsfcgvgds', '2017-07-30', '2017-09-02', '1648212383website-checklist.pdf', '2017-08-03 17:10:18', 160),
(37, 'fsdvfg dfd', 'f fdg sdfgsd', '2017-07-30', '2017-09-02', '1081384823website-checklist.pdf', '2017-08-03 17:10:53', 160),
(38, 'UFT AUTOMATION TESTING', 'VISSU IT', '2016-06-01', '2016-08-01', '', '2017-08-22 18:06:59', 183),
(39, 'B TECH (Mechanical Engineering)', 'NBKR IST', '1992-07-08', '1998-05-26', '', '2017-08-26 23:27:11', 168),
(40, 'Microsoft Certified Solutions Associate (MCSA)', 'zoom Technologies', '2014-09-08', '2015-03-05', '', '2017-09-14 03:52:56', 219),
(41, 'CCNA, MCSE and Hardware&networking', 'Vision networks Pvt ltd', '2015-01-05', '2015-08-30', '', '2018-02-19 22:25:36', 273),
(42, 'MCA', 'Krupanidhi Degree College', '2011-06-01', '2017-07-01', '1118889965MCA.pdf', '2019-01-25 01:50:43', 344);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `school` varchar(50) NOT NULL,
  `my_from` date NOT NULL,
  `my_to` date NOT NULL,
  `degree` varchar(32) NOT NULL,
  `study_field` varchar(32) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `activities` text NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `school`, `my_from`, `my_to`, `degree`, `study_field`, `grade`, `activities`, `description`, `date`, `user_id`) VALUES
(6, 'vignan', '0000-00-00', '0000-00-00', 'mca', 'MCA', 'A', 'ffd', 'dgdgdgd', '2017-07-17 05:27:32', 92),
(7, 'VSR & JDM ZPH school sdfasd gfdgdxf', '0000-00-00', '0000-00-00', 'ssc', 'ssc', 'a', 'fefefe', 'fefefe', '2017-07-17 05:27:32', 95),
(16, 'vignan unive', '2017-06-04', '2017-06-21', 'mca', 'mca', 'a', 'hdty rtd rdtdtg', 'hdty rtd rdtdtg rdfs', '2017-07-17 05:27:32', 83),
(17, 'Indian School of Business', '2010-06-20', '2011-06-20', 'MBA', 'Strategy and Finance', 'A', 'President, Senior Club.', 'President, Senior Club.', '2017-07-17 05:27:32', 84),
(18, 'Osmania University', '1996-01-01', '1998-01-01', 'M Tech', 'Computer Applications', 'A+', 'Data Structures, Management, Computer Graphics', 'Data Structures, Management, Computer Graphics', '2017-07-17 05:27:32', 84),
(19, 'Srkr', '2013-09-28', '2017-04-17', 'B.tech', 'Information Technology', '7.1', 'Active Player\r\nMember of CSI', 'Active Player\r\nMember of CSI', '2017-07-17 05:27:32', 86),
(20, 'srkr', '2017-06-22', '2017-06-20', 'btech', 'it', '', 'gxchscsklcjlcsjhcy', 'gxchscsklcjlcsjhcy', '2017-07-17 05:27:32', 87),
(22, 'Narayana Jr College ', '2011-06-06', '2013-04-19', 'Intermediate', 'M.P.C', '88.7%', '3D printing\r\nActing\r\nAmateur radio\r\nBaton twirling\r\nBoard games\r\nBook restoration\r\nCabaret\r\nCalligraphy\r\nCandle making\r\nCoffee roasting\r\nColoring\r\nComputer programming\r\nCooking\r\nCosplaying\r\nCouponing\r\nDrama\r\nVolleyball', '3D printing\r\nActing\r\nAmateur radio\r\nBaton twirling\r\nBoard games\r\nBook restoration\r\nCabaret\r\nCalligraphy\r\nCandle making\r\nCoffee roasting\r\nColoring\r\nComputer programming\r\nCooking\r\nCosplaying\r\nCouponing\r\nDrama\r\nVolleyball', '2017-07-17 05:27:32', 86),
(23, 'chaitanya', '2017-06-05', '2017-06-17', 'inter', 'inter', 'a', 'guy ue eurw urhf jsrhfsjk jrshfsk', 'guy ue eurw urhf jsrhfsjk jrshfsk', '2017-07-17 05:27:32', 83),
(24, 'zph school', '2016-01-11', '2017-06-07', '10', '10', 'a', 'tr tyr tyr ytr', 'tr tyr tyr ytr', '2017-07-17 05:27:32', 83),
(25, 'aditya', '2017-06-20', '2017-06-13', 'ddvvnj', 'fdfggh', '6fg', 'gnhjjhkj,kj,', 'gnhjjhkj,kj,', '2017-07-17 05:27:32', 87),
(26, 'csn', '2017-06-21', '2017-06-28', 'dasdsdf', 'asdsdf', 'fsdfs', 'dfdxfgdfg', 'dfdxfgdfg', '2017-07-17 05:27:32', 87),
(29, 'csn', '2017-07-28', '2017-07-18', 'srkr', 'it', '0', 'twgashjkm,sdmddmduwgdd', 'twgashjkm,sdmddmduwgdd', '2017-07-17 05:27:32', 90),
(30, 'srkr dfsde', '2017-07-11', '2017-07-21', 'ger', 'dftsder', 'gsert', 'gtrsdte', 'gtrsdte', '2017-07-17 05:27:32', 82),
(31, 'aludoa', '0000-00-00', '0000-00-00', 'skdhf', 'kldajf', '3543', 'adalksnd', 'adalksnd', '2017-07-17 05:27:32', 110),
(32, 'KL University', '2009-04-15', '2013-04-15', 'B.Tech', 'Mechanical Engineering', '8.22', '1. Achieved B.Tech in Mechanical Engineering with distinction\r\n2. Acted as general secretary for American Society of Mechanical Engineering. A Non-profitable organisation which promotes the art and science of Engineering around the globe.', '1. Achieved B.Tech in Mechanical Engineering with distinction\r\n2. Acted as general secretary for American Society of Mechanical Engineering. A Non-profitable organisation which promotes the art and science of Engineering around the globe.', '2017-07-17 05:27:32', 109),
(33, 'vignan new', '2017-07-04', '2017-07-14', 'gwetres', 'htyhe', 'a', 'u67 yt6y5e e5twe4r', 'u67 yt6y5e e5twe4r', '2017-07-19 00:13:10', 117),
(34, 'Sri Chaitanya College', '2007-04-15', '2009-04-15', 'Board of Internediate', 'M.P.C', '88.8%', 'Board of Intermediate', 'Board of Intermediate', '2017-07-23 16:54:52', 109),
(35, 'Ryan International School', '2006-04-15', '2007-04-15', 'Secondary Education', 'I.C.S.E', 'A', 'NA', 'NA', '2017-07-23 16:56:16', 109),
(37, 'JNTUH College of Engineering, Hyderabad', '2011-08-11', '2015-04-10', 'Bachelors in Technology', 'Electrical and Electronics Engin', '81.78', '1. Placement Coordinator for the Electrical department.\r\n2. Vice-Captain of \'Blazing Karters\', the team representing JNTUHCEH in the Hybrid Go-kart Challenge conducted by \r\n the Imperial Society of Innovative Engineers, Punjab.\r\n3. Member of the Chief organizing committee for \'Pragnya\', the college fest for Electrical department.', 'Participated in various college level activities and a national level competition during graduation.', '2017-07-27 15:48:43', 113),
(42, 'esefsdh', '0000-00-00', '0000-00-00', ',wdshflkhld', 'yeweiiukhadn', 'ajdaf', 'szfflk.haosn,msxc v,mcsyvw9w', 'szfflk.haosn,msxc v,mcsyvw9w', '2017-07-28 02:01:02', 120),
(43, 'ewtlgihkjd', '0000-00-00', '4010-10-02', 'lslghslg', 'kUADYku', 'mamnf', 'Dkjkafkjdf', 'Dkjkafkjdf', '2017-07-28 02:09:42', 124),
(44, 'Skxsjdhgkj', '2420-01-01', '2120-02-01', 'sfzvn.s', 'Dksjfk', 'DEzfd', ',fj.zk.esh.rxf\'', ',fj.zk.esh.rxf\'', '2017-07-28 02:10:39', 124),
(45, 'asdf', '2017-07-06', '2017-07-12', 'asdf', 'asdf', 'asdf', 'asdfas', 'asdfas', '2017-07-28 02:49:37', 125),
(46, 'asdf', '0000-00-00', '0000-00-00', 'asdf', 'asdfasd', 'asdf', 'asdf', 'asdf', '2017-07-28 03:55:59', 130),
(47, 'asdf', '0000-00-00', '0000-00-00', 'asdf', 'asdf', '', 'asdf', 'asdf', '2017-07-28 04:04:41', 132),
(48, 'asdf', '0000-00-00', '0000-00-00', 'asdf', 'asdfasd', '', 'sadf', 'sadf', '2017-07-28 04:06:57', 132),
(49, 'asdf', '2017-07-06', '2017-07-06', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2017-07-28 04:08:33', 133),
(50, 'asdf', '2017-07-19', '2017-07-05', 'asdf', 'asdfasd', 'asdf', 'asdf', 'asdf', '2017-07-28 04:09:59', 134),
(51, 'asdf', '2017-07-05', '2017-06-28', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2017-07-28 04:12:46', 134),
(52, 'asdf', '0000-00-00', '0000-00-00', 'asdf', 'asdf', 'asdf', 'sdfa', 'sdfa', '2017-07-28 04:14:15', 134),
(53, 'asdf', '0000-00-00', '0000-00-00', 'asdf', 'asdfasd', 'asdf', 'asdf', 'asdf', '2017-07-28 04:14:30', 134),
(54, 'asdf', '0000-00-00', '0000-00-00', 'asdf', 'asdfasd', 'asdf', 'asdf', 'asdf', '2017-07-28 04:16:25', 135),
(55, 'asdf', '0000-00-00', '0000-00-00', 'asdf', 'asdf', '', 'asdf', 'asdf', '2017-07-28 04:40:43', 135),
(56, 'asdf', '2017-07-12', '2017-07-11', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2017-07-28 04:41:55', 135),
(57, 'asdf', '2017-07-06', '2017-07-05', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2017-07-28 04:43:22', 135),
(58, 'asdf', '2017-07-14', '2017-07-05', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2017-07-28 04:43:38', 135),
(59, 'asdf', '2017-07-06', '2017-07-04', 'asdf', 'asdfasd', 'asdf', 'asdf', 'asdf', '2017-07-28 04:50:09', 135),
(60, 'asdf', '2017-07-06', '2017-07-12', 'asdf', 'asdfasd', 'asdf', 'asdf', 'asdf', '2017-07-28 05:10:03', 135),
(61, 'asdf', '2017-07-05', '2017-07-12', 'asdf', 'asdfasd', 'asdf', 'asdf', 'asdf', '2017-07-28 05:10:14', 135),
(62, 'asdf', '2017-07-20', '2017-07-26', 'asdf', 'asdfasd', 'asdf', 'asdf', 'asdf', '2017-07-28 05:11:48', 135),
(63, 'aasdf', '0000-00-00', '0000-00-00', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', '2017-07-28 05:12:36', 135),
(64, 'asdf', '2017-07-05', '2017-07-05', 'asdf', 'asdfasd', 'asdf', 'asdf', 'asdf', '2017-07-28 05:15:01', 135),
(65, 'helo  sdfg asdf', '2017-07-12', '2017-07-18', 'asdf asdf asdf', 'asdf', 'asdf ', 'asdf asdf', 'asdf asdf', '2017-07-28 16:19:01', 137),
(66, 'asdf a asdf asdf ', '2017-07-14', '2017-07-26', 'asdf asdf', 'asa as ', 'asdf ', ' asd as f asdf', ' asd as f', '2017-07-28 16:28:56', 137),
(67, 'asdf', '2017-07-13', '2017-07-12', 'asdf', 'asdfasd', 'asdf', 'asdf asdf', 'asdf', '2017-07-28 16:36:00', 137),
(68, 'asdf', '2017-07-14', '2017-07-19', 'asdf', 'asdf', 'asdf', 'asd asdf', 'asd asdf', '2017-07-28 16:37:04', 137),
(69, 'jfyuhrfct', '2017-07-26', '2017-07-29', 'drtgdxtg', 'gtdrtgd ', 'drttg', ' drgftdxgtdrtg', ' drgftdxgtdrtg', '2017-07-28 18:33:16', 136),
(72, 'St Clarets ', '2017-06-26', '2017-07-21', 'Secondary School', 'SSC', '84.83', 'v bfbfbgdf\r\nbf\r\nvdfbvc\r\nvfvvbbdbv \r\nbfsvdg\r\n', 'v bfbfbgdf\r\nbf\r\nvdfbvc\r\nvfvvbbdbv \r\nbfsvdg\r\n', '2017-07-28 18:59:18', 139),
(73, 'xcvbv', '0000-00-00', '0000-00-00', 'dvfbgcnvb', 'xcvbn', 'cv ', 'cvxb ', 'cvxb ', '2017-07-28 18:59:40', 139),
(74, 'dgfhv', '0000-00-00', '0000-00-00', 'cxvbnvbcxb bcxcvb', 'vcxvbnbcx', 'bvccv', 'vczzzxzzxzxcvvzvzvczzxx\r\n', 'vczzzxzzxzxcvvzvzvczzxx\r\n', '2017-07-28 19:00:45', 139),
(75, 'Srkr', '2017-06-26', '2017-07-26', 'Bachelors', 'Informatoin', '7.1', '\r\nasdfhgrertghn\r\nfddfgnhgffsdbv\r\n', '\r\n\r\n\r\n\r\n', '2017-07-28 22:01:05', 142),
(76, 'dghjgg', '0000-00-00', '0000-00-00', 'ghjm,hgfdsfgh', 'dfgh', 'ffdsg', 'bxcvb ', 'bxcvb ', '2017-07-28 22:02:17', 142),
(77, 'ffff esr rfs', '2017-07-10', '2017-07-24', 'fsed', 'dsa ', 'dawe', 'fsdfa a', 'fsdfa a', '2017-07-28 22:08:06', 143),
(78, 'fesde  se sdad', '2017-07-10', '2017-07-31', 'fse fsfr', 'fsefs ', 'srda', 'sdfsfs fgs', 'sdfsfs fgs', '2017-07-28 22:08:27', 143),
(79, 'xcvbgnhgfdc', '0000-00-00', '0000-00-00', 'xcvbvc', 'vbnv c', 'dfgh', 'bfdsfg\r\n', 'bfdsfg\r\n', '2017-07-28 22:21:12', 142),
(80, 'dfsgkhlj;kjhgkfd', '2017-06-27', '2017-07-04', 'xcfghjkl;lkjhgf', 'xczvbfgdf', 'vcxb', 'dfgh.\r\n\r\n', 'dfgh.\r\n\r\n', '2017-07-28 22:24:48', 142),
(81, 'srkr engineering college', '2011-04-08', '2013-04-06', 'btech', 'information technology', 'o', 'activities activities\r\n', 'activities activities\r\n', '2017-07-29 18:27:01', 81),
(84, 'vignan gd fsf ', '2013-05-30', '2016-05-05', 'mca', 'compters', 'a', 'sejf sefjses jesfs senfjes', 'sejf sefjses jesfs senfjes', '2017-08-01 20:19:42', 146),
(85, 'rejiesjf s', '2013-05-05', '2015-05-05', 'cjeh', 'jfenvjd', 'njk j', 'njkhn', 'njkhn', '2017-08-01 20:20:39', 146),
(86, 'ISB', '2009-06-16', '2010-05-03', 'MBA', 'Finance & Strategy', 'a', 'The Indian School of Business (ISB) evolved from the need for a world-class business school in Asia. Established in 2001, the ISB has successfully put India on the global map of management education by pioneering several new trends in research, promoting innovation and training and nurturing young leaders who not only have an understanding of the developing economies but the society at large. \r\n', 'The Indian School of Business (ISB) evolved from the need for a world-class business school in Asia. Established in 2001, the ISB has successfully put India on the global map of management education by pioneering several new trends in research, promoting innovation and training and nurturing young leaders who not only have an understanding of the developing economies but the society at large. \r\n', '2017-08-02 15:36:27', 147),
(87, 'osmania university', '2005-06-14', '2008-06-17', 'degree', 'computers', 'A', 'The Indian School of Business (ISB) evolved from the need for a world-class business school in Asia. Established in 2001, the ISB has successfully put India on the global map of management education by pioneering several new trends in research, promoting innovation and training and nurturing young leaders who not only have an understanding of the developing economies but the society at large. \r\n', 'The Indian School of Business (ISB) evolved from the need for a world-class business school in Asia. Established in 2001, the ISB has successfully put India on the global map of management education by pioneering several new trends in research, promoting innovation and training and nurturing young leaders who not only have an understanding of the developing economies but the society at large. \r\n', '2017-08-02 15:37:33', 147),
(88, 'Srkr', '2013-08-28', '2017-04-18', 'Bachelors', 'Information Technology', 'A', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', '2017-08-02 16:38:50', 149),
(89, 'Srkr', '2013-08-29', '2017-04-17', 'Bachelors', 'Information Technology', '7.1', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', '2017-08-02 16:39:28', 149),
(90, 'Narayana Jr College', '2011-06-06', '2013-05-15', 'Intermediate', 'MPC', '88.7%', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society\r\n', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society\r\n', '2017-08-02 16:40:38', 149),
(91, 'St Clarets E.M. High School', '1999-06-06', '2011-04-14', 'Secondary Education', 'SSC', '84.83', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', '2017-08-02 16:45:24', 149),
(92, 'w4eterwtyth', '2017-08-17', '2017-08-10', 'swdrfregthy', 'infoishefug', 'o xhf', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '2017-08-02 18:14:38', 151),
(94, 'fdrgth', '2017-08-21', '2017-08-09', 'dfhstghryhj', 'ghfghfhjm', 'dfghf', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '2017-08-02 18:15:22', 151),
(95, 'dsfgdfhdfh', '2017-08-07', '2017-08-16', 'fdgdfhgdfg', 'sdggnhgh', 'sdfgs', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '2017-08-02 18:15:44', 151),
(97, 'Dkwjfow', '3210-02-01', '4240-03-21', 'oskjf', 'dfxfg', 'fdsfv', 'sdsf', 'sdsf', '2017-08-02 18:33:14', 152),
(98, 'asdk', '3523-02-01', '4520-02-01', 'lksajd', 'Sxsodij', 'S', 'Dsdklncd asdjcodai', 'Dsdklncd asdjcodai', '2017-08-02 18:35:21', 152),
(99, 'Srkr ', '2013-09-28', '2017-04-18', 'Bachelor\'s', 'Information Technology', '7.1', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', '2017-08-02 18:37:37', 155),
(100, 'Narayana Jr college', '2011-06-06', '2013-05-20', 'Board Of Intermediate', 'Information Technology', '88.7%', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', '2017-08-02 18:38:41', 155),
(101, 'St claret\'s E.M High School', '1999-06-08', '2011-04-11', 'Secondary Education', 'SSC', '84.83', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', '2017-08-02 18:40:05', 155),
(102, 'Srkr', '1020-04-09', '2139-02-02', 'Bachelors', 'Information Technology', '7.1', 'kgj\r\nfmksd\r\ndsangdsnvk;sdnk;ds\r\nds\r\nds;kvnk;d\r\nnv\r\ndsvn\r\nsdvk', 'kgj\r\nfmksd\r\ndsangdsnvk;sdnk;ds\r\nds\r\nds;kvnk;d\r\nnv\r\ndsvn\r\nsdvk', '2017-08-02 19:08:12', 156),
(103, 'gter  ser  tser s', '2017-08-15', '2017-08-17', ' esrts m se  ess', 't rse s rtse esrrrrrrgt', ' esrs', ' tesrmesa es dtye', ' tesrmesa es', '2017-08-02 22:36:05', 157),
(104, 'Srkr', '2013-09-28', '2017-04-18', 'Bachelor\'s', 'Information Technology', '7.1', 'SAjhdskjhgklfdsg\r\ndfsgjlsdjg\r\nfjgsdglfdglfjgsld\r\ngfsdlgjfhglj\r\n', 'social lubricant\r\nn.\r\nany food, beverage, drug or activity that helps people ...\r\nEx: Having an alcohol ...\r\n    \r\nto go cold turkey\r\nexp.\r\n1. to stop using an addictive substance abruptly and co ...\r\n    \r\ndigital footprint\r\nn.\r\nset of data relative to the online activity of one parti ...\r\n[Tech.]\r\n    \r\nice bucket challenge\r\nn.\r\nactivity involving dumping a bucket of ice water on you ...\r\nalso called \"ice water ...\r\n    \r\nrole\r\nn.\r\nthe actions and activities assigned to or required or ...\r\n    \r\nslacktivism\r\nn.\r\nblend of \"slacker\" and \"activism\". Act of participa ...\r\nSigning on-line petitio ...\r\n    \r\ncyber forensics\r\nn.\r\nthe application of scientifically proven metho ...\r\n[Tech.]\r\n    \r\n! Cyber surveillance', '2017-08-03 16:49:47', 160),
(105, 'Narayana Jr College', '2011-06-06', '2013-05-15', 'Board Of Intermediate', 'MPC', '88.7%', 'vncbvx.cbn\r\njbdkxjbvckxjJDK\r\nskdfjbvdkjLHKJDS\r\nLHKJLDfhjsldffjk', 'vncbvx.cbn\r\njbdkxjbvckxjJDK\r\nskdfjbvdkjLHKJDS\r\nLHKJLDfhjsldffjk', '2017-08-03 16:51:51', 160),
(106, 'St Claret\'s E.M High School', '1999-06-06', '2011-04-11', 'Board Of Secondary Education', 'SSC', '84.83', 'ajbdsjBDHBJH\r\nkbsakdbkKHBSA\r\nJNASKCJNASKkhvasdjk\r\nJsjNkjnKjdv', 'ajbdsjBDHBJH\r\nkbsakdbkKHBSA\r\nJNASKCJNASKkhvasdjk\r\nJsjNkjnKjdv', '2017-08-03 16:54:10', 160),
(107, 'xbfgrsdvg', '2027-08-23', '2017-08-08', 'sbdgvrsdgdfsgvsg', 'fvggnfgvf', 'gbxcb', 'dfxbtgvfdsadchfdbcxgvghdgfsgfdsf', 'dfxbtgvfdsadchfdbcxgvghdgfsgfdsf', '2017-08-03 16:54:32', 160),
(109, 'dfsgvsdvrtgf gf dhdghfgdn', '2017-08-01', '2017-08-23', 'sdfgvsdghgf dhgfdh ghb ', 'dfsvgvgdhgs gdhfgg', 'vgshd', 'gsvrytrvtewge', 'gsvrytrvtewge', '2017-08-03 16:55:08', 160),
(110, 'srsaaw', '2017-08-15', '2017-08-25', 'fsees ', 'fer rd wsrdsa', 'g srf', ' grdtg dtgsg dgsd', ' grdtg dtgsg dgsd', '2017-08-03 16:56:49', 161),
(111, 'grd rd', '2017-08-14', '2017-08-16', ' drtgsd ', 'ger ', ' erw', 'gt ertrfetfrws z', 'gt ertrfetfrws z', '2017-08-03 16:57:04', 161),
(112, 'sfd sef serfs res sa', '2017-08-15', '2017-08-23', ' esrfse serfse ', 'fre ewrf se', ' serf', ' serfse sw s', ' serfse sw s', '2017-08-04 16:27:46', 162),
(113, 'Srkr', '2011-06-15', '2017-08-16', 'Bachelors', 'Information Technology', 'A', 'dfj wdijf ', 'dfj wdijf ', '2017-08-04 17:28:51', 163),
(114, 'Ramanandha tirtha engineering college', '2009-06-20', '2013-03-31', 'Btech', 'EEE', 'A', '.', '.', '2017-08-10 17:43:49', 167),
(115, 'ZPPBH SCHOOL/ JAWAHAR BHARATI JUNIOR COLLEGE', '1992-08-10', '1998-05-31', 'NBKR INSTITUTE IF SCIENCE AND TE', 'B TECH', 'MECHA', 'MECHANICAL ENGINEERING', 'MECHANICAL ENGINEERING', '2017-08-10 19:56:41', 168),
(116, 'ST.PETER\'S ENGINEERING COLLEGE', '2007-08-01', '2011-05-01', 'B.TECH', 'ELECTRICAL AND ELECTRONICS ENGIN', 'A', 'Participation in Technical paper presentations, seminars, work shops and organizing in house events.\r\n', 'Participation in Technical paper presentations, seminars, work shops and organizing in house events.\r\n', '2017-08-12 04:52:27', 145),
(117, 'Ideal institute of techonology', '2010-06-15', '2014-07-24', 'B.Tech', 'Electronics & Communication Engi', 'C', 'Conducted \"CLEAN\" Workshop on environment awareness.  \r\nParticipated in all inter and intra - college competitions. ', 'Conducted \"CLEAN\" Workshop on environment awareness.  \r\nParticipated in all inter and intra - college competitions. ', '2017-08-16 18:26:27', 165),
(118, 'sanketika institute of technology and management', '2010-01-10', '2014-05-19', 'BTech', 'Mechanical', 'B(79%', 'Youth parliament winner in debating', 'Youth parliament winner in debating', '2017-08-22 17:58:11', 183),
(119, 'asdfasddf gfhhjhj', '2017-08-16', '2017-08-24', 'asasdasdfdfsasdfasdf', 'hgdcvsahdc', 'a', 'xcfghfgjghjgh', 'xcfghfgjghjgh', '2017-08-28 19:21:51', 188),
(120, 'ghnjghm', '2017-08-01', '2017-08-24', 'hh', 'Finance & Strategy', 'svchj', 'nmn,,.', 'nmn,,.', '2017-08-28 19:22:32', 188),
(121, 'Jerusalem College of Engineering', '0000-00-00', '0000-00-00', 'Master of Computer Applications ', 'Computer Scince', 'First', 'a', 'a', '2017-09-05 22:01:45', 194),
(122, 'Sai Spurthi Institute of Technology', '2010-09-30', '2014-06-13', 'B tech', 'Computer science and engineering', 'First', 'Btech in Computer science and engineering', 'Btech in Computer science and engineering', '2017-09-06 17:28:51', 197),
(123, 'Vishnu Institute of Technology', '2010-10-04', '2014-05-30', 'Bachelor of Technology', 'Computer Science Engineering', 'B', 'I have completed my B.Tech with 75.6 Agg.', 'I have completed my B.Tech with 75.6 Agg.', '2017-09-10 16:44:49', 215),
(124, 'St.Martin\'s Engineering College', '2012-09-07', '2016-05-27', 'BTECH', 'ECE', '74', 'Participated in NCC and \r\nCo ordinated for college FEST', 'Participated in NCC and \r\nCo ordinated for college FEST', '2017-09-11 01:39:42', 200),
(125, 'Malla reddy institute of technology and sciences', '2010-08-09', '2014-05-23', 'Graduation', 'Information Technology', 'A', ' ', ' ', '2017-09-14 03:35:42', 219),
(126, 'Andhra University', '2000-11-01', '2003-10-30', 'Master of Computer Applications', 'Computers', '66%', 'Software programming and management', 'Software programming and management', '2017-10-16 19:56:14', 233),
(127, 'Sri Indu College of Engineering and Technology', '2009-05-22', '2013-07-22', 'Bachelor of Technology', 'Computer Science & Engineering', 'First', 'Passed B.Tech and was placed in First Class with distinction.', 'Passed B.Tech and was placed in First Class with distinction.', '2017-10-21 14:44:49', 232),
(128, 'Godavari Institute of Engineering & Technology', '1998-05-01', '2002-04-30', 'BTech (ECE)', 'Electronics', 'A', 'ECE', 'ECE', '2018-01-26 22:39:19', 264),
(129, 'Cambridge Institute Of Technology', '2014-07-01', '2018-02-16', 'Bachelor of Engineering', 'Electronics And Communication ', 'first', 'workshops,projects and internships attented', 'workshops,projects and internships attented', '2018-02-16 20:34:20', 271),
(130, 'Keshav Memorial Institute of Technology', '2011-08-24', '2015-06-15', 'Bachelor of Technology', 'Electronics and Communication', 'First', '1. An active volunteer and active member of Samskruti foundation striving to hold the culture and traditions of India.\r\n2. As an enthusiastic student, participated in various cultural events and sports like Badminton and various indoor games in college and outside colleges too.\r\n ', '1. An active volunteer and active member of Samskruti foundation striving to hold the culture and traditions of India.\r\n2. As an enthusiastic student, participated in various cultural events and sports like Badminton and various indoor games in college and outside colleges too.\r\n ', '2018-02-17 00:14:34', 272),
(131, 'JNTUK', '2011-05-08', '2015-05-04', 'B.Tech', 'Electronics and communication En', 'A', 'I\'m interested in Network and infrastructure', 'I\'m interested in Network and infrastructure', '2018-02-19 22:21:16', 273),
(132, 'Malla Reddy institute of Technology', '2011-08-01', '2015-05-30', 'B.Tech CSE', 'Computer Science', 'B', 'Self employed, Interested in own Buusiness.', 'Self employed, Interested in own Buusiness.', '2018-03-04 04:24:42', 280),
(133, 'Jain College', '2002-01-01', '2005-04-01', 'B.com', 'commerce', '58', '.', '.', '2018-03-11 05:35:15', 285),
(134, 'TRIDENT ACADEMY OF TECHNOLOGY', '2011-09-15', '2015-05-22', 'B.TECH (COMPUTER SCIENCE)', 'COMPUTER SCIENCE', 'A', 'I WAS THE CAPTAIN OF THE FOOTBALL TEAM', 'I WAS THE CAPTAIN OF THE FOOTBALL TEAM', '2018-03-12 20:55:41', 287),
(135, 'vignan', '2013-06-06', '2016-11-09', 'MCA', 'Computer', 'dfv', 'szc', 'szc', '2018-05-18 16:04:59', 302),
(136, 'Pragati maha vidyalaya', '2007-06-01', '2010-03-31', 'B.Com', 'Commerce', '1000', 'Accounting,costing and taxation', 'Accounting,costing and taxation', '2018-06-14 17:35:04', 304),
(137, 'Sai Vidya Institute of Technology, BANGALORE', '2014-08-05', '2018-06-13', 'Bachelor of engineering', 'Electronics and communication', '65% a', 'Actively participated in Intra-college fest. ', 'Actively participated in Intra-college fest. ', '2018-06-21 16:27:05', 305),
(138, 'SRM Polytechnic college', '2002-06-15', '2005-06-20', 'SRM University', 'ECE', '65%', 'No', 'No', '2018-06-27 18:05:11', 307),
(139, 'Venkataramana PU college', '2014-01-01', '2018-06-01', 'Atria Institute of Technology', 'Computer Science', '75', 'good communication skill', 'good communication skill', '2018-07-18 17:54:27', 309),
(140, 'Sahyadri College of Engineering and Management', '2016-08-15', '2018-08-30', 'M.Tech.', 'VLSI Design, RTL Design', '8.10', 'Published a paper on 8 bit ALU using reversible logic and literature survey on MSEA algorithm. Currently working on Masters Thesis which is on low power arithmetic operations.', 'Published a paper on 8 bit ALU using reversible logic and literature survey on MSEA algorithm. Currently working on Masters Thesis which is on low power arithmetic operations.', '2018-08-02 01:21:36', 311),
(141, 'Srinivas School of Engineering', '2011-09-15', '2015-07-30', 'B.E', 'E&C', '72.87', 'Mini project-Obstacle avoider\r\n                   Smart Street Light\r\nMain project-Embedded automation solutions for pharmacy', 'Mini project-Obstacle avoider\r\n                   Smart Street Light\r\nMain project-Embedded automation solutions for pharmacy', '2018-08-02 01:29:48', 311),
(142, 'The Oxford College of Engineering Bangalore', '2016-08-17', '2017-09-05', 'MCA', 'Computer Science', '77%', 'Organized treasure hunt event in college fest.', 'Organized treasure hunt event in college fest.', '2018-08-05 02:41:51', 314),
(143, 'Bhandarkars Arts and Science College Kundapur', '2012-06-19', '2015-03-20', 'BCA', 'Computer Science', '78%', 'Chat server Project.', 'Chat server Project.', '2018-08-05 02:44:22', 314),
(144, 'Sikkim Eastern Institute for Integrated Learning i', '2010-09-21', '2013-02-08', 'Bachelor of Business Administrat', 'Human Resource', 'A', 'Human Resource Management', 'Human Resource Management', '2018-08-08 14:57:23', 315),
(145, 'Ubdtc', '2011-07-01', '2014-07-01', 'BE', 'Computer science and engineering', '70.06', 'Playing cricket', 'Playing cricket', '2018-08-22 14:21:09', 316),
(146, 'Mptb engineer college ', '2013-09-09', '2018-09-05', 'Btech ', 'Ece', 'First', 'Engineer ', 'Engineer ', '2018-09-05 18:10:40', 323),
(147, 't john institute of technology', '2009-04-06', '2013-03-06', 'BE ', 'COMPUTER SCIENCE', '65', 'SEO PROJECTS', 'SEO PROJECTS', '2018-09-17 01:41:22', 325),
(148, 'New Horizon College of Engg Bangalore', '2007-09-17', '2011-06-12', 'BE in Information Science', 'Information Science', 'First', 'Having 3+ Year Experience in Software Testing ', 'Having 3+ Year Experience in Software Testing ', '2018-09-22 22:29:07', 328),
(149, 'Gopalan college of engineering and management', '2014-08-01', '2018-06-30', 'Bachelor of engineering', 'Electronics and communication En', '70', 'Participated in two days workshop on line following Robot\r\nparticipated in a three days workshop on ARM7 microcontroller\r\nWon price in international talent examination', 'Participated in two days workshop on line following Robot\r\nparticipated in a three days workshop on ARM7 microcontroller\r\nWon price in international talent examination', '2018-09-27 20:46:06', 331),
(150, 'BGS Pu college Kolar', '2013-06-03', '2014-03-31', '12th', 'PCMB', '79', 'No', 'No', '2018-09-27 20:49:28', 331),
(151, 'Methodist Girls High School Kolar', '2011-06-01', '2012-03-31', '10th', 'SSLC', '71', 'No', 'No', '2018-09-27 20:52:02', 331),
(152, 'M.V.R College of Engg & Tech', '2011-07-01', '2015-04-30', 'B.Tech', 'Electronics and Telecommunicatio', 'B', 'Electronics and Telecommunications', 'Electronics and Telecommunications', '2018-10-05 23:39:21', 333),
(153, 'JNTU Anantapur', '2009-09-01', '2013-05-02', 'Bachelor of Technology', 'Computer Science and Engineering', 'First', 'Studied Computer science Engineering from Srinivasa Institute of Technology and science Affiliated to JNTU Anantapur', 'Studied Computer science Engineering from Srinivasa Institute of Technology and science Affiliated to JNTU Anantapur', '2018-11-02 16:21:28', 337),
(154, 'University Sikkim', '1995-10-07', '1997-10-04', 'Bachelor of Commerce (Computers)', 'Computers and Commerce ', 'First', 'Attended NCC program.', 'Attended NCC program.', '2018-12-05 16:41:02', 339),
(155, 'Rajasthan Vidyapeeth University ', '2004-04-05', '2006-10-07', 'MSC', 'Computers and Networking', 'First', 'NA', 'NA', '2018-12-05 16:51:39', 339),
(156, 'Krupanidhi Degree College', '2011-07-01', '2017-06-01', 'MCA', 'Computer Science', 'First', 'I was in the list of top 10 students of my batch', 'I was in the list of top 10 students of my batch', '2019-01-25 01:21:10', 344),
(157, 'Don Bosco Institute of Technology and Science', '2008-09-03', '2013-06-07', 'B.Tech', 'Electronics and Communication En', '77', 'Learning', 'Learning', '2019-01-31 06:37:21', 345),
(158, 'Graduation from Amrita Vishwa Vidyapeetham, Coimba', '2013-06-01', '2017-06-01', 'B.Tech', 'Instrumentation', 'First', 'Was Cultural Representative for the college Fest.', 'Was Cultural Representative for the college Fest.', '2019-02-04 03:10:17', 347),
(159, 'B.Tech', '2008-04-01', '2012-05-28', 'Yes', 'Information Technology', '68%', 'Student', 'Student', '2019-03-14 18:45:10', 349),
(160, 'GITAM University', '2014-06-20', '2016-05-05', 'M.Tech', 'Industrial Engineering and Manag', 'First', 'Project on Small and Medium Scale Businesses ', 'Project on Small and Medium Scale Businesses ', '2019-04-12 00:33:05', 354),
(161, 'AMC', '2009-06-01', '2013-01-05', 'BE', 'Electronics and communication', 'Secon', 'After my Diploma in E&C i completed my BE', 'I have completed my BE in E&C ', '2019-04-15 13:52:43', 358),
(162, 'SVIT', '2006-01-06', '2009-05-02', 'Diplom', 'Electronics and Communication', 'First', 'I got 74.86% in Diploma', 'I got 74.86% in Diploma', '2019-04-15 14:00:31', 358),
(163, 'SIET', '2010-07-01', '2014-07-15', 'BE Mechanical', 'Mechanical ', '74', 'We attended trainings\r\n', 'We attended trainings\r\n', '2019-05-07 00:04:22', 360),
(164, 'sri indu college of engineering and technology', '2013-06-15', '2017-07-17', 'btech mechanical', 'mechanical', 'A', ' Btech mechanical', ' Btech mechanical', '2019-06-18 19:00:40', 361);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(32) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `title` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL,
  `my_from` varchar(32) NOT NULL,
  `my_to` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `currently` tinyint(1) NOT NULL,
  `user_id` int(32) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `exp` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `company_name`, `title`, `location`, `my_from`, `my_to`, `description`, `currently`, `user_id`, `date`, `exp`) VALUES
(9, 'blackbucks', 'webdeveloper', 'hyderbad', '2016', '2017', 'fdsfdsfsdfsdffff ffffffffff ffffffffffffff ffffffffff eio wasd dddddd fjsd  fjdsks fjsdkfh sdkjf sdkjfhs dkjfs dkjfh sdkjh fsdkjfhs dkjfhsdkj fhsdk jfhsdk jfhsddd ddddd ddddd ddd ddfffff 	fjsd kfjdsk sfjsdkfh sdkjfsdk jfhsdkjfsd kjfhsdkjhf sdkjf  hsdk jfhsd kjfhsd kjfhsd kjfhsd ddddd ddddd dddd dddfffff\r\nfjsdkfjdsk sfjsdkf hsdkjfs dkjfhsd kjfsdkjfh sdkjhfs dkjfhsd kjfh sdk fhs dkjf hsdkjfh sddddd dddddd ddd ddd dfffff fjsdkfj dsk sfj sdkfhs dkjfsd kjfhsd kjfsdkj fhsdkj hfsdkj fhsdkj fhsdkj fhsdkj fhsdkj fhs ddd ddddd ddddd ddddd dffff', 0, 92, '2017-07-17 05:29:03', ''),
(10, 'tackyroot', 'intern', 'hyderabad', 'Mon Dec 28 2015', 'Sun May 15 2016', 'yttttttttttttttttttttttttttttttttttttttttttttttfgvvvvvvvvvvvvvvvvvvvvvvuyjjjjjjjjjjjjjjjjjjjgfvb bvn ', 0, 92, '2017-07-17 05:29:03', ''),
(22, 'Black Bucks', 'Associate Software Engineer', 'Bhimavaram', '2017-04-01', '2018-04-13', 'Anthropomorphism\r\nClichÃ©\r\nDiction\r\nGrammatical modifier\r\nGrammatical voice\r\nMetaphors', 0, 86, '2017-07-17 05:29:03', ''),
(38, 'Cognizant Technology Solutions', 'Associate', 'Hyderabad', '2014-04-15', '2017-07-17', 'Work experience of 3.4 years in Cognizant - Banking and finance domain', 0, 109, '2017-07-17 16:35:17', ''),
(39, 'THE BLACK BUCKS', 'ss', 'hyde', '2017-07-02', '2017-07-22', 'hrtdt', 0, 117, '2017-07-19 00:18:24', ''),
(43, 'Zkjaddfhkjd', 'JDJhdijf', 'SJfsoh', '2017-02-01', '10420-03-31', 'adlakdfjalklf\'s', 0, 120, '2017-07-28 01:55:51', ''),
(44, 'SXlakgzmdvgs,', 'xf,f.gm.dc', '.ldzerjgd', '1225-02-01', '3502-02-01', 'sfhjest;.x', 0, 124, '2017-07-28 02:11:06', ''),
(45, 'asdf', 'asdf', 'asdf', '2017-07-06', '2017-07-04', 'asdf', 0, 125, '2017-07-28 02:49:49', ''),
(46, 'asdf', 'asdf as dfasdf', 'asdf', '2017-07-19', '2017-07-25', 'asdf', 0, 130, '2017-07-28 04:01:00', ''),
(47, 'asfa', 'asdfasdf', 'asdf', '2017-07-12', '2017-07-03', 'asdf', 0, 132, '2017-07-28 04:04:53', ''),
(48, 'asdf', 'asdf', 'asdf', '2017-07-06', '2017-07-05', 'asdf', 0, 135, '2017-07-28 04:46:39', ''),
(49, 'asdf', 'asdfasdf', 'asdf', '2017-07-05', '2017-07-05', 'asdf', 0, 135, '2017-07-28 04:47:29', ''),
(50, 'asdf', 'asdfasdf', 'asdf', '2017-07-06', '2017-07-11', 'asdf', 0, 135, '2017-07-28 04:49:51', ''),
(51, 'asdf', 'asdf', 'asdf', '2017-07-05', '2017-07-05', 'asdf', 0, 135, '2017-07-28 05:15:16', ''),
(52, 'asdf', 'asdf ', 'asdf', '2017-07-13', '2017-07-11', 'asdf', 0, 137, '2017-07-28 16:19:18', ''),
(53, 'asd asdf ', 'a sdf ', 'asd asd f asdf', '2017-07-13', '2017-07-26', ' asdf a asdf', 0, 137, '2017-07-28 16:29:21', ''),
(54, 'asdf', 'asdf ', 'daf asdf', '2017-07-06', '2017-07-12', ' asdf asdf ', 0, 137, '2017-07-28 16:30:21', ''),
(55, 'asdf', 'asdf ', 'asdf', '2017-07-13', '2017-07-12', 'asdf', 0, 137, '2017-07-28 16:37:17', ''),
(56, 'grd drfg', 'gtdr dr', 'gdr dr', '2017-07-10', '2017-07-30', 'gd rdtfg', 0, 136, '2017-07-28 18:33:34', ''),
(57, ' se wsd', 'f awda', ' sedsz', '2017-07-17', '2017-07-31', ' sedsa', 0, 143, '2017-07-28 22:09:03', ''),
(61, 'cvbnmnbv', 'cbnm,hghnfgf', 'cvbn', '2017-06-26', '2017-07-05', 'fsdgfngvbv\r\n', 0, 142, '2017-07-28 22:23:38', ''),
(62, 'vxbcncv', 'dfdsghgfdf', 'gdhfdfdg', '2017-06-27', '2017-07-19', 'cvc bcvsvfdbdfbv', 0, 142, '2017-07-28 22:23:54', ''),
(63, 'blackbuck', 'web development', 'bhimavaram', '2016-06-14', '2017-07-31', 'web development\r\n', 0, 81, '2017-07-29 18:28:09', ''),
(64, 'Tata Consultancy Services Ltd ', 'Assistant Systems Engineer	', 'Hyderabad', '2016-01-01', '2017-07-29', 'Working in the EDM (Enterprise Data Management) project as a developer, responsible for all the functionalities in EDW (Enterprise Data Warehouse) and the data synchronisation from MDMS (Master Data Management System) to EDW.', 0, 113, '2017-07-29 19:09:52', ''),
(65, 'gsefs fsd s', 'gsevdfs', 'kjiu h', '2013-05-05', '2015-05-05', 'jhj jhjk', 0, 146, '2017-08-01 20:21:24', ''),
(66, 'gs ss ', 'gs gs', 'grdf s', '2013-05-05', '2016-05-05', 'bdfdfg d', 0, 146, '2017-08-01 20:21:47', ''),
(67, 'blackbucks pvt.ltd', 'founder, managing director & ceo', 'hyderabad', '2013-05-13', '2017-08-02', 'Blackbuck Engineers focuses on cutting edge and latest technologies for research and development. \r\nFocused on incubation and innovation centers, we bid projects in the industry and get the projects developed and implemented from our incubation centers in Engineering Colleges and Universities.', 0, 147, '2017-08-02 15:39:41', ''),
(68, 'Zinka.me', 'director,', 'hyderabad', '2016-05-10', '2017-08-02', 'Student Industry Rendezvous. Connecting college to corporate. Your bit of nation building. Are you part of it yet?\r\n\r\nZinka is a disruptive internet platform that connects students to Industry and experienced professionals. We are currently conducting ZInka LIVE sessions which have become extremely popular among students and professionals.\r\n\r\nWe aim to be no.1 network for engineering students and mentors - the largest network in India for engineering students connecting lakhs of them to the experienced leaders and corporate.', 0, 147, '2017-08-02 15:40:48', ''),
(69, 'Black Bucks', 'Associate Engineer', 'Bhimavaram', '2017-03-20', '2017-09-30', 'Zinka is a connecting platform. The main aim is connecting Colleges to corparates through mentoring.', 0, 149, '2017-08-02 16:50:55', ''),
(70, 'afgsh', 'dfgsdgthsgth', 'asdsdfgdgh', '2017-08-16', '2017-08-13', 'ASDfghnhfgWe love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', 0, 151, '2017-08-02 18:16:16', ''),
(71, ' qwrbtyu kil34 v6uk', 'sdfgdhfgjh', 'sdfgfgjnhfj', '2017-08-29', '2017-08-23', 'SDfdhgh', 0, 151, '2017-08-02 18:16:30', ''),
(72, 'sdfdghhfj', 'dfgxfghfj', 'dsffgfjjmjmjh', '2017-08-15', '2017-08-23', 'sdfdghhfj', 0, 151, '2017-08-02 18:16:42', ''),
(73, 'qwhidd', 'dfj', 'fgfjsfoiefjg', '101023-10-01', '1021-02-21', 'lsdjdvvgfso;jger', 0, 152, '2017-08-02 18:39:40', ''),
(74, 'Black Bucks', 'Associate Engineer', 'Bhimavaram', '2017-03-08', '2017-09-30', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', 0, 155, '2017-08-02 18:40:50', ''),
(75, 'Black Bucks', 'Trainee', 'Bhimavaram', '2017-07-30', '2017-09-02', 'jfwjl;fdsgfdsgrestdg\r\nskjvklf\r\nvfsjv\'dfv\r\nsf\'jvk\r\n', 0, 156, '2017-08-02 20:03:06', ''),
(76, 'tr 4sef', ' esrsxrf', 'tre 4rft ', '2017-08-07', '2017-08-22', ' erfs dfgdrt', 0, 157, '2017-08-02 22:36:57', ''),
(77, 'Black Bucks', 'Associate Engineer', 'Bhimavaram', '2017-03-06', '2017-09-30', 'fga has h\r\n sduhgdfkg] oldsfhg fdjg\r\ns hghk', 0, 160, '2017-08-03 16:57:19', ''),
(79, 'fgdsvvggfdh gh ghdghgdhgdh', 'fsgvrvgfg dsfg dhgdh gfh  ', 'fgvsfvd', '2017-08-03', '2017-08-09', 'sfg dfs gdg h', 0, 160, '2017-08-03 16:58:01', ''),
(80, 'Virtusa consulting service pvt ltd ', 'Engineer', 'Hyderabad', '2015-03-28', '2017-08-10', '.', 0, 167, '2017-08-10 17:44:58', ''),
(81, 'VIRTUSA CONSULTING SERVICES PVT LTD', 'SR. CONSULTANT', 'HYDERABAD', '2015-07-29', '2017-08-31', 'Working in QUALITY department as a process consultant.', 0, 168, '2017-08-10 20:00:26', ''),
(82, 'IBM INDIA PVT LTD', 'LEAD WORKLOAD MANAGER', 'HYDERABAD', '2013-03-16', '2011-08-10', 'â€¢	Shift Scheduling and work distribution within team of 6 Workload managers.\r\nâ€¢	Responsible for service level and productivity target attainments.\r\nâ€¢	Responsible for categorization and assignment of tasks based on the resource skillset.\r\nâ€¢	Organize / Lead cross tower huddle and publishing the minutes of meeting.\r\nâ€¢	Maintain / Update visual boards /KANBAN boards.\r\nâ€¢	Work with operations team closely to predict the incoming volumes based on the activities planned and ensure the required amount of resource are scheduled.\r\nâ€¢	Maintain backlog and MTTR in threshold limits.\r\nâ€¢	Regular follow up with associates on potential SLA breach tickets and ensure closure within SLA. \r\nâ€¢	Change coordination for all the changes scheduled.\r\nâ€¢	Incident management / coordination for high priority tickets.\r\nâ€¢	Work with technical teams and management on continuous improvement by implementing defect prevention plans, KAIZEN techniques.\r\nâ€¢	Analyzing data using IBM WATSON â€“ Data trends, Heat maps, Major contributors.\r\nâ€¢	On-boarding and Off boarding of employees on account level', 0, 145, '2017-08-12 04:53:51', ''),
(83, 'Virtusa Consulting Services Private Limited', 'Engineer', 'Hyderabad', '2015-07-08', '2017-08-16', 'Working as QA engineer specialized in automation using UFT and selenium Web driver', 0, 165, '2017-08-16 18:12:30', ''),
(84, 'cognizant technology solutions', 'programmer analyst', 'hyderabad', '2015-04-10', '2017-08-22', 'Am involved in end to end testing of products related to banking industry', 0, 183, '2017-08-22 17:59:40', ''),
(85, 'Virtusa', 'Lead Consultant', 'Hyderabad', '2017-06-01', 'till date', 'a', 0, 194, '2017-09-05 22:02:43', ''),
(86, 'Peerless IT solution pvt ltd', 'BI Operational Analyst ', 'Hyderabad', '2015-06-29', '2017-05-31', 'a', 0, 194, '2017-09-05 22:03:42', ''),
(87, 'HCL Technologies', 'Senior Software Engineer', 'Chennai', '2013-09-02', '2015-06-26', 'a', 0, 194, '2017-09-05 22:04:40', ''),
(88, 'Syntel Limited', 'Senior Software Engineer', 'Pune', '2010-03-23', '2013-03-29', 'a', 0, 194, '2017-09-05 22:05:36', ''),
(89, 'virtusa', 'Seniour  software Engineer ', 'Hyderabad', '2017-08-16', 'till date', 'working  as tier 3 employee ', 0, 197, '2017-09-06 17:30:34', ''),
(90, 'Virtusa Consulting Services', 'Designation: Engineer', 'HYDERABAD', '2014-12-15', '2017-09-10', 'Currently I\'m working as Component Designer. To understand Stakeholder requirements and to provide clients the best performance.', 0, 215, '2017-09-10 16:47:39', ''),
(91, 'Global Logic Technologies for GOOGLE', 'Associate Analyst', 'Hyderabad', '2016-06-27', '2017-07-28', 'As an analyst I work is to remove spam signals according to the google policies', 0, 200, '2017-09-11 01:48:34', ''),
(92, 'IBM India Pvt Ltd', 'Associate Technical Operations', 'Hyderabad', '2015-05-23', '2017-09-13', ' ', 0, 219, '2017-09-14 03:38:23', ''),
(93, 'INFOSYS LIMITED', 'Project Manager', 'Hyderabad', '2005-10-10', '2017-10-16', 'Gachoibowli', 0, 233, '2017-10-16 19:56:55', ''),
(94, 'Infosys Limited', 'Senior Systems Engineer', 'Hyderabad', '2014-02-03', '2017-10-21', 'Working as Senior Systems Engineer from 3rd Feb 2014 to till date.', 0, 232, '2017-10-21 14:39:00', ''),
(95, 'Electronic Arts', 'Project Lead', 'Hyderabad', '2016-07-01', '2017-12-06', 'Starting out as QA Tester,Have developed professionally to Project Lead within a span of 6.5 years', 0, 261, '2017-12-07 04:47:51', ''),
(96, 'HCL', 'Group Operations Manager', 'Hyderabad', '2013-03-23', '2018-01-26', 'I am a Release Manager and have 15+ years of experience in IT field', 0, 264, '2018-01-26 22:41:46', ''),
(97, 'Zen Technologies', 'R&D Electronics Engineer', 'Hyderabad', '2015-01-12', '2017-10-06', 'An R&D professional worked for developing defence simulators for various training purposes in Indian army. ', 0, 272, '2018-02-17 00:18:07', ''),
(98, 'SMSCountry Networks Pvt Ltd', 'Network and System Administrator', 'Hyderabad', '2016-05-05', '2018-02-19', 'Looking after all the network related issues and maintaining all the servers.\r\n\r\nEnd to end network and server infrastructure.', 0, 273, '2018-02-19 22:23:45', ''),
(99, 'Netapp India Pvt Ltd', 'Sales Ops Program Manager 3', 'Bangalore', '2012-08-10', '2018-03-10', 'ï‚§	Looking after process Implementation initiatives through system changes, process re-alignment/ redefining, process migration.\r\nï‚§	Creating & implementing workflows to facilitate structured support in all areas and issues.\r\n', 0, 285, '2018-03-11 05:40:06', ''),
(100, 'BRILLIO TECHNOLOGIES', 'DATA ANALYST', 'BANGALORE', '2016-09-26', '2017-12-22', 'HANDLING PG&E DATA AND CREATING REPORTS', 0, 287, '2018-03-12 20:56:42', ''),
(101, 'blackbucks', 'webdesigner', 'hyderabad', '2016-07-15', '2018-05-02', 'ssefdcascas', 0, 302, '2018-05-18 16:05:55', ''),
(102, 'Genpact', 'Process Associate', 'Hyderabad', '2015-12-30', '2017-02-24', 'Purely into finance', 0, 304, '2018-06-14 17:29:14', ''),
(103, 'Team lease', 'Sr.Associate', 'Hyderabad', '2017-02-27', '2018-06-14', 'Working for DuPont on Contract.', 0, 304, '2018-06-14 17:32:01', ''),
(104, 'IFF india pvt ltd', 'System Engineer', 'Chennai', '2015-05-19', '2017-04-28', 'Active directory support', 0, 307, '2018-06-27 18:03:57', ''),
(105, 'no', 'no', 'no', '2018-01-01', '2018-07-01', 'no', 0, 309, '2018-07-18 18:03:52', ''),
(106, 'Envoy Mortgage Pvt Ltd', 'Process Associate', 'Mangalore', '2016-03-08', '2016-12-31', 'Auditing Insurance documents, Contacting Agencies and Branch (US) for appropriate documents.', 0, 311, '2018-08-02 01:31:27', ''),
(107, 'Hewlett Packard', 'Quality Domain Expert', 'Bangalore', '2017-10-19', '2018-08-08', 'ïƒ„	Preparing Business Summary Reports and presentations as per the external / internal higher management requirement.\r\nïƒ„	Organize to present Weekly & Monthly Calls to review Business Summary reports.\r\nïƒ„	Analysis/audit of service incident data, emails, voice clips, and customer surveys to identify areas of service delivery that did not meet pre-established performance standards within the Strategic Center.\r\nïƒ„	Assisting with any other aspects of Managed Services as and when required.\r\nïƒ„	Enter and closely monitor the tasks using appropriate tools.', 0, 315, '2018-08-08 14:58:29', ''),
(108, 'Techmust Software Pvt LTD', 'Software Engineer', 'Bengalure', '2015-08-18', '2018-08-22', 'Working on server side programming java spring hibernate jpa', 0, 316, '2018-08-22 14:22:13', ''),
(109, 'Capgemini', 'Associate consultant ', 'Bangalore ', '2016-08-04', '2018-09-05', 'Mainframes developer ', 0, 323, '2018-09-05 18:11:54', ''),
(110, 'Syntel ', 'Software engineer ', 'Chennai ', '2014-03-31', '2016-06-01', 'Mainframes developer ', 0, 323, '2018-09-05 18:13:42', ''),
(111, 'CGILLUSIONS INNOVATION PVT LTD', 'SEO ANALYST', 'BANGALORE', '2014-06-02', '2018-08-31', 'â€¢	Develop SEO strategies, and implement and monitor campaigns\r\nâ€¢	Perform site analysis, keyword research and mapping, and assess link building opportunities\r\nâ€¢	Perform competitor SEO research\r\nâ€¢	Based on analysis, results and client feedback, continually improve to optimize effectiveness\r\nâ€¢	Prepare analytics and ranking reports and present to clients and management\r\nâ€¢	Keep up-to-date with changing technological and search engine trends, algorithms and ranking factors\r\nâ€¢	Specialized in Keyword research and analysis, On Page SEO - includes Meta creation, web site navigation changes, removing coding bugs to make a search engine friendly web page\r\nâ€¢	Having knowledge in Web Designing using HTML ,WordPress\r\nâ€¢	Specialized in web traffic analysis using tools like Google Analytics\r\nâ€¢	Proficient in Off Page Seo- Article, Press Release and Directory search and submissions\r\nâ€¢	Having knowledge in pay per click (PPC)\r\nâ€¢	Demonstrated ability to learn new technologies\r\n', 0, 325, '2018-09-17 01:45:13', ''),
(112, 'Numiclix Technologies', 'Software Test Engg', 'Bangalore, IND', '2010-03-09', '2018-09-22', 'Working as a Software Test engg ', 0, 328, '2018-09-22 22:31:56', ''),
(113, 'PIN CLICK', 'Manager (HR & MIS)', 'Bangalore', '2018-07-24', '2018-09-21', 'HR, MIS, Admin.', 0, 332, '2018-09-27 21:41:50', ''),
(114, 'JK Paper Ltd', 'Asst. Officer (P & A)', 'Rayagada, Odisha', '2012-09-17', '2016-08-24', 'HR, MIS, Admin.', 0, 332, '2018-09-27 21:42:42', ''),
(115, 'StarNel IT Consulting & Engineering', 'Asst. Manager (HR)', 'Bangalore', '2016-08-30', '2018-07-20', 'HR, MIS, Admin.', 0, 332, '2018-09-27 21:44:01', ''),
(116, 'Fresher', 'Fresher', 'Bangalore', '2018-09-27', '2018-09-27', 'Fresher', 0, 331, '2018-09-27 22:20:17', ''),
(117, 'Cpagemini India Pvt Ltd', 'Associate Consultant', 'Hyderabad', '2016-05-05', '2018-10-12', 'Working as a xPression Developer ', 0, 333, '2018-10-05 23:40:57', ''),
(118, 'IBM , Pace solutions', 'Talent Acquisition Specialist', 'hyderabad secunderabad', '2015-12-14', '2018-12-23', 'Working As a TAG with Pace solutions , previously worked with IBM , Looking for job In technology , want to establish my career in IT Suggest me on Technologies.', 0, 337, '2018-11-02 16:26:08', ''),
(119, 'HSBC', 'Sr.System Administrator', 'Hyderabad', '2010-05-20', '2018-12-05', 'I am working with HSBC from 2010 and still working with this company as a Sr.system administrator.', 0, 339, '2018-12-05 16:42:54', ''),
(120, 'IBM', 'Software Engineer', 'Bangalore', '2018-05-23', '2019-01-31', 'I have working in IBM as a  Software Developer', 0, 344, '2019-01-25 01:37:02', ''),
(121, 'TerraInformation Group', 'Resource Manager', 'Guntur', '2014-01-02', '2019-01-30', 'Work from home', 0, 345, '2019-01-31 06:39:13', ''),
(122, 'DXC Technologies', 'Senior Test Engineer', 'Bangalore', '2018-08-08', '2019-03-14', 'Overall experience is 4 yrs and Currently working in dxc technologies as a senior QA Engineer and involved in ADA Testing,Functional,Regression using automation scripts by selenium on mobile applications(both android and ios)', 0, 349, '2019-03-14 18:22:32', ''),
(123, 'Mahindra comviva', 'Quality Assurence Engineer', 'Bangalore', '2017-11-01', '2018-08-01', 'Involved in creation of frame work from the scratch which can be useful for both android and ios and by using page object model and also involved in functional testing and regression as well.', 0, 349, '2019-03-14 18:29:50', ''),
(124, 'Capgemini Consulting', 'Test Engineer', 'Bangalore', '2016-03-01', '2017-11-30', 'Involved in automation testing for both mobile and web application as well.', 0, 349, '2019-03-14 18:32:16', ''),
(125, 'Mscripts system Pvt Ltd', 'Test Engineer', 'Bangalore', '2015-02-10', '2016-02-29', 'Involved in Functional testing and creating test cases and executing using testing methodologies and involved in retrospectives ', 0, 349, '2019-03-14 18:34:43', ''),
(126, 'Tata Consultancy Services', 'System Engineer', 'Mumbai', '2017-02-02', '2019-04-11', 'Worked on cloud computing project for Small and Medium Scale businesses', 0, 354, '2019-04-12 00:34:37', ''),
(127, 'ORACLE', 'X86 Engineer', 'Bangalore', '2017-03-06', '2019-04-15', 'ïƒ˜	Ability to work with hand tools, and basic knowledge of Exadata servers.\r\nïƒ˜	Work with senior engineers to develop and document test plans\r\nïƒ˜	Providing service information to the field, service providers, and customers\r\nïƒ˜	Responds quickly to customer requests for escalations by contacting the DM.\r\nïƒ˜	Technical Analyst 2-Support on Exadata servers.\r\nïƒ˜	Uses Service Request quality guidelines when placing entries in SRs\r\nïƒ˜	Analyzing the logs and checking the issue on the server.\r\nïƒ˜	Taking Web-Ex of the customer server and checking the issue and troubleshooting the issue.\r\nïƒ˜	Handled more than 2000 servers and trained on Exadata servers\r\nïƒ˜	Troubleshooting the Oracle Linux server basic issue.\r\nïƒ˜	Week end handling CTC work and checking all the team updates and mentoring the team\r\nïƒ˜	Troubleshooting hardware related issue and checking server health status\r\nïƒ˜	Installation, troubleshooting and changing the Boot process in Linux Systems.\r\nïƒ˜	Taking Remote control access through jump gate and checking the server health status\r\nïƒ˜	Instructing Field Engineers with crisp and accurate action plans to install/diagnose server hardware failures.\r\nïƒ˜	Closely work with development teams to enhance the quality of existing X86products.\r\nïƒ˜	Interact with customers and resolve technical issues.\r\nïƒ˜	Follow up with customers to ensure their systems are fully functional after troubleshooting.\r\nïƒ˜	Handling Linux Based Networking, Web server, Ftp server, Dns server, Samba Server, DHCP server, NFS server.\r\nïƒ˜	Managing Logical Volume Management (LVM) storage & RAID levels\r\nïƒ˜	Package administration using RPM, Yum. \r\nïƒ˜	Availability of production server 24*7.\r\n', 0, 358, '2019-04-15 13:54:30', ''),
(128, 'Volvo Technologies ', 'Linux Administrator', 'Bangalore', '2015-05-06', '2017-02-10', '      Company                  :    Volvo Information Technologies Ltd\r\nRole                          :    Unix Administrator\r\nPeriod                       :    From May 2015â€“ Feb 2017\r\nEnvironment            :    Linux /storage\r\n\r\nRoles and Responsibilities as Unix System Administration\r\n\r\nïƒ˜	Having 3.8 Years of experience in the area of Linux Systems Administration and Application Management. \r\nïƒ˜	Installation, troubleshooting and changing the Boot process in Linux Systems.\r\nïƒ˜	Changing the disk usage and creating Labels and swap partitions. \r\nïƒ˜	Responsible for company-wide systems and network security. \r\nïƒ˜	Planning for the job schedule & implementation. \r\nïƒ˜	Performing backups/restores using TVM.\r\nïƒ˜	Configuring DNS for forward and reverse lookup zone. \r\nïƒ˜	Remote Server Administration and Troubleshooting in Linux. \r\nïƒ˜	Installation and configuration of third party packages. \r\nïƒ˜	Package administration using RPM, Yum. \r\nïƒ˜	Availability of production server 24*7.\r\nïƒ˜	Managed users, groups, and ftp accounts, permissions and security for clients.\r\nïƒ˜	Web server administration like Apache. \r\nïƒ˜	Managing network printers, Application installation for the users in Unix/Linux flavors. \r\nïƒ˜	Handling Linux Based Networking, Web server, Ftp server, Dns server, Samba Server, DHCP server, NFS server.\r\nïƒ˜	Managing Logical Volume Management (LVM) storage & RAID levels. \r\nïƒ˜	Changing a user password or password parameters. \r\nïƒ˜	Creation of file systems and checking the NFS auto mount file systems functionality. \r\nïƒ˜	Maintain the log files for troubleshoot the issues. \r\nïƒ˜	Managing and resolving server and user level issues. \r\nïƒ˜	Handling Linux Based Mail server, Web server and Ftp server. \r\nïƒ˜	Securing and managing network with firewall & iptables. \r\nïƒ˜	Maintaining better Co-ordination between the team members. \r\nïƒ˜	Having experience in IBM Tivoli storage manager. \r\nïƒ˜	Monitoring Netapp filers & Snapvault backups.\r\nïƒ˜	Having experience taking backups in database like db2 & Oracle.\r\nïƒ˜	Wide range of exposure in troubleshooting server issues\r\nïƒ˜	Having experience in remote hardware support\r\nïƒ˜	Many routine problem solving and end user assistance activities such as file system issues, Services related issues etc through ticket system as well as via live chat\r\n', 0, 358, '2019-04-15 13:56:22', ''),
(129, 'LIT', 'Linux and Vmware admin', 'Bangalore', '2013-08-10', '2015-05-01', 'Company                  :    LIT\r\n Role                         :    Linux Administrator and VMware Administrator\r\n Period                      :    From Sep 2013 to May 2015\r\n Environment            :    Linux and VMware ESXi-5.5\r\n\r\nRoles and Responsibilities as Linux System Administration\r\n\r\nïƒ˜	Installation, configuration & troubleshooting DNS, DHCP on Redhat Enterprise\r\nLinux 6.\r\nïƒ˜	Monitoring incoming & outgoing network packets stats by netstat and monitoring network performance & troubleshooting network related problems.\r\nïƒ˜	Tracing storage device performance issues including devices, local disks.\r\nïƒ˜	Monitoring CPU utilization and getting information on system memory usage.\r\nïƒ˜	Creating swap space when the physical memory (RAM) utilization is high.\r\nïƒ˜	Configuring LVM, creating LVM partitions, converting as physical volumes &creating logical volume from volume group and assign mount points. \r\nïƒ˜	Installing, updating, removing, finding and listing the packages on Linux systems using YUM.\r\nïƒ˜	Providing 100% data redundancy by mirroring of data on identical disks. \r\nïƒ˜	Maintaining RAID levels 0, 1, 5 by their components. \r\nïƒ˜	Sharing files between Redhat and Windows systems with SAMBA. \r\nïƒ˜	Sharing files and folders between Linux /UNIX systems with the help of NFS\r\n\r\nRoles and Responsibilities as VMware  System Administration\r\n\r\nïƒ˜	Managing VM ware infrastructure environment with ESXi 5.0, 50 plus virtual machines.\r\nïƒ˜	VM Server builds and rebuilds (Deploying the new VM from the template and cloning an existing VM) as per the client request.\r\nïƒ˜	Installing and configuring ESXi servers.\r\nïƒ˜	Creating and managing VM Cluster. Enabling HA and DRS features in a Cluster.\r\n', 0, 358, '2019-04-15 13:58:55', ''),
(130, 'Bharat Electronics Limited ', 'Procurement', 'Bangalore ', '2015-05-06', '2019-05-06', 'Experience in QA and Subcontract /purchase', 0, 360, '2019-05-07 00:06:38', ''),
(131, 'cyient ', 'design engineer', 'hyderabad', '2017-07-20', '2019-06-18', 'design engineer in aerospace and defence', 0, 361, '2019-06-18 19:02:01', ''),
(132, 'cyient ', 'design engineer', 'hyderabad', '2017-07-20', '2019-06-18', 'design engineer in aerospace and defence', 0, 361, '2019-06-18 19:02:01', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `f_name` varchar(150) NOT NULL,
  `faculty_id` int(10) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `img` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `webpage` varchar(200) NOT NULL,
  `area` varchar(200) NOT NULL,
  `shortdis` text NOT NULL,
  `dis` text NOT NULL,
  `education` varchar(500) NOT NULL,
  `affiliation` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `f_name`, `faculty_id`, `designation`, `img`, `email`, `webpage`, `area`, `shortdis`, `dis`, `education`, `affiliation`, `status`) VALUES
(1, 'BHAT DITTAKAVI', 49, 'Faculty of Economics ', 'Dittakavi.jpg', 'bhat@variance.ai', 'www.variance.ai', 'entrepreneurship in analytics and artificial intelligence.', 'Seasoned and serial entrepreneur with 21+ years of technology experience in all things data including 18+ years of entrepreneurship in analytics and artificial intelligence.', '<p><span style=\"font-size: 12px;\">Bhat Dittakavi is a seasoned and serial entrepreneur with 21+ years of technology experience in all things data including 18 years of technology entrepreneurship in business analytics and artificial intelligence. Bhat has one successful exit in the USA. Bhat has co-founded, bootstrapped, built and scaled VEDICSOFT, an NJ based analytics solutions company, from zero to $40 million in sales. Bhat has successfully sold VEDICSOFT in 2014 to Dallas based PE firm, Sowell &amp; Co. Variance.AI is his new startup in health tech.&nbsp;</span></p>\r\n<p><br /><span style=\"font-size: 12px;\">Bhat has extensive business experience across investment banking, healthcare, pharmaceutical, insurance, manufacturing, and public sector industries. Bhat has solid experience in building teams and retaining talent base specializing in design and development of business integration and data analytics applications.</span></p>\r\n<p><br /><span style=\"font-size: 12px;\"><strong>INNOVATION:</strong> Resolving key business challenges using critical thinking, creating an open-ended and positive workplace wherein people naturally come up with simple but innovative solutions to complex business problems using design thinking and collaboration.</span><br /><br /><span style=\"font-size: 12px;\"><strong>FOCUSED LEADERSHIP:</strong> Leading the team by an example, reinforcing synergy across the teams and departments, rewarding the strong and empowering the middle, getting the best out of the people. Getting things done through sincere appreciation and positive reinforcement.</span></p>\r\n<p><br /><span style=\"font-size: 12px;\"><strong>BUSINESS PLANNING:</strong> Building expertise in a niche technology to provide solutions across all the industry verticals, targeting industries based on customer value proposition, choosing revenue centers of the customers.</span></p>\r\n<p><br /><span style=\"font-size: 12px;\"><strong>STRATEGIC ALLIANCES:</strong> Forming strategic business partnerships with systems integrators and technology vendors to provide end-to-end solutions to clients and outsmart the competition.</span></p>\r\n<p><br /><span style=\"font-size: 12px;\"><strong>INTERNATIONAL EXPERIENCE:</strong> Expertise in international business development, building teams, and relationships in USA and India. Good understanding of cross-border transactions, taxation, and country-specific cultures.</span></p>', 'MBA,M.Tech', '', 1),
(2, 'Murthy', 52, 'Director', 'Murthy.jpg', 'murthy.pala@gmail.com', '', '', '', '', '', '', 0),
(3, 'Mahesh Kanago', 50, 'Faculty for Statistics', '', '', '', '', 'As a Principal Consultant at Infosys, Mahesh has worked with diverse clients in helping manage the Business IT interface, leveraging methodologies and tools developed by Infosys...', '<p style=\"margin: .25in; text-align: justify;\"><span style=\"font-size: 11.0pt; font-family: \'Calibri\',sans-serif;\">As a Principal Consultant at Infosys, Mahesh has worked with diverse clients in helping manage the Business&ndash;IT interface, leveraging methodologies and tools developed by Infosys.</span></p>\r\n<p style=\"margin: .25in; text-align: justify; \"><span style=\"font-size: 11.0pt; font-family: \'Calibri\',sans-serif;\"> He carries 17+ years of experience working with customers in both business domain as well as IT Consulting experience with diverse clients (EPC (Oil &amp; Gas), Services, Power Technologies, Specialty Manufacturing, Cement, Retail &amp; Distribution) and PGDM in IIM Calcutta. </span></p>\r\n<p style=\"margin: .25in; text-align: justify;\"><span style=\"font-size: 11.0pt; font-family: \'Calibri\',sans-serif;\">With his experience in program management of large business transformation initiatives with a blend of Oracle Applications, SAP, MfgPro, IFS, MS Dynamics Mahesh brings in a new face to Business Analytics for projects in emerging technologies at EMC2.</span></p>', '', '', 1),
(4, 'Mohan Vellanki', 50, 'Faculty for Marketing ', 'Mohan%20Vellanki.jpg', '', '', '', 'Mohan Vellanki brings over 20 years of experience in product sales, business development and engineering. Prior to founding Orvito, Mohan worked at Motorola in a variety...', '<p style=\"margin: 0.25in; text-align: justify;\">Mohan Vellanki brings over 20 years of experience in product sales, business development, and engineering. Prior to founding Orvito, Mohan worked at Motorola in a variety of functions including Systems Architect, Program Manager, and Technical Marketer. As a Technical Specialist at Motorola, he played a key role in launching nine different mobile phones and their variants. He holds an MS in Telecommunications Engineering from Columbia University and an MBA from the Indian School of Business.</p>\r\n<p style=\"margin: 0.25in; text-align: justify;\"><br />With this combination, he brings in the theory of marketing and most relevant strategies in the IT industry for our executives.</p>\r\n<p style=\"margin: 0.25in; text-align: justify;\"><br />Mohan also worked at Redpine Signals, where he developed new product lines, corporate alliances, and sales partners. Through his work, he delivered multi-million dollar revenue growth across North America, Europe, and Asia. In addition to his demonstrated expertise in delivering cutting-edge technology innovation and driving technology roadmaps, Mohan is a proven leader who has overseen several integration initiatives that span operations in several countries and managed multiple vendors and distribution channels.</p>', '', '', 1),
(5, 'Rayapu Boyapaty', 50, 'Faculty for Human Resources ', 'Rayapu%20Boyapaty.png', '', '', '', 'Rayapu is a General Manager  HR (Location HR Leader) from May 2017 till date at IBM India Pvt Ltd, Hyderabad, reporting to India HR Leader. A HR Leader who worked...', '<p style=\"padding: 3%; margin-left: .25in; text-align: justify;\"><span style=\"font-size: 12pt;\"><span style=\"font-family: \'Calibri\',sans-serif;\">Rayapu is a </span> <span style=\"font-family: \'Calibri\',sans-serif;\">General Manager&nbsp; HR (Location HR Leader) from</span> <span style=\"font-family: \'Calibri\',sans-serif;\"> May 2017 to date at </span> <span style=\"font-family: \'Calibri\',sans-serif;\">IBM India Pvt Ltd, Hyderabad, reporting to India HR Leader. An</span></span> <span style=\"font-family: Calibri, sans-serif; font-size: 12pt;\">HR Leader who worked in extensive collaborative work environment/s aligning HR CoE&rsquo;s, enabling functions like Talent Acquisition, Talent Relations, Compensation &amp; Benefits, and Learning &amp; Development. He explains to EMC2 students what the organizational objectives are in terms of employees and the approaches are taken by HR Managers to overcome the emotional bias that the employees have, to achieve final company goals.&nbsp;</span></p>\r\n<p style=\"padding:3%; margin-left: .25in; text-align: justify;\"><span style=\"font-size: 12pt;\"><span style=\"font-family: \'Calibri\',sans-serif; color: black;\">Rayapu won </span><span style=\"font-family: \'Calibri\',sans-serif;\">India Level &lsquo;Annual HR Award&rsquo; winner for driving IBM India level consulting assignments in 2016 &amp; 2017</span></span></p>', '', '', 1),
(6, 'Dr. B Rajashekar', 50, 'Faculty of Decision Models and Optimisation', 'PROF RAJASHEKHAR BELLAMKONDA.jpg', '', '', '', 'Dr.Rajashekar is Dean and Director of School of Management Studies, University of Hyderabad. With 24 years of experience in Quantitative...', '<p style=\"padding: 3%; margin-bottom: 6.8pt; text-align: justify; line-height: 115%; background: white;\"><span style=\"line-height: 115%; font-family: Calibri, sans-serif; font-size: 12pt;\">Dr.Rajashekar is Dean and Director of School of Management Studies, University of Hyderabad. With 24 years of experience in Quantitative Methods and Operations Management research methodology, he teaches formulate, solve and interpret a number of different optimization and simulation models to support decision making.</span></p>', '', '', 1),
(7, 'Dr. PSS Murthy', 50, 'Faculty of Accounting and Finance', 'Murthy.jpg', '', '', '', 'A Management Teacher transformed to a Corporate Executive with over 25 years of varied experience in Teaching, Training, Research and Consulting.  I have proven my ability to adapt to dynamic and fluid environments.', '<p style=\"padding: 3%; margin-bottom: 6.8pt; text-align: justify; background: white;\"><span style=\"font-family: Calibri, sans-serif; font-size: 12pt;\">A Management Teacher transformed into a Corporate Executive with over 25 years of varied experience in Teaching, Training, Research, and Consulting.&nbsp; I have proven my ability to adapt to dynamic and fluid environments and working conditions in the corporate world.&nbsp;&nbsp; Adept at developing and offering Training across the company for the veterans as well as the new entrants and carved a niche for me in offering Finance, Costing and Performance measurement courses. Nurture a healthy habit of recognizing that one is an eternal learner</span></p>', '', '', 1),
(8, 'Professor Indrakant', 50, 'Faculty of Economics', 'Indrakant.jpg', '', '', '', 'Professor Sulibhavi Indrakant is presently holding RBI Chair Professorship at Council for Social Development, Southern Regional Centre, Hyderabad since February 2013...', '<p style=\"padding: 3%; margin: 0in; margin-bottom: .0001pt; text-align: justify; line-height: 115%; background: white;\"><span style=\"line-height: 115%; font-family: Calibri, sans-serif; font-size: 12pt;\">Professor Sulibhavi Indrakant is presently holding RBI Chair Professorship at Council for Social Development, Southern Regional Centre, Hyderabad since February 2013. Earlier, he was Head, Department of Economics, Osmania University (2006-09) and Chairman, Board of Studies, Department of Economics, Osmania University (2004-06). Professor S. Indrakant an Economist with 32 years of rich research and teaching experience has independently directed and associated with altogether 17 Research Projects sponsored by agencies like UNDP, Ford Foundation, ADB, World Bank, Government of Andhra Pradesh etc.&nbsp; During his teaching tenure at Osmania University, Hyderabad he has guided successfully 6 M.Phil, six Ph.D. scholars and presently guiding four Ph.D. Scholars.</span></p>\r\n<p style=\"margin: 0in; margin-bottom: .0001pt; text-align: justify; line-height: 115%; background: white;\">&nbsp;</p>\r\n<p style=\"padding: 3%; margin: 0in; margin-bottom: .0001pt; text-align: justify; line-height: 115%; background: white;\"><span style=\"line-height: 115%; font-family: Calibri, sans-serif; font-size: 12pt;\">His research works are published in reputed journals like Economic and Political Weekly, Indian Economic Journals etc. and edited one book; 17 Research Reports, which include ADB, UNDP, and World Bank Publication.&nbsp; He has 53 Publications to his credit which are published in reputed journals like Economic and Political Weekly, Indian Economic Journal etc.&nbsp; He has organized two National-Level Seminars, seven Workshops, two Departmental Conferences of Lecturers in Economics and coordinated two Refresher Courses in Economics.&nbsp; Delivered lectures as Resource Person in over 150 Workshops, Refreshers and Orientation Courses. Also participated and presented Research Papers in over a hundred international and national seminars.&nbsp;Has organized national level seminars and workshops.</span></p>\r\n<p style=\"margin: 0in; margin-bottom: .0001pt; text-align: justify; line-height: 115%; background: white;\">&nbsp;</p>\r\n<p style=\"padding: 3%; margin: 0in; margin-bottom: .0001pt; text-align: justify; line-height: 115%; background: white;\"><span style=\"line-height: 115%; font-family: Calibri, sans-serif; font-size: 12pt;\">Also participated and presented research papers in various international and national seminars.&nbsp; He also served as Member of Board of Editors, Osmania Journal of Social Sciences and Referee for the Asian Economic Review. He is also an examiner for UPSC and APPSC Examinations.</span></p>', '', '', 1),
(9, 'Bhatt Dittakavi', 50, 'Faculty of Artificial Intelligence', '', '', '', '', '', '', '', '', 0),
(10, 'Chandrasekhar Madala', 50, 'Faculty of Operations Management', 'chandra madala.jpg', '', '', '', 'Mr. Chandra Madala has immense and valuable experience of about 20 + years in Delivery Management, Customer Management, building profitable off shore delivery centers..', '<p style=\"padding: 3%; margin-bottom: 6.8pt; text-align: justify; background: white;\"><span style=\"font-family: Calibri, sans-serif; font-size: 12pt;\">Mr. Chandra Madala has immense and valuable experience of about 20 + years in Delivery Management, Customer Management, building profitable offshore delivery centers. His Operations excellence in Projects Delivery and Business Development in domains like Banking &amp; Financial Services and Manufacturing has earned him laurels in the organizations he served. He grew up the ladder in the organizations and held various managerial positions, the latest role being a Center Head, Delivery Head with Birlasoft Limited. He was also a Global Delivery Head with Satyam Computers where he has worked for more than 12 years.</span></p> <p style=\"padding: 3%; margin-bottom: 6.8pt; text-align: justify; background: white;\"><span style=\"font-family: Calibri, sans-serif; font-size: 12pt;\">He has successfully executed projects and managed top clients like GE Money, Citi Bank, Telstra, Nokia, Standard Chartered Bank, World Bank, Cater Piller Financial and DTCC during his previous engagements.</span></p> <p style=\"padding: 3%; margin-bottom: 6.8pt; text-align: justify; background: white;\"><span style=\"font-family: Calibri, sans-serif; font-size: 12pt;\">Mr. Chandrasekhar\'s professional career also includes extensive travel to countries like Australia, the US, Europe, and Japan for Business Presentations/Discussions/Project Initiations and more. He holds a Project Management Professional Certification from Project Management Institute, USA. He is a double Post Graduate in Business Administration and Information Technology and has a Bachelor\'s Degree in Science from Sri Venkateswara University. Various training includes Six Sigma Green Belt, ISO 9000 Lead Auditor, Global Leadership programme and also Leadership Excellence Acceleration Programme (LEAP).</span></p>', '', '', 1),
(11, 'Praveen Nagamalla', 50, 'Faculty of Strategy', '18-921325.png', '', '', '', 'Expertise in Heading Businesses, Omnichannel Retail Operations, Sales & Marketing, Strategic Planning, Category Management, and International Business.', '<p>Expertise in Heading Businesses, Omnichannel Retail Operations, Sales &amp; Marketing, Strategic Planning, Category Management and International Business.<br /><br />M.B.A in Sales &amp; Marketing from BIM-Trichy, with over 16years of experience in India and abroad with demonstrated entrepreneurial initiative and success in building businesses.<br /><br />Worked on product categories like Mobile Handsets, Rice, Dairy, Breakfast Products, Alco-beverage Products, Paints &amp; Paper. Had been an Entrepreneur for over two years, in the retail sector.</p>', '', '', 1),
(12, 'Sai Charan Tej Kommuri', 50, 'Faculty of Artificial Intelligence', 'sai charan.jpg', '', '', '', 'a Tech Enthusiast with a MBA in Strategy and Leadership from Indian School of Business. Combining technology with MBA, I wish to execute ideas that have ever-lasting impact.', '<p><span style=\"font-size: 12px;\">Tech Enthusiast with an MBA in Strategy and Leadership from Indian School of Business. Combining technology with MBA, I wish to execute ideas that have an ever-lasting impact.</span></p>\r\n<p><br /><span style=\"font-size: 12px;\">At Pega, I strategize and incorporate Machine-learning powered modules into our CRM. The goal is to make the product \'Intelligent\' enough to aid the users in making informed decisions. To this end, I implemented the Voice-to-text recognition and Sentiment analysis features. I am excited at the potential of Artificial Intelligence in disrupxing the B2B landscape.</span></p>\r\n<p><br /><span style=\"font-size: 12px;\">Prior to Pega, I have worked 10+ years in BankofAmerica and SAP as \'Product Owner\' for products in the banking and Sales Automation domains respectively</span></p>', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subjects`
--

CREATE TABLE `faculty_subjects` (
  `id` int(11) NOT NULL,
  `faculty_id` int(10) NOT NULL,
  `subject_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_subjects`
--

INSERT INTO `faculty_subjects` (`id`, `faculty_id`, `subject_id`) VALUES
(1, 49, 4),
(2, 51, 5),
(3, 52, 3);

-- --------------------------------------------------------

--
-- Table structure for table `forgotpassword`
--

CREATE TABLE `forgotpassword` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `u_id` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forgotpassword`
--

INSERT INTO `forgotpassword` (`id`, `user_id`, `u_id`) VALUES
(3, '90', '8b88298cce06b122075bb49f7285d846'),
(5, '84', '8e08a7b89a125b97b41ca93051b6ac7d'),
(6, '302', 'e20181919610789fd734e25e34076a18'),
(7, '302', 'afa9a89d6adf2e4584bc6d9727c21c7d');

-- --------------------------------------------------------

--
-- Table structure for table `honors`
--

CREATE TABLE `honors` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `issuer` varchar(50) NOT NULL,
  `my` varchar(15) NOT NULL,
  `description` text NOT NULL,
  `fileupload` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `honors`
--

INSERT INTO `honors` (`id`, `title`, `issuer`, `my`, `description`, `fileupload`, `date`, `user_id`) VALUES
(6, 'nnnnnnnnnnnnn', 'jjjjjjjj', '2016 july', 'nnnnnnnnnnnnn', '8145glasses.png', '2017-07-17 05:30:13', 92),
(7, 'jhgbjmhn ', 'hgvb', 'hgbh', 'nhgvb n', '0', '2017-07-17 05:30:13', 95),
(8, 'yutut uty dtr', 'uytuty', '2017-06-06', 'uytut6', '1505882408Tulips.jpg', '2017-07-17 05:30:13', 83),
(9, 'wrygujvhjh', '', '0041-03-05', 'OKDCKSDCJSDSJKDBFFHBGAJSDFBJSDFHIUEFHHDBFSODJFBNSADOFJASDNFJKSDBJSDBFVJHFBHJFGBFSDFBSODJHFOSDF\r\n', '1513826987Tulips.jpg', '2017-07-17 05:30:13', 87),
(17, 'Best Student', 'St Clarets', '2017-06-06', 'Anthropomorphism\r\nClichÃ©fhghnj\r\nDiction\r\nGrammatical modifier\r\nGrammatical voice\r\nMetaphors', '1028238386Hydrangeas.jpg', '2017-07-17 05:30:13', 86),
(19, 'sxasx', 'asasdd', '2017-07-30', 'xzxczx', '1246572560big-data-16-EN-250x310.jpg', '2017-07-17 05:30:13', 90),
(20, 'sxasx', 'asasdd', '2017-07-30', 'xzxczx', '1268019493big-data-16-EN-250x310.jpg', '2017-07-17 05:30:13', 90),
(21, 'Idea Champion', 'Cognizant- Innovation Group', '2016-02-11', 'Awarded for successfully practicing managed innovation within customer account', '375485066image1.JPG', '2017-07-18 03:43:24', 109),
(22, 'jtdyd', 'hydryg', '2017-07-19', 'hfgtydr', '473260164Admissions Criteria.png', '2017-07-19 06:00:00', 117),
(23, 'TRAINEE', 'yer', '2017-07-20', 'hredtg rtdtgsd rdtfsz', '1697727495Admissions Criteria.png', '2017-07-19 00:41:59', 117),
(26, 'asdf', 'asdf', '2017-07-07', 'asdf', '290662249Penguins.jpg', '2017-07-28 05:16:35', 135),
(27, ' asdf asd fa sd', ' asdf ', '2017-07-06', ' asd asdf ', '2006616054Jellyfish.jpg', '2017-07-28 16:23:09', 137),
(28, 'TRAINEE', 'ceo', '2017-07-22', 'traineeee', '1937341946aynampudisubbarao.jpg', '2017-07-29 18:30:39', 81),
(29, 'TRAINEE', 'ceo', '2017-07-22', 'traineeee', '2132043243aynampudisubbarao.jpg', '2017-07-29 18:30:39', 81),
(30, 'Awarded as ! st position', 'srkr', '2015-03-25', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', '111943539emc2brochure.pdf', '2017-08-02 17:12:34', 149),
(32, '1st prize', 'vignan', '2017-08-09', 'g e esfs erfser fa', '1649722200broucher.pdf', '2017-08-02 17:20:10', 81),
(33, 'award 1st', 'SRLKGJS', '2012-12-31', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', '531888605emc2brochure.pdf', '2017-08-02 17:22:52', 149),
(34, 'hfejrf ej jsejks', 'fre sjfnr sfnjf s', '2017-08-15', 'e rw drt gr dwer g', '412944401broucher.pdf', '2017-08-02 18:07:07', 81),
(35, 'wedferf', 'rtrtyrty', '2017-08-19', 'tertrtyrty', '143586927broucher_3.pdf', '2017-08-02 18:07:46', 81),
(36, 'fasdfsrg', 'dsgfsrg', '2017-08-10', 'efdghgfhfgh', '1793815265Blackbuck-Company-Profile.pdf', '2017-08-02 18:08:18', 150),
(37, 'gre tes hdrtgdr rdtgdtgd', 'yg rerf', '2017-08-14', ' retgg drtgr tef', '1480153227broucher.pdf', '2017-08-02 18:14:41', 81),
(38, 'jhjiklkl;pkl;', 'fghghkjklj', '2017-08-11', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '707074785Tulips.jpg', '2017-08-02 18:22:12', 151),
(39, 'jhjiklkl;pkl;', 'fghghkjklj', '2017-08-11', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '1919694819Tulips.jpg', '2017-08-02 18:22:12', 151),
(40, 'dxgvghb', 'eryhgfthfydjgjkj', '2017-08-26', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '615766313Tulips.jpg', '2017-08-02 18:22:46', 151),
(41, 'dxgvghb etrtj ujtyj', 'fvhbcgnjjn', '2017-08-26', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '1484565652Tulips.jpg', '2017-08-02 18:22:46', 151),
(42, 't64e n', ' t4e rte4', '2017-08-08', 'ter45 tet e4rtfw', '1202166703broucher.pdf', '2017-08-02 18:36:39', 153),
(43, 'ytr5y r', ' rt5ger ', '2017-08-14', ' yer5te5 ret e', '2145273041broucher_3.pdf', '2017-08-02 18:37:03', 153),
(44, 'ytr5y r', ' rt5ger ', '2017-08-14', ' yer5te5 ret e', '753935378broucher_3.pdf', '2017-08-02 18:37:06', 153),
(48, 'sdfg', 'dfsgfdsg', '2017-08-10', 'sAction (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', '', '2017-08-02 18:45:31', 155),
(49, 'twe4rwe ertg5e', 'te4r d', '2017-08-14', ' yretger', '', '2017-08-03 02:32:44', 157),
(51, 'yurtyu', 'ruryruytuyty', '2017-08-01', 'sfdgnhgmfh dgdfscdb', '971439442website-checklist.pdf', '2017-08-03 17:11:37', 160),
(52, 'STAR PERFORMER AWARD', 'IBM INDIA PVT LTD', '2013-12-05', 'STAR PERFORMER AWARD', '', '2017-08-12 04:57:14', 145),
(53, 'SILVER AWARD', 'IBM INDIA PVT LTD', '2014-03-15', 'SILVER AWARD FOR PERFORMANCE - CERTIFICATE', '', '2017-08-12 04:58:14', 145),
(54, 'OUTSTANDING PERFORMER AWARD', 'WIPRO BPO LTD', '2011-07-15', 'OUTSTANDING PERFORMER AWARD DURING TRAINING AT WIPRO BPO', '', '2017-08-12 04:59:13', 145),
(55, 'NATIONAL GOLD MEDALIST IN ATHELETICS IN KVS', 'KENDRIYA VIDYALA SANGATAN', '2008-10-10', 'SECURED 1 ST PLACE IN 800MTS AND 2ND PLACE IN 400 MTS IN KVS NATIONALS', '', '2017-08-22 18:08:16', 183),
(56, 'VIZAG 10KM RUN', 'VUDA', '2007-12-10', 'SECURED 1ST PLACE IN 10KM VIZAG RUN', '', '2017-08-22 18:09:06', 183),
(57, 'SECURED ALL INDIA 2ND IN NATIONAL YOUTH PARLIAMENT ', 'GOVT OF INDIA', '2006-10-10', 'SECURED ALL INDIA 2ND IN NATIONAL YOUTH PARLIAMENT AND RECEIVED TOKEN OF APPRECIATION FROM Mr. APJ ABDUL KALAM', '', '2017-08-22 18:10:49', 183),
(58, 'Standing ovation Award', 'VP - Guitar Center, LA', '2013-03-01', 'Standing Ovation', '', '2017-09-05 22:09:39', 194),
(59, 'Syntel Star Award', 'Syntel limited', '2012-06-01', 'Star Award', '', '2017-09-05 22:10:19', 194),
(60, 'Syntel Star Award', 'Syntel limited', '2012-06-01', 'Star Award', '', '2017-09-05 22:10:22', 194),
(61, 'Nominated as best intern from Zen Technologies and rewarded from the College', 'Zen Technologies', '2015-04-15', 'For the newly recruited students into various companies, students performing well from each company have been selected and and were rewarded in the college.', '', '2018-02-17 06:19:21', 272),
(62, '2nd Position for paper presentation on GPS in Indian Railways', 'Osmania University', '2014-03-15', 'Won 2nd position for giving paper presentation on GPS in Indian railways at TECHNOSANCE 2014 conducted at Osmania University', '', '2018-02-17 06:25:52', 272),
(63, '2nd Position for paper presentation at Aurora\'s Engg College', 'Aurora \'s Engineering College', '2014-03-08', 'Won 2nd position for paper presentation on GPS in Indian Railways conducted under the event Sangama 2014 organised by Aurora\'s Engineering college.', '', '2018-02-17 06:28:06', 272),
(64, 'Best employee of the year', 'SMSCountry Networks Pvt Ltd', '2017-02-05', 'For oustanding performance', '', '2018-02-19 22:26:58', 273),
(65, 'Associate Consultant', 'Capgemini India Pvt Ltd', '2017-11-01', 'Awarded as a star performer ', '', '2018-10-05 23:43:02', 333),
(66, 'Spot Award', 'DXC Technologies', '2019-02-05', 'Appreciation is for dedicated to deliverables and satisfied client', '174781968Ramathulasi K_Spot_927207.pdf', '2019-03-14 18:41:22', 349);

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE `ideas` (
  `id` bigint(20) NOT NULL,
  `picturre` varchar(50) NOT NULL,
  `old_picture` varchar(100) NOT NULL,
  `title` varchar(300) NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `target` varchar(15) NOT NULL,
  `filled_amount` varchar(15) NOT NULL,
  `need_amount` varchar(15) NOT NULL,
  `team` varchar(100) NOT NULL,
  `donors` varchar(100) NOT NULL,
  `likes` bigint(11) NOT NULL,
  `project_plan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`id`, `picturre`, `old_picture`, `title`, `content`, `user_id`, `target`, `filled_amount`, `need_amount`, `team`, `donors`, `likes`, `project_plan`) VALUES
(1, '', '', 'Sort tech machine based on tcs230 ', 'bdvhjdfbvjhd ,bfdhhfdg,vufdgufd', 3, '20000', '15000', '5000', '2,4,5', '6,7,8', 2, 'color sensor-10,000\r\ncontroller-5,000\r\nlcd display-2000\r\nsort bucket-3000'),
(2, '', '', 'GPS tracking system', ' hjbcjhmv gvfdgf gdfdsytfg gsfdsgfd vyudfgyufd hvdgvdj hjbvhdfvf hjbvhdfv hbhfbhdf  bhjvbhdfvbfd jhdfbvhf ', 2, '10000', '2000', '8000', '3,4,5', '6,7,8', 3, 'gsm -4000\r\ngps-2000\r\ncontroller-4000'),
(3, '', '', 'Human Resource module', '<h3>Software web application for human resource moduledf</h3>', 6, '20000', '5000', '15000', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) NOT NULL,
  `interest` varchar(1000) NOT NULL,
  `my_from` varchar(15) NOT NULL,
  `my_to` varchar(15) NOT NULL,
  `fileupload` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `interest`, `my_from`, `my_to`, `fileupload`, `date`, `user_id`) VALUES
(3, 'hjghbj nhkjm', '', '', '', '2017-07-17 05:31:30', 92),
(4, 'jknm ', '', '', '', '2017-07-17 05:31:30', 95),
(6, 'i78u7tu uy6r', '', '', '', '2017-07-17 05:31:30', 83),
(9, 'EMC2 â€“ MBA (E) is a curriculum for professionals and executives to become future leaders. Its an o', '', '', '', '2017-07-17 05:31:30', 87),
(11, 'EMC2 â€“ ', '', '', '', '2017-07-17 05:31:30', 87),
(12, 'Anthropomorphism\r\nClichÃ©\r\nDiction\r\nGrammatical modifier\r\nGrammatical voice\r\nMetaphors', '', '', '', '2017-07-17 05:31:30', 86),
(15, 'Anthropomorphism\r\n', '', '', '', '2017-07-17 05:31:30', 86),
(16, 'EMC2 â€“ MBA (E) is a curriculum for professionals and executives to become future leaders. Its an o', '', '', '', '2017-07-17 05:31:30', 87),
(18, 'erestrg', '', '', '', '2017-07-17 05:31:30', 90),
(19, '1. Automating/finding an alternate or easy solution for any of the tasks we perfrom in our daily liv', '', '', '', '2017-07-18 03:58:21', 109),
(20, 'rw35rw erwerwd rera', '', '', '', '2017-07-19 00:39:30', 117),
(24, 'asdf', '', '', '', '2017-07-28 05:16:41', 135),
(25, 'a asdf asdf', '', '', '', '2017-07-28 16:22:53', 137),
(26, 'interests ', '', '', '', '2017-07-29 18:30:56', 81),
(27, 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Soci', '', '', '', '2017-08-02 17:28:26', 149),
(28, 'lskadjgl saldfkjdlskf asdfnld, kajsdfbhjld. lkajsfdlkjsaf.adsfsdlajhfdsa.sdfhlsdjg', '', '', '', '2017-08-02 17:28:39', 149),
(29, 'fghklJDSFGFDKSHGJKLAHDSFGFDsdfkjlghjkfg, kjsdahgjksag, kjhkasdjfag,sdnaglkjhdskljgh,.dsfdskjhAccount', '', '', '', '2017-08-02 17:29:38', 149),
(30, ' tyrtyety retrtyr rdtyrty yst yyyt  r yryty adfdhjdf fghhyjutyu esryrtu eteytu brtytu', '', '', '', '2017-08-02 18:05:23', 150),
(31, 'We love passionate people who are willing to put the effort in. Your research, writing style and the', '', '', '', '2017-08-02 18:23:01', 151),
(32, 'We love passionate people who are willing to put the effort in. Your research, writing style and the', '', '', '', '2017-08-02 18:23:06', 151),
(33, 'We love passionate people who are willing to put the effort in. Your research, writing style and the', '', '', '', '2017-08-02 18:23:06', 151),
(34, 'We love passionate people who are willing to put the effort in. Your research, writing style and the', '', '', '', '2017-08-02 18:23:25', 151),
(35, 'We love passionate people who are willing to put the effort in. Your research, writing style and the', '', '', '', '2017-08-02 18:23:25', 151),
(36, '(1) Explain why you want to earn an MBA (E) and how it will contribute to your personal and professi', '', '', '', '2017-08-02 18:32:37', 81),
(37, 'safgAction (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept ', '', '', '', '2017-08-02 18:45:39', 155),
(39, 'sdvgrteyverwtv', '', '', '', '2017-08-03 17:12:03', 160),
(40, 'MANAGEMENT', '', '', '', '2017-08-12 04:59:49', 145),
(41, 'Cricket', '', '', '', '2017-08-17 23:34:31', 180),
(42, 'Writing ', '', '', '', '2017-08-17 23:35:02', 180),
(43, 'Reading', '', '', '', '2017-08-17 23:35:12', 180),
(44, 'INTERESTED IN ORGANISING TEAM BUILDING ACTIVITIES, WATCHING AND PLAYING SPORTS', '', '', '', '2017-08-22 18:11:54', 183),
(45, 'Reading, Learning new technologies, Teaching & Trainings', '', '', '', '2017-08-26 23:28:11', 168),
(46, 'badminton', '', '', '', '2017-09-06 17:34:11', 197),
(47, 'Interested in movies and hang out with friends.\r\nExploring places.', '', '', '', '2017-09-10 16:58:04', 215),
(48, 'Iam mostly interested in Gardening and planting', '', '', '', '2017-09-11 01:56:10', 200),
(49, 'Major interest is in learning techniques in poster and acrylic painting by self and playing outdoor games', '', '', '', '2018-02-17 06:21:07', 272),
(50, 'Interested in new technologies and update myself', '', '', '', '2018-02-19 23:13:22', 273),
(51, 'SPORTS,TRAVELLING', '', '', '', '2018-03-12 20:58:58', 287),
(52, 'I have interest in the field of music, \r\n\r\n', '', '', '', '2018-06-21 16:34:15', 305),
(53, 'Volley ball and carram', '', '', '', '2018-06-27 18:02:05', 307),
(54, 'Reading novels, gardening', '', '', '', '2018-08-02 01:40:34', 311),
(55, 'Dancing', '', '', '', '2018-08-05 02:48:35', 314),
(56, 'Story Writing', '', '', '', '2018-08-05 02:48:49', 314),
(57, 'Singing', '', '', '', '2018-08-05 02:48:57', 314),
(58, 'Designing', '', '', '', '2018-08-05 02:49:22', 314),
(59, 'Reading', '', '', '', '2018-08-05 02:49:44', 314),
(60, 'Playing cricket', '', '', '', '2018-08-22 14:35:35', 316),
(61, 'Dancing', '', '', '', '2018-09-22 22:42:23', 328),
(62, 'Reading books', '', '', '', '2018-09-27 20:59:53', 331),
(63, 'Interest for Java Developer', '', '', '', '2019-01-25 01:44:09', 344),
(64, 'Dancing', '', '', '', '2019-03-14 18:41:38', 349);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) NOT NULL,
  `language` varchar(50) NOT NULL,
  `level` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `level`, `date`, `user_id`) VALUES
(4, 'english', 'Level two', '2017-07-17 05:32:51', 92),
(5, 'telugu', 'Level four', '2017-07-17 05:32:51', 95),
(10, 'english', 'Choose Opt', '2017-07-17 05:32:51', 3),
(11, 'telugu', 'Expert', '2017-07-17 05:32:51', 3),
(12, 'telugu', 'Choose Opt', '2017-07-17 05:32:51', 25),
(13, 'daea rwaera', 'Beginner', '2017-07-17 05:32:51', 83),
(14, ' rereara rwaea', 'Intermedia', '2017-07-17 05:32:51', 83),
(15, 'tyrtyhr', 'Beginner', '2017-07-17 05:32:51', 83),
(16, 'HHGFTYYER', 'Beginner', '2017-07-17 05:32:51', 87),
(17, 'telugu', 'Intermedia', '2017-07-17 05:32:51', 86),
(18, 'english', 'Expert', '2017-07-17 05:32:51', 86),
(19, 'hinfi', 'Expert', '2017-07-17 05:32:51', 86),
(20, 'telugu', 'Intermedia', '2017-07-17 05:32:51', 86),
(21, 'jk;ljklhjkl', 'Beginner', '2017-07-17 05:32:51', 87),
(23, 'zxz', 'Intermedia', '2017-07-17 05:32:51', 90),
(24, 'English', 'Expert', '2017-07-18 04:10:28', 109),
(25, 'Hindi', 'Expert', '2017-07-18 04:10:36', 109),
(26, 'Telugu', 'Expert', '2017-07-18 04:10:45', 109),
(27, 'TELUGU', 'Beginner', '2017-07-19 00:43:06', 117),
(28, 'English', 'Expert', '2017-07-27 15:58:30', 113),
(29, 'Hindi', 'Intermedia', '2017-07-27 15:58:39', 113),
(30, 'Telugu', 'Expert', '2017-07-27 15:58:51', 113),
(33, 'asdf', 'Intermedia', '2017-07-28 05:17:01', 135),
(34, 'DASDFASD', 'Beginner', '2017-07-28 17:32:57', 137),
(35, 'TELUGU', 'Expert', '2017-07-29 18:31:52', 81),
(36, 'ENGLISH', 'Intermedia', '2017-07-29 18:32:05', 81),
(37, 'telugu', 'Expert', '2017-08-02 17:30:31', 149),
(38, 'english', 'Intermedia', '2017-08-02 17:30:48', 149),
(39, 'hindi', 'Beginner', '2017-08-02 17:30:58', 149),
(40, 'dffhghjh\'ytjt, iyui;\'', 'Beginner', '2017-08-02 18:04:07', 150),
(41, 'ssdfdfhfg', 'Expert', '2017-08-02 18:24:41', 151),
(42, 'ssdfdfhfg', 'Expert', '2017-08-02 18:24:42', 151),
(43, 'ghfghfgh', 'Expert', '2017-08-02 18:24:52', 151),
(44, 'uyuijyukokui8i', 'Intermedia', '2017-08-02 18:25:07', 151),
(45, 'fgfgjtukhyujluillukoluiolioylioliouio', 'Expert', '2017-08-02 18:25:07', 151),
(46, 'TELUGU', 'Expert', '2017-08-02 18:36:03', 153),
(47, 'ENGLISH', 'Intermedia', '2017-08-02 18:36:11', 153),
(49, 'sdfg', 'Expert', '2017-08-02 18:46:04', 155),
(50, 'fdsgdsfg', 'Expert', '2017-08-02 18:46:12', 155),
(51, 'telugu', 'Intermedia', '2017-08-03 17:13:30', 160),
(53, 'hindi', 'Beginner', '2017-08-03 17:14:05', 160),
(54, 'ENGLISH', 'Intermedia', '2017-08-12 05:03:29', 145),
(55, 'HINDI', 'Intermedia', '2017-08-12 05:03:38', 145),
(56, 'TELUGU', 'Beginner', '2017-08-12 05:03:46', 145),
(57, 'English', 'Expert', '2017-08-17 23:31:35', 180),
(58, 'Bengali', 'Expert', '2017-08-17 23:31:49', 180),
(59, 'Hindi', 'Intermedia', '2017-08-17 23:32:01', 180),
(60, 'English, Hindi, Telugu', 'Expert', '2017-08-26 23:29:11', 168),
(61, 'English', 'Expert', '2017-09-05 22:10:37', 194),
(62, 'Telugu', 'Expert', '2017-09-05 22:10:56', 194),
(63, 'Tamil', 'Intermedia', '2017-09-05 22:11:07', 194),
(64, 'Hindi', 'Intermedia', '2017-09-05 22:11:19', 194),
(65, 'english', 'Expert', '2017-09-06 17:33:58', 197),
(66, 'English, Telugu,Hindi as Beginner', 'Intermedia', '2017-09-10 16:53:20', 215),
(67, 'Telugu , Hindi,English', 'Intermedia', '2017-09-11 01:55:27', 200),
(68, 'English', 'Intermedia', '2017-09-14 03:53:19', 219),
(69, 'telugu', 'Expert', '2017-09-14 03:53:28', 219),
(70, 'hindi', 'Intermedia', '2017-09-14 03:53:38', 219),
(71, 'tamil', 'Beginner', '2017-09-14 03:53:46', 219),
(72, 'English', 'Expert', '2018-02-17 06:37:42', 272),
(73, 'Telugu', 'Expert', '2018-02-17 06:37:53', 272),
(74, 'Hindi', 'Intermedia', '2018-02-17 06:38:02', 272),
(75, 'Tamil', 'Beginner', '2018-02-17 06:38:13', 272),
(76, 'English,Hindi,telugu', 'Intermedia', '2018-02-19 23:15:25', 273),
(77, 'ENGLISH,HINDI,ODIA', 'Intermedia', '2018-03-12 20:58:42', 287),
(78, 'Kannada , English', 'Intermedia', '2018-06-21 16:35:05', 305),
(79, 'English', 'Intermedia', '2018-06-27 18:01:46', 307),
(80, 'english', 'Expert', '2018-07-18 17:55:54', 309),
(81, 'English', 'Expert', '2018-08-02 02:06:45', 311),
(82, 'Kannada', 'Intermedia', '2018-08-02 02:11:57', 311),
(83, 'Hindi', 'Intermedia', '2018-08-02 02:12:10', 311),
(84, 'konkani', 'Intermedia', '2018-08-02 02:12:27', 311),
(85, 'Tulu', 'Intermedia', '2018-08-02 02:12:43', 311),
(86, 'English', 'Expert', '2018-08-05 02:50:16', 314),
(87, 'Kannada', 'Expert', '2018-08-05 02:50:33', 314),
(88, 'Hindi', 'Intermedia', '2018-08-05 02:50:52', 314),
(89, 'Konkani', 'Intermedia', '2018-08-05 02:51:08', 314),
(90, 'English, kannada, Hindi , Telugu', 'Expert', '2018-08-22 14:25:41', 316),
(91, 'Kannada Hindi English', 'Expert', '2018-09-22 22:39:33', 328),
(92, 'English', 'Expert', '2018-09-27 20:57:42', 331),
(93, 'Kannada', 'Expert', '2018-09-27 20:58:25', 331),
(94, 'Telugu', 'Expert', '2018-09-27 20:58:55', 331),
(95, 'Hindi', 'Intermedia', '2018-09-27 20:59:15', 331),
(96, 'English', 'Expert', '2018-09-27 21:44:56', 332),
(97, 'Hindi', 'Expert', '2018-09-27 21:45:08', 332),
(98, 'Odia', 'Expert', '2018-09-27 21:45:19', 332),
(99, 'English, Hindi, Kannada', 'Intermedia', '2018-10-05 23:41:58', 333),
(100, 'English , Telugu , Hindi', 'Expert', '2018-11-02 16:27:01', 337),
(101, 'Telugu', 'Expert', '2018-12-05 16:45:19', 339),
(102, 'Hindi', 'Expert', '2018-12-05 16:45:27', 339),
(103, 'English', 'Expert', '2018-12-05 16:45:35', 339),
(104, 'Tamil', 'Intermedia', '2018-12-05 16:45:42', 339),
(105, 'Bengali', 'Beginner', '2018-12-05 16:45:50', 339),
(106, 'Hindi, English, Urdu', 'Intermedia', '2019-01-25 01:44:28', 344),
(107, 'English', 'Expert', '2019-03-14 18:41:54', 349),
(108, 'Hindi', 'Expert', '2019-03-14 18:42:05', 349),
(109, 'Telugu', 'Expert', '2019-03-14 18:42:18', 349),
(110, 'kannada', 'Expert', '2019-03-14 18:42:36', 349),
(111, 'English', 'Expert', '2019-04-15 14:02:20', 358);

-- --------------------------------------------------------

--
-- Table structure for table `patents`
--

CREATE TABLE `patents` (
  `id` bigint(20) NOT NULL,
  `patent_country` varchar(50) NOT NULL,
  `patent_number` varchar(15) NOT NULL,
  `patent_title` varchar(50) NOT NULL,
  `patent_date` date NOT NULL,
  `description` text NOT NULL,
  `fileupload` varchar(50) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patents`
--

INSERT INTO `patents` (`id`, `patent_country`, `patent_number`, `patent_title`, `patent_date`, `description`, `fileupload`, `user_id`) VALUES
(1, 'India', '12232432', 'ghdbvhdfvbkdf', '0000-00-00', 'gjnhjgnhfgggggggggggggggggggggggggggggg gggggggg  gg gggggggggg gggggggggggggggggggggg ggggggg gggggggggggggg', '', 3),
(2, 'hjdvvsdj', 'te673254632', 'vhjdvbjd', '2009-02-02', 'gvgdsvfhd', '1230820503Book.xlsx', 3),
(3, 'india', '123456', 'dgdgvfs', '0000-00-00', 'dfsssssssssssss', '9112Ships.png', 92),
(4, 'hgjbhmn', 'ygbhmn', 'uygbhn', '0000-00-00', 'mn ', '0', 95);

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `essay` text NOT NULL,
  `resume` varchar(100) NOT NULL,
  `personal_sta` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`id`, `name`, `mobile`, `essay`, `resume`, `personal_sta`, `date`, `user_id`) VALUES
(6, 'juhuhmuhnasd', '346777', 'xdcfvv', 'Tulips.jpg', 'fcvfcf', '2017-07-17 05:35:04', 24),
(7, 'sravani', '9874563210', 'rtf  trdtd rt sert', '479142138_Hydrangeas.jpg', 'yrtd ytyry tyry tyr fjsedh jdhejksa dhfskja sjdkld nfsjkdh dfjs djask dsjhajks dsjhfa dak cdxzsjk ckj haKJ 3dj2h65akj1h 5kja4h4fj+k98s45 6498498478944 56465654', '2017-07-17 05:35:04', 83),
(8, 'Anuradha Thota', '9000706345', '', '', '', '2017-07-17 05:35:04', 84),
(9, 'Srikanth', '25846987', 'Anthropomorphism\r\nClichÃ©\r\nDiction\r\nGrammatical modifier\r\nGrammatical voice\r\nMetaphorsAnthropomorphism\r\nClichÃ©\r\nDiction\r\nGrammatical modifier\r\nGrammatical voice\r\nMetaphorsAnthropomorphism\r\nClichÃ©\r\nDiction\r\nGrammatical modifier\r\nGrammatical voice\r\nMetaphors', '1100759317_ramsai.pdf', 'Anthropomorphism\r\nClichÃ©\r\nDiction\r\nGrammatical modifier\r\nGrammatical voice\r\nMetaphors', '2017-07-17 05:35:04', 86),
(10, 'suma', '7894561231', 'ghkmhvjkl', '447160026_', 'yukuikuil', '2017-07-17 05:35:04', 87),
(11, 'uday kumar galidev', '9985982278', 'You have to choose one of the three: \r\n(1) Explain why you want to earn an MBA (E) and how it will contribute to your personal and professional goals.\r\n(2) The most challenging team experience for the candidate including the role the candidate played, the factors that made it a challenge, how the group addressed the issues, and learnings from the experience.\r\n(3) Given your already demanding job and the desire to remain committed to important personal obligations, how do you plan to handle the additional demands on your time once you enroll?', '262256906_Suma-Satiwada.pdf', 'You have to choose one of the three: \r\n(1) Explain why you want to earn an MBA (E) and how it will contribute to your personal and professional goals.\r\n(2) The most challenging team experience for the candidate including the role the candidate played, the factors that made it a challenge, how the group addressed the issues, and learnings from the experience.\r\n(3) Given your already demanding job and the desire to remain committed to important personal obligations, how do you plan to handle the additional demands on your time once you enroll?', '2017-07-17 05:35:04', 81),
(12, 'suma', '7995307088', 'zxzxzxx', '', 'ZXZCxcxc', '2017-07-17 05:35:04', 90),
(13, 'Srikanth Batchu', '9876543210', '', '601584327_Honeymoon-64.png', 'ghgdcfshdgc  rufrf fsdhgfytsdfagsrurfyerui dftasdfsatd   fhdsgf dsytf   gkashdghasdfgkhasd', '2017-07-17 05:35:04', 82),
(14, 'Uday Bhaskar PV', '9652012347', 'My Dream- Forming a system\r\nA System for me is something which connects various resources working for a purpose benchmarking its own boundaries and exploring ahead of it in an organized and systematic way. An optimist once said â€œWhen Life gives you LEMON and Water make lemonadeâ€. But I say â€“ Cultivate the lemon, form crop, make money. Lemonades can be prepared in abundant!\r\nRight from the Inception of an idea to the journey it takes to become a successful system, I wish to witness the growth, being its contributor, focusing mainly on creating opportunities\r\nPursuing MBA was a mandate pre-requisite for my dream of making any system. It was more of my personal goal to pursue my higher education at any given point of time. Initially, My 16 years of uninterrupted education has motivated me to take up my MBA immediately. In the process of exploring good colleges suiting my profile and requirements I have reached my mentors and senior family associates for their advice, everyone had a common point in their advice. Taking up an MBA after a couple of yearsâ€™ experience is appreciated as the core knowledge of business is well understood with at least an insight of practical exposure to it. I have learnt that the curriculum of MBA programs are generally designed from the Case-Studies, Best practices picked up from the Top Industries and Key notes from Successful Businessman. So In order to get the best of it, It is always good to have exposure to small case-studies, challenges we faced in our initial experience of job culture and a brief knowledge on Business. Considering all these, I have decided to enter the job market.\r\nCognizant Technology solution has given me an opportunity to kick-start my career as an entry level programmer. I was trained under Quality assurance vertical and I was allocated into a Project which provides various business solutions to one of the leading bank sector in United States of America. We being a service company, we were always bound to adhere to our clientâ€™s customs and policies. Their requirements are our top priorities. In this competitive world, In order to maintain the same relationship with the clients we need to prove ourselves different from other vendors. So In-parallel to his requirements we offered suggestions to make their products work more efficiently. Gradually, we started offering solutions. In a way, apart from offering services now we are offering solutions. This Transition has made a huge impact on customer- company relationship for years to come.  Now, we know how to make a product better but ultimately the owner of the product has to take a call on the final implementation. Investment, Risk, maintenance and many factors are considered in this scenario where the owner can back out avoiding any disturbances for the existing happy flow. But, the forecast analysis and the calculated returns can help in convincing a customer for playing a safe game. This is the key part of the whole deal to make it successful.\r\nThese concepts are well understood if we pursue an MBA. I believe this degree will help me in taking to newer heights in my career. Being on par with the current technologies and understanding the business shall give us a different identity all together.\r\nFor all the budding Ideas that I experience during my internal thought process, they are restricted at some or the other level in the process of deeper analysis. Reasons being several, lack of knowledge in marketing things, level of understanding in the real world business and the risk factors. I strongly believe that this course will be extremely helpful for me to overcome the above challenges and proceed a step further to achieve my dream.', '1137501832_Resume_Uday.docx', 'My name P.V.Uday Bhaskar, I Introduce myself as the elder son of P.V. Ravi Kumar and P. Vijayendira. My father, works at IDBI bank holds a position for Asst. General Manager. He has an experience of over 30 years in banking sector, prior to that he has been a major contributor in IT for various organizations. My Mother completed her MSc. Pharmacy with a B.Ed. and worked as a secondary school teacher. Currently she is a homemaker. I am also a brother to P.V.Ramya, currently working as an associate in IVY comptech. \r\nBorn In Guntur (Andhra Pradesh) and bought up in various places majorly in Mumbai and Hyderabad. I have completed my secondary education in Ryan International School, Mumbai. I should agree to the fact that today majority of my personality is captured from this period of my life. My experiences and exposures at this budding age were very exciting. I was moved to Mumbai when I finished my 6th standard, Countless number of challenges was faced by me. Culture, Language, Schooling and many more. These challenges in turn taught me back how to overcome them. Learningâ€™s at that stage continue to be supporting my life till the end. Later I moved to pursue my higher education in Sri Chaitanya College, Hyderabad. I choose myself to join this college. It was a boyâ€™s hostel and it has given me the courage to overcome any kind of hardships we encounter in our lives. Factors that were tested in students were not just the Intelligence but Our Patience, Hard work, Strength and many more were also included. Nevertheless, we managed to capture some unforgettable moments during that period as well.\r\n2 years of my hard work has fetched me a seat in KL University. Having exposure to subjects like Physics and mathematics, Core areas like Mechanical/Electrical was my first choice of interest. Adhering to it, I have opted for Mechanical Engineering. The most exciting part of this course is, every theory is explained with an experienced example. Additional to my college curriculum, During my Sophomore year I have been selected as a Public relation manager for one of the Non-Profitable Organization called ASME in our college. Adding to the personality I attained during my school days, this period has actually given me a chance to implement it. ASME- American Society of Mechanical Engineering is a Training and development Program run in parallel to the engineering curriculum. Students having membership in this society have access to monthly magazines, Comprehensive course offerings and a forum where they can exchange and discuss on various subjects.  I was responsible for promoting and organizing various events conducted under this banner. This has given me a great opportunity for me to participate in various competitions across various places in India representing my college. \r\nWorked on a project called Hydranoid(A robot that completely works on hydraulic mechanism), a model building competition conducted by IIT-Bombay on Jan-2011. Later we got an opportunity to participate in a competition called Impule- A water rocket building competition conducted by IIT-Kharagpur on 2012. These two competitions have given us tremendous amount of knowledge and great learningâ€™s. Adding to it, it has given us a great recognition back in our college, as we were the only team to be selected from our college surpassing many levels of scrutiny. I will always be thankful to all these opportunities and experiences. Later I have passed on my responsibilities to my juniors and moved on. Given a chance, Our Team was given a chance to continue the same relationship with ASME by taking Masters in US as an option and provide inputs to our college and dive the organization from there. But, I have chosen to stay in India. \r\n', '2017-07-17 05:35:04', 109),
(15, 'Hello ', '2434354352', '', '', '', '2017-07-17 05:35:04', 110),
(16, 'dfdfdfdfd', 'dsfsddfdsf', '', '', '', '2017-07-17 05:35:04', 114),
(17, '', '', ' asdf asd asdfa asdfas asdf asdf', '602123841_Admissions Criteria.png', 'hello okay', '2017-07-19 01:35:24', 117),
(18, '', '', 'Topic: Given your already demanding job and your desire to remain committed to important personal obligations, how do you plan to handle the additional demands on your time once you enroll?\r\nI believe that learning is a continuous process. Any opportunity, when utilized in the right direction, at the right time and for the right purpose can add great value to your life. This is the best time and opportunity for me to learn and mould my professional life into the shape I\'ve always dreamt of. As I say so, I would also like to add that I have the strongest desire and determination, now more than ever, to travel that extra mile, which brings me closer to my goals. I understand that it requires a lot more discipline and might also involve a few sacrifices but I am ready to roll up my sleeves, get my priorities right and enjoy this journey of learning.\r\nAs an example of having dealt with the pressure of multi-tasking in the past, I would like to mention about the period during my college days, when I had to take up multiple responsibilities at the same time, all of which were crucial to each project.\r\nI was the Vice-Captain of a team of 21 members, the team representing JNTUHCEH for the Hybrid Go-Kart Challenge conducted by ISIE, Punjab. Being one of the leaders in the team, apart from offering time and effort,it was my responsibility to keep the team motivated for the uphill task ahead. I was also the Placement Coordinator for the Electrical Department and hence I had to act as the medium of communication between the Placement Office and the students, also making sure to keep myself available whenever a company visited the campus for placements. It was also at the same time when I was a member of the organizing team of our college fest, \'Pragnya\', which is always taken as a prestigious event by every batch, where we took every possible step to make it grander and more successful than the last one. Above all, I could never have risked losing my focus on the major project, which is the most important thing for any student in his/her final year. I feel proud to have managed all these things well without ever letting my smile disappear or feeling emotionally drained. \r\nTalking about my personal life, I feel really blessed to have such understanding and encouraging family and friends. I\'ve always been the most pampered member among my family, friends and colleagues, so spending time with my peers or family has always been a stress-buster for me. They are always supporting and cheering me to work hard and put extra efforts, as they all believe that I am really talented and capable of achieving great things. It is their constant support and encouragement that keeps pushing me in the right direction. \r\nWorking for a US based client brings me to the advantage of going late to work in the morning. I spend morning hours of my day for my own self, doing things that I love the most. This lightens me and gives me enough energy to take up the challenges that come my way during the normal working days. I can have a lot of time to devote to my coursework in the mornings because of this flexibility in my schedule. I believe in the philosophy that we have to make time for our priorities and that there is always enough time in the day if you are motivated enough. So a bit of analysis in my routine will allow me to identify the unproductive hours of my day, which can then be transformed and spent for my studies. Also, my interest in the subject and the sheer pleasure I would get from the completion of this course will push me beyond my usual boundaries.\r\nDifficult roads often lead to beautiful destinations. So with proper discipline and planning, I am confident that I can perfectly balance my work, personal life and education, doing proper justice to all, without having to compromise on occasional recreation and fun.', '751443353_Resume_SWETHA_KALLAM.docx', 'Knowingly or unknowingly, every moment of our life involves management. Let it be time, resources or space, when managed properly can do wonders. I have always been fascinated by how the simple concepts of Management when applied in various stages and situations of life can change the entire outcome of it. \r\nAs a school student, I have always been a pro-active and enthusiastic one. Any competition or challenge has always intrigued me. One would find me enrolling in every school activity. I took part in Elocution, Oration, Debate and Social activities because thatâ€™s where you meet new people and are exposed to different points of view. These activities have not only provided me a platform to present myself but also introduced me to the art of communication and management. Having said that, I was always among the top 3 students in my class and one of the favorite students of my teachers. I was chosen as the â€˜Class Representativeâ€™ in every standard and developed a passion for leadership and managerial roles at that very young age itself.\r\nMy graduation years in Jawaharlal Nehru Technological University College of Engineering Hyderabad (JNTUHCEH), one of the top Engineering Colleges in India, was the best phase of my life. The faculty, friends and the environment fitted into the perfect portrait I had always imagined. It was there, that I have grown up as an individual giving shape to my childhood dreams, converting them into professional goals. \r\nWhile most of my peers were in dilemma on what to pursue or do next, I had always a clear idea about the path that I would choose. My focus was always on pursuing an MBA and I made sure I grabbed every opportunity that would aid me and enhance my team-building, communication and leadership skills. One such opportunity that came along the way was HGC (Hybrid Go-Kart Challenge).\r\nUntil now, every event that I have been part of was at college level but now we were representing our college at a national level challenge. The team consisted of members from two different departments and I was chosen as Vice-Captain for the team â€˜Blazing Kartersâ€™. During that period, I got insight into team dynamics and hurdles that one comes across along the way. Understanding the interests and abilities of each member of the team and assigning the tasks such that their individual interests are aligned with the team interests and goals was one such thing.\r\nCurrently, I am working as a Developer in Tata Consultancy Services Ltd (TCSL) for a US-based Client, Moodyâ€™s Corporation. Among all the associates who have joined the project as freshers, I am one of the very few who have obtained a â€˜5â€™ rating in the Final Anniversary Appraisal Process and an â€˜Aâ€™ rating in the Project End Appraisal. With my quick-learning abilities, I have understood the business of the Client very soon. I am considered as a very dependable person in the team by my colleagues and supervisors. \r\nMy source of inspiration is my family. Coming from a background where agriculture was the primary source of living, my father was the first person in their family to have completed his degree and my brother is the first engineer from our family. I have learnt from my father, the quality of always keeping your mind open to opportunities and utilizing them at the right time. â€œWhen your passion and purpose are greater than your fears and excuses, you will always find a way,â€ is something that I have learnt from my brother. The moral values taught by my mother molded me into the person I am today. Patience and tendency to stay calm in any situation are the key qualities that I have inherited from her.\r\nGiven a problem/requirement, I consider various ways of approaching it, keeping in mind the feasibility and pros and cons of each of them and then identify the most suitable and efficient solution/design. This ability of mine, to make rational judgment based on relevant information is highly appreciated by my team-mates. As an engineer, I try to find simple ways of doing complicated things which reduces the time and effort substantially without compromising on the quality, making me efficient and almost always accurate in my work. \r\nTCS was one among the first few companies to visit our campus for placements and I had been selected for it. Considering the financial conditions of my family during my graduation, I opted for the job and decided to pursue MBA down the lane after two years. Today, I find myself ready and I think this is the best opportunity where I can continue with my professional career while I am also learning and enhancing my skills.\r\nThis business degree would help me go farther than I could go with my engineering degree alone. The contents of the course curriculum when added to this technical knowledge and experience of mine can prove to be a great combination and skill set required for any managerial role. Understanding technology and its application is highly essential for a leader to drive the project towards successful completion.The major factor that influenced me towards applying for this course is the uniquely designed Technology Oriented Management curriculum.\r\nThe course furnishes me with the opportunity of studying in a prestigious university like GITAM. I am looking forward to the cultural diversity and professional expertise that can be gained from your University. To learn from the renowned faculty who are experts from various leading fields would be a price-less experience.\r\nGiven a chance to study at your esteemed university, I would strive to be worthy of my own expectations and those of my parents and colleagues.', '2017-07-27 16:00:34', 113),
(19, '', '', 'Hfkjekeshkesjryhworhk', '554111674_TANUJA - INTRO.pdf', '', '2017-07-28 01:57:12', 120),
(20, '', '', 'Dlksjet\'s akrus; \'W\"ERsfxdjh', '1416473726_Zinka Badge3.jpg', 'WWrhSZGN NRDGFURFG', '2017-07-28 02:12:10', 124),
(21, '', '', 'asdf asdf', '1966623987_Desert.jpg', 'laksjd las dflka sdlkf jasd', '2017-07-28 02:50:16', 125),
(22, '', '', 'asd asdf ', '1829521440_Jellyfish.jpg', ' asdf asd ', '2017-07-28 04:02:05', 130),
(23, '', '', 'as asdf', '1448910660_Koala.jpg', ' asdf', '2017-07-28 05:17:13', 135),
(24, '', '', 'htkkmnj', '', '', '2017-07-28 16:21:02', 137),
(25, '', '', 'fwe saedwa dwad 5t wsrds\'d gdfswdf s seda dadaw dsfea daq (1) Explain why you want to earn an MBA (E) and how it will contribute to your personal and professional goals.\r\n(2) The most challenging team experience for the candidate including the role the candidate played, the factors that made it a challenge, how the group addressed the issues, and learnings from the experience.\r\n(3) Given your already demanding job and the desire to remain committed to important personal obligations, how do you plan to handle the additional demands on your time once you enroll?', '1576508699_apssdc.png', '(1) Explain why you want to earn an MBA (E) and how it will contribute to your personal and professional goals.\r\n\r\n(3) Given your already demanding job and the desire to remain committed to important personal obligations, how do you plan to handle the additional demands on your time once you enroll?', '2017-07-28 22:24:50', 143),
(26, '', '', 'efs s fse  sefsdf sdfs ef se s seffe sxefsd', '1854439575_website-checklist.pdf', 'dfs efs sdffse sfsefs fs', '2017-08-01 20:26:56', 146),
(27, '', '', 'emc2 - MBA in Emerging Technologies from HBS, GITAM University and Blackbuck Engineers Pvt. Ltd. is one of the best programs for people aspiring to be leaders in technology organizations. The world needs more leaders with deep understanding of technology and management. To meet this need, the EMC2 Program brings experts from academia and industry to deliver India\'s first MBA in Emerging Technologies.', '1824227575_AnuradhaThotaProfile.pdf', ' Mission: Help aspirational people discover their highest human potential - Working with Gitam University for EMC2 - Executive Master Class Dual Post Graduate Program\r\n\r\nâœ” Dream: Work for Innovation in India - Working through our incubation centers at Andhra Pradesh to develop such a product.\r\n\r\nâœ” Committed: to lifting aspiration and raising educational achievement of every Technology student - Through our online platform \'Zinka\'.\r\n', '2017-08-02 15:52:12', 147),
(28, '', '', 'FXGHDF', '706464735_emc2brochure.pdf', 'Academic student activities refer to clubs and programming specifically focusing on scholarly endeavors. This can take the form of major-based or area of study-based clubs or programs and events designed to educate students in any scholarly subject matter.\r\n\r\nSome examples of academic student activities would be:\r\n\r\nAccounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society\r\nCivic Engagement[edit]\r\nCivic engagement generally refer to clubs and programming focusing on creating positive societal change. Some of these activities may also fall under the academic category as these activities may work to educate students about social issues and the importance of getting involved.\r\n\r\nSome examples of civic engagement activities would be:\r\n\r\nAction in Africa\r\nColleges Against Cancer\r\nLions Club School Chapters\r\nCircle K International\r\nPolitical Party-Based Clubs\r\nCollege/University Day of Service\r\nDiversity/Cultural[edit]\r\nDiversity or cultural student activities generally refer to clubs and programming focusing on representation of minority groups on campus. These activities may also fall under the academic category as these activities work to educate students on cultural differences.\r\n\r\nSome examples of diversity/cultural activities would be:\r\n\r\nBlack Student Union\r\nAsian Pacific Student Association\r\nFeminist Club\r\nQueer-Straight Alliance\r\nDisability Alliance\r\nDiversity Training Programs\r\nHonor Societies[edit]\r\nHonor societies are organizations that recognize academic excellence among students. These organizations are usually exclusive to students who have excelled academically, based on scholastic ranking and/or grade point average. Honor societies are usually national or even international organizations that have established chapters at certain colleges and universities.\r\n\r\nSome examples of honor societies are:\r\n\r\nNational Society of Leadership & Success\r\nNational Society of Collegiate Scholars\r\nAlpha Kappa Delta\r\nMortar Board National College Senior Honor Society\r\nLeisure[edit]\r\nLeisure activities refer to clubs and programs that give student opportunities to connect with stunts with similar hobbies and simply to take time pure enjoyment and fun.\r\n\r\nSome examples of leisure activities would be:\r\n\r\nA cappella Groups\r\nImprov Troupes\r\nFan Clubs\r\nCooking Club\r\nRecreational[edit]\r\nRecreational activities refer to clubs and programming that involve some form of physical activity.\r\n\r\nSome examples of recreational activities would be:\r\n\r\nDance Team\r\nIntramural Sports Teams\r\nSurfing Club\r\nSports Tournaments\r\nReligious/Spiritual[edit]\r\nReligious/spiritual activities refer to clubs and programming that allow students to connect with other students of similar faiths, practice their chosen faith, and/or learn about other faiths. Many schools have a faith center where these sorts of programs take place.\r\n\r\nSome examples of religious/spiritual activities would be:\r\n\r\nInterfaith Council\r\nFellowship of Christian Athletes\r\nInternational Justice Mission\r\nLatter Day Saint Student Association\r\nStudent-Run Event Planning Board[edit]\r\nA student-run event planning board is a group of students that work under a faculty advisor to plan events for students, such as concerts, speakers, dances, movie screenings, etc. Generally, this board is also responsible for hosting special tradition-type events. These types of groups are often funded by grants from the college or university.\r\n\r\nStudent-Run Businesses[edit]\r\nStudent-run businesses can be any sort of business that has an affiliation with the college or university and is almost completely, if not completely, run by student workers.\r\n\r\nSome examples of student-run businesses would be:\r\n\r\nCollege/University Radio Station\r\nCollege/University Local Television Station\r\nProduction Company\r\nAdvertising Firm\r\nGreek Organizations[edit]\r\nGreek organizations include fraternities and sororities, which are exclusive social organizations. These groups are referred to as \'Greek\' for their names are made up of two or 3 greek letters. These organizations generally focus on the betterment and empowerment of members. Students go through a \'bidding\' process in order to be initiated into one of these organizations. Universities and colleges also have Panhellenic and Inter-Fraternity Councils, which act as the governing body over Greek organizations. Some honor societies can also be considered Greek organizations due to their Greek letter affiliation, however these organizations tend to be co-ed, while fraternities are all-male groups and sororities are all-female groups.\r\n\r\nSome examples of Greek organizations are:\r\n\r\nAlpha Gamma Delta\r\nDelta Tau Delta\r\nPi Beta Phi', '2017-08-02 17:31:56', 149),
(29, '', '', '    SDHYJUK sdvfgnjhn   gnfgjhklk;lkj waer ttui sreytrtu iloi; edrfetuyujtyujr  QWEWRW TTY6ETY', '685850991_contactblack.php', 'tdahfsdhjdsvhjdsfdfj jhsdfjsdkjf jusdfsdlif sdjkfksdfkjl sidfselkfsdkj sudhf sdf;sd sd;f hsadfh;sdhf; usdhifhiosadfio uhjdduhfufspio[fpofd vfbjgyljksf;fsd; lfglsfdg dfgdfgdfghsdfg aserfdrgdrg asrgttdhfyjtyuju7y6 aerte5y544uyu6', '2017-08-02 18:00:04', 150),
(30, '', '', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that isWe love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '1662960479_Penguins.jpg', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that isWe love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '2017-08-02 18:25:25', 151),
(31, '', '', 'An article (with the linguistic glossing abbreviation art) is a word that is used alongside a noun (as a standalone word or a prefix or suffix) to specify grammatical definiteness of the noun, and in some languages extending to volume or numerical scope.\r\nThe articles in English grammar are the and a/an, and in certain contexts some. \"An\" and \"a\" are modern forms of the Old English \"an\", which in Anglian dialects was the number \"one\" (compare \"on\" in Saxon dialects) and survived into Modern Scots as the number \"owan\". Both \"on\" (respelled \"one\" by the Norman language) and \"an\" survived into Modern English, with \"one\" used as the number and \"an\" (\"a\", before nouns that begin with a consonant sound) as an indefinite article.\r\nIn many languages, articles are a special part of speech which cannot easily be combined[clarification needed] with other parts of speech. In English grammar, articles are frequently considered part of a broader category called determiners, which contains articles, demonstratives (such as \"this\" and \"that\"), possessive determiners (such as \"my\" and \"his\"), and quantifiers (such as \"all\" and \"few\").[1] Articles and other determiners are also sometimes counted as a type of adjective, since they describe the words that they come before. [2]\r\nIn languages that employ articles, every common noun, with some exceptions, is expressed with a certain definiteness, definite or indefinite, as an attribute (similar to how many languages express every noun with a certain grammatical numberâ€”singular or pluralâ€”or a grammatical gender). Every noun must be accompanied by the article corresponding to its definiteness, and the lack of an article (considered a zero article) itself specifies a certain definiteness. This is in contrast to other determiners and adjectives, which are typically optional. This obligatory nature of articles makes them among the most common words in many languages; in English, for example, the most frequent word is the.[3]\r\nArticles are usually categorized as either definite or indefinite.[4] A few languages with well-developed systems of articles may distinguish additional subtypes. Within each type, languages may have various forms of each article, due to confirming to grammatical attributes such as gender, number, or case, or else modified as influenced by adjacent sounds as in elision (e.g., French \"le\" becoming \"l\'\" before a vowel) or epenthesis (e.g., English \"a\" becoming \"an\" before a vowel).', '1132153861_Nagesh_QA_Mngr.docx', 'An article (with the linguistic glossing abbreviation art) is a word that is used alongside a noun (as a standalone word or a prefix or suffix) to specify grammatical definiteness of the noun, and in some languages extending to volume or numerical scope.\r\nThe articles in English grammar are the and a/an, and in certain contexts some. \"An\" and \"a\" are modern forms of the Old English \"an\", which in Anglian dialects was the number \"one\" (compare \"on\" in Saxon dialects) and survived into Modern Scots as the number \"owan\". Both \"on\" (respelled \"one\" by the Norman language) and \"an\" survived into Modern English, with \"one\" used as the number and \"an\" (\"a\", before nouns that begin with a consonant sound) as an indefinite article.\r\nIn many languages, articles are a special part of speech which cannot easily be combined[clarification needed] with other parts of speech. In English grammar, articles are frequently considered part of a broader category called determiners, which contains articles, demonstratives (such as \"this\" and \"that\"), possessive determiners (such as \"my\" and \"his\"), and quantifiers (such as \"all\" and \"few\").[1] Articles and other determiners are also sometimes counted as a type of adjective, since they describe the words that they come before. [2]\r\nIn languages that employ articles, every common noun, with some exceptions, is expressed with a certain definiteness, definite or indefinite, as an attribute (similar to how many languages express every noun with a certain grammatical numberâ€”singular or pluralâ€”or a grammatical gender). Every noun must be accompanied by the article corresponding to its definiteness, and the lack of an article (considered a zero article) itself specifies a certain definiteness. This is in contrast to other determiners and adjectives, which are typically optional. This obligatory nature of articles makes them among the most common words in many languages; in English, for example, the most frequent word is the.[3]\r\nArticles are usually categorized as either definite or indefinite.[4] A few languages with well-developed systems of articles may distinguish additional subtypes. Within each type, languages may have various forms of each article, due to confirming to grammatical attributes such as gender, number, or case, or else modified as influenced by adjacent sounds as in elision (e.g., French \"le\" becoming \"l\'\" before a vowel) or epenthesis (e.g., English \"a\" becoming \"an\" before a vowel).', '2017-08-02 18:36:58', 152),
(32, '', '', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal NavyAction (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal NavyAction (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal NavyAction (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal NavyAction (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', '1132734641_EEE.doc', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal NavyAction (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', '2017-08-02 18:46:18', 155),
(33, '', '', 'few sfd esfrsdf sfse ewr f\'u gdrtg hgdgradg ', '1309567499_broucher.pdf', '4VB W RWE RF DFD DFS SF  SFS FS efesd sds fse', '2017-08-02 20:26:41', 153),
(34, '', '', '', '666510427_broucher_3.pdf', 'ewt ewr e4rwrt edeygrd mdtw', '2017-08-02 22:28:11', 157),
(35, '', '', 'ksdgfk\r\nfk;d\r\n\'dskf\r\nskf\'\r\nfkagds k\r\ndk \r\ndsk\'k gak\r\n kfs\r\n\'gk ak', '207550330_Java Interview questions-I.pdf', '\r\nsd\' fgksd\'g\r\ndkg\'\r\ndf', '2017-08-03 17:15:28', 160),
(36, '', '', 'Since my childhood, I have always been fond of managing events, be it a surprise birthday party for a family member or be it organizing a road side stall of Lord Ganesh during Ganesh Chaturthi festival. Managing events has always been my passion and I have always taken a step forward as and when I get the opportunity to manage an event. \r\n\r\nAs I grew and started working, I realized that not all events are so easy to manage. We need proper knowledge and experience to manage things smoothly, there would be many huddles that would come but in orders to cross those huddles I would need more knowledge and expertise. I need to learn different techniques to handle things in a better and different ways.\r\n\r\nThis MBA is going to help me gain the knowledge and expertise to grow in the field of management. I am team lead now and manage a team of 6 members, as I grow in the organization I would have to handle much more people, projects and events.\r\n\r\nI am playing the role of a project coordinator for some small projects within the company, but soon I would like to see myself in the position of a Project Manager. I personally feel that any person without having the base or the foundation knowledge of management cannot manage things in a longer run.\r\nThis MBA not just gives me the foundation but is also going to help me build advance technical skills which is going to help me boost my career to the level I wish to see.\r\n', '43575123_Pawan Pawar.docx', 'I started my career with WIPRO BPO as an Associate providing technical support to Customers using HP laptops. Had a very good experience at WIPRO, learnt a lot about customer service, learnt how the IT industry works, \r\n\r\nWhen I started working for IBM, it was one level up. This was a complete different way of doing the same work. Wipro was a Business to Customer process and IBM was a Business to Business process. Here at IBM I would support people work for organization where IBM has provided the IT infrastructure. With the hands on experience from Wipro I was easy able to grasp the work at IBM.\r\nI became a process trainer in 6 months and would train the new comers. Then was moved to workload management team and there by a Team lead for workload manager.', '2017-08-12 05:06:31', 145),
(37, '', '', '', '1626853988_Soumyajit Sarker_cv_28July.pdf', '', '2017-08-17 23:33:35', 180),
(38, '', '', 'The most challenging team experience for the candidate including the role the candidate played, the factors that made it a challenge, how the group addressed the issues, and learnings from the experience.\r\n\r\n\"Don\'t try to re-invent the wheel.\" said my colleague, Soumith after I and my team consisting of 6 Manual and Automation testers showed our solution for a framework  for Netcool in UBS. The solution was a re-engineered process to build a framework for the core services for Netcool application that is the heart of our client UBS. I had developed a similar solution earlier, so I was confident that the new solution which myself and the team developed was efficient and versatile enough to handle the upcoming product upgrades.\r\nThe next day, I approached my client manager and told him how confident I was about the solution and explained him the benefits of adopting it. But he told that he and the onshore team were not confident about the solution.He also told that since we were dealing with a system that was important part of Netcool,it required more than just a presentation to convince the team.\r\nDisappointed, but confident,I decided to prove my results by gathering the supporting data and demonstrating my team with sample prototype as I was the one who proposed the improvement theme and the complete team had put their efforts in making it a success. Over the next month, we worked on building a presentation to demonstrate the benefits of using our framework , and collected few studies to support our theory.\r\nA month after the last meeting, I approached my client manager and proposed him my plan. I also showed him few case studies and explained him how the new solution could help the client cut down 20% of the maintenance cost and also the manual efforts spent on supporting the application. Then I addressed some of his concerns related to security. Impressed with teams analysis, the client manager agreed for the presentation .\r\nPersonally, overcoming this challenge is significant to me in terms of my confidence. Since then, I have never hesitated in expressing my opinion, and it has helped me provide many valuable contributions to the projects', '68004917_Resume.doc', 'I am currently a Systems engineer in Cognizant Technology Solutions. I have held this position for 2.5 years. I am interested in studying an MBA to learn from industry leaders, and explore and through team projects. I am also keen to develop my management and strategic thinking to my skills.\r\nMy current role has involved analyzing a requirement from scratch and then giving all the possible ways of carrying functional testing keeping in mind all the risks, assumptions, entry and exit criteria\'s, various testing methodologies involved. I interact with Business analysts and clients day in and out for all the activities involved as part of my role.\r\nMy strengths include innovation, excellent communication skills and a good team player. I being a active member of the entertainment committee organize the team building activities for my team.\r\nI am interested in the MBA principally to further develop my management and collaborative style so I am keen to assess current skills and build additional ones, particularly strategic thinking and to acquire knowledge on the emerging technologies.\r\nI being a athlete have a great sportsman ship and enthusiasm to learn new things ', '2017-08-22 20:44:40', 183),
(39, '', '', 'I would like to improve my skills and my network in my area of learning. I want to build good leadership skill in professional work. ', '1599488213_D RAVIKUMAR_10-08-2017.doc', 'Good decisions comes from Experience, but Experience comes from Bad decisions. This is life....So don\'t worry for any mistake. Go ahead & learn from them.\r\n\r\nI would like keep doing trails & keep attempting chances till I will succeed. ', '2017-08-26 23:30:51', 168),
(40, '', '', 'I have an Interest to do Executive MBA to boost up carrier.', '933379155_', '', '2017-09-05 22:15:16', 194),
(41, '', '', 'My first reason to opt MBA program is to re-start my educational career. I was likely towards this programs because regardless of the specialization EMC2 provide MBA program with conceptual, theoretical and practical training in various aspects of business like economics, operations marketing, basic accounting, corporate finance etc. For me my foremost professional goals is to not stop my educational career and run to simultaneously with my professional career. To work in an environment which utilizes my knowledge , experience and improves upon them  for a challenging position.', '', 'As a person, I\'m pragmatic and simple in nature. I love to live-in where i grow. I started my professional career in the year 2014. I\'m a B.tech graduate with an Aggregate of 75.6. After 6 months of probation period, i was into Telecom project( British Telecom) and started as an ASG person and later moved into L3, IVVT, Development team. Now my current role in project is Component Designer. I came across many people who inspired me to extent that added to my career. Never give up attitude is what I have that kept boosting my confidence all the time. \r\nApart from work life, I like to hang out with friends, movies and explore places. Food is my first love. And I love music.', '2017-09-10 17:10:17', 215),
(42, '', '', 'While going through my Schooling in Social Economics, i have learned that the entire world runs on Money and the backbone of all our development is Economics. I have developed good interest in finance (Expect some finance related questions) and MBA is the only degree that gives insight into Finance. Also, I have interest in finance specific field, like corporate finance or equity research etc etc> which can get further direction by an MBA. As MBA also gives a complete understanding of business, i will be able to become a great asset to my organisation. I am a passionate towards my work, dedicated in my endeavor and efficacious in my approach. An MBA will get me a step closer to my dream of becoming a top executive for a Fortune 50 company.', '1951589262_Ashwini Madiri resume.docx', 'I have completed my B.TECH in 2016 and I got joining letter from \"GLOBAL LOGIC TECHNOLOGIES for GOOGLE\", as that was my first job I was very Happy and enthusiastic i have performed very well.\r\nI was assigned to project called \"SEARCH AND PLATFORMS\".\r\nPresently I am working for ACCENTURE as an SME.', '2017-09-11 01:57:59', 200),
(43, '', '', '', '1163588186_CHANDRAKANTH_RESUME.doc', '', '2017-09-14 04:33:17', 219),
(44, '', '', '', '999579104_Sai Raghav Resume.doc', '', '2017-10-21 14:30:37', 232),
(45, '', '', 'I want to earn MBA to ensure my future safety and to increase my knowledge', '248535091_sai new resume expr.docx', 'I\'m very much interested in learning and development', '2018-02-19 23:16:53', 273),
(46, '', '', '...', '759986177_Santhosh Khumar.V.docx', '11 years of experience in PS Business systems and infrastructure frame work , CRM and Business Intelligence applications. Currently designated as Sales Ops program Manager3 with NetApp in the Global Professional Services Operations. A thorough professional with a proactive attitude, capable of thinking in and out of the box, generating new solutions and ideas. Possess excellent interpersonal, communication and organisational skills with proven abilities in team management. To be a part of an organisation that recognises my skills and provides me with suitable environment to perform to the best of my ability.', '2018-03-11 05:44:29', 285);
INSERT INTO `personal_info` (`id`, `name`, `mobile`, `essay`, `resume`, `personal_sta`, `date`, `user_id`) VALUES
(47, '', '', 'I LOVE MANAGING THINGS. IF I HAVE A MBA DEGREE I WILL BE GIVEN A CHANCE TO MANAGE WHERE I CAN PROVE MY SKILLS AND WILL DO THE BEST FOR THE ORGANISATION', '1744918263_Pratabinda Cv .docx', 'I HAVE AN EXPERIENCE OF 1 YEAR 2 MONTHS IN DATA ANALYST. I LOVE SPORTS FOOTBALL IN PARTICULAR. I LOVE TRAVELLING TO NEW PLACES.', '2018-03-12 20:59:53', 287),
(48, '', '', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '316477086_schedule1.xlsx', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2018-05-18 16:07:30', 302),
(49, '', '', '', '306177098_Hemanth Kumar Resume.pdf', '', '2018-06-27 18:05:39', 307),
(50, '', '', 'noe', '495263558_Prajna Resume.docx', 'Here I am Prajna Shetty I am Computer Science Engineer 2018 pass out From Atria Institute of Technology Bangalore, Iam Basically from Udupi, I have good communication and good listning skill.', '2018-07-18 17:57:13', 309),
(51, '', '', '', '1639462923_Resume_Rajesh.pdf', '', '2018-08-05 02:52:24', 314),
(52, '', '', 'I have estimate the work assigned and able divide task the task into a subtask then I will start work on it , \r\n\r\nI have observing which is the highest priority then will give priority for task ', '1619539069_RaviShankar NM_ BE Java J2EE  3 years Experinced Resume 1.pdf', 'My family is in chitradurga. My father is working in sunflower oil mill, my mother is house wife my brother is working in godrej company', '2018-08-22 14:26:39', 316),
(53, '', '', 'Mainframes developer ', '1332914717_SupriyaAdidam_Mainframes_CV.docx', 'Good mainframes developer ', '2018-09-05 18:15:25', 323),
(54, '', '', 'Completed BE in Computer Science from Visvesvaraya Technological University, T John Institute of technology Bangalore with 65% in the year 2013\r\nPersonal Profile:\r\nFatherâ€™s Name   - Chittiappa C K\r\nAddress               - 10/9, 4th cross Maruthinagar, Madiwala, Bangalore- 560068\r\nHobbies               - Creating websites, Reading Novels\r\n', '146855698_neethi resume.docx', 'â€¢	Sound working knowledge of On page and Off page Optimization.\r\nâ€¢	Involving in selecting specific key phrases for which the site or individual pagesâ€“should be optimized.\r\nâ€¢	Having good experience in optimizing Meta Title, Meta Description, Meta Keywords,  H1, H2, H3 and various HTML tags (on page optimization).\r\nâ€¢	Back Link Campaign: Article Submission, RSS Feed Submission, Press Release submission, Blog Optimization/Submission/Commenting, Directory Submission, Classified Submission \r\nâ€¢	Using tools Keyword Planner, Webmaster tool, Analytics .\r\nâ€¢	Creating xml sitemaps and HTML sitemaps for Google, Yahoo and Bing.\r\nâ€¢	Analyzing the site from the SEO point of view, Implementing 301 Redirect,Broken Links, Canonical Redirect. \r\nâ€¢	Building proper back links for better rankings in SERPS.\r\nâ€¢	Submitting websites in various search engines like Google, Yahoo so on and also in various directories\r\nâ€¢	Continually monitor organic search rankings to maximize traffic.\r\nâ€¢	Choosing best domain names for particular website to get better Search ranking.\r\nâ€¢	Tracking website users using Web Analytics (Google Analytics).\r\nâ€¢	Motivated and enthusiastic in learning and implementing new technologies.\r\n', '2018-09-17 01:52:59', 325),
(55, '', '', '', '143953003_Rashmi_3Yrs_Automation_testing.docx', '', '2018-09-22 22:39:52', 328),
(56, '', '', 'Bachelor of engineering', '1158452922_G CV.docx', 'I completed my bachelor of engineering and I am searching for a job', '2018-09-27 20:57:11', 331),
(57, '', '', '', '1167054328_Sunil Mishra - CV.docx', '', '2018-09-27 21:46:13', 332),
(58, '', '', '', '468669573_Harish TAG.docx', '', '2018-11-02 16:29:59', 337),
(59, '', '', 'I want to achieve my goals so that I want to pursue MBA from this reputed University.', '41664096_Yalala Ravi.docx', 'I am Ravi working with HSBC and having 9 years of experience and I am from Hyderabad. ', '2018-12-05 16:46:38', 339),
(60, '', '', 'I am interested to be part of  EMC2', '911035588_Noor Alam.docx', 'I am a king of person who is involved in learning new Technologies', '2019-01-25 01:45:58', 344),
(61, '', '', 'Challenging about role : \r\nIn my previous organization Ada testing is very challenging role because need to think as Ada user who has disability and test the application accordingly and to over come much more practice is required and also continuous focus on what the job role is to be.', '135362094_Resume.doc', 'Experience : 4+ yrs of experience in Mobile Platform and worked on various domains such as Pharmacy,Banking,Healthcare and also E-Commerce and as always life keep you to learn and grow i like to grow on continuous learning.\r\nPersonal:I am unmarried and i have siblings two who are elder to me and they got married.\r\nPersonal interest : Construct an dancing school and teach dance classes.', '2019-03-14 18:23:07', 349),
(62, '', '', 'Having 6+ years of Experience on IT infrastructure and to pursue an excelling career in an organization that provides a challenging work environment and gives me scope to update my knowledge and skills in accordance to the latest trends in the industry and be part of a team that dynamically works towards growth of the organization.', '260522492_Hemanth Linux 5+years.docx', 'I have 6 years of experience in Linux and Exadata hardware i am very good at Linux Admin.\r\nI am looking for better opportunity to build my carrier.\r\nI got more than 25 SR Sat  and  i am the only person who got more CSAT in my previous Organization ', '2019-04-15 14:02:41', 358),
(63, '', '', 'Looking for procurement ', '385664475_PROCUREMENT ENGINEER.pdf', 'Mechanical engineer ', '2019-05-07 00:05:14', 360),
(64, '', '', 'business roles are the area where i am interested ,mba gives my opportunity to my goals', '', 'we are service based company and we work for lead manufacturer in aerospace domain', '2019-06-18 19:06:00', 361);

-- --------------------------------------------------------

--
-- Table structure for table `ppts`
--

CREATE TABLE `ppts` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `ppt` varchar(100) NOT NULL,
  `ppt_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ppts`
--

INSERT INTO `ppts` (`id`, `video_id`, `ppt`, `ppt_img`) VALUES
(1, 15, 'Basics_of_Managerial_Economics_Day1.pdf', 'Basics_of_Managerial_Economics_Day_1.jpg'),
(2, 16, 'P_AND_S_FINAL_INTRODUCTION_AND_DATA_COLLECTION.pdf', 'P_AND_S_FINAL_INTRODUCTION_AND_DATA_COLLECTION.jpg'),
(3, 17, 'random_variable_emba_day2.pdf', 'Random_Variable_EMBA.jpg'),
(4, 18, 'Marketing_Management_Day_1.pdf', 'Marketing_Management_Day_1.jpg'),
(5, 19, 'Managerial_Economics_Day_2.pdf', 'Managerial_Economics_Day_2.jpg'),
(6, 18, 'Has_Demonetization_Really_Helpe_In_Growth_Of_Paytm_Pixr8.pdf', 'Has_Demonetization_Really_HelpedIn_Growth_Of_Paytm.jpg'),
(7, 18, 'The_Maggi_ban_How_India’s_favourite_two_minute_noodles_lost_80percent_market_share_Livemint.pdf', 'The_Maggi_ban_How_India’s_favourite_two_minute_noodles_lost_80percent_market_share_Livemint.jpg'),
(8, 20, 'Managerial_Economics_Day_3.pdf', 'Managerial_Economics_Day_3.jpg'),
(9, 21, 'Marketing_Management_Day_2.pdf', 'Marketing_Management_Day_2.jpg'),
(10, 21, 'Economic_Valuation_of_Product_Features_100813.pdf', 'Economic_Valuation_of_Product_Features_100813.jpg'),
(11, 21, 'Accessing_Life_Time_Value_of_Software_Project.pdf', 'Accessing_Life_Time_Value_of_Software_Project.jpg'),
(12, 22, 'Introduction_to_Sampling.pdf', 'Introduction_to_Sampling.jpg'),
(13, 22, 'emba_1_CLT.pdf', 'emba_1_CLT.jpg'),
(14, 22, 'NORMAL_DIST_EMBA_Final.pdf', 'NORMAL_DIST_EMBA_Final.jpg'),
(15, 23, 'Managerial_Economics_Day_4.pdf', 'Managerial_Economics_Day_4.jpg'),
(16, 24, 'Confidence_Interval_Good_one.pdf', 'Confidence_Interval_Good_one.jpg'),
(17, 25, 'Managerial_Economics_Day_5.pdf', 'Managerial_Economics_Day_5.jpg'),
(18, 26, 'Marketing_Management_Day_3.pdf', 'Marketing_Management_Day_3.jpg'),
(19, 26, 'Cost_Of_Perfume.pdf', 'Cost_Of_Perfume.jpg'),
(20, 28, 'Financial_Accounting_Day_1.pdf', 'Financial_Accounting_Day_1.jpg'),
(21, 29, 'Managerial_Economics_Day_6.pdf', 'Managerial_Economics_Day_6.jpg'),
(22, 31, 'Marketing-Management-Day-5.pdf', 'Marketing-Management-Day-5.jpg'),
(23, 31, 'Marketing-Mix-in-day-5.pdf', 'Marketing-Mix-in-day-5.jpg'),
(24, 31, 'Marketing-How-Reliance-Jios.pdf', 'Marketing-How-Reliance-Jios.jpg'),
(25, 30, 'Financial_Accounting_Day_2.pdf', 'Financial_Accounting_Day_2.jpg'),
(26, 32, 'Marketing-Management-Day-6.pdf', 'Marketing-Management-Day-6.jpg'),
(27, 33, 'Managerial_Economics_Day_7.pdf', 'Managerial_Economics_Day_7.jpg'),
(28, 36, 'Marketing-Management_Day-8.pdf', 'Marketing-Management-Day-8.jpg'),
(29, 37, 'HypothesisTesting_Examples.ppt', 'Statistics-for-Managers-day-5.jpg'),
(30, 38, 'ME 9 Macroeconomics Inflation.pdf', 'M Eonomics day 9.jpg'),
(39, 40, 'Marketing Management Session 8.pdf', 'Marketing-Management-Day-9.jpg'),
(40, 42, 'Marketing Management Session 9.pdf', 'MM day10.jpg'),
(41, 45, 'ME 10 Monopoly Antutrst Laws and a Case Study.pdf', 'ME10.jpg'),
(47, 50, 'Marketing Management Session 11.pdf', 'MM12.jpg'),
(48, 48, 'Marketing Management Session 10.pdf', 'MM day10.jpg'),
(49, 53, 'ME 11 Unemployment Interest Rate & Money.pdf', 'ME11.jpg'),
(50, 59, 'Marketing Management Session Batch 2 Session 1.pdf', 'MM batch2 day1.jpg'),
(51, 60, 'Stats - 19May18.pptx', 'Statistics-for-managers1.jpg'),
(53, 65, '197118_Marketing_Management_Session_Batch_2_Session_2.pdf', '860587_mm_day2.JPG'),
(54, 65, 'RERA impact_ Small, mid-size real estate firms struggle to raise funds - Livemint.pdf', 'RERA.JPG'),
(55, 68, '10 110 BP Deepwater Horizon Locke.Review - Case Study.pdf', 'OM1.JPG'),
(56, 68, 'McDonald’s Marketing Mix (4Ps) Analysis.pdf', 'mc.JPG'),
(57, 68, 'Toyota’s Operations Management, 10 Decisions, Productivity.pdf', 'toyota.JPG'),
(58, 69, 'Corporate Financa Class 1 - 02-06-2018.pptx', 'CF.JPG'),
(59, 67, 'Financial Accounting Class 1 - 04-06-2018.pptx', 'financial.jpg'),
(61, 73, 'Marketing Management Batch 2 Session 3 - 17-06-2018.pdf', 'mm3.png'),
(62, 74, 'The Nature and Scope of Economics - 17-06-2018.docx', 'ME.png'),
(63, 75, 'compounding.xlsx', 'cf.png'),
(64, 75, 'FM-lecture 1.pptx', 'cp.png'),
(74, 82, '890037_indifference-curve-analysis_-_23-06-2018.ppt', '415461_Untitled.png'),
(75, 82, '482447_Demand_Forecasting_Executive_MBA_-_23-06-2018.docx', '924470_mee.png'),
(79, 84, '877656_OLAP_vs_OLTP.pptx', '957133_Untitled3.png'),
(80, 84, '928613_Un4_Data_warehouse.pptx', '601515_1.png'),
(81, 84, '102371_UNIT_V.pptx', '233584_2.png'),
(82, 85, '545215_Introduction_to_Strategy_-_23-06-2018.pptx', '714319_1.png'),
(83, 86, '688777_OLAP_vs_OLTP.pptx', '305417_1.png'),
(84, 86, '988683_Un4_Data_warehouse.pptx', '955786_2.png'),
(85, 86, '801713_UNIT_V.pptx', '994132_3.png'),
(86, 87, '135365_Amazon_GoodWill_in_Whole_Foods_MA.pdf', '445476_1.png'),
(87, 87, '780145_ConjointAnalysisExample.pdf', '274370_2.png'),
(88, 87, '135000_CostOfPerfume.pdf', '924992_3.png'),
(89, 87, '733926_Kingfisher_Airlines_brand_valuer_Grant_Thornton_now_in_dock.pdf', '228802_4.png'),
(90, 87, '682868_Marketing_Management_Batch_2_Session_4.pdf', '406834_5.png'),
(91, 87, '926827_No_takers_for_brand_Kingfisher.pdf', '563771_7.png'),
(92, 88, '385831_Exercises_on_Accounting_equation_-_01-07-2018.docx', '769832_fin.png'),
(93, 66, '724198_P_AND_S_FINAL_-_03-06-2018.ppt', '855189_stat.png'),
(94, 89, '309529_Marketing_Management_Batch_2_Session_5.pdf', '161759_1.png'),
(95, 89, '857438_ExcelBasedConjointDemo.xls', '597271_mm.JPG'),
(96, 92, '171647_Introduction_to_Modelling_-_07-07-2018.ppt', '687359_1.png'),
(97, 93, '361360_HRM_Gary_Dessler_Part_1_-_07-07-2018.ppt', '819517_1.png'),
(98, 96, '932217_stat.pptx', '940472_Capture.JPG'),
(99, 95, '624528_Basics_of_Managerial_Economics_Day_2_-_02-12-2017.pdf', '80103_Capture.JPG'),
(100, 101, '891798_HRM_Gary_Dessler_Part_2.ppt', '643164_Capture.JPG'),
(101, 100, '273953_Managerial_Economics_Day_3_-_16-12-2017.pdf', '212811_Capture1.JPG'),
(103, 99, '885634_How_Reliance_Jio’s_Entry_Tied_Regulatory_Knots_Around_India’s_Telecom_Ecosystem_-_The_Wire.pd', '513566_Capture.JPG'),
(104, 99, '432228_Marketing_Management_Session_Batch_2_Session_6.pdf', '408069_Capture.JPG'),
(105, 99, '687909_Marketing-Mix-in-FMCGs-leading-Companies--Four-Ps-Analysis.pdf', '382519_Capture.JPG'),
(106, 107, '702670_Marketing_Management_Session_Batch_2_Session_7.pdf', '814158_Capture.JPG'),
(107, 111, '62304_Inventory2.ppt', '222219_Capture.JPG'),
(108, 118, '34621_Marketing_Management_Session_8_for_Batch_2_-1-_25-08-2018.pdf', '17042_mm.JPG'),
(109, 120, '727220_emba_1_CLT.pptx', '782526_clt.PNG'),
(110, 120, '912696_LECTURE_1_Introduction_to_Sampling.ppt', '116422_sampling.PNG'),
(111, 120, '421461_NORMAL_DIST_EMBA+Final.ppt', '631332_normal.PNG'),
(112, 146, '158816_Case_Star_Digital.pdf', '467131_new1.PNG'),
(113, 146, '884867_Marketing_Management_Session_10.pdf', '273144_ppt1.PNG'),
(115, 146, '139074_M347SS-XLS-ENG_2.xls', '306980_day10excel.PNG'),
(116, 59, '564822_FoodDeliveryCaseStudy.pdf', '320303_new1.PNG'),
(117, 137, '163041_FoodDeliveryCaseStudy.pdf', '220832_new1.PNG'),
(118, 161, '76391_Business_Strategy_Overview_1801.pptx', '480190_sm1.PNG'),
(119, 161, '95984_Teaching_Philosophy.pptx', '63465_sm1.PNG'),
(120, 161, '225758_Strategy_for_Self.pptx', '497336_sm1.PNG'),
(121, 167, '264819_Account_Customer_Management.pptx', '958682_ac.PNG'),
(122, 177, '536305_Operations_Management_2912_GITAM_V1.pptx', '920760_OS.PNG'),
(123, 156, '15707_HRM_Gary_Dessler_Part_1.ppt', '513149_HRO.PNG'),
(124, 163, '398625_3_HRM_Gary_Dessler_Part_3.ppt', '340190_HRO.PNG'),
(125, 157, '442995_Operations_Management_2912_GITAM_V1.pptx', '942866_om.PNG'),
(126, 174, '789073_Account_Customer_Management_-_05-01-2019.pptx', '619878_AC.PNG'),
(127, 168, '676948_Change_Management.pptx', '872687_CM.PNG'),
(128, 178, '305233_3_Brand_Strategy_-_Part2_(Final).pptx', '716002_Capture.PNG'),
(129, 178, '224584_DCF.xlsx', '1778_Capture.PNG'),
(133, 180, '632794_84769.docx', '224944_Capture.PNG'),
(134, 180, '874141_Problems_in_Capital_budgeting.docx', '101808_Capture.PNG'),
(135, 180, '497774_Capital_Budgeting.pptx', '108628_Capture.PNG'),
(136, 181, '416479_Competitive_Forces_-_Assignment_Template.pptx', '550679_Capture.PNG'),
(137, 181, '789136_Competitive_Forces_-_Part1.pdf', '88977_Capture.PNG'),
(138, 182, '929103_5_Competitive_Forces_-_Part2_-_29-12-2018.pptx', '569444_Capture.PNG'),
(139, 172, '853680_5_HRM_Gary_Dessler_Part_4_-_22-12-2018.ppt', '999874_Capture.PNG'),
(140, 166, '388467_442995_Operations_Management_2912_GITAM_V1.pptx', '694105_om.PNG'),
(141, 172, '267411_442995_Operations_Management_2912_GITAM_V1.pptx', '538337_om.PNG'),
(142, 189, '895254_6_Strategists_Role_Toolkit.pptx', '304070_Capture.PNG'),
(143, 200, '218170_LP_NLP.pptx', '325205_lp.PNG'),
(144, 200, '39249_LP_NPL_1_(Autosaved).xlsx', '169762_nlp.PNG'),
(145, 196, 'Marketing Management Session Batch 3 Session 1.pdf', 'Capture.PNG'),
(146, 230, '158069_7_HRM_Managing_Global_HR_7.ppt', '53442_hr.JPG'),
(147, 245, '295073_Data_PPT_till_24Mar19.pptx', '663807_DMO_ppt.JPG'),
(148, 246, '139564_9_Strategy_to_Execution_31st_march.pptx', '910490_SLppt.JPG'),
(149, 247, '369078_1_Marketing_Strategy_(Final).pdf', '925548_marketing_strategy.JPG'),
(150, 248, '632283_GITAM_-_MR1.pptx', '148254_marketing_research.JPG'),
(151, 249, '563907_9_Strategy_to_Execution_7-04-2019.pptx', '598741_S_L.JPG'),
(152, 250, '731028_Marketing_Management_Session_5.pdf', '895819_marketing_management_s5.JPG'),
(153, 251, '871963_1_Brand_Management_-_Intro_to_Identity.pdf', '224670_Brand_Management.JPG'),
(154, 254, '466636_Data_PPT_13Apr_onwards.pptx', '597096_DMO_ppt_screenshot.JPG'),
(155, 258, '904951_Final_DELIVERING_HAPPINESS_ppt.pptx', '567880_Final_delivering_ppt.PNG'),
(156, 259, '217504_5th_may_19_8_HRM_Social_HR_in_Digital_World_Gitam_8_Final.ppt', '171107_HRO_May5th.JPG'),
(157, 263, '678219_Project_Management_-_Procurement_Management_27th_April_2019.pptx', '446239_Project_management.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite_classes`
--

CREATE TABLE `prerequisite_classes` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `pptimg` text NOT NULL,
  `ppt` text NOT NULL,
  `description` text NOT NULL,
  `datetime` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prerequisite_classes`
--

INSERT INTO `prerequisite_classes` (`id`, `title`, `link`, `pptimg`, `ppt`, `description`, `datetime`) VALUES
(1, 'Strategie For Self', 'https://www.youtube.com/embed/DlKF-126wqk', 'Strategy for Self.PNG', 'Strategy for Self.pptx', '<p>Studies about how people learn have shown that when you pay attention to what and how well you are learning, your learning improves. Remembering and applying new knowledge and skills become easier when you keep an eye on your progress while learning something. It might seem odd to say that you should \"pay attention\" while you\'re learning, but what that means in practical terms is that you think about what  you have learned so far, what you need to learn, and how fully you are learning the material. \r\nWhat happens in the brain is that you are sending a signal that the material is important and that you intend to remember it. So, how is this done?</p>', '2019-01-05'),
(2, 'Human Resource', 'https://www.youtube.com/embed/9s1MY2bS0WI', '', '', '<p>Studies about how people learn have shown that when you pay attention to what and how well you are learning, your learning improves. Remembering and applying new knowledge and skills become easier when you keep an eye on your progress while learning something. It might seem odd to say that you should \"pay attention\" while you\'re learning, but what that means in practical terms is that you think about what  you have learned so far, what you need to learn, and how fully you are learning the material. \r\nWhat happens in the brain is that you are sending a signal that the material is important and that you intend to remember it. So, how is this done?</p>', '2019-01-12'),
(3, 'Finance', 'https://www.youtube.com/embed/eOq4hj7IB0o', '', '', '<p>Studies about how people learn have shown that when you pay attention to what and how well you are learning, your learning improves. Remembering and applying new knowledge and skills become easier when you keep an eye on your progress while learning something. It might seem odd to say that you should \"pay attention\" while you\'re learning, but what that means in practical terms is that you think about what  you have learned so far, what you need to learn, and how fully you are learning the material. \r\nWhat happens in the brain is that you are sending a signal that the material is important and that you intend to remember it. So, how is this done?</p>', '2019-01-19'),
(4, 'Finance', 'https://www.youtube.com/embed/H7Ws4suxNmU', '', '', '<p>Studies about how people learn have shown that when you pay attention to what and how well you are learning, your learning improves. Remembering and applying new knowledge and skills become easier when you keep an eye on your progress while learning something. It might seem odd to say that you should \"pay attention\" while you\'re learning, but what that means in practical terms is that you think about what  you have learned so far, what you need to learn, and how fully you are learning the material. \r\nWhat happens in the brain is that you are sending a signal that the material is important and that you intend to remember it. So, how is this done?</p>', '2019-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `occupation` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `project_url` varchar(150) NOT NULL,
  `team_members` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `occupation`, `date`, `project_url`, `team_members`, `description`, `update_date`, `user_id`) VALUES
(2, 'GPS tracking system', 'Team Leader', 'april-2009', '', '', 'jxcvvbh', '2017-07-17 05:37:46', 0),
(4, '', '', '', '', '', '', '2017-07-17 05:37:46', 0),
(5, 'Lakshmi krishna,lakshmi.krishna418@gmail.com, ', '', '', '', '', '', '2017-07-17 05:37:46', 0),
(6, 'krish,krish@gmail.com, ', '', '', '', '', '', '2017-07-17 05:37:46', 0),
(7, 'krish,krish@gmail.com, ', '', '', '', '', '', '2017-07-17 05:37:46', 0),
(8, 'Lakshmi krishna,lakshmi.krishna418@gmail.com, ', '', '', '', '', '', '2017-07-17 05:37:46', 0),
(9, 'Admin,zinkaz@gmail.com, ', '', '', '', '', '', '2017-07-17 05:37:46', 0),
(10, 'Admin,zinkaz@gmail.com, ', '', '', '', '', '', '2017-07-17 05:37:46', 0),
(12, 'content management system', 'Intern', '2016', 'cinagro.in', '5', 'fdsfdsfsdfsdffffffffffffffffffffffffffffffffffffffeiowasddddddd\r\n										fjsdkfjdsksfjsdkfhsdkjfsdkjfhsdkjfsdkjfhsdkjhfsdkjfhsdkjfhsdkjfhsdkjfhsdkjfhsddddddddddddddddddfffff\r\n										fjsdkfjdsksfjsdkfhsdkjfsdkjfhsdkjfsdkjfhsdkjhfsdkjfhsdkjfhsdkjfhsdkjfhsdkjfhsddddddddddddddddddfffff\r\n										fjsdkfjdsksfjsdkfhsdkjfsdkjfhsdkjfsdkjfhsdkjhfsdkjfhsdkjfhsdkjfhsdkjfhsdkjfhsddddddddddddddddddfffff\r\n										fjsdkfjdsksfjsdkfhsdkjfsdkjfhsdkjfsdkjfhsdkjhfsdkjfhsdkjfhsdkjfhsdkjfhsdkjfhsdddddddddddddddddddffff', '2017-07-17 05:37:46', 92),
(13, 'fdtgrd tdrtrd', 'dtytd', '2017-06-15', 'yhtd gyujhtfg', 'yhdtydr', 'ydtygdtr ujyu tyryr ytyr t56te5 tyd yyyyy hh ghygf tytgf rte', '2017-07-17 05:37:46', 83),
(15, 'sumaaa', 'sumaaaa', '2017-05-31', 'https://testbok.com', '411', 'frwef', '2017-07-17 05:37:46', 87),
(16, 'cms', 'intern', '2017-06-01', '', '2', 'fr grtre ytryr tyr ty tryrxy tryrx', '2017-07-17 05:37:46', 83),
(17, 'Online Examination', 'Team Lead', '2017-06-13', 'onlineexamination.com', 'xudfdslgpv, olsdghljfsg, asjghfjkg.', 'Anthropomorphism\r\nClichÃ©\r\nDiction\r\nGrammatical modifier\r\nGrammatical voice\r\nMetaphors', '2017-07-17 05:37:46', 86),
(18, 'FKJSFHBJK', 'sfdhbfd', '2017-06-07', 'gmn', 'gfdn', 'lkjbjmnb jgvjnhjv\r\n', '2017-07-17 05:37:46', 86),
(19, 'gshgjngm', 'fjmnhgm ', '2017-06-01', 'gdhbn', 'ngjfd', 'jnfjnhgmghmk', '2017-07-17 05:37:46', 86),
(20, 'rdjhfdkmhjgfj', 'fjfgjhfdj', '2017-06-07', 'fgdjgf', 'djfgjg', 'fgjgfjjfdjfg', '2017-07-17 05:37:46', 86),
(22, 'xasss', 'sxasac', '2017-07-23', 'asxas', 'ssc', 'ascssdc', '2017-07-17 05:37:46', 90),
(23, 'Web Trade Services', 'Team member, Test cordinator fro', '2015-12-01', 'NA', '11', 'Web Trade Services Product provides a service to Clients who manage assets. It offers matching and settlement services across range of instruments, Provides clients with real time updates as to the status of Trade instructions sent to Northern Trust via internet enquiry and reporting, so that both Northern Trust and the client can be confident of the successful post execution processing of trades. It allows clients to track the trade flow after the execution till settlement. ', '2017-07-18 03:15:53', 109),
(24, 'FFIEC-The Federal Financial Institutions Examination Council ', 'Team member', '2015-06-01', 'NA', '2', 'The Federal Financial Institutions Examination Council (FFIEC) is a formal U.S. government interagency body that includes five banking regulators. It is \"empowered to prescribe uniform principles, standards, and report forms...to promote uniformity in the supervision of financial institutions\". It also oversees real estate appraisal in the United States. Its regulations are contained in title 12 of the Code of Federal Regulations.', '2017-07-18 03:20:16', 109),
(25, 'vdsf', 'daed', '2017-07-19', 'aera', 'gserfs', 'gsrfas', '2017-07-19 00:21:25', 117),
(27, 'sdgdfs', 'kuhff', '2021-02-02', 'www.ajafs,./asad,na', 'dfd,jhjwakfl', 'zsfgkjhjwwfwkj\'s', '2017-07-28 02:00:21', 120),
(28, 'dhdf', 'jsjrhs', '12000-10-01', 'lasfj.s.com', 'x,xf,gkjsl', 'sr,mgjh.lekyes.,dxg d\'s', '2017-07-28 02:11:55', 124),
(29, 'aasdf', 'asdf', '2017-07-20', 'asdf', 'asdf', 'asdf', '2017-07-28 02:50:08', 125),
(30, 'asdf', 'asdf', '2017-07-21', 'asdf', 'asdf', 'asdf', '2017-07-28 04:01:39', 130),
(31, 'asdf', 'asdf', '2017-07-28', 'asdf', 'asdf', 'asdf', '2017-07-28 04:05:12', 132),
(32, 'asdf', 'asdf', '2017-07-15', 'asdf', 'asdf', 'asdf', '2017-07-28 04:47:02', 135),
(33, 'asdf', 'asdf', '2017-07-07', 'asdf', 'asdf', 'asdf', '2017-07-28 05:12:21', 135),
(34, 'asdf', 'asdf', '2017-07-14', 'asdf', 'asdf', 'asdf', '2017-07-28 05:15:35', 135),
(35, 'asdf', 'asdf', '2017-07-14', 'asdfas', 'dfasdf', 'asf asdf', '2017-07-28 16:19:40', 137),
(36, 'eedfeas', 'deada', '2017-07-20', 'dfaw aww', 'dad a', ' awwdad', '2017-07-28 22:21:06', 143),
(37, 'emc2 hdtgd', 'web desingning', '2017-07-20', 'http://emc2india.com', '5', 'MBA and MS', '2017-07-29 18:29:30', 81),
(38, 'Sensitivity Analysis of a Wind Penetrating Electrical System', 'Major', '', '', '', 'â€¢	Derived the mathematical model of a wind turbine power-system, and identified the parameters to which the system dynamics are sensitive.\r\nâ€¢	Applied the OFAT (One-factor-at-a-time) approach to analyze the effect of various parameters on the system stability.\r\nâ€¢	Investigated the eigen values obtained under various parameter variations using MATLAB.\r\nâ€¢	Analyzed the influence of increase and decrease in the parameter values on both open loop and closed loop systems and derived the appropriate conclusions.\r\n', '2017-07-29 19:11:26', 113),
(39, 'asa', 'dwa ', '2013-05-30', 'fafra ', 'a fa', 'a wd fs fs ', '2017-08-01 20:22:49', 146),
(40, 'sfrfs ', 'aaa', '2013-05-30', 'bbbb', 'cccc', 'dddd', '2017-08-01 20:23:09', 146),
(41, 'India first innovation gri', ' Blackbuck setting up 13 innovat', '2016-12-02', 'theblackbucks.com/smartskillhubs', '2', 'In partnership with Government of AP, Blackbuck works towards setting up of 13 state-of-the-art hubs end-to-end throughout Andhra Pradesh for industry interaction, research, innovation, skill development and industry programs. The Center\'s objective is to facilitate Engineering Research and promote Entrepreneurship. The Center is envisaged to incubate 26 innovative idea-to-market models for the first year.', '2017-08-02 15:49:20', 147),
(42, 'Project 1000', 'Finding career opportunities for', '2016-12-07', 'https://www.linkedin.com/showcase/13242530/', '3', 'descriptionProject 1000 aims at facilitating career opportunities for a minimum of 1000 bright students as part of our CSR. Blackbuck aims to utilize our network to provide the students with career opportunities through our network. Please follow Project 1000 page on LinkedIn to get updates. We are enabling a counter and it is exciting to watch how many we could place !!\r\n', '2017-08-02 15:51:05', 147),
(43, 'Online Examination', 'Teammate', '2017-04-17', 'onlineexamination.com', 'satya, yuva kishore, naveen', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', '2017-08-02 16:54:28', 149),
(44, 'dfgfshf', 'zdfgdghhyuj', '2017-08-18', 'dzsfgdyhjuk', 'fgsftjdtyji', 'awrftjxdryfhjbnjukmbkgnjil', '2017-08-02 18:17:40', 151),
(45, 'fdthytjty', 'rgdhhjadewwxse', '2017-08-26', 'rtrtgzadzagjvtguhk', 'g5tyhyu7jiuik', 'rfe4ytr6tujryuyujyuuuyerfryWe love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '2017-08-02 18:17:59', 151),
(46, 'fdthytjty', 'rgdhhjadewwxse', '2017-08-26', 'rtrtgzadzagjvtguhk', 'g5tyhyu7jiuik', 'rfe4ytr6tujryuyujyuuuyerfryWe love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '2017-08-02 18:17:59', 151),
(47, 'mhtyuj', 'jutjhm', '', '', '', 'jhtykujh', '2017-08-02 18:40:07', 152),
(48, 'cxhvngj', 'sdfgsdf', '2017-08-03', 'gfdshdsfhdfsg', 'sdfgdsgsarg', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', '2017-08-02 18:42:23', 155),
(49, 'hyrdy drt', 'gtrs tse', '2017-08-14', ' msetfgs', ' sertgfse', ' estgs ', '2017-08-02 22:37:34', 157),
(50, 'vdfv', 'dfvfdvfd', '2017-08-15', 'vdfvfd', 'vdfvfd', 'vfdvfdvfdvf', '2017-08-03 17:03:02', 160),
(51, 'h dghfgdg h', ' dghfd', '2017-08-02', ' dfgd hg ', 'dsf hdf h', 'h sdf hsd h', '2017-08-03 17:06:03', 160),
(52, 's dfgfds g sdh sd', ' fdsgdsfh ', '2017-07-31', 'fs hsd hsr', ' fsfsh dh ', 'gsfff\r\n ', '2017-08-03 17:06:17', 160),
(53, 'TELECOM, HOSPITAL, INSURANCE, BANKING', 'SENIOR CONSULTANT', '2008-06-23', '', '', 'Facilitation to PM and project team', '2017-08-10 20:03:31', 168),
(54, 'GLOBAL INVENTORY', 'PROJECT COORDINATOR', '', 'NA', '8', 'GETTING THE INVENTORY OF DIFFERENT REGIONS ON A SINGLE GLOBAL TOOL SO THAT IT CAN BE MANAGED EASILY.', '2017-08-12 05:09:48', 145),
(55, 'AMP web Testing COE', 'test engineer', '2015-05-01', '', '20', 'Ameriprise Financial organization is a diversified Financial Services company with 12,000+ financial advisors and registered representatives, it headquartered in Minneapolis, MN, USA provides a wide range of financial planning, products and services for clients to achieve their asset accumulation, income, protection and estate planning goals. Since 1894, Ameriprise Financial have been helping millions of clients invest towards their financial goals and dreams', '2017-08-22 18:02:08', 183),
(56, 'Union Bank of Switzerland', 'TEST ENGINEER', '2016-02-01', '', '15', 'The Investment Bank provides corporate, institutional, and wealth management clients with expert advice, innovative financial solutions, outstanding execution and comprehensive access to the worldâ€™s capital markets. It offers investment banking and capital markets, research, equities, foreign exchange, precious metals and tailored fixed income services in rates and credit through its two business units, Corporate Client Solutions and Investor Client Services. The Investment Bank is an active participant in capital markets flow activities, including sales, trading and market-making across a range of securities', '2017-08-22 18:03:11', 183),
(57, 'Greif EDW', 'BI Operational Analyst', '2015-06-29', 'http://greif.com/', '6', 'A', '2017-09-05 22:07:32', 194),
(58, 'city bank', 'seniour software developer ', '2017-08-20', 'under construction', '70+', 'working on CSP enhancements', '2017-09-06 17:32:29', 197),
(59, 'British Telecom', 'Component Designer', '2015-06-16', 'NA', '25', 'Monitor team status as well', '2017-09-10 16:51:48', 215),
(60, 'WESTPAC INSTITUTIONAL BANKING (WIB)', 'Windows & Vmware Administrator', '2015-08-18', 'https://www.westpac.com.au/', 'Manoranjan Nayak, Aswini Kumar V (BHASKARA  SUBRAMANYA  ASH) Sista, ', ' My designation is as â€œWindows & VMware ADMINISTRATORâ€\r\n\r\n************************************************************************\r\n\r\nâ€¢	Installing and Configuring Windows 2003 & 2008 R2 2012 Server.\r\nâ€¢	Installing and Configuring Remote Installation Service (Windows 2003 & 2008,2012).\r\nâ€¢	Configuring Active directory, DNS, DHCP, and WDS & RAID Levels. \r\nâ€¢	Updating the Polices\r\nâ€¢	Configure Domain Trusting Between the Domains.\r\nâ€¢	Create Site and Check the replication between Domains.\r\nâ€¢	Installation of ESXi Servers, vSphere Client and Vcenter Server\r\nâ€¢	Understanding of VMware Networking concepts like Creation of Switches, Switches and VLANs.\r\nâ€¢	Managing Virtualization Environment using VMware Vcenter.\r\nâ€¢	Server Patch Management (using TEM)\r\nâ€¢	Installation and optimization of Office Automation Packages including Microsoft Office  2007, Office 2010\r\nâ€¢	Maintaining and Managing  4500+ Intel Steady State servers \r\nâ€¢	Troubleshooting both H/W and Application oriented issues.\r\nâ€¢	Configure the DHCP \r\nâ€¢	Configure & Supporting the DFS.\r\nâ€¢	Configure the domain trusting and apply the group policy.\r\nâ€¢	Configure the Auto mapping concepts in Network drive with user Rights & Disk Quotas.\r\nâ€¢	Installing necessary Softwareâ€™s and Utilities for the end user.\r\nâ€¢	Troubleshooting User & Tool generated Incidentâ€™s\r\nâ€¢	Performing daily task Health Check-up on & Wintel Servers. \r\nâ€¢	Managing Daily reports, weekly and monthly monitoring the server status.\r\nâ€¢	Managing Virtualization Environment using VMware Vcenter.\r\nâ€¢	Responsible for second-level support for all server related issues.\r\nâ€¢	Provide technical support for enterprise servers. Troubleshoot, repair and recover from basic hardware or software failures in accordance with standard operating procedures\r\nâ€¢	Analysing the logs and providing the root causes to the issues.\r\nâ€¢	Working on the Hardware failure issues\r\nâ€¢	Using BMC Remedy 7.5 to manage and creating Changes, Problems and following ITIL guidelines.\r\n\r\n', '2017-09-14 03:43:17', 219),
(61, 'Direct Energy', 'Workload Manager, Windows & Vmwa', '2016-11-21', 'https://www.directenergy.com/', 'Chaitanya R Singireddy,PRADEEP K (PRADEEP) MADARI', 'Daily Activities as Workload Manager\r\nâ€¢	Preparation & maintenance of Daily, Weekly and Monthly reports.\r\nâ€¢	Reviewing the IT operations performance in the region on daily basis.\r\nâ€¢	Attending the Daily, weekly and monthly review meeting.\r\nâ€¢	Check for the Disk Space reports sent by PCM team and action it accordingly.\r\nâ€¢	Working on Critical Incidents mainly on Auto Resolved tickets\r\nâ€¢	Change creation and change implementations on LIVE servers\r\nâ€¢	Join DSR call @ 7:00 AM without fail and provide updates about severity [P1/P2] incident, outage, impact, Node Down\'s, Changes to higher managements.\r\nâ€¢	Work order / Service Order Creation and sending Maximo backlog report @ 12:30 PM every day.\r\nâ€¢	Charing the Afternoon Huddle Call @ 1:40 PM\r\n', '2017-09-14 03:45:39', 219),
(62, 'FPGA based USB 3.0', 'Project Leader', '2016-02-15', 'https://pdfs.semanticscholar.org/a5fb/52fd270b814d6692be7e005070ce959ad305.pdf', 'Ashwini , Preethi and Charan', '- The Universal Serial Bus(USB)\r\nTransceiver Macro cell Interface (UTMI) is a two wire,\r\nbi-directional serial bus interface. The USB2.0\r\nspecifications define three types of UTMI implementations\r\ndepends on data transmission rates, those are Low Speed\r\n(1.5MHz) only (LS), Full Speed (12MHz) only (FS) and\r\nHigh Speed (480MHz)/Full speed (12MHz) (HS). UTMI\r\nconsists of Transmitting and Receiving sections, in which\r\nthe Transmitter of the UTMI sends data to different USB\r\ndevices through D+ and D- lines whereas the Receiver\r\ngets data on the same lines. This presentation reveals the\r\nFPGA implementation of UTMI with HS/FS transmission\r\nrate providing with USB 2.0 specifications. Further UTMI\r\nhas been designed by using VHDL code and simulated,\r\nsynthesized and programmed to the targeted Spartan2\r\nfamily of FPGA in the Xilinx environment.', '2017-09-14 23:01:08', 200),
(63, 'HARSHINI NALLABOTHU', 'Team member', '2015-07-10', 'http://zentechnologies.com/tacsim-indoor-tracking-system.php', '', 'A project for training the soldiers indoor where there is no scope of GPS signals and sending live reports to the commander for furthur actions or impo=rovising the capabilitie sof soldiers.', '2018-02-17 06:15:26', 272),
(64, 'Network setup for whole company', 'Network Engineer', '2017-05-15', 'Milehigh.edu', '1', 'build over all network end to end work flow', '2018-02-19 23:28:03', 273),
(65, 'Professional Ops Access', 'PS Access setup Transcation', '2012-08-11', '', '.', '.', '2018-03-11 05:52:43', 285),
(66, 'DATA MANAGEMENT', 'DATA ANALYST', '2016-09-26', '', '15', 'It is a Data Management project which is focused on batch processing for both cleansing and matching can be run against the entire database, during both the initial load and periodically to ensure continuous integrity. Cleansing and matching logic provides the ultimate flexibility in managing business data which helps to increase the data integrity across customer life cycle and also providing business logics to the existing system which helps to develop the business of the company. Data analyst is also responsible for error tracking as well as reports generating process for all the regions.', '2018-03-12 20:58:18', 287),
(67, 'zinka', 'team member', '2016-01-20', 'zinka.me', '5', 'sxdcsczdcxdcxd', '2018-05-18 16:07:15', 302),
(68, 'DC Motors', 'Admin', '2004-10-25', '', '11', 'Excellent motors', '2018-06-27 18:12:36', 307),
(69, 'nothing', 'student', '2018-07-18', '', '', 'nothing', '2018-07-18 18:01:48', 309),
(70, 'Trademust', 'Server side', '2015-07-01', 'www.trademust.com/traderp/', '6', 'Trademust is help full for trading business management system', '2018-08-22 14:24:51', 316),
(71, 'Hsbc ', 'Developer ', '2016-08-04', '', '', 'Mainframes developer ', '2018-09-05 18:14:27', 323),
(72, 'www.beyondsmiles.co.in              ', 'SEO ANALYST', '', 'www.beyondsmiles.co.in', '3', 'HEALTHCARE DOMAIN', '2018-09-17 01:48:35', 325),
(73, 'www.drkumaresh.com                  ', 'SEO ANALYST', '', 'www.drkumaresh.com                  ', '3', 'HEALTH CARE DOMAIN', '2018-09-17 01:49:20', 325),
(74, 'www.smilznetwork.com', 'SEO ANALYST', '', 'www.smilznetwork.com', '4', 'HEATH CARE DOMAIN', '2018-09-17 01:50:04', 325),
(75, 'www.sakthismilecraft.com            ', 'SEO ANALYST', '', 'www.sakthismilecraft.com            ', '2', 'HEALTH CARE', '2018-09-17 01:50:30', 325),
(76, 'XID â€“ EXTRACT IDENTITIES', 'Test Engg', '2015-03-09', '', '5', 'XID is a powerful multithreaded (distributed-computing) software product to extract and analyze identities, represented by names and addresses. Incorporating cutting edge search technology, XID provides an integrated environment for acquiring data from remote databases, creating a local data mart, and applying innovative and powerful algorithms to search inexact matches in names and addresses. ', '2018-09-22 22:39:04', 328),
(77, 'A Sign language based ATM accessing system for visually impaired ', 'A Sign language based ATM access', '2018-01-01', 'A Sign language based ATM accessing system for visually impaired', '5', 'About 256 million people are visually impaired worldwide. The main problem faced by blind people is during financial transactions especially in ATMs,so we proposed to design and develop a safer and secure ATM accessing system for the blind.', '2018-09-27 20:56:03', 331),
(78, 'INM Server Migrations', 'Project leader', '2016-05-10', 'INM', '7', 'We have migrated total 25 servers and 9000 users from standalone servers to virtual servers. and I got award as a best performer for the entire year.', '2018-12-05 16:44:59', 339),
(79, 'AT&T', 'Software Engineer', '2018-05-25', 'That is confidencial', '10', 'I was the part of Transformation of project , Which means from Legacy to Micro services', '2019-01-25 01:43:43', 344),
(80, 'Kaiser Permanente', 'Senior Test Engineer', '2018-08-08', 'healthy.kaiserpermanente.org', '10', 'KP (Kaiser Permanente), There are many ways to live healthy. And when youâ€™re a Kaiser Permanente member, many people work together to help you stay that way. Your doctor, specialists, and health plan are all part of one connected team â€” coordinating your care seamlessly so you donâ€™t have to. Itâ€™s how we do things faster, easier, and better â€” and help you live healthy, your way. KP directly interacts with doctors and make user easy friendly to access or contact doctor through â€œchat with doctorâ€ option.', '2019-03-14 18:48:04', 349),
(81, 'Oracle', 'X86 Engineer ', '2017-04-06', '', '20', 'I am working in X86 Hardware platform and Exadata servers including OS experience i am good in OS and hardware ', '2019-04-15 14:07:28', 358),
(82, 'Multipurpose machine ', 'Mechanical machine ', '', '', '', 'Used for multiple applications', '2019-05-07 00:08:37', 360),
(83, 'Ameen Shadab', 'design engineer', '2017-08-16', '', '', 'aerospace and defence ', '2019-06-18 19:03:58', 361);

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

CREATE TABLE `publications` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `publication_date` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `fileupload` varchar(50) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `title`, `publisher`, `publication_date`, `description`, `fileupload`, `user_id`) VALUES
(1, 'xyz publication', 'kk', '2010-01-01', 'The same holds true for your ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œWritten Elevator SpeechÃƒÂ¢Ã¢â€šÂ¬Ã‚Â or resume summary statement. This ÃƒÂ¢Ã¢â€šÂ¬Ã…â€œspeechÃƒÂ¢Ã¢â€šÂ¬Ã‚Â is given at the top of your resume ÃƒÂ¢Ã¢â€šÂ¬Ã¢â‚¬Â in the prime resume real estate where a recruiter or hiring manager always looks first.', '20503Book.xlsx', 3),
(2, 'jbjkvcb', 'nvkbkgb', '2010-00-00', 'sgfdgfghfg', '0', 3),
(3, 'jghuykjm', 'yuhbjmn', '23', '95', '0', 95);

-- --------------------------------------------------------

--
-- Table structure for table `recomand`
--

CREATE TABLE `recomand` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `recomand` varchar(50) NOT NULL,
  `recomand2` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recomand`
--

INSERT INTO `recomand` (`id`, `userid`, `recomand`, `recomand2`, `date`) VALUES
(1, 'userid', 'sadsd', '', '2017-07-17 05:38:49'),
(3, '109', '2118764705_', '', '2017-07-17 14:23:50'),
(4, '117', '957128009_Admissions Criteria.png', '', '2017-07-19 00:45:24'),
(6, '120', '373330038_zinkaerrors.xlsx', '1445115815_Zinka Badge 2.jpg', '2017-07-28 02:02:47'),
(7, '120', '2012445464_zinkaerrors.xlsx', '1179126149_Zinka Badge 2.jpg', '2017-07-28 02:02:49'),
(8, '120', '835480580_zinkaerrors.xlsx', '587408616_Zinka Badge 2.jpg', '2017-07-28 02:02:49'),
(9, '120', '1975236909_zinkaerrors.xlsx', '1387169263_Zinka Badge 2.jpg', '2017-07-28 02:02:49'),
(10, '120', '591266039_zinkaerrors.xlsx', '441187093_Zinka Badge 2.jpg', '2017-07-28 02:02:50'),
(11, '120', '639209126_zinkaerrors.xlsx', '451701965_Zinka Badge 2.jpg', '2017-07-28 02:02:52'),
(12, '124', '1225726186_Zinka Badge 2.jpg', '504719180_Zinka Badge3.jpg', '2017-07-28 02:13:11'),
(13, '124', '1704156407_Zinka Badge 2.jpg', '1613489238_Zinka Badge3.jpg', '2017-07-28 02:13:11'),
(14, '124', '505355393_Zinka Badge 2.jpg', '1607287888_Zinka Badge3.jpg', '2017-07-28 02:13:12'),
(15, '124', '1370372145_Zinka Badge 2.jpg', '1800894787_Zinka Badge3.jpg', '2017-07-28 02:13:12'),
(16, '124', '424822178_Zinka Badge 2.jpg', '12672423_Zinka Badge3.jpg', '2017-07-28 02:13:13'),
(17, '124', '1653615450_Zinka Badge 2.jpg', '1929820646_Zinka Badge3.jpg', '2017-07-28 02:13:13'),
(18, '124', '693497766_Zinka Badge 2.jpg', '806563327_Zinka Badge3.jpg', '2017-07-28 02:13:14'),
(19, '124', '1496573167_Zinka Badge 2.jpg', '318434405_Zinka Badge3.jpg', '2017-07-28 02:13:15'),
(20, '124', '1740395296_Zinka Badge 2.jpg', '1146982689_Zinka Badge3.jpg', '2017-07-28 02:13:16'),
(21, '124', '73417792_Zinka Badge 2.jpg', '499197151_Zinka Badge3.jpg', '2017-07-28 02:13:16'),
(22, '124', '1679746003_Zinka Badge 2.jpg', '1820805122_Zinka Badge3.jpg', '2017-07-28 02:13:16'),
(23, '124', '997234244_Zinka Badge 2.jpg', '56084182_Zinka Badge3.jpg', '2017-07-28 02:13:17'),
(24, '124', '597272193_Zinka Badge 2.jpg', '1550403200_Zinka Badge3.jpg', '2017-07-28 02:13:18'),
(25, '124', '321218427_Zinka Badge 2.jpg', '905949191_Zinka Badge3.jpg', '2017-07-28 02:13:18'),
(26, '124', '195882893_Zinka Badge 2.jpg', '1122570313_Zinka Badge3.jpg', '2017-07-28 02:13:18'),
(27, '126', '1142202707_Desert.jpg', '603111560_Lighthouse.jpg', '2017-07-28 03:36:57'),
(28, '127', '2024543080_Jellyfish.jpg', '1376943988_Jellyfish.jpg', '2017-07-28 03:40:58'),
(29, '128', '35110820_', '1302722044_', '2017-07-28 03:42:39'),
(30, '129', '145036432_Jellyfish.jpg', '1685945826_Lighthouse.jpg', '2017-07-28 03:51:23'),
(31, '130', '166679361_Jellyfish.jpg', '576045409_Koala.jpg', '2017-07-28 03:59:36'),
(32, '132', '760757281_Koala.jpg', '722487898_Penguins.jpg', '2017-07-28 04:06:15'),
(33, '132', '644289949_', '1599900778_', '2017-07-28 04:06:23'),
(34, '133', '1228752781_Koala.jpg', '822875819_Penguins.jpg', '2017-07-28 04:08:17'),
(35, '134', '1990569082_Jellyfish.jpg', '371824883_Desert.jpg', '2017-07-28 04:10:22'),
(36, '135', '1648208190_Koala.jpg', '136699254_Lighthouse.jpg', '2017-07-28 04:16:13'),
(37, '137', '38542470_Lighthouse.jpg', '1771603902_Penguins.jpg', '2017-07-28 16:22:08'),
(38, '136', '905651575_embedded-system.jpg', '1934050003_narasimha.jpg', '2017-07-28 18:37:59'),
(44, '141', '2048060133_apssdc.png', '1892760876_bhaskar.jpg', '2017-07-28 21:58:02'),
(50, '143', '263212290_addnew (1).php', '792263206_admisions.php', '2017-07-28 22:20:39'),
(51, '113', '655361321_LOR_Jairam.docx', '1886871370_LOR_Karuna.docx', '2017-07-30 16:57:34'),
(56, '146', '1917279010_c++interviewquestions.pdf', '1286741485_Java Interview questions-I.pdf', '2017-08-01 20:27:47'),
(62, '150', '321334975_assessment.php', '1026444908_course_term1.php', '2017-08-02 17:58:10'),
(63, '149', '978068614_TPachidis_CV_20150810_EN.pdf', '2030109500_TPachidis_CV_20150810_EN.pdf', '2017-08-02 18:06:26'),
(64, '151', '198556345_Penguins.jpg', '1881269327_Tulips.jpg', '2017-08-02 18:26:06'),
(66, '155', '306254315_dictionary (1).py', '1047981390_dictionary.py', '2017-08-02 18:47:13'),
(76, '153', '204735529_broucher.pdf', '1368935579_emc2brochure.pdf', '2017-08-02 21:49:59'),
(85, '84', '1747115010_broucher_2.pdf', '994276870_broucher_3.pdf', '2017-08-02 22:11:32'),
(88, '81', '224921453_emc2brochure.pdf', '1566206713_broucher_2.pdf', '2017-08-02 22:21:37'),
(90, '89', '433308263_emc2brochure.pdf', '634746312_broucher_3.pdf', '2017-08-02 22:28:51'),
(92, '91', '1465635074_broucher.pdf', '497388192_broucher_3.pdf', '2017-08-03 02:32:26'),
(94, '93', '1126507749_broucher_2.pdf', '1129347969_broucher.pdf', '2017-08-03 16:44:53'),
(99, '95', '876445989_broucher_2.pdf', '399829715_broucher_3.pdf', '2017-08-03 17:01:06'),
(101, '100', '674274568_broucher.pdf', '59927117_emc2brochure.pdf', '2017-08-03 17:03:34'),
(105, '161', '50994328_broucher_2.pdf', '', '2017-08-03 17:05:35'),
(106, '160', '317041980_c++interviewquestions.pdf', '1276999794_', '2017-08-03 17:16:46'),
(108, '107', '1262531189_broucher_3.pdf', '58806317_broucher_3.pdf', '2017-08-04 16:31:59'),
(110, '109', '1974643226_emc2brochure.pdf', '747784305_broucher_2.pdf', '2017-08-04 16:33:44'),
(113, '112', '2072091574_c++interviewquestions.pdf', '', '2017-08-04 16:41:58'),
(114, '163', '137789035_c++interviewquestions.pdf', '', '2017-08-04 16:43:54'),
(116, '145', '1809399249_Colleague Recommendation.jpg', '', '2017-08-15 05:51:54'),
(117, '183', '1699281214_reference.docx', '', '2017-08-22 21:15:45'),
(118, '325', '1029650099_neethi resume.docx', '52397670_neethi resume.docx', '2018-09-17 01:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `recommandations`
--

CREATE TABLE `recommandations` (
  `id` bigint(20) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommandations`
--

INSERT INTO `recommandations` (`id`, `photo`, `name`, `position`, `institution`, `description`, `user_id`) VALUES
(1, '32289modern-bedroom-set-xzhe4.jpg', 'gvs', 'mla', 'shiva shakti', 'fdkmfgfdfdf fhgfhg fggfhg vcvcbvc', 3),
(2, '12081user.png', 'uihfuidsfhs', 'kdsbfkbg', 'n fds,f', 'rgrh', 3),
(3, '0', 'jhbkjmn', 'jhbn', 'hkj,m', '', 95);

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `referby` varchar(50) NOT NULL,
  `sugestedby` varchar(80) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`id`, `userid`, `referby`, `sugestedby`, `date`) VALUES
(1, 'userid', 'd', 'sug', '2017-07-17 05:40:01'),
(6, '81', 'Print Newspaper', 'friends hyebr srgr drtfgse', '2017-07-17 05:40:01'),
(9, '117', 'Print Newspaper', 'u5rty tdrg', '2017-07-19 00:52:29'),
(10, '109', 'Internet', 'www.emc2india.com', '2017-07-23 16:17:39'),
(11, '113', 'Print Newspaper', 'Read about it in the Sakshi Newspaper and later browsed the website', '2017-07-27 16:07:51'),
(12, '132', 'Print Newspaper', 'asdf', '2017-07-28 04:06:33'),
(13, '135', 'Internet', 'asdf', '2017-07-28 05:17:53'),
(14, '137', 'Internet', 'sdfgs sdf ', '2017-07-28 16:22:30'),
(15, '136', 'Website', 'yr5tyer', '2017-07-28 18:40:13'),
(16, '143', 'Print Newspaper', 'fasdafewd ree refe', '2017-07-28 22:09:11'),
(17, '146', 'Website', 'ef sfse fesdfes s', '2017-08-01 20:28:00'),
(18, '149', 'Internet', 'vg', '2017-08-02 17:41:23'),
(19, '150', '', 'ddadawrderwereertyetyfgjhghkghhjkjhkkrrgujhfygj trhukyukhj retu', '2017-08-02 17:56:32'),
(20, '151', 'Internet', 'We love passionate people who are willing to put the effort in. Your research, w', '2017-08-02 18:26:16'),
(21, '153', 'Website', 'gr fkwj eiuoeht tgdsjR RT RDdfk.sjedkse jkednfjks drteftd rh trdd rsdfsd t ghdty', '2017-08-02 18:38:36'),
(22, '155', 'Internet', 'Action (philosophy), in general Recreation, or activities of leisure The Aristot', '2017-08-02 18:47:49'),
(23, '157', 'Website', 'fse frfs erase rgh hter  drtg sd s sdasw rtfsd fs', '2017-08-02 22:25:07'),
(24, '159', 'Print Newspaper', 'rte rfse esf rte te es', '2017-08-03 16:36:43'),
(25, '161', 'Website', ' rets esrfs', '2017-08-03 16:57:12'),
(26, '160', 'Website', 'hjgjn,hggvbvnb', '2017-08-03 17:17:23'),
(27, '162', 'Friend', ' awed waed sw wzedaw', '2017-08-04 16:27:58'),
(28, '163', 'Print Newspaper', 'hai how is that', '2017-08-04 16:38:03'),
(29, '183', 'Print Newspaper', '', '2017-08-22 21:06:26'),
(30, '273', 'Internet', 'just by googling ', '2018-02-19 23:17:30'),
(31, '316', 'Website', '', '2018-08-22 14:27:18'),
(32, '339', 'Friend', 'My friend completed MBA from this university.', '2018-12-05 16:52:38');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `organization` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `full_name`, `organization`, `email`, `password`, `mobile`) VALUES
(6, '', '', '', '', ''),
(7, 'suma', 'siuma', 'suma.satiwada@theblackbucks.com', '123456789', '1334567890'),
(8, 'sravani', 'sravani', 'sravani@gmail.com', 'sravani', '1234567890'),
(9, 'asdf', 'asdf', 'asdf@gmal.com', 'asdfasdfasdf', '4564645645'),
(10, 'xscvfzx', 'asdfa', 'asdf@gmal.com', 'asdfasdfas', 'asdfasdfdf'),
(11, 'asdfa', 'asdfasd', 'asdf@gmal.com', 'asdfasdfasd', '1234567890'),
(12, 'Anuradha', 'Thota', '123@123.com', '1234567', '9000701020'),
(13, 'suma', 'ssdf', 'sumasushma111@gmail.com', 'assdasdfsafsafd', '8744554551'),
(14, 'Anuradha', 'Thota', '1234@1234.com', '1234567', '9000701020');

-- --------------------------------------------------------

--
-- Table structure for table `registergitam`
--

CREATE TABLE `registergitam` (
  `id` int(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `designation` varchar(300) NOT NULL,
  `organization` varchar(500) NOT NULL,
  `email` varchar(60) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registergitam`
--

INSERT INTO `registergitam` (`id`, `fullname`, `designation`, `organization`, `email`, `mobile`, `date`) VALUES
(4, 'Suma', 'WEB DEVELOPER', 'BLACKBUCK', 'sumasushma111@gmail.com', '2147483647', '2017-08-01 11:39:07'),
(17, 'CHAITANYA PADAVALA', 'SENIOR DESIGN ENGINEER', 'CYIENT', 'chaitanya.padavala@cyient.com', '7032661779', '2017-08-02 23:45:01'),
(18, 'suma', 'web development', 'blackbucks', 'sumasushma111@gmail.com', '7995307088', '2017-09-01 17:00:07'),
(19, 'sravani ', 'web development', 'blackbuck', 'sravanid@gmail.com', '7075059908', '2017-09-01 17:00:43'),
(20, 'S D V S J KARTHEEK', 'ASSOCIATE ENGINEER', 'VIRTUSA', 'sdvsjkartheek@gmail.com', '9297305887', '2017-09-05 21:41:46'),
(21, 'Soumya Rani Voore', 'Associate QA consultant', 'Virtusa', 'soumyaranivoore@gmail.com', '9963200407', '2017-09-05 21:42:40'),
(22, 'Arabinda Sukla', 'Associate Manager', 'Virtusa', 'arabindas@virtusa.com', '8939292384', '2017-09-05 21:42:56'),
(23, 'Prithvi', 'Associate software Engineer', 'virtusa', 'prithvimalve@gmail.com', '7032740418', '2017-09-05 21:43:00'),
(24, 'peduru sai dheeraj', 'associate consultant', 'virtusa', 'saidp@virtusa.com', '9966488821', '2017-09-05 21:43:12'),
(25, 'Bharath Yelchuri', 'Associate Engineer', 'Virtusa', 'yelchuri.bharath@gmail.com', '9493265977', '2017-09-05 21:43:21'),
(26, 'Sai Sudha Pachika', 'Associate Consultant', 'Virtusa', 'pachikasudhareddy@gmail.com', '9963250028', '2017-09-05 21:43:46'),
(27, 'Krishna Kishore', 'Sr. Project Manager', 'Virtusa', 'suramkrishna1973@gmail.com', '7798984475', '2017-09-05 21:43:53'),
(28, 'Rajesh', 'Associate Engineer', 'Virtusa', 'rajeshbommali123@gmail.com', '9494203291', '2017-09-05 21:43:57'),
(29, 'Naga Bhargavi Valavala', 'Engineer', 'Virtusa', 'nagabhargavi.valavala@gmail.com', '8500704984', '2017-09-05 21:43:57'),
(30, 'Chandra Sekhar', 'Manager', 'Virtusa', 'chandu10@gmail.com', '9642550444', '2017-09-05 21:44:40'),
(31, 'Anup', 'Associate Manager ', 'Virtusa Technologies ', 'anup.kamble@gmail.com', '9010691555', '2017-09-05 21:44:53'),
(32, 'Divyasree', 'Engineer', 'Virtusa', 'divya.dhanpal@gmail.com', '9000924951', '2017-09-05 21:44:55'),
(33, 'anand kumar nagre', 'associate engineer', 'virtusa', 'anandkumarnagre@gmail.com', '8686008548', '2017-09-05 21:45:33'),
(34, 'Roja Peddola', 'Lead Consultant', 'Virtusa', 'rosejaydeep@gmail.com', '8639042729', '2017-09-05 21:45:45'),
(35, 'priyanka aavula', 'pega developer', 'virtusa consulting services', 'priyanka.aavula@gmail.com', '8790206281', '2017-09-05 21:46:08'),
(36, 'Ashok Rao V', 'Associate Consultatnt', 'VirtusaPolaris', 'ashokrao182@gmail.com', '9550636176', '2017-09-05 21:47:34'),
(37, 'vineela', 'Senior consulatant', 'Virtusa', 'vineelan@virtusa.com', '9793610116', '2017-09-05 21:47:50'),
(38, 'Sainath', 'Sr Consultant', 'Virtusa', 'nagasainath2010@gmail.com', '9032590869', '2017-09-05 21:48:02'),
(39, 'harini', 'engineer', 'virtusa consulting service pvt ltd', 'harini.jakkula@gmail.com', '7032654199', '2017-09-05 21:48:27'),
(40, 'Vasanta Lahari', 'Engineer-Technology', 'Virtusa', 'lahari.vasantha@gmail.com', '9581104419', '2017-09-05 21:48:33'),
(41, 'Geeta', 'Architect', 'Virtusa', 'geetadevi.d@gmail.com', '9959320283', '2017-09-05 21:49:27'),
(42, 'Anuaj', 'Associate Consultant', 'Virtusa', 'mopuruanuaj@gmail.com', '8985582021', '2017-09-05 21:50:43'),
(43, 'Mandar Ekmamdikar', 'Consultant', 'Virtusa', 'mandar.ek89@gmail.com', '9296504567', '2017-09-05 21:51:33'),
(44, 'Aditya', 'Consultant', 'Virtusa', 'kewlkeny@gmail.com', '9885772788', '2017-09-05 21:52:39'),
(45, 'Syam Kumar Vootla', 'Lead Consultant', 'Virtusa Technologies India Private Limited', 'vsyamkumar@virtusa.com', '8008245912', '2017-09-05 21:57:39'),
(46, 'Syam Kumar Vootla', 'Lead Consultant', 'Virtusa Technologies', 'vsyam86@gmail.com', '8008245912', '2017-09-05 22:00:01'),
(47, 'Durga prasad', 'Architect', 'Virtusa', 'durga.kokkonda@gmail.com', '9618342006', '2017-09-05 22:00:23'),
(48, 'KONIKI SAI MOUNIKA', 'SOFTWARE ENGINEER', 'VIRTUSA', 'saimounikakoniki@gmail.com', '9703048485', '2017-09-05 22:01:39'),
(49, 'Dharmendra Kumar', 'SR consultant ', 'Virtusa', 'dharmendra.481d@gmail.com', '8008484789', '2017-09-05 22:05:56'),
(50, 'jayalakshmi M', 'QA- engineer', 'Virtusa', 'jayalakshmi2293@gmail.com', '9739562058', '2017-09-05 22:12:27'),
(51, 'Aditya ', 'Sr Consultant', 'Virtusa', 'adithya.maddi@gmail.com', '9701714382', '2017-09-05 22:14:19'),
(52, 'Douglas Raju Darelli', 'Lead Consultant', 'Virtusa', 'douglasrajusb@gmail.com', '8886977854', '2017-09-05 22:15:18'),
(53, 'Vinay Kumar Lakka', 'Asso. Consultant', 'Virtusa', 'lvinaykumar@virtusapolaris.com', '9014353706', '2017-09-05 22:15:43'),
(54, 'JYOSHNA', 'ASSOCIATE CONSULTANT', 'VIRTUSA', 'jyoshna.mohan@gmail.com', '9959477787', '2017-09-05 22:25:04'),
(55, 'aneesh Kumar', 'Senior engineer', 'Virtusa Consulting pvt. ltd', 'aneeshk@virtusa.com', '8297940735', '2017-09-05 22:30:36'),
(56, 'vijay', 'associate consultant', 'virtusa', 'vijaypasham@gmail.com', '9949711355', '2017-09-05 22:33:08'),
(57, 'Priyanka Singh', 'Engineer', 'Virtusa Consulting services', 'pris762@gmail.com', '8297366183', '2017-09-05 22:35:05'),
(58, 'sai jayanth kumar pasupuleti', 'associate consultant', 'Virtusa', 'saijayant@gmail.com', '9700705939', '2017-09-05 22:35:19'),
(59, 'Harika Ravali Valeti', 'Engineer', 'Virtusa', 'harikavaleti@gmail.com', '9000222369', '2017-09-05 22:35:24'),
(60, 'Rameshbabu G Thangavel', 'Associate Director', 'Virtusa', 'rameshbabu19841@gmail.com', '7675865566', '2017-09-05 22:36:27'),
(61, 'Krishna Chiatnaya Vedula', 'Sr. Consultanat', 'Virtusa ', 'chaitanya.vedula14@gmail.com', '9704774533', '2017-09-05 22:37:02'),
(62, 'Valiuddin Mahammed', 'Associate Manager', 'Virtusa Consulting Services Pvt. Ltd.', 'vali.md@gmail.com', '8143374100', '2017-09-05 23:01:36'),
(63, 'Rajat', 'Software Engineer', 'Virtusa consulting', 'rajatverma@virtusa.com', '8006359582', '2017-09-05 23:06:19'),
(64, 'Ganesh Babu Sanniboina', 'Engineer Technology', 'Virtusa Consulting Services', 'ganesh.sanneboina@outlook.com', '9502534433', '2017-09-05 23:17:06'),
(65, 'Hemant Sawsakde', 'Lead Consultant ', 'Virtusa', 'hemants@virtusa.com', '7680883315', '2017-09-05 23:33:20'),
(66, 'Nara', 'Architect ', 'Virtusa', 'nrkonjeti@gmail.com', '9885442375', '2017-09-05 23:44:50'),
(67, 'Mounica Vatti', 'Engineer', 'Virtusa', 'mounicavatti94@gmail.com', '9100446943', '2017-09-05 23:54:16'),
(68, 'Shaik Afreen', 'Associate Engineer', 'Virtusa', 'safreen402@gmail.com', '9441611724', '2017-09-06 00:34:43'),
(69, 'Kaloji Shravan', 'Executive-HR', 'Virtusa', 'sravan.kaloji@gmail.com', '9951491129', '2017-09-06 00:35:51'),
(70, 'sanjay varma ', 'Engineer', 'Virtusa', 'sanjayvarmaeee@gmail.com', '9390707336', '2017-09-06 00:42:37'),
(71, 'Ravi Kumar. Jorige', 'Senior Consultant', 'Virtusa', 'jorigeravi@gmail.com', '9985678993', '2017-09-06 00:54:16'),
(72, 'Ravi Kumar. Jorige', 'Senior Consultant', 'Virtusa', 'jorigeravi@gmail.com', '9985678993', '2017-09-06 00:54:17'),
(73, 'Pavan', 'Associate Consultant', 'Virtusa', 'pavanpramod.kumar4@gmail.com', '8019405919', '2017-09-06 01:08:16'),
(74, 'Kalyan Gvss', 'Software Engineer', 'Virtusa Consultancy', 'kalyan.myt58@gmail.com', '9160911727', '2017-09-06 01:13:13'),
(75, 'kavya esarla', 'Associate Engineer QA', 'virtusa', 'Kavyae@virtusa.com', '9177047330', '2017-09-06 01:29:26'),
(76, 'Laxmi V Iyer', 'Senior Consultant', 'Virtusa Polaris', 'laxmivi@virtusapolaris.com', '8688770486', '2017-09-06 01:30:16'),
(77, 'Alwala Phaniraj', 'Senior Manager - Delivery', 'Organization', 'avphaniraj@gmail.com', '9985051620', '2017-09-06 02:55:47'),
(78, 'Suresh k', 'Senior consultant', 'Virtusa technologies pvt ltd', 'suresh.profile2008@gmail.com', '8688684345', '2017-09-06 05:07:10'),
(79, 'vidyadhar reddy', 'associate consultant ', 'Polarisft ', 'vidyadhar9585@gmail.com', '8588825828', '2017-09-06 05:32:52'),
(80, 'Adithya Kethireddy', 'Associate  Consultant', 'Virtusa ', 'adithyakethireddy@gmail.com', '8106405151', '2017-09-06 14:28:15'),
(81, 'Adithya Kethireddy', 'Associate  Consultant', 'Virtusa Consulting Services', 'adithyakethireddy@gmail.com', '8106405151', '2017-09-06 14:29:23'),
(82, 'Venkatram Reddy Sripathi', 'Associate consultant', 'Virtusa', 'vrvenky13@gmail.com', '8121458113', '2017-09-06 15:21:08'),
(83, 'Gaurang ', 'Deai', 'Virtusa', 'gaurangpdesai@gmail.com', '9860600871', '2017-09-06 15:45:11'),
(84, 'GN Madhavi', 'Manager', 'Virtusa', 'gnmadhavi@yahoo.com', '9849910044', '2017-09-06 15:50:35'),
(85, 'powlomi', 'associate engineer', 'virtusa', 'powlomil@gmail.com', '8712775964', '2017-09-06 17:03:08'),
(86, 'Deepthi kanuri ', 'Senior consultant ', 'Virtusa', 'dkanuri@virtusa.com', '9177078660', '2017-09-06 17:15:05'),
(87, 'Chirudivya Yannamchetti', 'Associate Consultant', 'Virtusa', 'chirudivya.yannamchetti@gmail.com', '9133963930', '2017-09-06 17:23:38'),
(88, 'Rajesh', 'Associate Engineer', 'Virtusa', 'rbommali@virtusa.com', '9494203291', '2017-09-06 17:29:40'),
(89, 'Rajesh', 'Associate Engineer', 'Virtusa', 'rbommali@virtusa.com', '7893451196', '2017-09-06 17:29:59'),
(90, 'Rajesh', 'Associate Engineer', 'Virtusa', 'rbommali@virtusa.com', '7893451196', '2017-09-06 17:30:11'),
(91, 'sree vardhan', 'Associate Director', 'Virtusa', 'vardhanraju@gmail.com', '9866394254', '2017-09-06 18:35:09'),
(92, 'Anoosha Koribilli', 'Engineer', 'Virtusa Consultancy Services', 'anoosha.koribilli@gmail.com', '9542808721', '2017-09-06 19:13:38'),
(93, 'Chandra Veldurtthy', 'Associate Executive', 'Virtusa', 'chandraveldurthy@gmail.com', '9966535272', '2017-09-06 20:37:48'),
(94, 'Kavya Esarla', 'Associate Engineer QA', 'Virtusa', 'Kavyae@virtusa.com', '9177047330', '2017-09-06 20:52:33'),
(95, 'Himateja Alakanti', 'Engineer', 'Virtusa Consulting Services', 'alakantihimateja@gmail.com', '8686662114', '2017-09-06 22:52:33'),
(96, 'rajeswari', 'Associate Consultant', 'Virtusa', 'rajeswaribadeti@gmail.com', '7093405340', '2017-09-06 23:04:01'),
(97, 'Mohammed Razak Miya', 'Consultant', 'Virtusa', 'razakmiya1988@gmail.com', '9849460272', '2017-09-06 23:44:11'),
(98, 'Mohammed Razak Miya', 'Consultant', 'Virtusa', 'razakmiya1988@gmail.com', '9849460272', '2017-09-06 23:45:05'),
(99, 'Vijay Gunally', 'Associate Engineer', 'virtusa', 'gvjkumar28@gmail.com', '9666268554', '2017-09-07 00:38:50'),
(100, 'Perla Mutyala Harika', 'Associate Software Engineer', 'Virtusa', 'perlaharika@gmail.com', '9573131538', '2017-09-07 00:51:41'),
(101, 'Bhargavi Desharapu', 'Engineer', 'Virtusa Consulting Services Private Limited', 'desharapubhargavi@gmail.com', '8686555472', '2017-09-07 18:44:09'),
(102, 'satya', 'associate architect', 'Virtusa', 'rssraju@gmail.com', '9908995058', '2017-09-11 13:30:40'),
(103, 'suma', 'web development', 'blackbuck', 'sumasushma111@gmail.com', '7995307088', '2017-09-13 23:48:44'),
(104, 'sravani', 'web', 'bb', 'dsravani.mpcp@gmail.com', '8801728150', '2017-09-13 23:52:13'),
(105, '', '', 'ProZonecew', 'prozon@tamriko.biz', '8531821587', '2017-10-20 04:15:30'),
(106, '', '', 'ProZonecew', 'prozon@tamriko.biz', '8669779562', '2017-10-20 04:15:31'),
(107, '', '', 'Mistypap', 'freelance@mpl8.info', '8744913696', '2017-10-31 22:58:37'),
(108, 'Swapna Priya G', 'Manager QA', 'Virtusa', '67inswapna@gmail.com', '9849469643', '2017-11-02 20:51:56'),
(109, 'kotra padmaja', 'Housemaker', 'House', 'kotra.aneesha@gmail.com', '9705425049', '2017-12-03 17:13:37'),
(110, 'thota soundarya', 'un employed', 'null', 'soundaryasandy10@gmil.com', '9618660080', '2017-12-04 15:24:51'),
(111, 'ramya', 'webdeveloper', 'bb', 'yramyayegu@gmail.com', '7386880150', '2018-09-27 18:45:59'),
(112, 'ANVESH', 'SALES EXECUTIVE', 'THE BLACKBUCKS', 'anveshsirikonda@gmail.com', '7680887728', '2018-09-28 19:51:05'),
(113, 'Anuradha', 'MD', 'Blackbuck', 'anuradha.s.thota@gmail.com', '9000701020', '2018-09-28 22:26:21'),
(121, 'Rajayadav', 'Project leader', 'Cyient', 'rajayadavryhps@gmail.com', '8978333663', '2018-10-11 19:10:24'),
(122, 'Satya', 'Associate architect ', 'Virtusa', 'rssraju@gmail.com', '9908995058', '2018-10-11 19:17:51'),
(123, 'Shiva Prasad Domakonda', 'Associate Analyst', 'Ernst & Young', 'dshivaprasad53@gmail.com', '9848571530', '2018-10-11 20:56:38'),
(124, 'Jagadeeswararao Murapaka', 'Technology Analyst', 'Infosys technology limited', 'jagadeeswar.murapaka@gmail.com', '9989788877', '2018-10-11 21:02:03'),
(125, 'Karuna Nagre', 'Senior Process Associate', 'Genpact', 'karunanagree@gmail.com', '9182179268', '2018-10-11 22:04:13'),
(126, 'Kalyan', 'Business associate ', 'Tech Mahindra ltd ', 'kalyan.sheelam@gmail.com', '8686770000', '2018-10-11 22:28:14'),
(127, 'Raghavendra', 'Technical lead', 'C3i solutions', 'rragha57@gmail.com', '8074578440', '2018-10-11 23:21:31'),
(128, 'Renuka murthy', 'Clinical analyst', 'C3i solutions', 'renukamurthy152@gmail.com', '9701010279', '2018-10-11 23:23:22'),
(129, 'Renuka', 'Clinical Analyst', 'C3i solutions - HCL technologies', 'renukamurthy152@gmail.com', '9701010279', '2018-10-11 23:55:40'),
(130, 'Rayudu', 'Team Lead', 'FAI', 'rayudumsc@yahoo.com', '9948023449', '2018-10-12 06:00:07'),
(131, 'Rohit Arora', 'Sr. Project Manager', 'Incessant Technologies Pvt Ltd', 'rohita2007@gmail.com', '9885920591', '2018-10-12 06:50:37'),
(132, 'Siddharth', 'Sr Software Engineer', 'SP Global', 'siddarth.initio@gmail.com', '9611320555', '2018-10-12 17:10:39'),
(133, 'Vinod Shukla', 'Senior Manager  - Technical & Proposal Writing ', 'Kore.ai', 'mailshukla.thewriter@gmail.com', '8121178848', '2018-10-12 18:18:21'),
(134, 'Abilash Ansari', 'Technical Writer', 'Nfinity Solutions', 'ansaritw@gmail.com', '9000117672', '2018-10-12 19:32:35'),
(135, 'Shashi Kumar S', 'Sr.Project Engineer', 'Wipro ', 'shivakotishashi@outlook.com', '9676972266', '2018-10-12 19:32:58'),
(136, 'Siva Kumar Reddy', 'Software Engineer', 'Birlasoft pvt india ', 'koppalasiva92@gmail.com', '9177381216', '2018-10-14 01:34:54'),
(137, 'Anuradha Thota', 'SDFDSF', 'Blackbuck', 'anuradha.s.thota@gmail.com', '9000701020', '2019-04-19 18:28:14'),
(138, 'Anuradha Thota', 'SDFDSF', 'Blackbuck', 'anuradha.s.thota@gmail.com', '9000701020', '2019-04-19 18:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(100) NOT NULL,
  `full_name` text NOT NULL,
  `organization` varchar(200) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `submit` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `full_name`, `organization`, `email`, `password`, `mobile`, `submit`, `date`) VALUES
(100, 'Sudheer Devulapally', 'SkillRecruit', 'sud@skilliantech.com', 'emctwoindia', '8978713232', 1, '2017-07-17 05:21:30'),
(109, 'Uday Bhaskar', 'Cognizant Technology Solutions', 'udaybhaskar.pv@hotmail.com', 'Innovation@1', '9652012347', 1, '2017-07-17 05:21:30'),
(113, 'KALLAM SWETHA', 'TATA CONSULTANCY SERVICES LTD', 'swethakallam.1994@gmail.com', 'mokshamma', '8099047308', 1, '2017-07-17 05:21:30'),
(122, 'Prasanth Reddy D', 'Virtusa', 'prasanthreddydondeti@gmail.com', 'Draganoire@528', '9849711268', 0, '2017-07-26 00:44:04'),
(145, 'PAWAN PAWAR', 'IBM INDIA PVT LTD', 'ppawanpawar@gmail.com', 'Iwasborn@1510', '8790342020', 1, '2017-08-01 07:51:36'),
(158, 'Raghu Ram Arza ', 'Virtusa ', 'raghu.arza@gmail.com', '1234qwer$', '8121004908', 0, '2017-08-03 01:12:08'),
(164, 'Valli kumar', 'CYIENT', 'ayyagarivallikumar@gmail.com', 'baba@123', '8500496989', 0, '2017-08-07 01:25:16'),
(165, 'Nunnaguppala Manikanta Suraj', 'Virtusa Consulting Services Private Limited', 'manikantasn@virtusapolaris.com', 'Wrongpassemc27', '7032725323', 0, '2017-08-08 18:30:56'),
(167, 'Harini jakkula', 'Virtusa consulting services pvt ltd', 'harini.jakkula@gmail.com', 'Harini@23', '7032654199', 0, '2017-08-10 17:41:44'),
(168, 'DAGGUMATI RAVI KUMAR', 'VIRTUSA CONSULTING SERVICES PVT LTD', 'dravi.kv@gmail.com', 'durga8016', '8008833939', 1, '2017-08-10 19:52:06'),
(169, 'Kamle Milind kumar', 'Birlasoft India limited', 'mkkamle@gmail.com', 'MKkamble5A$', '8985738516', 0, '2017-08-15 13:18:46'),
(180, 'Soumyajit Sarker', 'Virtusa Polaris Group', 'snrsarker@gmail.com', 'snr@emc2', '9160999682', 0, '2017-08-17 00:13:12'),
(181, 'Jaya Prakash', 'Virtusa Polaris', 'prakashnani54@gmail.com', 'jp@emc2', '8977763243', 0, '2017-08-17 01:40:15'),
(182, 'Srikanth', 'Topper.com', 'srikanthiit2014@gmail.com', 'sri@emc2', '9652190761', 0, '2017-08-17 02:11:16'),
(183, 'dolly harsha marupureddy', 'cognizant technology solutions', 'mdollyharsha@gmail.com', 'lssd_359', '8143222689', 1, '2017-08-22 16:32:52'),
(184, 'Srinivas', 'GITAM, HBS', 'srinivas.yallakari@gitam.edu', 'sahasrajit01', '9542424254', 0, '2017-08-23 18:35:56'),
(185, 'Sowmya', 'Virtusa consulting services pvt ltd', 'peyyetisowmya@gmail.com', 'sowmya@emc2', '9493024595', 0, '2017-08-24 18:03:21'),
(186, 'Vishal Pandya', 'Cyient', 'vishalpandya05@gmail.com', 'vishal@emc', '9160606104', 0, '2017-08-24 19:22:25'),
(189, 'Raghavendra', 'C3i Solutions', 'rchaduvula@c3i-inc.com', 'raghava@123', '8106045404', 0, '2017-08-31 22:37:43'),
(190, 'Renuka', 'C3i Solutions', 'renukamurthy152@gmail.com', 'renu@emc2', '9701010279', 0, '2017-08-31 22:44:35'),
(191, 'Sai Giridhar Gurijala ', 'birlasoft', 'sai.gurijala49@gmail.com', 'GiriDhar.0409', '9494912900', 0, '2017-09-04 04:21:32'),
(192, 'S D V S J KARTHEEK', 'VIRTUSA', 'sdvsjkartheek@gmail.com', 'K@rtheek100', '9297305887', 0, '2017-09-05 21:43:56'),
(193, 'NagaBhargavi Valavala', 'Virtusa', 'nagabhargavi.valavala@gmail.com', 'abcd1234', '8500704984', 0, '2017-09-05 21:46:38'),
(194, 'Syam Kumar vootla', 'virtusa', 'vsyam86@gmail.com', 'chowdary86', '8008245912', 0, '2017-09-05 21:59:17'),
(195, 'Rameshbabu G T', 'Virtusa', 'rameshbabu19841@gmail.com', 'ibmsmo100$', '7675865566', 0, '2017-09-05 22:37:18'),
(196, 'Ganesh Babu Sanniboina', 'Virtusa Consulting Services Pvt.Ltd', 'ganesh.sanneboina@outlook.com', 'AmmaNanna@143', '9502534433', 0, '2017-09-05 23:23:09'),
(197, 'chirudivya yannamchetti', 'virtusa', 'chirudivya.yannamchetti@gmail.com', 'CHIRU@5b7', '9133963930', 0, '2017-09-06 17:26:12'),
(198, 'Anoosha Koribilli', 'Virtusa Consultancy Services', 'anoosha.koribilli@gmail.com', 'Surendra@91', '9542808721', 0, '2017-09-06 19:16:03'),
(199, 'Kavya Esarla', 'Virtusa', 'Kavyae@virtuisa.com', 'KAVsat#27', '9177047330', 0, '2017-09-06 20:56:31'),
(200, 'Ashwini Madiri', 'Accenture', 'ashwinimadiri@yahoo.com', 'sunny1994', '8341904741', 1, '2017-09-09 17:08:18'),
(214, 'Shruthi Sayinedi', 'Blackbuck', 'shruthisayinedi@gmail.com', 'anuradha', '9000701020', 0, '2017-09-10 04:33:03'),
(215, 'Bhavya Sri Sunkara', 'Virtusa Consulting Services', 'bhavyasri.sunkara@gmail.com', 'sunkara@1992', '9701692121', 0, '2017-09-10 16:39:04'),
(219, 'Chandrakanth odela', 'IBM', 'chandrakanth2193@hotmail.com', '!<0mr@mm@08', '9000288883', 0, '2017-09-14 03:31:45'),
(220, 'Deepak Balivada', 'Infosys Limited', 'balivadad4@gmail.com', 'emc2MBA', '8095604040', 0, '2017-09-25 18:46:25'),
(228, 'sravani', 'bb', 'sravanid@gmail.com', 'ammasuma', '9876543210', 0, '2017-09-26 23:34:34'),
(229, 'Anuradha', 'Thota', 'anuradha.s.thota@gmail.com', 'Srirama26', '9000701020', 0, '2017-09-27 18:41:12'),
(230, 'Pooja', 'birlasoft', 'pooja.kamble1956@gmail.com', '8500poo@', '8500749010', 0, '2017-10-07 22:12:02'),
(231, 'suma', 'bb', 'sumasushma111@gmail.com', 'ammasuma@7', '7995307088', 0, '2017-10-09 19:04:39'),
(232, 'Sai Raghav Mamidala', 'Infosys Limited', 'mamidalaraghav@gmail.com', 'ManoSure', '8985037476', 0, '2017-10-16 01:28:35'),
(233, 'BHARGAVA S AKULA', 'INFOSYS LIMITED', 'bsakula@gmail.com', 'Infy890*', '9100051328', 0, '2017-10-16 19:54:57'),
(234, 'JAGADEESWARARAO MURAPAKA', 'INFOSYS LTD', 'jagadeeswar.murapaka@gmail.com', 'Jags@1211', '9989788877', 0, '2017-10-28 00:18:39'),
(235, 'Ram', 'Blackbuck', 'ram.g@theblackbucks.com', 'Srirama26', '9000706345', 0, '2017-11-08 20:53:02'),
(237, 'Varun K', 'Wipro Technologies', 'varun.6192@gmail.com', 'Ksn@1960', '9666099966', 0, '2017-11-15 19:23:10'),
(238, 'Ravinder', 'Wipro', 'ravinder.poth@wipro.com', '2Wipro8', '9912284248', 0, '2017-11-15 19:24:49'),
(240, 'ixetywe', 'uwujose', 'malgosia1992@ymail.co.pl', 'tBh47CT2a%6', 'uwujose', 0, '2017-11-25 05:30:20'),
(255, 'G Mohana Deepika', 'Gitam University', 'gmohanadeepika@gmail.com', 'gadhamsetty', '8790479504', 0, '2017-12-01 22:37:03'),
(256, 'Ch Laxminarayana', 'MBA', 'Laxminarayanach89@gamil.com', 'physicaleducatioj', '9652247883', 0, '2017-12-03 06:58:01'),
(257, 'Soumya Anaganti', 'HCL Technologies', 'aenaganti.sowmya@gmail.com', 'Gitam@189', '8754516717', 0, '2017-12-03 08:54:36'),
(258, 'Soumya Anaganti', 'HCL Technologies', 'aenaganti.sowmya@gmail.com', 'Gitam@189', '8754516717', 0, '2017-12-03 08:54:36'),
(259, '', '', '', '', '', 0, '2017-12-03 08:54:36'),
(260, 'PULIPALUPULA SWAMY VIJAYENDER GOUD', 'Osmania Medicalcollege', 'drpsvijayender@gmail.com', 'vijEMC@1', '7661021344', 0, '2017-12-04 06:15:39'),
(261, 'Mahesh Vemury', 'Electronic Arts', 'vemury.mahesh1@gmail.com', 'jaisairam5', '9640011313', 0, '2017-12-07 04:45:56'),
(262, 'Velankanni Kuvvarapu ', 'Hinduja Global solutions ', 'Velankannithagaram@gmail.com', 'lukedavis', '9705047401', 0, '2018-01-15 09:07:04'),
(263, 'Ashish', 'IVZ', 'ashish1kumarjha@gmail.com', 'Race_4time', '7760046000', 0, '2018-01-24 16:07:21'),
(264, 'Seemakurti Veera Venkata Satyanarayana Murthy', 'HCL', 'haimurthy@gmail.com', 'satyannn', '8309502098', 0, '2018-01-26 10:06:19'),
(265, 'Trinadh Bommakanti', 'Accenture Solutions Pvt. Ltd.', 'bommakantitrinadh@gmail.com', '07d41a1213', '9000086049', 0, '2018-02-01 23:58:35'),
(266, 'frtgd', 'dbgv', 'jgdk@gmail.com', 'Abcd@1234', '9999999999', 0, '2018-02-09 01:10:27'),
(267, '', '', '', '', '', 0, '2018-02-10 07:50:07'),
(268, '', '', '', '', '', 0, '2018-02-10 07:50:16'),
(269, 'Vikas R', 'Self', 'rvikas1234@rediffmail.com', 'Emc@123', '9742248701', 0, '2018-02-15 06:38:31'),
(270, '', '', '', '', '', 0, '2018-02-15 06:38:34'),
(271, 'Nanditha ', 'Cambridge Institute Of Technology ', 'nanditha.14ec070@citech.edu.in', 'Immanuel123!', '8970300260', 0, '2018-02-16 20:30:22'),
(272, 'Harshini Nallabothu', 'Zen Technologies', 'harshini2712@gmail.com', 'Charan@27', '8686664113', 0, '2018-02-16 11:05:23'),
(273, 'saikrishna', 'SMSCountry Networks Pvt Ltd', 'saikrishna.yalamati@smscountry.com', 'noneedpassword', '9666548393', 1, '2018-02-19 22:18:46'),
(274, 'T MADHUSUDHAN', 'IITT', 'madhusudhan0604@gmail.com', '08e71a0481', '9701826231', 0, '2018-02-21 21:37:37'),
(275, '', '', '', '', '', 0, '2018-02-23 16:58:30'),
(276, '', '', '', '', '', 0, '2018-02-23 20:49:54'),
(277, '', '', '', '', '', 0, '2018-02-25 16:55:56'),
(278, '', '', '', '', '', 0, '2018-03-03 18:08:32'),
(279, '', '', '', '', '', 0, '2018-03-03 18:21:42'),
(280, 'Arthi Gundu', 'Itelligence India Software Solutions', 'Arthi.Gundu@gmail.com', 'Sri@9989775244IN', '9676226629', 0, '2018-03-04 04:21:21'),
(281, 'A', 'A', 'anuradha.thota@theblackbuxks.com', 'Srirama26', '9000701020', 0, '2018-03-06 22:26:14'),
(282, '', '', '', '', '', 0, '2018-03-08 14:26:33'),
(283, '', '', '', '', '', 0, '2018-03-08 19:04:36'),
(284, 'Kiran Kumar V', 'Cyient', 'vkirankumar09@gmail.com', 'Tata@2013', '9959170069', 0, '2018-03-09 15:01:01'),
(285, 'Santhosh kumar V', 'Netapp India pvt Ltd', 'santhosh.khumar9@gmail.com', 'U%nitted9', '9900824000', 1, '2018-03-11 05:29:08'),
(286, '', '', '', '', '', 0, '2018-03-11 05:29:14'),
(287, 'PRATABINDA THAKUR', 'BRILLIO TECHNOLOGIES', 'pratabinda6@gmail.com', 'romi@450', '9620891587', 1, '2018-03-12 20:52:42'),
(288, 'Kiran Kumar Goberu', 'Deloitte Consulting ', 'goberu.kiran@gmail.com', 'kira3030', '9160313030', 0, '2018-03-17 00:37:09'),
(289, '', '', '', '', '', 0, '2018-03-17 00:37:13'),
(290, '', '', '', '', '', 0, '2018-03-24 02:16:15'),
(291, '', '', '', '', '', 0, '2018-03-24 13:46:17'),
(292, '', '', '', '', '', 0, '2018-03-26 19:41:58'),
(293, 'NavaJyothi Karna', 'Infosys Pvt. Ltd.', 'karnanavajyothireddy@gmail.com', 'Challu123@', '9701893398', 0, '2018-03-26 19:41:59'),
(294, 'Pruthvi Mandava', 'Trianz', 'mpruthvisasank@gmail.com', '8143438118', '8143438118', 0, '2018-04-06 20:22:42'),
(295, '', '', '', '', '', 0, '2018-04-06 20:22:43'),
(296, 'Aquib Akhtar', 'Accenture', 'aquibgic@gmail.com', 'Netsetter@9027', '9752135759', 0, '2018-04-18 01:53:09'),
(297, 'Imran ali', 'Techinflo', 'imranali08gec@gmail.com', '#Ali.imran', '7760504898', 0, '2018-04-20 03:15:04'),
(298, '', '', '', '', '', 0, '2018-04-20 20:13:21'),
(299, 'vadiraj', 'IBM', 'vadiraj.kashyap00@gmail.com', 'VadiEmc2', '8147473105', 0, '2018-04-20 20:13:21'),
(300, '', '', '', '', '', 0, '2018-04-20 20:13:22'),
(301, 'anand babu', 'DB Engineering and Consulting GmbH', 'anands2007@gmail.com', 'Thing999', '9916701790', 0, '2018-05-17 21:30:45'),
(302, 'ramya', 'BB', 'yramyayegu@gmail.com', '123456', '7386880150', 1, '2018-05-18 15:44:56'),
(303, 'Ashwini S', 'eSSL', 'ashwinismurthy131289@gmail.com', 'ganeshashu', '9880465646', 0, '2018-05-23 03:28:04'),
(304, 'Prashant Kasi', 'DuPont', 'mailstopsk@gmail.com', 'ksp007003', '9640326609', 0, '2018-06-14 17:27:03'),
(305, 'Srinivas g s', 'Fresher', 'srini0296@gmail.com', 'emc2123', '9738806941', 0, '2018-06-21 16:22:14'),
(306, '', '', '', '', '', 0, '2018-06-23 20:49:41'),
(307, 'Hemanth Kumar ', 'IFF PVT LTd', 'phk.mcse@gmail.com', 'j@sm!ne25', '9840569886', 0, '2018-06-27 18:01:15'),
(308, 'Seshdev Rath', 'None', 's.rath77@gmail.com', 'P@$$w0rd', '8984496424', 0, '2018-07-01 00:05:07'),
(309, 'PRAJNA SHETTY', 'Computer Science engineer', 'prajna.v.s.010@gmail.com', 'Pshetty@13', '9964469004', 1, '2018-07-18 06:16:27'),
(310, '', '', '', '', '', 0, '2018-07-22 17:44:34'),
(311, 'Mishal Jasmine Ferrao', 'Sahyadri college of engineering', 'mishalferrao@gmail.com', 'Mishu@123', '7204494879', 0, '2018-08-02 01:18:31'),
(312, 'Saurabh Sharma', 'Quinnox', 'saurabhrites@hotmail.com', 'Ss@226383', '9643267358', 0, '2018-08-02 22:15:31'),
(313, 'Saurabh Sharma', 'Quinnox', 'saurabhrites@hotmail.com', 'Ss@226383', '9643267358', 0, '2018-08-02 10:52:58'),
(314, 'Rajesh Poojari', 'The Oxford College of Engineering', 'rajesh25502@gmail.com', 'Raj@3012', '9535134526', 0, '2018-08-05 02:38:55'),
(315, 'SANTOSH KUMAR JAYARAM', 'Hewlett Packard', 'santhoshkj@gmail.com', 'S@ibaba07', '9980562000', 0, '2018-08-08 14:45:48'),
(316, 'Ravishankar NM', 'Techmust Software Pvt LTD', 'ravishankar8027@gmail.com', 'Ravi8027#', '9019910623', 0, '2018-08-22 14:18:54'),
(317, 'Ravishankar NM', 'Techmust Software Pvt LTD', 'ravishankar8027@gmail.com', 'Ravi8027#', '9019910623', 0, '2018-08-22 03:07:54'),
(318, 'Dr. D. Purnachand', 'Suven Life Scences ', 'purnachand_d@yahoo.com', '29pc12@1977', '7396627090', 0, '2018-08-23 13:55:48'),
(319, '', '', '', '', '', 0, '2018-08-23 13:55:49'),
(320, 'ramya sri', 'blackbuck', 'yramya99@yahoo.in', 'emc2learning', '7386880150', 0, '2018-08-23 22:37:02'),
(321, 'g sandeep', 'Virtusa', 'sandeep081984@gmail.com', 'Sanddy08', '9885758820', 0, '2018-09-05 15:46:25'),
(322, '', '', '', '', '', 0, '2018-09-05 15:46:26'),
(323, 'Supriya ', 'Capgemini', 'supriya.adidam@gmail.com', 'Suppi@402', '9962167456', 1, '2018-09-05 18:08:06'),
(324, 'Raghunath', 'PCL', 'raghunathkr55@gmail.com', 'krnath55', '9603788035', 0, '2018-09-07 23:16:50'),
(325, 'NEETHI CHITTIAPPA C', 'MAP SYSTEMS', 'neethichittiappa@gmail.com', 'Ruthvika@Neethi1491', '9148631878', 1, '2018-09-17 01:36:16'),
(326, 'Deepak', 'Gloify', 'deepakmadambi8@gmail.com', 'deesan@143', '8971042783', 0, '2018-09-17 18:28:44'),
(327, 'Karthik B', 'Telecommunication', 'balukarthik98@gmail.com', 'Karthik@123', '9738821312', 0, '2018-09-20 23:55:57'),
(328, 'Rashmi Basidoni', 'Numiclix Technologies', 'rashmicb24@gmail.com', 'SounD@143', '9739274628', 0, '2018-09-22 22:25:09'),
(329, 'Mani Shankar Nanduri', 'XSEED Education Pvt Ltd', 'nmani009@gmail.com', 'checkpoint#1234', '9100430246', 0, '2018-09-24 05:06:35'),
(330, 'abhishek singh', 'professional', 'as6710202@gmail.com', 'abhisingh', '8764002655', 0, '2018-09-24 20:32:08'),
(331, 'Gayathri', 'Engineering', 'gayathriganesh37@gmail.com', 'Ggayathri@97', '7353259912', 1, '2018-09-27 20:41:16'),
(332, 'Sunil Mishra', 'Pin Click', 'sunlmisr@gmail.com', 'concealed', '9937034839', 0, '2018-09-27 10:08:38'),
(333, 'CHAITANYA SABBINENI', 'CAPGEMINI', 'chaitanyasabbineni477@gmail.com', 'chaitany@00', '8519852085', 0, '2018-10-05 23:36:09'),
(334, 'Arushi Mangla', 'GLA University', 'arushimangla@gmail.com', 'ilovebooks@10', '9058442200', 0, '2018-10-07 20:01:39'),
(335, 'Anuradha Thota', 'WRWRWE', 'emc2001@gmail.com', 'emc2learning', '4354354354', 0, '2018-11-02 14:17:19'),
(336, '', '', '', '', '', 0, '2018-11-02 14:17:20'),
(337, 'Harish', 'Pace solutions India Private Limited', 'thotaharish007@gmail.com', '099h1a0547', '9908050860', 0, '2018-11-02 04:47:59'),
(338, 'sumalatha dasari', 'Mahindra Ecole Centrale', 'sumalatha.3118@gmail.com', 'suma@1234', '8897576706', 0, '2018-11-15 19:10:03'),
(339, 'Ravi Yalala', 'HSBC', 'yalalaravi@gmail.com', 'Sairam@123', '9704082532', 1, '2018-12-04 22:28:58'),
(340, 'Shravan kumar', 'Larsen & Toubro Infotech', 'rhudm.shravan@googlemail.com', 'power6566409', '8886566409', 0, '2018-12-24 04:37:30'),
(341, 'Ashok Rao Vardelly', 'Virtusa consultancy services Pvt ltd', 'ashokrao182@gmail.com', '9701401497', '9550636176', 0, '2018-12-27 16:13:32'),
(342, 'Prashanth Kumar', 'Unisys India Private Limited', 'prashanth.s@in.unisys.com', 'Yuvan_18', '9964853911', 0, '2018-12-27 11:43:36'),
(343, 'Gokul', 'KPRIEnt', 'gokul29@outlook.in', 'gokul2000', '9790121122', 0, '2019-01-20 22:35:13'),
(344, 'Noor Alam', 'IBM', 'amaansheikhazmi@gmail.com', '11B6SCA032', '9916130842', 1, '2019-01-25 01:18:25'),
(345, 'Sai Divyadhar', 'Terra Information Group', 'divyadharsai@gmail.com', 'sairam143', '8297229954', 0, '2019-01-31 06:35:01'),
(346, 'Krishnakanth Nallamilli ', 'Infosys', 'krishnakanth.nallamilli@gmail.com', 'Nallamilli@9', '7401107999', 0, '2019-02-01 04:21:53'),
(347, 'Tina Susan Sajeev', 'Private Sector', 'tinasusansajeev@gmail.com', '24422868', '7708681616', 0, '2019-02-04 03:07:39'),
(348, 'Sundar Kesavan', 'Jeganee Technologies', 'sundar.iteng@gmail.com', 'Radnusk71986', '9790245804', 0, '2019-02-20 05:56:07'),
(349, 'ramathulasi', 'DXC Technologies', 'ramatulasi.kanakam@gmail.com', 'Basweswara1dr', '7899441859', 1, '2019-03-14 18:19:47'),
(350, 'madhu sri', 'blackbucks', 'yraya99@yahoo.in', '12345678', '7386880150', 0, '2019-03-15 18:26:24'),
(351, 'Raghib Ali Mahmood', 'Amazon', 'raghibali92@yahoo.com', 'ali786/92', '9248311683', 0, '2019-03-17 16:00:42'),
(352, 'monica', 'techm', 'monica94@gmail.com', 'Guessit@143', '8096967363', 0, '2019-03-25 17:08:21'),
(353, 'nipun', 'Aditya Birla Fashion And Retail Ltd', 'nipunsharma1012@gmail.com', 'Madura123*()', '8197398027', 0, '2019-03-27 02:52:48'),
(354, 'Dheeraj Boggaram', 'Tata Consultancy Services', 'dheerajboggaram1234@gmail.com', 'djrocks1992', '9963339999', 0, '2019-04-12 00:30:52'),
(355, 'Santosh Dhareshwar', 'Infosys', 'santoshrd.92@gmail.com', 'Rediff.com1992', '8867264590', 0, '2019-04-12 21:34:13'),
(356, '', '', '', '', '', 0, '2019-04-12 21:34:14'),
(357, 'Nitheesha', 'Cyient.Dlm.Pvt.Ltd', 'nitheeshhegde94@gmail.com', 'Kavady@789', '7829529378', 0, '2019-04-13 18:51:39'),
(358, 'Hemanth', 'oracle', 'hemanth.r.raju1990@gmail.com', 'hemanth@1990', '8050473442', 1, '2019-04-15 13:51:20'),
(359, 'Prajwal Rao', 'Srinivas Institute of technology', 'PrajwalraoKarpe32@gmail.com', 'maanikya', '9110891036', 0, '2019-04-18 07:40:31'),
(360, 'Chikkaraju', 'BEL', 'chikkaraju.k.s@gmail.com', '9738705839', '8618154557', 1, '2019-05-07 00:02:08'),
(361, 'Ameen shadab shaik', 'cyient ltd', 'sk.ameen15@gmail.com', 'thala@123', '9492950109', 0, '2019-06-18 18:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `sample`
--

CREATE TABLE `sample` (
  `s.no` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ph` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample`
--

INSERT INTO `sample` (`s.no`, `name`, `email`, `ph`) VALUES
(1, 'asdf', 'asfds@gmail.com', '1235467890'),
(2, 'sdsefs', 'jfskjn@gmail.com', '9874563210');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `level` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `user_id`, `level`, `date`) VALUES
(4, 'php', 92, '', '2017-07-17 05:42:00'),
(5, 'c', 95, '', '2017-07-17 05:42:00'),
(6, 'html', 95, '', '2017-07-17 05:42:00'),
(7, 'c c', 83, '', '2017-07-17 05:42:00'),
(8, 'Project Management', 84, '', '2017-07-17 05:42:00'),
(9, 'Utilities Consultant', 84, '', '2017-07-17 05:42:00'),
(10, 'technology', 87, '', '2017-07-17 05:42:00'),
(12, 'javaa', 83, '', '2017-07-17 05:42:00'),
(13, 'C', 86, '', '2017-07-17 05:42:00'),
(14, 'J2SE', 86, '', '2017-07-17 05:42:00'),
(15, 'DBMS', 86, '', '2017-07-17 05:42:00'),
(16, 'HTML', 86, '', '2017-07-17 05:42:00'),
(17, 'CSS', 86, '', '2017-07-17 05:42:00'),
(18, 'BOOTSTRAP', 86, '', '2017-07-17 05:42:00'),
(20, 'ascsa', 90, 'Beginner', '2017-07-17 05:42:00'),
(21, 'Singing', 104, 'Intermediate', '2017-07-17 05:42:00'),
(22, 'fdg', 104, 'Beginner', '2017-07-17 05:42:00'),
(24, 'VB Scripting', 109, 'Intermediate', '2017-07-18 03:07:51'),
(25, 'MS Office', 109, 'Expert', '2017-07-18 03:08:07'),
(26, 'Domain knowledge in Banking and finance - asset servicing', 109, 'Intermediate', '2017-07-18 03:08:38'),
(27, 'UFT- Unified functional Test tool', 109, 'Intermediate', '2017-07-18 03:12:19'),
(28, 'c', 117, 'Intermediate', '2017-07-19 00:20:46'),
(29, 'Informatica Power Centre 9.6.1', 113, 'Intermediate', '2017-07-27 15:26:44'),
(30, 'Oracle PL/SQL', 113, 'Beginner', '2017-07-27 15:27:04'),
(31, 'Business Objects (SAP)', 113, 'Beginner', '2017-07-27 15:27:43'),
(37, 'Hibojdkqhef,asj', 120, 'Beginner', '2017-07-28 01:59:50'),
(38, 'fkfljhl', 124, 'Beginner', '2017-07-28 02:11:37'),
(39, 'asdf', 125, 'Intermediate', '2017-07-28 02:49:57'),
(40, 'asdf', 130, 'Beginner', '2017-07-28 04:01:18'),
(41, 'asdf', 132, 'Beginner', '2017-07-28 04:04:59'),
(42, 'asdf', 135, 'Beginner', '2017-07-28 04:46:47'),
(43, 'asdfasd', 135, 'Beginner', '2017-07-28 04:47:41'),
(44, 'asdf', 135, 'Intermediate', '2017-07-28 04:49:38'),
(45, 'asdf', 135, 'Beginner', '2017-07-28 05:10:22'),
(46, 'asdf', 135, 'Beginner', '2017-07-28 05:10:29'),
(47, 'asdf', 135, 'Beginner', '2017-07-28 05:12:09'),
(48, 'asdf', 135, 'Beginner', '2017-07-28 05:15:24'),
(49, 'asdf asdf', 137, 'Intermediate', '2017-07-28 16:19:26'),
(50, 'asdf', 137, 'Intermediate', '2017-07-28 16:29:35'),
(51, 'as asdf', 137, 'Beginner', '2017-07-28 16:30:28'),
(52, 'asd a', 137, 'Intermediate', '2017-07-28 16:31:32'),
(53, 'asdf', 137, 'Beginner', '2017-07-28 16:35:21'),
(54, 'fwe esds erfwe', 143, 'Intermediate', '2017-07-28 22:21:31'),
(55, ' fewsfs', 143, 'Expert', '2017-07-28 22:21:50'),
(57, 'fgfdhjgyuihojpk[l]', 142, 'Select Option', '2017-07-28 22:26:47'),
(58, 'css,html,bootstraph etgw', 81, '', '2017-07-29 18:28:37'),
(59, 'c', 146, 'Expert', '2017-08-01 20:22:13'),
(60, 'java', 146, 'Expert', '2017-08-01 20:22:23'),
(61, 'Strategy', 147, 'Intermediate', '2017-08-02 15:41:06'),
(62, 'business developement', 147, 'Expert', '2017-08-02 15:41:32'),
(63, 'IT strategy', 147, 'Expert', '2017-08-02 15:42:06'),
(64, 'C', 149, 'Intermediate', '2017-08-02 16:51:08'),
(65, 'java', 149, 'Intermediate', '2017-08-02 16:51:14'),
(66, 'c++', 149, 'Intermediate', '2017-08-02 16:51:30'),
(67, 'html', 149, 'Intermediate', '2017-08-02 16:52:01'),
(68, 'css', 149, 'Intermediate', '2017-08-02 16:52:08'),
(69, 'bootstrap', 149, 'Intermediate', '2017-08-02 16:52:17'),
(70, 'fsfdgdgf', 151, 'Expert', '2017-08-02 18:16:50'),
(71, 'fdsfgdfg', 151, 'Expert', '2017-08-02 18:16:58'),
(72, 'fdsfgdfg', 151, 'Expert', '2017-08-02 18:16:59'),
(73, 'sxcdrsyh', 151, 'Expert', '2017-08-02 18:17:24'),
(74, 'j,hkht', 152, 'Intermediate', '2017-08-02 18:35:34'),
(78, 'c', 155, 'Select Option', '2017-08-02 18:41:55'),
(79, 'java', 155, '', '2017-08-02 18:42:00'),
(80, 'html', 155, 'Select Option', '2017-08-02 18:42:06'),
(81, 'sdfg', 156, '', '2017-08-02 20:17:04'),
(82, 'resrs serf', 153, 'Beginner', '2017-08-02 21:46:35'),
(83, 'gtr d', 157, 'Intermediate', '2017-08-02 22:37:04'),
(85, 'java', 160, 'Select Option', '2017-08-03 17:02:36'),
(86, 'dbms', 160, 'Select Option', '2017-08-03 17:02:44'),
(87, 'CCMI, ISO 9001:2008, ISMS 27001 LEAD AUDITOR, SIX SIGMA GREEN BELT, ITIL FOUNDATION', 168, 'Expert', '2017-08-10 20:01:49'),
(88, 'CMMI, ISO 9001:2008, ISMS 27001 LEAD AUDITOR, SIX SIGMA GREEN BELT, ITIL FOUNDATION', 168, 'Intermediate', '2017-08-10 20:01:51'),
(89, 'ITIL', 145, '', '2017-08-12 04:54:08'),
(90, 'LEAN AND SIX SIGMA', 145, 'Beginner', '2017-08-12 04:54:25'),
(91, 'IBM WATSON ANALYTICS', 145, 'Beginner', '2017-08-12 04:54:41'),
(92, 'SERVICE MANAGEMENT', 145, 'Intermediate', '2017-08-12 04:55:10'),
(93, 'Tableau', 145, 'Beginner', '2017-08-15 05:48:05'),
(94, 'Presales', 180, 'Expert', '2017-08-17 23:34:00'),
(95, 'Bid Management', 180, 'Expert', '2017-08-17 23:34:17'),
(96, 'manual testing,database testing', 183, 'Expert', '2017-08-22 18:00:25'),
(97, 'IBM DataStage', 194, 'Expert', '2017-09-05 22:05:56'),
(98, 'IBM Netezza', 194, 'Intermediate', '2017-09-05 22:06:13'),
(99, 'java ', 197, 'Expert', '2017-09-06 17:30:53'),
(100, 'Good Communication', 215, 'Intermediate', '2017-09-10 16:49:30'),
(101, 'Windows Administrator', 219, 'Intermediate', '2017-09-14 03:38:47'),
(102, 'VMWare Admin', 219, 'Intermediate', '2017-09-14 03:38:59'),
(103, 'AWS Admin', 219, 'Beginner', '2017-09-14 03:39:10'),
(104, 'Workload Manager', 219, 'Expert', '2017-09-14 03:39:28'),
(105, 'C language and JAVA', 200, 'Intermediate', '2017-09-14 22:51:05'),
(106, 'Project Management', 233, 'Expert', '2017-10-16 19:57:16'),
(107, 'Project Manager', 264, 'Intermediate', '2018-01-26 22:42:17'),
(108, 'Painting and sketching', 272, 'Intermediate', '2018-02-17 00:18:28'),
(109, 'Badminton', 272, 'Expert', '2018-02-17 00:18:47'),
(110, 'Carroms', 272, 'Expert', '2018-02-17 00:18:57'),
(111, 'Dancing', 272, 'Expert', '2018-02-17 00:19:16'),
(112, 'CCNA, MCSE and Linux', 273, 'Intermediate', '2018-02-19 22:24:14'),
(113, 'SQL and Tableau', 285, 'Beginner', '2018-03-11 05:41:44'),
(114, 'EXCEL,SQL,TABLEAU', 287, 'Intermediate', '2018-03-12 20:57:20'),
(115, 'coding', 302, 'Intermediate', '2018-05-18 16:06:12'),
(116, 'Windows server, ADs,DNS,DHCP,Vmwar', 307, 'Intermediate', '2018-06-27 18:02:42'),
(117, 'communicatin', 309, 'Expert', '2018-07-18 18:00:30'),
(119, 'C', 311, 'Intermediate', '2018-08-02 01:32:04'),
(120, 'C++', 311, 'Beginner', '2018-08-02 01:32:18'),
(121, 'SQL', 314, 'Intermediate', '2018-08-05 02:44:43'),
(122, 'Java', 314, 'Intermediate', '2018-08-05 02:44:54'),
(123, 'C++', 314, 'Beginner', '2018-08-05 02:45:09'),
(124, 'Data Structure', 314, 'Intermediate', '2018-08-05 02:45:32'),
(125, 'C#', 314, 'Intermediate', '2018-08-05 02:45:44'),
(126, 'HTML', 314, 'Intermediate', '2018-08-05 02:46:02'),
(127, 'CSS', 314, 'Intermediate', '2018-08-05 02:46:12'),
(128, '7 Quality Tool', 315, 'Intermediate', '2018-08-08 14:59:38'),
(129, 'MS Excel', 315, 'Intermediate', '2018-08-08 14:59:48'),
(130, 'MS Power Point', 315, 'Intermediate', '2018-08-08 14:59:57'),
(131, 'Process Management', 315, 'Intermediate', '2018-08-08 15:00:07'),
(132, 'Client Management', 315, 'Beginner', '2018-08-08 15:00:16'),
(133, 'PC Hardware & Networking', 315, 'Intermediate', '2018-08-08 15:00:28'),
(134, 'ITIL', 315, 'Beginner', '2018-08-08 15:00:38'),
(135, 'Core Java, spring mvc, hibernate jpa spring boot JSP', 316, 'Expert', '2018-08-22 14:22:56'),
(136, 'Mainframes ', 323, 'Expert', '2018-09-05 18:12:26'),
(137, 'SEO', 325, 'Expert', '2018-09-17 01:46:12'),
(138, 'DIGITAL MARKETING', 325, 'Expert', '2018-09-17 01:46:24'),
(139, 'ON PAGE OPTIMIZATION', 325, 'Expert', '2018-09-17 01:46:39'),
(140, 'OFF PAGE OPTIMIZATION', 325, 'Expert', '2018-09-17 01:47:25'),
(141, 'Operating Systems		:  Windows XP â€“ windows7 Languages			:  C, Core Java Databases			:  Oracle 10g, SQL Tools				:  Firebug, Eclipse IDE, AutoIT, Apache POI Automation Testing Tool  	:  Selenium Web Driver/RC, Maven, Jenkins, QTP', 328, '', '2018-09-22 22:32:41'),
(142, 'Good communication and Good leadership', 331, 'Expert', '2018-09-27 20:52:52'),
(143, 'Exstream, xPression', 333, 'Intermediate', '2018-10-05 23:41:27'),
(144, 'Talent Acquisition ', 337, 'Expert', '2018-11-02 16:26:35'),
(145, 'Lotus Domino,Ms-Exchange, Sharepoint, Azure,AWS, Office -365', 339, 'Expert', '2018-12-05 16:43:33'),
(146, 'Java , Hibernate , Mongo DB, Rest Full Api, Spring boot, Microservices', 344, 'Intermediate', '2019-01-25 01:41:37'),
(147, 'ADA Testing', 349, 'Expert', '2019-03-14 18:35:14'),
(148, 'Automation Testing', 349, 'Expert', '2019-03-14 18:35:33'),
(149, 'Functional Tester', 349, 'Expert', '2019-03-14 18:35:51'),
(150, 'Performance testing', 349, 'Intermediate', '2019-03-14 18:36:14'),
(151, 'ITIL Foundation ', 354, 'Beginner', '2019-04-12 00:35:04'),
(152, 'Linux', 358, 'Expert', '2019-04-15 14:00:45'),
(153, 'Vmware', 358, 'Beginner', '2019-04-15 14:00:54'),
(154, 'AWS', 358, 'Beginner', '2019-04-15 14:01:02'),
(155, 'SAP QM enduser and SAP MM enduser', 360, 'Expert', '2019-05-07 00:07:20'),
(156, 'ansys', 361, 'Intermediate', '2019-06-18 19:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `specilization`
--

CREATE TABLE `specilization` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specilization`
--

INSERT INTO `specilization` (`id`, `userid`, `specialization`, `date`) VALUES
(12, '81', 'Technology Services', '2017-07-17 14:05:44'),
(13, '117', 'Technology Services', '2017-07-19 00:45:15'),
(14, '109', 'Technology Products', '2017-07-23 16:16:49'),
(15, '113', 'Technology Products', '2017-07-27 16:01:15'),
(16, '120', 'Technology Products', '2017-07-28 02:01:56'),
(17, '125', 'Technology Products', '2017-07-28 03:28:41'),
(18, '130', 'Technology Products', '2017-07-28 04:02:42'),
(19, '132', 'Technology Products', '2017-07-28 04:06:25'),
(20, '135', 'Technology Products', '2017-07-28 05:17:41'),
(21, '124', 'Technology Products', '2017-07-28 17:33:00'),
(22, '143', 'Technology Products', '2017-07-28 22:26:10'),
(23, '146', 'Technology Sales', '2017-08-01 20:27:29'),
(24, '147', 'Technology Products', '2017-08-02 15:53:11'),
(25, '149', 'Technology Services', '2017-08-02 17:36:10'),
(26, '150', 'Technology Services', '2017-08-02 17:59:10'),
(27, '151', 'Technology Products', '2017-08-02 18:25:55'),
(28, '151', 'Technology Products', '2017-08-02 18:25:55'),
(29, '153', 'Technology Products', '2017-08-02 18:37:39'),
(30, '152', 'Technology Products', '2017-08-02 18:39:11'),
(31, '155', 'Technology Services', '2017-08-02 18:47:03'),
(32, '157', 'Technology Services', '2017-08-02 22:27:35'),
(33, '159', 'Technology Services', '2017-08-03 16:37:40'),
(34, '161', 'Technology Services', '2017-08-03 16:58:46'),
(35, '160', 'Technology Services', '2017-08-03 17:16:24'),
(36, '162', 'Technology Services', '2017-08-04 16:32:07'),
(37, '163', 'Technology Services', '2017-08-04 16:42:03'),
(38, '145', 'Technology Services', '2017-08-12 05:10:08'),
(39, '183', 'Technology Products', '2017-08-22 21:05:28'),
(40, '168', 'Technology Services', '2017-08-26 23:31:07'),
(41, '168', 'Technology Services', '2017-08-26 23:31:08'),
(42, '194', 'Technology Services', '2017-09-05 22:17:23'),
(43, '215', 'Technology Sales', '2017-09-10 17:25:12'),
(44, '200', 'Technology Services', '2017-09-11 01:58:39'),
(45, '219', 'Technology Services', '2017-09-14 03:57:10'),
(46, '234', '', '2017-10-28 00:22:08'),
(47, '273', 'Technology Services', '2018-02-19 23:17:02'),
(48, '285', 'Technology Services', '2018-03-11 05:46:22'),
(49, '287', 'Technology Services', '2018-03-12 20:59:15'),
(50, '302', 'Technology Services', '2018-05-18 16:08:01'),
(51, '307', 'Technology Services', '2018-06-27 18:05:49'),
(52, '309', 'Technology Products', '2018-07-18 17:57:05'),
(53, '314', 'Technology Services', '2018-08-05 02:52:38'),
(54, '316', 'Technology Products', '2018-08-22 14:26:55'),
(55, '323', 'Technology Services', '2018-09-05 18:17:25'),
(56, '325', 'Technology Services', '2018-09-17 01:53:36'),
(57, '328', 'Technology Products', '2018-09-22 22:43:12'),
(58, '331', 'Technology Products', '2018-09-27 21:01:16'),
(59, '337', 'Technology Services', '2018-11-02 18:11:59'),
(60, '339', 'Technology Products', '2018-12-05 16:52:06'),
(61, '344', 'Technology Services', '2019-01-25 01:46:43'),
(62, '349', 'Technology Products', '2019-03-14 18:23:20'),
(63, '358', 'Technology Products', '2019-04-15 14:06:04'),
(64, '360', 'Technology Products', '2019-05-07 00:10:38'),
(65, '361', 'Technology Products', '2019-06-18 19:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `subject_code` varchar(20) NOT NULL,
  `subject_credits` int(11) NOT NULL,
  `subject_level` varchar(100) NOT NULL,
  `subject_term` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_name`, `subject_code`, `subject_credits`, `subject_level`, `subject_term`) VALUES
(2, 'STATISTICS FOR MANAGERS', 'EBA701', 0, '', 1),
(3, 'FINANCIAL ACCOUNTING', 'EBA703', 0, '', 1),
(4, 'MANAGERIAL ECONOMICS', 'EBA705', 0, '', 1),
(5, 'MARKETING MANAGEMENT', 'EBA707', 0, '', 1),
(6, 'DECISION MODELS AND OPTIMIZATION', 'EBA702', 0, '', 2),
(7, 'CORPORATE FINANCE', 'EBA704', 0, '', 2),
(8, 'OPERATIONS MANAGEMENT', 'EBA706', 0, '', 2),
(9, 'STRATEGIC LEADERSHIP', 'EBA708', 0, '', 2),
(10, 'HUMAN RESOURCE AND ORGANIZATION MANAGEMENT', 'EBA710', 0, '', 2),
(11, 'MARKETING STRATEGY', 'EBA709', 0, '', 3),
(12, 'CONSUMER BEHAVIOUR', 'EBA711', 0, '', 3),
(13, 'PRICING', 'EBA713', 0, '', 3),
(14, 'FINANCIAL STATEMENT ANALYSIS AND BUSINESS EVALUATION', 'EBA715', 0, '', 3),
(15, 'CORPORATE CONTROL MERGERS AND ACQUISITIONS', 'EBA717', 0, '', 3),
(16, 'PROJECT MANAGEMENT', 'EBA719', 0, '', 3),
(17, 'MANAGING RISK AND COMPLEXITY', 'EBA721', 0, '', 3),
(18, 'OPERATIONS STRATEGY', 'EBA723', 0, '', 3),
(19, 'RFP PROCESS', 'EBA725', 0, '', 3),
(20, 'WRITING WINNING PROPOSALS', 'EBA727', 0, '', 3),
(21, 'MAKING COMPELLING SALES COLLATERAL', 'EBA729', 0, '', 3),
(22, 'PROJECT COSTING AND PROFITABILITY', 'EBA731', 0, '', 3),
(23, 'AGILE MANAGEMENT', 'EBA733', 0, '', 3),
(24, 'ACCOUNT AND CUSTOMER MANAGEMENT', 'EBA735', 0, '', 3),
(25, 'CHANGE MANAGEMENT', 'EBA737', 0, '', 3),
(26, 'BUILDING AND LEADING EFFECTIVE TEAMS', 'EBA739', 0, '', 3),
(27, 'IT SOLUTIONS AND ARCHITECTURE', 'EBA741', 0, '', 3),
(28, 'MARKETING RESEARCH', 'EBA743', 0, '', 3),
(29, 'DIGITAL AND SOCIAL MEDIA MARKETING', 'EBA745', 0, '', 3),
(30, 'MARKETING ANALYTICS', 'EBA747', 0, '', 3),
(31, 'BRAND MANAGEMENT', 'EBA749', 0, '', 3),
(32, 'MACHINE LEARNING', 'EBA712', 0, '', 4),
(33, 'STATISTICAL PROGRAMMING - R', 'EBA714', 0, '', 4),
(34, 'FORECASTING AND PREDICTIVE MODELING', 'EBA716', 0, '', 4),
(35, 'CLOUD - LARGE SCALE DATA STORAGE AND COMPUTING', 'EBA718', 0, '', 4),
(36, 'ADVANCED DATABASE MANAGEMENT', 'EBA720', 0, '', 4),
(37, 'PROGRAMMING FOR BIG DATA AND DATA SCIENCE', 'EBA722', 0, '', 4),
(38, 'DATA VISUALIZATION', 'EBA724', 0, '', 4),
(39, 'CYBER SECURITY: PENETRATION AND VULNERABILITY', 'EBA726', 0, '', 4),
(40, 'ECOMMERCE: ENTERPRISE ARCHITECTURE', 'EBA728', 0, '', 4),
(41, 'ECOMMERCE: APPLICATION DEVELOPMENT', 'EBA730', 0, '', 4),
(42, 'USER INTERFACE AND EXPERIENCE DESIGN', 'EBA732', 0, '', 4),
(43, 'BUILDING MOBILE APPLICATIONS', 'EBA734', 0, '', 4),
(44, 'INTRODUCTION TO IoT AND SMART CITIES', 'EBA736', 0, '', 4),
(45, 'INTERNET OF THINGS: DESIGN AND ARCHITECTURE', 'EBA738', 0, '', 4),
(46, 'COMMUNICATION TECHNOLOGIES: WIRELESS SENSOR NETWORKS', 'EBA740', 0, '', 4),
(47, 'Guest Lecture', 'EBA741', 0, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `summary`
--

CREATE TABLE `summary` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `fileupload` varchar(50) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `summary`
--

INSERT INTO `summary` (`id`, `description`, `fileupload`, `user_id`) VALUES
(47, 'hjsfdg', '3920100034177768 (1).pdf', 3),
(48, 'The programme includes a thorough grounding in professional software development, together with experience of developing and conducting a development project. The programme will prepare the student for a responsible position in the IT industry. Blackbuck has extensive contacts with industrial partners through active teaching, online lectures. curriculum development, and panel discussions. During the programme students have an opportunity to develop and practice relevant professional and transferrable skills, and to meet and learn from employers about working in the IT industry.\r\n', '22865h.jpg', 92),
(49, 'vhiudfh uifyehfikn uihfbewuf iuehewnj u hwihfnf iuee euewhf ueh uw wrwrhw jhgroif u iukfeoiufeufhefe iu  jjhuij arera ijs sra v k  iji hfhn hiuf uiv s ufd ois;vnufh jdfhsd dshf vbh cvkvn  shns hbdhf sdjfhsj', '20535127.jpeg', 92),
(50, 'abcd', '', 5),
(51, 'hgujyjhvbnuihyiuk', '', 95),
(52, 'hiiiiii', '', 95);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `terms_name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testscores`
--

CREATE TABLE `testscores` (
  `id` bigint(20) NOT NULL,
  `test_name` varchar(50) NOT NULL,
  `score` varchar(5) NOT NULL,
  `total` varchar(5) NOT NULL,
  `my` varchar(15) NOT NULL,
  `fileupload` varchar(50) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testscores`
--

INSERT INTO `testscores` (`id`, `test_name`, `score`, `total`, `my`, `fileupload`, `user_id`) VALUES
(1, 'bngcgvj', '12', '25', 'March-2009', '94320503Book.xlsx', 3),
(2, 'Student of the year test', '250', '250', 'April-2010', '996720503Book.xlsx', 3),
(3, 'jhygjbhn', 'hb ', 'hv ', 'h', '0', 95);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `respass` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  `user_type` varchar(32) NOT NULL,
  `newsletters` tinyint(1) NOT NULL,
  `terms` tinyint(1) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `coverphoto` varchar(50) NOT NULL DEFAULT 'office.png',
  `whos_viewed` text NOT NULL,
  `head_line` varchar(100) NOT NULL DEFAULT 'Your professional headline',
  `country` varchar(50) NOT NULL DEFAULT 'Country',
  `city` varchar(32) NOT NULL DEFAULT 'City',
  `postal_code` varchar(10) NOT NULL,
  `industry` varchar(50) NOT NULL,
  `education` varchar(50) NOT NULL DEFAULT 'Qualification',
  `current_company` varchar(50) NOT NULL DEFAULT 'Working Company',
  `special` varchar(25) NOT NULL,
  `mobile` varchar(15) NOT NULL DEFAULT 'Contact Number',
  `skype_id` varchar(50) NOT NULL DEFAULT 'Skype Id',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `lastname`, `email`, `password`, `respass`, `dob`, `user_type`, `newsletters`, `terms`, `auth_key`, `photo`, `coverphoto`, `whos_viewed`, `head_line`, `country`, `city`, `postal_code`, `industry`, `education`, `current_company`, `special`, `mobile`, `skype_id`, `date`) VALUES
(1, 'Admin', '', 'zinkaz@gmail.com', 'zinkaz', '', '0000-00-00', 'admin', 0, 0, '', '123.jpeg', 'office.png', '', '', '', '', '', '', '', '', '', '', 'Skype Id', '2017-07-17 05:53:31'),
(2, 'Krishna M', '', 'lucky.mundru@gmail.com', '123456', '123456', '0000-00-00', '', 1, 1, '', '124.jpeg', '', '', '', '', '', '', '', '', '', '', '', 'Skype Id', '2017-07-17 05:53:31'),
(3, 'Lakshmi krishna', '', 'lakshmi.krishna418@gmail.com', '123456', '', '0000-00-00', 'mentor', 0, 0, '', '27007fr-04.jpg', '', '2,4,5,6,7,8', 'Lead Develope ', 'India', 'Hyderabad', '500002', 'Computer Software', 'Qualification', 'Okcygenio pvt ltd', '', '7095477007', 'hbvhjdsvbdsbv', '2017-07-17 05:53:31'),
(4, 'krish', '', 'krish@gmail.com', '123456', '', '0000-00-00', 'guide', 0, 0, '', '125.jpeg', '', '', 'Lead Developer', 'India', 'Hyderabad', '500002', 'Computer Software', '', '', '', '', 'Skype Id', '2017-07-17 05:53:31'),
(5, 'ramya', '', 'yramyayegu@gmail.com', 'sravani1', 'sravani1', '0000-00-00', 'student', 0, 0, '', '2161331376f.jpg', '24161130.gif', '', 'Lead Developer', 'India', 'Hyderabad', '500002', 'Computer Software', 'MCA', 'BBC', 'MCA', '9876543210', 'dsravani.mpcp@gmail.com', '2017-07-17 05:53:31'),
(6, 'tttpp', '', 'tapgh@gmail.com', '123456', '', '0000-00-00', '', 0, 0, '', '127.jpeg', '', '', 'Lead Developer', 'India', 'Hyderabad', '500002', 'Computer Software', '', '', '', '', 'Skype Id', '2017-07-17 05:53:31'),
(8, 'Lakshmi1234', '', 'krish123@gmail.com', '1234567', '1234567', '0000-00-00', '', 0, 0, '', '129.jpeg', '', '', '', '', '', '', '', '', '', '', '', 'Skype Id', '2017-07-17 05:53:31'),
(9, 'xyz', '', 'xyz@gmail.com', '123456', 'Rupali@123', '0000-00-00', 'student', 0, 0, '', '2754a.jpg', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(69, '', '', 'sravani@gmail.com', '123456', '', '0000-00-00', '', 0, 0, '', '155602161331376f.jpg', '35312621e.jpg', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(71, '', '', 'sdgfsdgs@gmail.com', '123456', '', '0000-00-00', '', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(74, 'ramya', 'sri', 'yramya99@yahoo.in', '123466', '', '0000-00-00', 'student', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(84, '', '', 'dtestes', 'tetee4y', '', '0000-00-00', '', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(85, '', '', 'dgtdfgdf', 'fesdfs', '', '0000-00-00', '', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(86, 'jhikm,n', 'kjoijl', 'dseats@', 'fgfdgvd', '', '0000-00-00', 'student', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(87, '', '', 'rfsxsfeww@g.com', 'dasfsr', '', '0000-00-00', '', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(88, 'anur', 'adha', 'anud@gmail.com', '123456', '', '0000-00-00', 'mentor', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(89, 'aaaa', 'bbbb', 'anudq@gmail.com', '123456', '', '0000-00-00', 'mentor', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(90, 'vbvcdb', 'jhvhv', 'anuxdq@gmail.com', '123456', '', '0000-00-00', 'mentor', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(91, 'ramya', 'srii', 'zinka@gmail.com', '789546', '', '0000-00-00', 'mentor', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(93, 'sravanida', 'darsi', 'sravani.d@theblackbucks.com', 's1234567', '', '0000-00-00', 'mentor', 0, 0, '', '21128805i.jpg', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(94, '', '', 'sravaniiii123@gmail.com', '123456d', '', '0000-00-00', '', 0, 0, '', '', '', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', 'Contact Number', 'Skype Id', '2017-07-17 05:53:31'),
(95, 'sravani', 'darisi', 'sravani.d@gmail.com', '123456', '', '0000-00-00', 'mentor1', 0, 0, '', '116565618c.jpg', '7434838Android.jpg', '', 'Your professional headline', 'Country', 'City', '', '', 'Qualification', 'Working Company', '', '9876543210', 'Skype Id', '2017-07-17 05:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(80) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(80) NOT NULL,
  `user_year` year(4) NOT NULL,
  `user_type` int(10) NOT NULL,
  `user_registerid` varchar(80) NOT NULL,
  `user_regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`user_id`, `user_name`, `user_email`, `user_password`, `user_year`, `user_type`, `user_registerid`, `user_regdate`) VALUES
(1, 'suma', 'sumasushma111@gmail.com', 'emc2learning', 2001, 0, 'emc2001', '2017-12-16 05:31:26'),
(32, 'Anuradha Thota', 'anuradha.thota@theblackbucks.com', 'AN48705', 2017, 0, 'emc2020', '2017-12-07 22:17:15'),
(33, 'saicharantej', 'saicharantej99@gmail.com', '123456', 2017, 0, 'emc2021', '2018-11-27 04:52:55'),
(34, 'Soumyajit', 'snrsarker@gmail.com', 'SO34935', 2017, 0, 'emc2002', '2017-12-08 02:02:18'),
(35, 'K Milind Kumar', 'mkkamle@gmail.com', 'MKkamble5A$', 2017, 0, 'emc2003', '2017-12-14 06:15:27'),
(36, 'Daggumati Ravi Kumar', 'dravi.kv@gmail.com', 'sweety8016', 2017, 0, 'emc2004', '2017-12-19 17:29:33'),
(37, 'Jaya Prakash', 'prakashnani54@gmail.com', 'JA60891', 2017, 0, 'emc2005', '2017-12-08 02:04:15'),
(38, 'Harini jakkula', 'harini.jakkula@gmail.com', 'HA43205', 2017, 0, 'emc2006', '2017-12-08 02:05:14'),
(39, 'Uday Bhaskar PV', 'udaybhaskar.pv@hotmail.com', 'Innovation@1', 2017, 0, 'emc2007', '2017-12-11 09:43:40'),
(40, 'Raghavendra', 'rchaduvula@c3i-inc.com', 'RA46067', 2017, 0, 'emc2008', '2017-12-08 02:06:18'),
(41, 'Renuka', 'renukamurthy152@gmail.com', 'RE71303', 2017, 0, 'emc2009', '2017-12-08 02:06:52'),
(42, 'Deepak', 'deepak_balivada@infosys.com', 'DE43319', 2017, 0, 'emc2010', '2017-12-08 02:07:22'),
(43, 'Jagadeeswara Rao M', 'jagadeeswar.murapaka@gmail.com', 'JA26596', 2017, 0, 'emc2011', '2017-12-08 02:07:56'),
(44, 'Siddarth Reddy', 'siddarth.initio@gmail.com', 'SI92265', 2017, 0, 'emc201222', '2019-01-03 15:55:28'),
(45, 'Rajesh', 'hirajeshji@gmail.com', 'MyEMC12345$', 2017, 0, 'emc2013', '2018-01-01 11:34:52'),
(46, 'Rashmi Jain', 'rashmi.jain77@gmail.com', 'RA87869', 2017, 0, 'emc2014', '2017-12-08 02:09:35'),
(47, 'Varun K', 'varun.6192@gmail.com', 'VA91031', 2017, 0, 'emc2015', '2017-12-08 02:10:21'),
(49, 'Bhat Dittakavi', 'bhat.dittakavi@gmail.com', 'BH73324', 2017, 1, 'emc2016', '2018-01-19 10:51:45'),
(50, 'Y Lakshman Kumar', 'ylk@gitam.edu', 'Y 2874', 2017, 0, 'emc2017', '2017-12-16 23:27:52'),
(51, 'Mohan Vellanki', 'mohan.vellanki@gmail.com', 'MO66631', 2017, 1, 'emc2018', '2018-01-19 10:51:53'),
(52, 'Murthy', 'murthy.pala@gmail.com', 'MU77081', 2017, 0, 'emc2019', '2018-04-26 13:06:50'),
(55, 'ramya', 'yramyayegu@gmail.com', '123456', 2018, 1, '2020', '2018-07-16 06:51:22'),
(56, 'Mohana Deepika Gadhamsetty', 'gmohanadeepika@gmail.com', 'emc2batch2', 2018, 0, 'emc2.1000', '2018-05-28 07:27:34'),
(57, 'Karuna', 'karunanagree@gmail.com', 'password', 2018, 0, 'emc2.1001', '2018-05-24 18:47:03'),
(58, 'Madhusudhan', 'madhusudhan0604@gmail.com', 'password', 2018, 0, 'emc2.1002', '2018-05-24 07:43:08'),
(59, 'Mastan', 'mastan322@gmail.com', 'password', 2018, 0, 'emc2.1003', '2018-05-24 07:45:52'),
(60, 'MCS Reddy', 'mandlicsr@gmail.com', 'password', 2018, 0, 'emc2.1004', '2018-05-24 07:52:41'),
(61, 'Niroj', 'nrjbehera3@gmail.com', 'password', 2018, 0, 'emc2.1005', '2018-05-24 07:53:49'),
(62, 'Rohit', 'rohita2007@gmail.com', 'password', 2018, 0, 'emc2.1006', '2018-05-24 07:54:34'),
(63, 'Sai Koundinya', 'sai.koundinya@gmail.com', 'password', 2018, 0, 'emc2.1007', '2018-05-24 08:13:55'),
(64, 'Satyanarayana Raju', 'rssraju@gmail.com', 'password', 2018, 0, 'emc2.1008', '2018-05-24 08:15:15'),
(65, 'Shyam Mohan Reddy', 'shyam.reddy@gmail.com', 'password', 2018, 0, 'emc2.1009', '2018-05-24 08:16:16'),
(66, 'Siddarth', 'siddarth.initio@gmail.com', 'password', 2018, 0, 'emc2.1010', '2018-05-24 08:17:02'),
(67, 'Sreenath', 'sreenathnair', 'password', 2018, 0, 'emc2.1011', '2018-05-24 08:17:47'),
(68, 'Suchitra CH', 'suchitrach97@gmail.com', 'password', 2018, 0, 'emc2.1012', '2018-05-24 08:19:50'),
(69, 'Venkat Duvvuri', 'venkata22800@gmail.com', 'password', 2018, 0, 'emc2.1013', '2018-05-24 08:20:42'),
(70, 'Vinod Prajapati', 'vinod.prajapati@gmail.com', 'password', 2018, 0, 'emc2.1014', '2018-05-24 08:21:37'),
(71, 'Jhansi', 'vs_kammili@yahoo.com', 'password', 2018, 0, 'emc2.1015', '2019-01-03 16:06:35'),
(80, 'ramya', 'yramyayegu@gmail.com', 'password', 2019, 0, 'emc2023', '2019-01-04 13:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_subjects`
--

CREATE TABLE `user_subjects` (
  `s_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `v_id` int(11) NOT NULL,
  `subject_id` varchar(20) NOT NULL,
  `v_headline` varchar(100) NOT NULL,
  `v_url` varchar(300) NOT NULL,
  `v_dis` text NOT NULL,
  `v_img` varchar(100) NOT NULL,
  `homework` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `length` varchar(20) NOT NULL,
  `v_type` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`v_id`, `subject_id`, `v_headline`, `v_url`, `v_dis`, `v_img`, `homework`, `date`, `length`, `v_type`, `faculty_id`, `batch`) VALUES
(7, '', 'Negotiation Skills', 'https://www.youtube.com/embed/HSH_hYLMO00', 'Negotiation Skills', 'negotiationskills.jpg', '', '2017-09-16 16:00:10', '1:11:27', 1, 0, 0),
(11, '', 'Accounts Class 1', 'https://www.youtube.com/embed/u5mNFO8Ocg0', 'Accounts Class one', 'maxresdefault.jpg', '', '2017-10-21 16:00:00', '2:57:42', 1, 0, 0),
(12, '', 'Negative Cash Cycle', 'https://www.youtube.com/embed/W6BQUDXlseo', 'Negative Cash Cycle', 'cashflowstatement.jpg', '', '2017-11-04 06:00:00', '2:50:28', 1, 0, 0),
(13, '', 'Statistical Analysis', 'https://www.youtube.com/embed/VTBwDDLmz2Q', 'Statistical Analysis', 'statisticalanalysis.jpg', '', '2017-11-11 07:00:00', '2:02:55', 1, 0, 0),
(14, '', 'Accounts Class 2', 'https://www.youtube.com/embed/QrdmeFUi93U', 'Accounts Class 2', 'accountsclass2.jpg', '', '2017-10-28 06:00:00', '2:56:52', 1, 0, 0),
(15, '4', 'Day 1', 'https://www.youtube.com/embed/Yv8m8o4XGPs', 'managerial day 1', 'managerial-day-1.jpg', 'managerial-assignment-1.pdf', '2017-12-02 07:00:00', '1:37:30', 0, 1, 0),
(16, '2', 'Day 1', 'https://www.youtube.com/embed/VyPc0HMnf3E', 'statistics day 1', 'statistics-day-1.jpg', 'statistics-assignment-1.pdf', '2017-12-02 07:00:00', '1:57:55', 0, 0, 0),
(17, '2', 'Day 2', 'https://www.youtube.com/embed/ookaYJkkwrE', 'Random Variable EMBA', 'statistics-day-2.jpg', '', '2017-12-09 07:00:00', '1:19:44', 0, 0, 0),
(18, '5', 'Day 1', 'https://www.youtube.com/embed/8Jey82Ip7dk', 'Marketing Management Day 1', 'marketing-day-1.jpg', '', '2017-12-09 07:00:00', '2:09:47', 0, 0, 0),
(19, '4', 'Day 2', 'https://www.youtube.com/embed/kX6k3bMJtz8', 'managerial day 2', 'managerial-day-2.jpg', 'managerial-assignment-2.pdf', '2017-12-09 07:00:00', '2:12:13', 0, 1, 0),
(20, '4', 'Day 3', 'https://www.youtube.com/embed/-bY2_GaTPAE', 'managerial day 3', 'managerial-day-3.jpg', '', '2017-12-16 07:00:00', '1:33:10', 0, 1, 0),
(21, '5', 'Day 2', 'https://www.youtube.com/embed/n7oJDpjY3-w', 'Marketing management day 2', 'marketing-day-2.jpg', 'marketing-assignment-2.pdf', '2017-12-17 07:00:00', '1:56:02', 0, 0, 0),
(22, '2', 'Day 3', 'https://www.youtube.com/embed/k-WYfHsvFNY', 'statistics day 3', 'statistics-day-3.jpg', '', '2017-12-16 07:00:00', '2:30:16', 0, 0, 0),
(23, '4', 'Day 4', 'https://www.youtube.com/embed/xYnOOffCqY8', 'managerial day 4', 'managerial-day-4.jpg', '', '2017-12-23 07:00:00', '2:26:27', 0, 1, 0),
(24, '2', 'Day 4', 'https://www.youtube.com/embed/_We2s1dMd2k', 'statistics day 4', 'statistics-day-4.jpg', '', '2017-12-23 07:00:00', '1:45:52', 0, 0, 0),
(25, '4', 'Day 5', 'https://www.youtube.com/embed/tSAR2YaAQ0g', 'managerial economics day 5', 'managerial-day-5.jpg', '', '2017-12-30 07:00:00', '1:51:54', 0, 1, 0),
(26, '5', 'Day 3', 'https://www.youtube.com/embed/whYQCLIO93Y', 'Marketing management day 3', 'marketing-day-3.jpg', 'marketing-assignment-3.xls', '2017-12-30 07:00:00', '2:00:55', 0, 3, 0),
(27, '5', 'Day 4', 'https://www.youtube.com/embed/_P5G8aPZ6-g', 'Marketing management day 4', 'marketing-day-4.jpg', 'marketing-survey-example1.pdf', '2018-01-06 07:00:00', '1:31:10', 0, 3, 0),
(28, '3', 'Day 1', 'https://www.youtube.com/embed/GlKcRkLJOPM', 'Financial-day-1', 'financial-day-1.jpg', '', '2018-01-06 07:00:00', '1:51:44', 0, 0, 0),
(29, '4', 'Day 6', 'https://www.youtube.com/embed/tSAR2YaAQ0g', 'managerial economics day 6', 'managerial-day-5.jpg', '', '2018-01-06 07:00:00', '', 0, 1, 0),
(30, '3', 'Day 2', 'https://www.youtube.com/embed/NHc_J_z4BAs', 'financial-assignment-2', 'financial-day-2.jpg', 'financial-assignment-2.pdf', '2018-01-20 07:00:00', '2:13:05', 0, 2, 0),
(31, '5', 'Day 5', 'https://www.youtube.com/embed/QXcz16PhkE4', 'marketing-day-5', 'marketing-day-5.jpg', '', '2018-01-20 07:00:00', '1:13', 0, 3, 0),
(32, '5', 'Day 6', 'https://www.youtube.com/embed/zucYelD_5uc', 'marketing management day 6', 'marketing-day-6.jpg', 'marketing-management-day-6.pdf', '2018-01-26 07:00:00', '2:25:28', 0, 3, 0),
(33, '4', 'Day 7', 'https://www.youtube.com/embed/GMQk9GC8Yuo', 'managerial day 7', 'managerial-day-7.jpg', '', '2018-01-27 07:00:00', '2:27:25', 0, 1, 0),
(34, '3', 'Day 3', 'https://www.youtube.com/embed/47MYXQt8yoo', 'financial day 3', 'financial-day-3.jpg', '', '2018-01-27 07:00:00', '2:02:28', 0, 2, 0),
(35, '5', 'Day 7', 'https://www.youtube.com/embed/ir5UsMuSpqA', 'marketing management day 7', 'marketing-day-3.jpg', '', '2018-02-03 07:00:00', '2:21:46', 0, 3, 0),
(36, '5', 'Day 8', 'https://www.youtube.com/embed/dwf7D6xaNj4', 'marketing management day 8', 'Marketing-Management-Day-8.jpg', '', '2018-02-10 18:00:00', '2:07:05', 0, 3, 0),
(37, '2', 'Day 5', 'https://www.youtube.com/embed/bnbYwxElSco', 'Statistics for Managers day 5', 'Statistics-for-Managers-day-5.jpg', '', '2018-02-18 07:00:00', '1:54:31', 0, 0, 0),
(38, '4', 'Day 9', 'https://www.youtube.com/embed/XFtgMLufs1A', 'M Eonomics day 9.jpg', 'M Eonomics day 9.jpg', '', '2018-02-17 21:00:00', '1:42:09', 0, 1, 0),
(39, '3', 'Day 4', 'https://www.youtube.com/embed/dr_D-hccBA4', 'Financial Accounting day 4', 'FA24022018.jpg', '', '2018-02-24 21:00:00', '2:37:29', 0, 2, 0),
(40, '5', 'Day 9', 'https://www.youtube.com/embed/VZxQDPJfh8E', 'marketing management day 9', 'Marketing-Management-Day-9.jpg', '', '2018-02-24 17:00:00', '2:47:06', 0, 3, 0),
(41, '3', 'Day 5', 'https://www.youtube.com/embed/q1Q3nhyo1B8', 'Financial Accounting day 5', 'Financial Account.jpg', '', '2018-03-03 17:00:00', '3;21:04', 0, 2, 0),
(42, '5', 'Day 10', 'https://www.youtube.com/embed/PTdShvIIh_Q', 'marketing management day 10', 'MM day10.jpg', '', '2018-03-03 18:00:00', '1:43:28', 0, 3, 0),
(43, '2', 'Day 6', 'https://www.youtube.com/embed/NpaHRPhtGXQ', 'Statistics for Managers day 6', 'Statistics for Managers day 6.jpg', '', '2018-03-04 17:00:00', '2:07:40', 0, 0, 0),
(44, '3', 'Day 6', 'https://www.youtube.com/embed/_NChawHshdM', 'Financial Accounting day 6', 'Financial Account day6.jpg', '', '2018-03-10 20:00:00', '3:09:29', 0, 2, 0),
(45, '4', 'Day 10', 'https://www.youtube.com/embed/iKXdlcS2YY4', 'M Eonomics day ', 'ME day10.jpg', '', '2018-03-10 16:31:00', '2:35:42', 0, 1, 0),
(46, '2', 'Day 7', 'https://www.youtube.com/embed/yrZxTu4hDRo', 'Statistics for Managers ', 'Statistics for Managers 7.jpg', '', '2018-03-17 19:39:00', '2:19:55', 0, 0, 0),
(47, '3', 'Day 7', 'https://www.youtube.com/embed/gXJ33bY5q-0', 'Financial Accounting day 7', 'FA17032018.jpg', '', '2018-03-17 16:00:00', '1:38:38', 0, 2, 0),
(48, '5', 'Day 11', 'https://www.youtube.com/embed/Ms-hPBSm46g', 'Marketing Management day 11', 'MM24032018.jpg', '', '2018-03-24 16:00:00', '2:03:06', 0, 3, 0),
(49, '3', 'Day 8', 'https://www.youtube.com/embed/orwfhDpXO_Y', 'Financial Accounting day 8', 'FAA24032018.jpg', '', '2018-03-24 19:30:00', '2:20:45', 0, 2, 0),
(50, '5', 'Day 12', 'https://www.youtube.com/embed/LrK8f8HyBzM', 'Marketing Management day 12', 'MM31032018.jpg', '', '2018-03-31 16:41:00', '1:22:01', 0, 3, 0),
(51, '2', 'Day 8', 'https://www.youtube.com/embed/56z2O4QPcUY', 'Statistics for Managers ', 'Stat31032018.jpg', '', '2018-03-17 19:39:00', '55:46', 0, 0, 0),
(52, '3', 'Day 9', 'https://www.youtube.com/embed/NtAs4PysPcA', 'Financial Accounting day 9', 'FAA31032018.jpg', '', '2018-03-31 19:30:00', '3:17:52', 0, 2, 0),
(53, '4', 'Day 11', 'https://www.youtube.com/embed/I63iUUHDBsw', 'M Eonomics day 11', 'ME day11.jpg', '', '2018-04-01 15:31:00', '2:28:48', 0, 1, 0),
(54, '3', 'Day 10', 'https://www.youtube.com/embed/8X4gZ8RVskw', 'Financial Accounting day 10', 'FAA07042018.jpg', '', '2018-04-07 19:30:00', '3:02:56', 0, 2, 0),
(55, '2', 'Day 9', 'https://www.youtube.com/embed/91NzSuwtkXQ', 'Statistics for Managers ', 'Statistics for Managers8042018.jpg', '', '2018-04-07 15:39:00', '2;15;20', 0, 0, 0),
(56, '3', 'Day 11', 'https://www.youtube.com/embed/Brh3tazo7pY', 'Financial Accounting day 11', 'FAA21042018.jpg', '', '2018-04-21 19:30:00', '2:23:09', 0, 2, 0),
(57, '2', 'Day 10', 'https://www.youtube.com/embed/WaFwES69dlU', 'Statistics for Managers ', 'Stat21042018.jpg', '', '2018-04-21 15:39:00', '1:23;18', 0, 0, 0),
(58, '3', 'Day 12', 'https://www.youtube.com/embed/iwo2VQkKNWw', 'Financial Accounting day 12', 'FAA12.jpg', '', '2018-04-28 15:40:00', '2:47:43', 0, 2, 0),
(59, '5', 'Day 1', 'https://www.youtube.com/embed/wog__tgOpT0', 'Marketing Management Day 1', 'MM batch2 day1.jpg', '', '2018-05-22 06:00:00', '1:57:55', 0, 0, 2),
(60, '2', 'Day 1', 'https://www.youtube.com/embed/-dgRXHXH-Pw', 'Statistics for Managers', 'Statistics-for-managers1.jpg', '', '2018-05-22 06:00:00', '1:57:55', 0, 0, 2),
(65, '5', 'Day 2', 'http://www.youtube.com/embed/GsODK-mDHBg', 'Marketing management', '860587_mm_day2.JPG', '', '2018-05-30 22:26:30', '03:03:42', 0, 0, 2),
(66, '2', 'Day 2', '\r\nhttps://www.youtube.com/embed/6SI50m6Cdkg', 'Statistics for Managers', '', '', '2018-05-22 06:00:00', '1:57:55', 0, 0, 2),
(67, '3', 'Day 1', 'https://www.youtube.com/embed/k5QbAKIxFCs', 'Financial Accounting', 'financial.jpg', '', '2018-05-22 06:00:00', '1:57:55', 0, 0, 2),
(68, '8', 'Day 1', 'https://www.youtube.com/embed/OAmqZpFQGRk', 'operation management  day 1', '', '', '2018-06-11 06:00:00', '1:35:30', 0, 1, 0),
(69, '7', 'Day 1', 'https://www.youtube.com/embed/9Hmm8WJbp_Q', 'Corporate Finance day 1', '', '', '2018-06-11 06:00:00', '2:30:30', 0, 1, 0),
(72, '47', 'Guest Lecture 1', 'https://www.youtube.com/embed/b5X5rBbhiO0', '', '', '', '2018-06-21 21:48:48', '01:20:31', 0, 0, 5),
(73, '5', 'Day 3', 'https://www.youtube.com/embed/VsWNSfK82g4', 'Marketing management', 'mm3.png', '', '2018-06-22 22:26:30', '02:37:17', 0, 0, 2),
(74, '4', 'Day 1', 'https://www.youtube.com/embed/yO6BQdYb70o', 'M Eonomics day 1', 'ME.png', '', '2018-06-22 15:31:00', '2:18:17', 0, 1, 2),
(75, '7', 'Day 2', 'https://www.youtube.com/embed/FGvt2LZx0Pg', 'Corporate Finance day 2', '', '', '2018-06-11 06:00:00', '2:19:53', 0, 1, 0),
(76, '6', 'Day 1', 'https://www.youtube.com/embed/QSW3-VK3n7s', 'Decsions Models and Optimization day 1', '', '', '2018-06-25 06:00:00', '2:30:42', 0, 1, 0),
(82, '4', 'Day 2', 'https://www.youtube.com/embed/horhbBGus7E', 'Day 2', '415461_Untitled.png', '', '2018-06-27 21:26:02', '02:03:17', 0, 0, 2),
(84, '2', 'Day 3', 'https://www.youtube.com/embed/RFe0RATDJQw', 'Day 3', '957133_Untitled3.png', '', '2018-06-27 22:04:39', '02:59:29', 0, 0, 2),
(85, '9', 'Day 1', 'https://www.youtube.com/embed/CWxB58W_ZPs', 'Day 1', '714319_1.png', '', '2018-06-27 22:13:53', '02:18:32', 0, 0, 0),
(86, '8', 'Day 2', 'https://www.youtube.com/embed/RFe0RATDJQw', 'Day 2', '305417_1.png', '', '2018-06-27 22:19:17', '02:51:30', 0, 0, 0),
(87, '5', 'Day 4', 'https://www.youtube.com/embed/4sdHYi8vUKI', 'Day 4', '445476_1.png', '', '2018-07-05 20:25:28', '03:01:25', 0, 0, 2),
(88, '3', 'Day 2', 'https://www.youtube.com/embed/DezOG3Bre1g', 'Day 2', '769832_fin.png', '', '2018-07-05 20:34:08', '02:16:48', 0, 0, 2),
(89, '5', 'Day 5', 'https://www.youtube.com/embed/O5qJh238hOk', 'Day 5', '161759_1.png', '', '2018-07-11 21:22:41', '02:37:27', 0, 0, 2),
(90, '3', 'Day 3', 'www.youtube.com/embed/gvYtrbX3wMA ', 'Day 3', '', '', '2018-07-11 20:34:08', '02:16:48', 0, 0, 2),
(91, '8', 'Day 3', 'www.youtube.com/embed/4uS-wJPg1HY ', 'Day 3', '', '', '2018-07-11 22:19:17', '02:51:30', 0, 0, 0),
(92, '6', 'Day 2', 'https://www.youtube.com/embed/7NDWaZr2qB0', 'Day 2', '687359_1.png', '', '2018-07-12 18:29:32', '01:45:12', 0, 0, 0),
(93, '10', 'Day 1', 'https://www.youtube.com/embed/E4P2tS6RQ0I', 'Day 1', '819517_1.png', '', '2018-07-12 18:31:07', '02:28:25', 0, 0, 0),
(94, '3', 'Day 4', 'https://www.youtube.com/embed/eI0dXreE6Pg', 'Financial-day-4', '', '', '2018-07-18 06:00:00', '2:32:59', 0, 0, 2),
(95, '4', 'Day 3', 'https://www.youtube.com/embed/OZG5WUTKpww', 'M Eonomics day 3', '', '', '2018-07-18 15:31:00', '1:29:59', 0, 1, 2),
(96, '2', 'Day 4', 'https://www.youtube.com/embed/osWoowRjsrA', 'Statistics for Managers', '', '', '2018-07-18 06:00:00', '1:12:59', 0, 0, 2),
(97, '8', 'Day 4', 'https://www.youtube.com/embed/uJ0Cst-4YGY', 'Day 4', '', '', '2018-07-20 22:19:17', '01:20:30', 0, 0, 0),
(98, '9', 'Day 2', 'https://www.youtube.com/embed/aNO4BeGSLfM', 'Day 2', '', '', '2018-07-20 22:13:53', '03:20:35', 0, 0, 0),
(99, '5', 'Day 6', 'https://www.youtube.com/embed/aRZ3HGo-yPg', 'Day 6', '', '', '2018-07-27 21:22:41', '02:37:27', 0, 0, 2),
(100, '4', 'Day 4', 'https://www.youtube.com/embed/NoVLD1HQ8xA', 'M Eonomics day 4', '', '', '2018-07-27 15:31:00', '1:29:59', 0, 1, 2),
(101, '10', 'Day 2', 'https://www.youtube.com/embed/cRau0OBhxyw', 'Day 2', '', '', '2018-07-27 18:31:07', '02:28:25', 0, 0, 0),
(102, '8', 'Day 5', 'https://www.youtube.com/embed/uJ0Cst-4YGY', 'Day 5', '', '', '2018-07-20 22:19:17', '01:20:30', 0, 0, 0),
(103, '8', 'Day 6', 'https://www.youtube.com/embed/uJ0Cst-4YGY', 'operation management  day 6', '', '', '2018-07-27 06:00:00', '2:19:53', 0, 1, 0),
(105, '3', 'Day 5', 'https://www.youtube.com/embed/i4twv5S6l2o', 'Financial-day-5', '', '', '2018-07-18 06:00:00', '2:37:45', 0, 0, 2),
(106, '4', 'Day 5', 'https://www.youtube.com/embed/KXpaylUMtDg', 'day 5', '', '', '2018-07-18 06:00:00', '1:27:51', 0, 0, 2),
(107, '5', 'Day 7', 'https://www.youtube.com/embed/QKEZ4_SSOsg', 'Day 7', '814158_Capture.JPG', '', '2018-08-01 01:03:18', '01:34:28', 0, 0, 2),
(109, '6', 'Day 3', 'https://www.youtube.com/embed/Wez0xI9vlAE', 'Day 3', '', '', '2018-07-14 18:29:32', '01:39:35', 0, 0, 0),
(110, '6', 'Day 4', 'https://www.youtube.com/embed/jOlZiY-J06s', 'Day 4', '687359_1.png', '', '2018-07-12 18:29:32', '01:45:12', 0, 0, 0),
(111, '6', 'Day 5', 'https://www.youtube.com/embed/cxl9uDetGyQ', 'Day 5', '', '', '2018-07-28 18:29:32', '05:00:13', 0, 0, 0),
(112, '2', 'Day 5', 'https://www.youtube.com/embed/qjiQXaR8F9Y', 'Statistics for Managers', '', '', '2018-08-05 06:00:00', '02:34:02', 0, 0, 2),
(113, '9', 'Day 3', 'https://www.youtube.com/embed/QlLU_ROWxKg', 'Day 3', '', '', '2018-08-05 22:13:53', '03:20:35', 0, 0, 0),
(114, '4', 'Day 6', 'https://www.youtube.com/embed/WBTVKufC-40', 'day 6', '', '', '2018-08-05 06:00:00', '1:27:51', 0, 0, 2),
(115, '4', 'Day 7 ', 'https://www.youtube.com/embed/fhq3WlLfzl0', 'economics', '', '', '2018-08-27 23:41:53', '01:52:12', 0, 0, 2),
(116, '2', 'Day 6', 'https://www.youtube.com/embed/YW1Sfo6Mn_E', 'statistics', '', '', '2018-08-27 23:43:51', '02:07:02', 0, 0, 2),
(117, '7', 'Day 3', 'https://www.youtube.com/embed/jZjVQjFRzK0', '', '', '', '2018-08-27 23:55:19', '02:17:40', 0, 0, 0),
(118, '5', 'Day 8', 'https://www.youtube.com/embed/7vRszifwqZo', 'Day 8', '17042_mm.JPG', '', '2018-08-31 17:49:54', '02:24:24', 0, 0, 2),
(119, '3', 'Day 6', 'https://www.youtube.com/embed/zoVO_53Yczg', '', '', '', '2018-08-31 22:40:27', '03:03:03', 0, 0, 2),
(120, '2', 'Day 7 ', 'https://www.youtube.com/embed/eqfKnCbK6uk', '', '', '', '2018-09-16 19:21:26', '02:42:31', 0, 0, 2),
(121, '4', 'Day 8', 'https://www.youtube.com/embed/teZaqdgrgNU', '', '', '', '2018-09-16 19:41:10', '56:49', 0, 0, 2),
(122, '6', 'Day 6', 'https://www.youtube.com/embed/1ZW520n-Tcs', '', '', '', '2018-09-16 19:43:52', '03:01:23', 0, 0, 0),
(123, '2', 'Day 11', 'https://www.youtube.com/embed/CIVkJT2p7hE', '', '', '', '2018-09-16 19:48:49', '01:30:05', 0, 0, 0),
(124, '3', 'Day 7 ', 'https://www.youtube.com/embed/pVEM_wrx10o', '', '', '', '2018-09-16 20:53:52', '02:50:35', 0, 0, 2),
(125, '7', 'Day 4', 'https://www.youtube.com/embed/H-puAJtCycA', '', '', '', '2018-09-16 21:37:38', '02:17:43', 0, 0, 0),
(126, '10', 'Day 3', 'https://www.youtube.com/embed/UtnW98gCjRU', '', '', '', '2018-09-16 21:40:08', '33:12', 0, 0, 0),
(127, '10', 'Day 4', 'https://www.youtube.com/embed/RrBH0GXcox0', '', '', '', '2018-09-16 21:44:48', '02:22:37', 0, 0, 0),
(128, '9', 'Day 4', 'https://www.youtube.com/embed/W2siCIGJQ1g', '', '', '', '2018-09-16 21:53:56', '01:07:51', 0, 0, 0),
(129, '9', 'Day 5', 'https://www.youtube.com/embed/A6LbhmZQrgE', '', '', '', '2018-09-16 22:23:08', '01:31:23', 0, 0, 0),
(130, '9', 'Day 6', 'https://www.youtube.com/embed/CIVkJT2p7hE', '', '', '', '2018-09-16 22:23:58', '01:30:05', 0, 0, 0),
(131, '3', 'Day 8', 'https://www.youtube.com/embed/pVEM_wrx10o', '', '', '', '2018-09-16 22:25:32', '02:50:30', 0, 0, 2),
(132, '6', 'Day 7', 'https://www.youtube.com/embed/NopX215EfgM', '', '', '', '2018-09-16 22:27:30', '01:34:16', 0, 0, 0),
(133, '3', 'Day 9', 'https://www.youtube.com/embed/j4QXUIEYn-g', '', '', '', '2018-09-18 22:23:41', '', 0, 0, 2),
(134, '10', 'Day 5', 'https://www.youtube.com/embed/hb_kX5Ls-yw', '', '', '', '2018-09-27 16:56:50', '01:36:31', 0, 0, 0),
(135, '8', 'Day 7 ', 'https://www.youtube.com/embed/fLgf1fjErPk', '', '', '', '2018-09-27 17:05:17', '01:52:58', 0, 0, 0),
(136, '3', 'Day 10', 'https://www.youtube.com/embed/feZBf2vjZZs', '', '', '', '2018-09-29 19:59:01', '02:30:12', 0, 0, 2),
(137, '5', 'Day 9', 'https://www.youtube.com/embed/2ogOnRm-wDQ', '', '', '', '2018-09-29 20:00:24', '01:51:16', 0, 0, 2),
(138, '2', 'Day 8', 'https://www.youtube.com/embed/oZE4koZ-1ec', '', '', '', '2018-10-23 04:40:23', '22:27:06', 0, 0, 2),
(139, '4', 'Day 9', 'https://www.youtube.com/embed/JueD2FxKLlA', '', '', '', '2018-10-08 02:34:58', '2:14:15', 0, 0, 2),
(140, '2', 'Day 9', 'https://www.youtube.com/embed/R-jcAgtLBSg', '', '', '', '2018-10-08 02:22:34', '02:45:54', 0, 0, 2),
(141, '2', 'Day 10', 'https://www.youtube.com/embed/A_j_qfin8RQ', '', '', '', '2018-10-26 20:09:33', '01:28:40', 0, 0, 2),
(142, '2', 'Day 12', 'https://www.youtube.com/embed/py49b_crGQU', '', '', '', '2018-10-27 00:53:42', '02:11:33', 0, 0, 0),
(143, '6', 'Day 8', 'https://www.youtube.com/embed/ohdNCMuD8KM', '', '', '', '2018-10-27 00:59:48', '02:46:31', 0, 0, 0),
(144, '3', 'Day 11', 'https://www.youtube.com/embed/Q07yE3v_I3Y', '', '', '', '2018-10-27 21:01:22', '02:36:04', 0, 0, 2),
(145, '3', 'Day 12', 'https://www.youtube.com/embed/wpYiE3HGXWQ', '', '', '', '2018-10-27 21:03:10', '02:18:37', 0, 0, 2),
(146, '5', 'Day 10', 'https://www.youtube.com/embed/-dypndnz19g', '', '', '', '2018-10-29 01:15:14', '20:01:13', 0, 0, 2),
(147, '4', 'Day 10', 'https://www.youtube.com/embed/lT5PxqoTQKI', '', '', '', '2018-10-29 01:19:03', '02:14:22', 0, 0, 2),
(148, '4', 'Day 11', 'https://www.youtube.com/embed/qyixbRXskeE', '', '', '', '2018-10-29 01:21:29', '01:56:30', 0, 0, 2),
(149, '8', 'Day 8', 'https://www.youtube.com/embed/PaExxdEWeqU', '', '', '', '2018-10-29 02:03:03', '01:56:53', 0, 0, 0),
(150, '8', 'Day 9', 'https://www.youtube.com/embed/6IJNvJIoCdA', '', '', '', '2018-10-29 23:47:08', '01:41:42', 0, 0, 0),
(151, '10', 'Day 6', 'https://www.youtube.com/embed/hcVg3UwBMWU', '', '', '', '2018-10-29 23:50:13', '01:24:36', 0, 0, 0),
(152, '6', 'Day 9', 'https://www.youtube.com/embed/Qo9edbQLTfg', '', '', '', '2018-11-13 01:32:26', '03:13:23', 0, 0, 0),
(153, '8', 'Day 10', 'https://www.youtube.com/embed/UEdQz-GIiD8', '', '', '', '2018-11-13 01:35:49', '02:06:36', 0, 0, 0),
(154, '7', 'Day 5', 'https://www.youtube.com/embed/2-LG_XgKxMI', '', '', '', '2018-11-13 01:38:22', '02:33:27', 0, 0, 0),
(156, '10', 'Day 1', 'https://www.youtube.com/embed/AAkYT-qdI5A', '', '', '', '2018-12-04 15:50:15', '02:13:49', 0, 0, 2),
(157, '8', 'Day 1', 'https://www.youtube.com/embed/YcTlK3dVf4g', '', '', '', '2018-12-04 15:53:22', '02:35:56', 0, 0, 2),
(158, '7', 'Day 1', 'https://www.youtube.com/embed/wTtGfoHz4Zc', '', '', '', '2018-12-04 15:57:46', '02:18:56', 0, 0, 2),
(159, '10', 'Day 2', 'https://www.youtube.com/embed/WEA6hm2Vh9I', '', '', '', '2018-12-04 15:59:31', '02:11:41', 0, 0, 2),
(160, '7', 'Day 2', 'https://www.youtube.com/embed/KWnViOzHpt4', '', '', '', '2018-12-04 16:04:39', '01:24:24', 0, 0, 2),
(161, '9', 'Day 1', 'https://www.youtube.com/embed/pF-OhfNX2t4', '', '', '', '2018-12-14 00:07:38', '02:52:47', 0, 0, 2),
(162, '7', 'Day 3', 'https://www.youtube.com/embed/YiUrOifx6q8', '', '', '', '2018-12-14 00:09:18', '02:32:50', 0, 0, 2),
(163, '10', 'Day 3', 'https://www.youtube.com/embed/zxVLAbzVnaA', '', '', '', '2019-01-02 06:24:14', '02:45:39', 0, 0, 2),
(164, '11', 'Day 1', 'https://www.youtube.com/embed/kYcCDERKdJM', '', '', '', '2019-01-01 18:12:51', '', 0, 0, 0),
(165, '7', 'Day 4', 'https://www.youtube.com/embed/6BhkvE_5PZ4', '', '', '', '2019-01-02 06:44:48', '', 0, 0, 2),
(166, '8', 'Day 2', 'https://www.youtube.com/embed/Yjd2KuYZQjo', '', '', '', '2019-01-02 06:46:52', '', 0, 0, 2),
(167, '24', 'Day 1', 'https://www.youtube.com/embed/ORBLAZ6-opQ', '', '', '', '2019-01-01 18:19:24', '', 0, 0, 0),
(168, '25', 'Day 1', 'https://www.youtube.com/embed/QU11Ki-tcbc', '', '', '', '2019-01-01 18:20:38', '', 0, 0, 0),
(169, '10', 'Day 4', 'https://www.youtube.com/embed/XM2ay_fbmUg', '', '', '', '2019-01-04 23:38:33', '', 0, 0, 2),
(170, '6', 'Day 1', 'https://www.youtube.com/embed/3bljk-RBeuE', '', '', '', '2019-01-04 23:41:38', '', 0, 0, 2),
(171, '19', 'Day 1', 'https://www.youtube.com/embed/vND24xNOInM', '', '', '', '2019-01-05 20:11:02', '', 0, 0, 0),
(172, '8', 'Day 3', 'https://www.youtube.com/embed/lr2EguqWQjw', '', '', '', '2019-01-05 20:14:09', '', 0, 0, 2),
(173, '22', 'Day 1', 'https://www.youtube.com/embed/C85wZBPJcPY', '', '', '', '2019-01-11 18:31:50', '', 0, 0, 0),
(174, '24', 'Day 2', 'https://www.youtube.com/embed/5Zyhs0jf1Cc', '', '', '', '2019-01-11 18:33:45', '', 0, 0, 0),
(177, '18', 'Day 1', 'https://www.youtube.com/embed/ExHTAxkAmP4', '', '', '', '2019-01-18 22:26:05', '', 0, 0, 0),
(178, '11', 'Day 3', 'https://www.youtube.com/embed/Msho4duHkhI', '', '', '', '2019-01-18 22:38:53', '', 0, 0, 0),
(179, '9', 'Day 2', 'https://www.youtube.com/embed/cmtXRGxbC7g', '', '', '', '2019-01-19 21:15:09', '', 0, 0, 2),
(180, '7', 'Day 5', 'https://www.youtube.com/embed/6UpPFkHB_cU', '', '', '', '2019-01-21 23:52:25', '', 0, 0, 2),
(181, '9', 'Day 3', 'https://www.youtube.com/embed/gRszlBveE_0', '', '', '', '2019-01-22 00:04:04', '', 0, 0, 2),
(182, '9', 'Day 4', 'https://www.youtube.com/embed/q2OwJnvmDrc', '', '', '', '2019-01-22 00:05:19', '', 0, 0, 2),
(184, '18', 'Day 2', 'https://www.youtube.com/embed/7OlrmBhWh34', '', '', '', '2019-01-22 00:54:57', '', 0, 0, 0),
(186, '10', 'Day 5', 'https://www.youtube.com/embed/WfEAbgppnWo', '', '', '', '2019-01-22 01:03:34', '', 0, 0, 2),
(187, '7', 'Day 6', 'https://www.youtube.com/embed/QgJTth1wUmw', '', '', '', '2019-02-07 18:44:47', '', 0, 0, 2),
(188, '7', 'Day 7', 'https://www.youtube.com/embed/OVwkgjyUxIM', '', '', '', '2019-02-07 18:45:37', '', 0, 0, 2),
(189, '9', 'Day 5', 'https://www.youtube.com/embed/l3k-JBcAjso', '', '', '', '2019-02-07 18:47:02', '', 0, 0, 2),
(190, '47', 'Guest Lecture 2', 'https://www.youtube.com/embed/rYHZZZiVEQQ', '', '', '', '2019-02-07 18:56:06', '', 0, 0, 2),
(191, '16', 'Day 1', 'https://www.youtube.com/embed/2R6NfwrsGjc', '', '', '', '2019-02-07 19:07:00', '', 0, 0, 0),
(192, '18', 'Day 3', 'https://www.youtube.com/embed/PwVEFNXvSKU', '', '', '', '2019-02-07 21:01:57', '', 0, 0, 0),
(193, '22', 'Day 2', 'https://www.youtube.com/embed/VwKCzpP95U8', '', '', '', '2019-02-13 23:34:24', '', 0, 0, 0),
(194, '22', 'Day 3', 'https://www.youtube.com/embed/B--FaKV6njU', '', '', '', '2019-02-13 23:35:14', '', 0, 0, 0),
(195, '16', 'Day 2', 'https://www.youtube.com/embed/VF5h0RFrs8s', '', '', '', '2019-02-13 23:45:53', '', 0, 0, 0),
(196, '5', 'Day 1', 'https://www.youtube.com/embed/dH0G0ZPjXPQ', 'statistics day 1', 'statistics-day-1.jpg', 'statistics-assignment-1.pdf', '2017-12-02 07:00:00', '1:57:55', 0, 0, 3),
(197, '3', 'Day 1', 'https://www.youtube.com/embed/guDxu63fXNI', 'day 1', '', '', '2019-02-09 07:00:00', '1:57:55', 0, 0, 3),
(199, '7', 'Day 8', 'https://www.youtube.com/embed/oJ350Q2de8E', '', '', '', '2019-02-14 23:26:04', '', 0, 0, 2),
(200, '6', 'Day 2', 'https://www.youtube.com/embed/WMdvW3E5mEo', '', '', '', '2019-02-14 23:21:18', '', 0, 0, 2),
(201, '7', 'Day 9', 'https://www.youtube.com/embed/TvbXOBdO4Vc', '', '', '', '2019-02-14 22:24:47', '', 0, 0, 2),
(202, '11', 'Day 1', 'https://www.youtube.com/embed/d_PDVzASmdo', '', '', '', '2019-02-15 00:00:12', '', 0, 0, 2),
(203, '16', 'Day 3', 'https://www.youtube.com/embed/sjNpriCNEn4', '', '', '', '2019-02-19 18:47:39', '', 0, 0, 0),
(204, '18', 'Day 4', 'https://www.youtube.com/embed/n-7B2G3OskY', '', '', '', '2019-02-19 18:50:30', '', 0, 0, 0),
(205, '9', 'Day 6', 'https://www.youtube.com/embed/VLU5NLontpA', '', '', '', '2019-02-19 19:28:12', '', 0, 0, 2),
(206, '6', 'Day 3', 'https://www.youtube.com/embed/_w73WJLKIbI', '', '', '', '2019-02-22 18:07:05', '', 0, 0, 2),
(207, '8', 'Day 4', 'https://www.youtube.com/embed/1yG3_DgmmTI', '', '', '', '2019-02-22 18:11:55', '', 0, 0, 2),
(208, '47', 'Guest Lecture', 'https://www.youtube.com/embed/TwSdy3J0ecE', '', '', '', '2019-02-22 18:24:25', '', 0, 0, 2),
(209, '47', 'Guest Lecture', 'https://www.youtube.com/embed/TwSdy3J0ecE', '', '', '', '2019-02-22 18:24:25', '', 0, 0, 0),
(210, '2', 'Day 1', 'https://www.youtube.com/embed/n4kMmmTJMV0', 'statistics day 1', '', '', '2017-12-23 07:00:00', '1:57:55', 0, 0, 3),
(211, '3', 'Day 2', 'https://www.youtube.com/embed/VTZ67PhKIyo', 'day 2', '', '', '2019-02-23 07:00:00', '1:57:55', 0, 0, 3),
(212, '5', 'Day 2', 'https://www.youtube.com/embed/zLWGSaAbJB8', 'day 2', '', '', '2017-12-16 07:00:00', '', 0, 0, 3),
(213, '18', 'Day 5', 'https://www.youtube.com/embed/VrYpZtUjX60', '', '', '', '2019-03-06 18:27:56', '', 0, 0, 0),
(214, '16', 'Day 4', 'https://www.youtube.com/embed/cgFOUGa8V8w', '', '', '', '2019-03-06 18:41:07', '', 0, 0, 0),
(215, '16', 'Day 5', 'https://www.youtube.com/embed/ReecCoub6Zs', '', '', '', '2019-03-09 16:14:41', '', 0, 0, 0),
(216, '9', 'Day 7', 'https://www.youtube.com/embed/gDC7F2UfWRI', '', '', '', '2019-03-09 16:19:36', '', 0, 0, 2),
(217, '6', 'Day 4', 'https://www.youtube.com/embed/dTjGPq4h0Bk', '', '', '', '2019-03-09 16:24:21', '', 0, 0, 2),
(218, '2', 'Day 2', 'https://www.youtube.com/embed/ODe2UgmeZpw', 'statistics day 2', '', '', '2019-03-02 07:00:00', '1:57:55', 0, 0, 3),
(219, '3', 'Day 3', 'https://www.youtube.com/embed/4LTxZZmxwPY', 'day 3', '', '', '2019-03-02 07:00:00', '1:57:55', 0, 0, 3),
(220, '14', 'Day 1', 'https://www.youtube.com/embed/OVvCcD9WGP8', '', '', '', '2019-03-13 18:17:29', '', 0, 0, 0),
(221, '20', 'Day 1', 'https://www.youtube.com/embed/3KjHUGmXfHw', '', '', '', '2019-03-13 18:18:36', '', 0, 0, 0),
(222, '9', 'Day 8', 'https://www.youtube.com/embed/97wg8TT7V54', '', '', '', '2019-03-14 18:10:22', '', 0, 0, 2),
(223, '6', 'Day 5', 'https://www.youtube.com/embed/7s_k-8roeZk', '', '', '', '2019-03-14 18:11:32', '', 0, 0, 2),
(224, '14', 'Day 2', 'https://www.youtube.com/embed/WqJN1jn_G3Y', '', '', '', '2019-03-20 17:25:16', '', 0, 0, 0),
(225, '16', 'Day 6', 'https://www.youtube.com/embed/qwkRfCoPu54', '', '', '', '2019-03-20 17:30:48', '', 0, 0, 0),
(226, '11', 'Day 4', 'https://www.youtube.com/embed/1vcDylw9eg0', '', '', '', '2019-03-20 17:37:37', '', 0, 0, 0),
(227, '2', 'Day 3', 'https://www.youtube.com/embed/ZOB3YPReslo', 'statistics day 3', '', '', '2019-03-17 06:00:00', '1:57:55', 0, 0, 3),
(228, '8', 'Day 5', 'https://www.youtube.com/embed/7Csglhi3rrk', '', '', '', '2019-03-31 20:13:40', '', 0, 0, 2),
(229, '6', 'Day 6', 'https://www.youtube.com/embed/IdctoceGcOc', '', '', '', '2019-03-31 20:15:01', '', 0, 0, 2),
(230, '10', 'Day 6', 'https://www.youtube.com/embed/XjjoINNVXm4', '', '', '', '2019-03-31 20:16:23', '', 0, 0, 2),
(231, '7', 'Day 10', 'https://www.youtube.com/embed/bHI1NiJcB1c', '', '', '', '2019-03-31 20:18:33', '', 0, 0, 2),
(232, '5', 'Day 3', 'https://www.youtube.com/embed/-y36eMnIGvQ', 'day 3', '', '', '2019-04-01 06:00:00', '', 0, 0, 3),
(236, '20', '23032019', 'https://www.youtube.com/embed/D1YtS5LLeWo', '', '', '', '2019-04-04 17:15:46', '', 0, 0, 2),
(237, '20', 'Day 2', 'https://www.youtube.com/embed/D1YtS5LLeWo', '', '', '', '2019-04-04 17:41:13', '', 0, 0, 2),
(238, '20', 'Day 2', 'https://www.youtube.com/embed/D1YtS5LLeWo', '', '', '', '2019-04-04 17:43:09', '', 0, 0, 0),
(239, '18', 'Day 6', 'https://www.youtube.com/embed/HB6Nij3ip6Q', '', '', '', '2019-04-04 17:59:18', '', 0, 0, 0),
(244, '4', 'Day 1', 'https://www.youtube.com/embed/2R6NfwrsGjc', '', '', '', '2019-04-09 21:19:29', '', 0, 0, 3),
(245, '6', 'Day 7', 'https://www.youtube.com/embed/EAkNOxAQEJw', '', '663807_DMO_ppt.JPG', '', '2019-04-12 15:08:16', '', 0, 0, 2),
(246, '9', 'Day 9', 'https://www.youtube.com/embed/Ln6srjUzBPk', '', '910490_SLppt.JPG', '', '2019-04-12 15:23:25', '', 0, 0, 2),
(247, '11', 'Day 5', 'https://www.youtube.com/embed/vkNkp2W4UHY', '', '925548_marketing_strategy.JPG', '', '2019-04-12 16:55:39', '', 0, 0, 0),
(248, '28', 'Day 1', 'https://www.youtube.com/embed/eda7X2XG004', '', '148254_marketing_research.JPG', '', '2019-04-12 17:01:25', '', 0, 0, 0),
(249, '9', 'Day 10', 'https://www.youtube.com/embed/QU0pxHKdNhA', '', '598741_S_L.JPG', '', '2019-04-12 17:14:31', '', 0, 0, 2),
(250, '5', 'Day 4', 'https://www.youtube.com/embed/KZrQEDw-bGk', '', '895819_marketing_management_s5.JPG', '', '2019-04-12 17:25:26', '', 0, 0, 3),
(251, '47', 'Day 1', 'https://www.youtube.com/embed/4hoA6vPu_Z0', '', '224670_Brand_Management.JPG', '', '2019-04-12 17:30:31', '', 0, 0, 3),
(252, '7', 'Day 11', 'https://www.youtube.com/embed/i0coHJ2mBN4', '', '', '', '2019-04-16 20:47:04', '', 0, 0, 2),
(253, '9', 'Day 11', 'https://www.youtube.com/embed/Rm692nt7RwA', '', '', '', '2019-04-22 17:21:34', '', 0, 0, 2),
(254, '6', 'Day 8', 'https://www.youtube.com/embed/QaRs54XGrv0', '', '597096_DMO_ppt_screenshot.JPG', '', '2019-04-22 19:38:46', '', 0, 0, 2),
(255, '6', 'Day 9', 'https://www.youtube.com/embed/vQ3p-Pu-10o', '', '', '', '2019-04-22 19:40:49', '', 0, 0, 2),
(256, '7', 'Day 12', 'https://www.youtube.com/embed/rLE0n-82uA4', '', '', '', '2019-04-22 19:44:20', '', 0, 0, 2),
(257, '5', 'Day 5', 'https://www.youtube.com/embed/JDcdRh88POY', '', '', '', '2019-04-22 19:50:45', '', 0, 0, 3),
(258, '9', 'Day 12', 'https://www.youtube.com/embed/zoEOgIPSbHc', '', '567880_Final_delivering_ppt.PNG', '', '2019-04-26 18:59:58', '', 0, 0, 2),
(259, '10', 'Day 7', 'https://www.youtube.com/embed/U49p-h7yj4U', '', '171107_HRO_May5th.JPG', '', '2019-05-24 19:15:49', '', 0, 0, 2),
(260, '3', 'Day 4', 'https://www.youtube.com/embed/k-wi_lRjNCk', '', '', '', '2019-05-24 19:19:04', '', 0, 0, 3),
(261, '3', 'Day 5', 'https://www.youtube.com/embed/SyXx_beDCBw', '', '', '', '2019-05-24 19:20:55', '', 0, 0, 3),
(262, '3', 'Day 6', 'https://www.youtube.com/embed/M2OGGSC0LAE', '', '', '', '2019-05-24 19:22:20', '', 0, 0, 3),
(263, '16', 'Day 7', 'https://www.youtube.com/embed/e8gNIhMKTog', '', '446239_Project_management.JPG', '', '2019-05-27 20:44:20', '', 0, 0, 0),
(264, '3', 'Day 6', 'https://www.youtube.com/embed/bqsKRcBjh7s', '', '', '', '2019-05-31 15:20:50', '', 0, 0, 3),
(265, '4', 'Day 2', 'https://www.youtube.com/embed/Fv9gktcO4lo', '', '', '', '2019-06-18 16:42:30', '', 0, 0, 3),
(266, '3', 'Day 8', 'https://www.youtube.com/embed/aBu_2buVunY', '', '', '', '2019-06-18 16:45:06', '', 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `id` int(32) NOT NULL,
  `organization` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `cause` varchar(50) NOT NULL,
  `month_year` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id`, `organization`, `role`, `cause`, `month_year`, `description`, `date`, `user_id`) VALUES
(3, 'vignan', 'rkghknsmd', 'grsgksfd', '2016', 'jhfeskjm', '2017-07-17 05:55:35', 92),
(4, 'i8uiugv g', 'ygb', 'ghjbngbk,', '', '', '2017-07-17 05:55:35', 95),
(5, 'u6rt7yrt', 'u8t67uyrt', 'utr67y6rt', '2017-06-23', 'utryr', '2017-07-17 05:55:35', 83),
(6, 'FERUIGRE', 'gthr6', 'rdtyui', '275760-08-07', 'IUDVFGASDFUOFGOUERWTYRIY6', '2017-07-17 05:55:35', 87),
(7, 'ISTE', 'Member', 'For College Discription', '2017-06-14', 'AnthropomorphiAnthropomorphism\r\nClichÃ©\r\n', '2017-07-17 05:55:35', 86),
(8, 'ersr', 'trtet', 'trte', '2017-06-15', 'ytryr5try t ytry', '2017-07-17 05:55:35', 83),
(9, 'rgdrtyh', 'hjjukbjkl', 'ukghl', '', 'iljkl;jk;', '2017-07-17 05:55:35', 87),
(11, 'dfdf', 'dfdf', 'fdf', '2017-07-21', 'sfdf', '2017-07-17 05:55:35', 90),
(12, 'Cognizant - Outreach', 'Volunteer/Team member', 'Teaching', '2015-01-01', 'I was very thankful to the Outreach team for giving such a wonderful opportunity to me. I was asked to teach communication skills subject to the primary school people.', '2017-07-18 04:03:24', 109),
(13, 'Cognizant - Outreach', 'Traffic contol volunteer', 'Traffic control', '2015-12-01', 'Under the supervision of Traffic police in-charge at siruseri signals-Chennai, Our team has managed the busy traffic during the rush hour.', '2017-07-18 04:10:15', 109),
(14, 'gserfsef', 'gtserf', 'tserfa', '2017-07-11', 'hdr rdtgdx rtdtfgsx', '2017-07-19 00:39:45', 117),
(16, 'asdf', 'asdf', 'asdf', '2017-07-07', 'asd asdf', '2017-07-28 05:16:52', 135),
(17, 'a', 'asdf', 'asdf ', '2017-07-13', ' asd asd ', '2017-07-28 16:22:46', 137),
(18, 'asdf', 'asdf', 'asdf', '2017-07-13', 'as asdf ', '2017-07-28 16:38:02', 137),
(19, 'csi', 'joint secretary', 'cause', '2017-07-05', 'joint secretary', '2017-07-29 18:31:35', 81),
(20, 'iste', 'event-lead', 'heart attack', '2017-08-16', 'Accounting Society\r\nLanguage Clubs\r\nArt History Club\r\nPublic Relations Student Society\r\nPre-Law Society', '2017-08-02 17:30:21', 149),
(21, 'adakjsdf 13', 'ajdhfbjhdfolp[2543', 'swdfgrtg36365', '2017-08-04', 'werrtryh uyuuiioio wareyumio ip 543453tsd//;\'', '2017-08-02 18:04:52', 150),
(22, ' sddrgtfhguyluo;p[0-\'p', 'sdfgsdfg', 'vgbsdgfghhg', '2017-08-26', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '2017-08-02 18:23:38', 151),
(23, 'rt5ujik,yh 33', 'sdfgsdfg', 'vgbsdgfghhg', '2017-08-26', 'We love passionate people who are willing to put the effort in. Your research, writing style and the quality of your information are extremely important, but more important is your passion for becoming a leader. Reflect on your intellectual and practical motivation for studying. You can also point out if there are any particular courses of interest to you and why that is.', '2017-08-02 18:23:38', 151),
(24, 'sdgdfg', 'dfsdgfsg', 'sdgsdfsdf', '2017-08-10', 'sdfdgdfhsdfhdh', '2017-08-02 18:24:06', 151),
(25, 'sdgdfg', 'dfsdgfsg', 'sdgsdfsdf', '2017-08-10', 'sdfdgdfhsdfhdh', '2017-08-02 18:24:07', 151),
(26, 'ffghgh', 'gffghgf', 'dfhghfgh', '2017-08-15', 'dgfghghjhj', '2017-08-02 18:24:27', 151),
(27, 'ffghgh', 'gffghgf', 'dfhghfgh', '2017-08-15', 'dgfghghjhj', '2017-08-02 18:24:28', 151),
(28, 'fdfsdfs trdtfdsft', 'fsefsef', 'gsfsef', '2017-08-13', '(1) Explain why you want to earn an MBA (E) and how it will contribute to your personal and professional goals.\r\n(2) The most challenging team experience for the candidate including the role the candidate played, the factors that made it a challenge, how the group addressed the issues, and learnings from the experience.\r\n(3) Given your already demanding job and the desire to remain committed to important personal obligations, how do you plan to handle the additional demands on your time once you enroll?', '2017-08-02 18:35:38', 153),
(29, 'yer5t e rtete', 't werfwe', 't e4wrwe', '2017-08-20', ' trt  erwrfw', '2017-08-02 18:35:53', 153),
(30, 'dgshb', 'gfdsh', 'dfghsdfh', '2017-08-02', 'Action (philosophy), in general\r\nRecreation, or activities of leisure\r\nThe Aristotelian concept of energeia, Latinized as actus\r\nActivity (UML), a major task in Unified Modeling Language\r\nActivity, the rate of catalytic activity, such as enzyme activity (enzyme assay), in physical chemistry and enzymology\r\nActivity (chemistry), the effective concentration of a solute for the purposes of mass action\r\nActivity (project management)\r\nActivity, the number of radioactive decays per second\r\nActivity (software engineering)\r\nActivity (soil mechanics)\r\nHMS Activity (D94), an aircraft carrier of the Royal Navy', '2017-08-02 18:45:49', 155),
(32, 'vtrewvt', 'rewtrewt', 'erwtrewtrew', '2017-07-30', 'wrtvrev\r\nvt\r\newrtv\r\nre\r\ntve\r\n', '2017-08-03 17:12:42', 160),
(33, 'WWF', 'VOLUNTEER', 'CHARITY', '2010-05-05', 'VOLUNTEERING ACTIVITIES WITH WWF FOR ECO ACTIVITIES AND FUND RAISING EVENTS.', '2017-08-12 05:01:13', 145),
(34, 'IBM INDIA PVT LTD', 'VOLUNTEER', 'STATIONARY DISTRIBUTION TO UNDERPRIVILEGED CHILDRE', '2016-08-15', 'BOOKS AND STATIONARY DISTRIBUTION TO POOR CHILDREN STUDYING IN GOVERNMENT SCHOOLS.', '2017-08-12 05:03:12', 145),
(35, 'Commonwealth Youth Games 2008', 'Accomodation Supervisor', 'Commonwealth Youth Games 2008', '2008-02-04', 'Was in charge of registration and accommodation of guests and sport persons for CYG 2008. Was awarded volunteer of the day award. ', '2017-08-17 23:31:14', 180),
(36, 'Commonwealth Youth Games 2008', 'Accomodation Supervisor', 'Commonwealth Youth Games 2008', '2008-02-04', 'Was in charge of registration and accommodation of guests and sport persons for CYG 2008. Was awarded volunteer of the day award. ', '2017-08-17 23:31:18', 180),
(37, 'OUTREACH', 'MEMBER', 'EDUCATION', '2017-02-05', 'CONDUCTED SESSIONS FOR CHILDREN IN GOVT SCHOOLS', '2017-08-22 18:12:59', 183),
(38, 'St. Ann\'s School', 'ASPL(Assistant School Pupils Leader), President', 'Elections in School', '2006-02-10', 'I was elected as ASPL unanimously in the year 2006 and was into it for a period of 1 year.\r\nI worked as President for LA(Literary Association) in the year 2007 for a period of 1 year.\r\nI was the class representative for 4 years in my UG.\r\nNow working as Component Designer with a team size of 25 and as a secondary Team Lead', '2017-09-10 17:02:21', 215),
(39, 'Samskruti Foundation', 'Foundation member and volunteer', 'Educating and spreading awareness about indian cul', '2014-12-27', 'A private organisation dedicated to spread awareness and emancipating the society by spreading awareness on Indian Civilisation.', '2018-02-17 06:37:27', 272),
(40, 'SMSCountry Networks Pvt Ltd', 'Cultural Committee president', 'to fulfill employee satisfaction', '2017-07-20', 'Manages all the cultural activities of the organisation', '2018-02-19 23:15:04', 273);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aptitudetest`
--
ALTER TABLE `aptitudetest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assgnmnt_submit`
--
ALTER TABLE `assgnmnt_submit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_review`
--
ALTER TABLE `book_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certifications`
--
ALTER TABLE `certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_subjects`
--
ALTER TABLE `faculty_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `honors`
--
ALTER TABLE `honors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ideas`
--
ALTER TABLE `ideas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patents`
--
ALTER TABLE `patents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ppts`
--
ALTER TABLE `ppts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prerequisite_classes`
--
ALTER TABLE `prerequisite_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recomand`
--
ALTER TABLE `recomand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommandations`
--
ALTER TABLE `recommandations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registergitam`
--
ALTER TABLE `registergitam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sample`
--
ALTER TABLE `sample`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specilization`
--
ALTER TABLE `specilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `summary`
--
ALTER TABLE `summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testscores`
--
ALTER TABLE `testscores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_registerid` (`user_registerid`);

--
-- Indexes for table `user_subjects`
--
ALTER TABLE `user_subjects`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aptitudetest`
--
ALTER TABLE `aptitudetest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `assgnmnt_submit`
--
ALTER TABLE `assgnmnt_submit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `book_review`
--
ALTER TABLE `book_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `certifications`
--
ALTER TABLE `certifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `faculty_subjects`
--
ALTER TABLE `faculty_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forgotpassword`
--
ALTER TABLE `forgotpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `honors`
--
ALTER TABLE `honors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `ideas`
--
ALTER TABLE `ideas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `patents`
--
ALTER TABLE `patents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ppts`
--
ALTER TABLE `ppts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `prerequisite_classes`
--
ALTER TABLE `prerequisite_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `publications`
--
ALTER TABLE `publications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recomand`
--
ALTER TABLE `recomand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `recommandations`
--
ALTER TABLE `recommandations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registergitam`
--
ALTER TABLE `registergitam`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `sample`
--
ALTER TABLE `sample`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `specilization`
--
ALTER TABLE `specilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `summary`
--
ALTER TABLE `summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `testscores`
--
ALTER TABLE `testscores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user_subjects`
--
ALTER TABLE `user_subjects`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
