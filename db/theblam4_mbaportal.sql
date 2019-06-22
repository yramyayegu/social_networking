-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 22, 2019 at 01:10 AM
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
-- Database: `theblam4_mbaportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `comment_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `earlyregister`
--

CREATE TABLE `earlyregister` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `company` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `earlyregister`
--

INSERT INTO `earlyregister` (`id`, `name`, `email`, `mobile`, `company`, `datetime`) VALUES
(20, 'Ananth', 'ananth99p@gmail.com', '7893844966', 'Cse', '2018-12-25 00:36:05'),
(11, 'Anuradha Thota', 'anuradha.s.thota@gmail.com', '9000701020', 'Blackbuck Engineers', '0000-00-00 00:00:00'),
(17, ';ldkl;dkl;', 'LADM@DKFLJF.COM', '9048659068`', 'FJLDKLFJDKLFJ', '0000-00-00 00:00:00'),
(21, 'Surya Kiran Kalla', 'suryajaanakula@gmail.com', '7842740833', 'TERADATA', '2018-12-30 23:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `post_data` text NOT NULL,
  `post_image` text NOT NULL,
  `datetime` datetime NOT NULL,
  `likes` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`post_id`, `user_id`, `user_name`, `post_data`, `post_image`, `datetime`, `likes`, `status`) VALUES
(161, 11, 'Sai Charan Tej', 'AI', '11-829136.jpg', '2018-12-12 13:41:48', 0, 1),
(175, 18, 'ramya', 'https://youtu.be/Hu7yEMvXASQ', '', '2019-01-09 12:20:28', 0, 1),
(176, 18, 'ramya', '', '18-357900.jpg', '2019-01-09 13:13:32', 0, 1),
(177, 18, 'ramya', '', '18-615411.jpg', '2019-01-09 13:13:39', 0, 1),
(178, 18, 'ramya', '', '18-585218.png', '2019-01-09 13:13:52', 0, 1),
(179, 18, 'ramya', '', '18-399128.png', '2019-01-09 13:14:07', 0, 1),
(180, 18, 'ramya', '', '18-93394.jpg', '2019-01-09 13:14:25', 0, 1),
(181, 18, 'ramya', '', '18-715323.png', '2019-01-09 13:14:56', 0, 1),
(182, 18, 'ramya', 'https://youtu.be/Hu7yEMvXASQ', '', '2019-01-09 13:37:06', 0, 1),
(183, 18, 'ramya', ' EMC2India students Response\n\n https://www.youtube.com/watch?v=A4F0eZG1WIo     ', '', '2019-01-09 13:37:40', 0, 1),
(184, 18, 'ramya', 'Meet our trailblazer, our faculty for HR Rayapu R Boyapaty. Rayapu is working as General Manager, HR for IBM\r\n\r\nRayapu\'s passion to create leaders has brought him to emc2. His devotion to providing executive students with practical, engaging education has made him one of the most liked faculty.\r\n\r\nHe is loved by executive students for teaching high impact lessons that help them to both communicate the principles of the subject and adapt them to their own personal experience.', '18-698508.jpg', '2019-01-09 13:55:46', 0, 1),
(185, 18, 'ramya', 'Hello Connections!! \n\nPlease join me in welcoming Praveen Nagamalla, our new faculty for Strategy. Praveen is the CEO and Managing Director of IndusFresh, ESSAR group and has a wealth of learnings from his entrepreneurial venture to share with the students. \n\nThank you, Praveen, for joining our endeavor to make great leaders.\npraveen nagamalla     ', '18-921325.png', '2019-01-09 14:05:16', 0, 1),
(186, 18, 'ramya', 'Here you go !!!\r\nA quick checklist to see if it is our Finance Professor who you are talking with !!\r\nDr. P S S Murthy is here to make Accounts or Finance, including Corporate Finance, nothing but common sense', '18-641235.jpg', '2019-01-09 14:07:48', 0, 1),
(187, 18, 'ramya', 'Have you ever wondered how is it studying at emc2?\r\n09:30 am - Work hard\r\n03:00 pm - Play harder', '18-813066.jpg', '2019-01-09 14:08:47', 0, 1),
(188, 18, 'ramya', '', '18-148488.jpg', '2019-01-09 14:08:55', 0, 1),
(189, 18, 'ramya', 'Demonetization analyzed!\nWhen you are trained to think and find solutions to national and world issues, you get accustomed to think big.\nOur Executive MBA students present effects on demonetization on the Indian Economy. \nIndia\'s first dual post graduate program for executives.          ', '18-517539.jpg', '2019-01-09 14:12:54', 0, 1),
(190, 24, 'Anvesh', ' https://twitter.com/NDTVProfit/status/1083679360161214466?s=08', '', '2019-01-24 13:20:27', 0, 1),
(191, 24, 'Anvesh', 'https://twitter.com/TCS/status/1083330389006057473?s=08', '', '2019-01-24 13:21:05', 0, 1),
(192, 24, 'Anvesh', 'https://youtu.be/IZpczNS-ky0', '', '2019-01-24 13:21:53', 0, 1),
(193, 24, 'Anvesh', 'https://www.livemint.com/Companies/ZkLSoQ0dyUXH8hvP07owDM/Lessors-to-Jet-Airways-may-take-back-planes.html', '', '2019-01-24 13:22:35', 0, 1),
(194, 24, 'Anvesh', 'https://www.timesnownews.com/business-economy/companies/article/mukesh-ambani-plans-to-disrupt-fintech-reliance-jio-partners-with-hul-enters-pos-business/345889', '', '2019-01-24 13:23:39', 0, 1),
(195, 24, 'Anvesh', 'https://www.visualcapitalist.com/7-facts-will-free-fear-stock-market-crashes/', '', '2019-01-24 13:23:57', 0, 1),
(197, 24, 'Anvesh', 'http://www.ecoti.in/kDnD8Y39', '', '2019-01-24 13:26:07', 0, 1),
(198, 24, 'Anvesh', 'https://timesofindia.indiatimes.com/business/india-business/flights-reaching-early-slow-down-your-takeoff/articleshow/67507433.cms?utm_campaign=andapp&utm_medium=referral&utm_source=native_share_tray', '', '2019-01-24 13:26:24', 0, 1),
(199, 24, 'Anvesh', 'https://youtu.be/Dz9K25ECIpU', '', '2019-01-24 13:27:09', 0, 1),
(200, 24, 'Anvesh', 'https://youtu.be/D9Uk-YsjQsI', '', '2019-01-24 13:27:41', 0, 1),
(201, 24, 'Anvesh', 'https://youtu.be/4O2JK_94g3Y', '', '2019-01-24 13:28:01', 0, 1),
(202, 24, 'Anvesh', 'https://mybs.in/2X2vJDC', '', '2019-01-24 13:28:32', 0, 1),
(203, 24, 'Anvesh', 'https://www.entrepreneur.com/article/326199', '', '2019-01-24 13:29:14', 0, 1),
(204, 24, 'Anvesh', 'https://zurb.com/blog/the-amazon-effect-and-how-retailers-can-s', '', '2019-01-24 13:29:49', 0, 1),
(205, 24, 'Anvesh', 'https://medium.com/@jaydeep_barman/how-to-build-1000-restaurants-in-24-months-the-rebel-method-cb5b0cea4dc8', '', '2019-01-24 13:30:21', 0, 1),
(206, 24, 'Anvesh', 'https://www.forbes.com/sites/niallmccarthy/2019/01/10/boeing-pulls-ahead-of-rival-airbus-in-new-orders-infographic/?utm_source=LINKEDIN_COMPANY&utm_medium=social&utm_content=2074122221&utm_campaign=sprinklrForbesMainLI#35c345805be6', '', '2019-01-24 13:30:52', 0, 1),
(207, 24, 'Anvesh', 'https://m.facebook.com/story.php?story_fbid=1031243637064088&id=2071736776393778', '', '2019-01-24 13:31:12', 0, 1),
(208, 24, 'Anvesh', 'https://www.ccn.com/why-jeff-bezos-divorce-could-be-bullish-for-amazon-shares/', '', '2019-01-24 13:31:46', 0, 1),
(209, 24, 'Anvesh', 'https://www.visualcapitalist.com/jeff-bezos-empire-chart/', '', '2019-01-24 13:32:16', 0, 1),
(210, 24, 'Anvesh', 'https://youtu.be/_osKgFwKoDQ', '', '2019-01-24 13:32:48', 0, 1),
(211, 24, 'Anvesh', 'http://www.moneycontrol.com/news/business/markets/etihad-offers-to-invest-in-jet-airways-at-50-discount-stock-sinks-7-on-news-report-3396411.html', '', '2019-01-24 13:33:24', 0, 1),
(212, 24, 'Anvesh', 'https://youtu.be/9saLsvWcppw', '', '2019-01-24 13:33:58', 0, 1),
(213, 24, 'Anvesh', 'https://twitter.com/TimesNow/status/1085510729057202176?s=08', '', '2019-01-24 13:37:42', 0, 1),
(214, 24, 'Anvesh', 'http://www.ecoti.in/eF9TBY', '', '2019-01-24 13:38:16', 0, 1),
(215, 24, 'Anvesh', 'http://www.ecoti.in/eiTVKZ', '', '2019-01-24 13:39:14', 0, 1),
(216, 24, 'Anvesh', 'https://youtu.be/kpy_hi3ZAj0\r\n', '', '2019-01-24 13:39:54', 0, 1),
(217, 24, 'Anvesh', 'https://youtu.be/Kyl4eWNgtVY', '', '2019-01-24 13:40:42', 0, 1),
(218, 24, 'Anvesh', 'https://youtu.be/pS7H_FeiAMM', '', '2019-01-24 13:41:30', 0, 1),
(219, 24, 'Anvesh', ' https://www.forbes.com/sites/williamarruda/2016/11/15/9-differences-between-being-a-leader-and-a-manager/amp/', '', '2019-01-24 13:46:43', 0, 1),
(220, 24, 'Anvesh', 'https://economictimes.indiatimes.com/industry/transportation/airlines-/-aviation/dgca-bars-indigo-goair-from-flying-a320-neos-with-pw-engines-to-port-blair-or-long-overseas-routes/articleshow/67577256.cms?utm_source=whatsapp_app&utm_medium=social&utm_campaign=socialsharebuttons', '', '2019-01-24 13:47:33', 0, 1),
(221, 24, 'Anvesh', 'https://janav.wordpress.com/2014/10/03/how-to-read-an-annual-report/', '', '2019-01-24 13:48:26', 0, 1),
(222, 24, 'Anvesh', 'https://m.timesofindia.com/business/india-business/ril-chief-mukesh-ambani-outlines-plan-to-take-on-amazon-flipkart/amp_articleshow/67589369.cms', '', '2019-01-24 13:49:20', 0, 1),
(223, 24, 'Anvesh', 'http://www.ecoti.in/hHeTUY', '', '2019-01-24 13:50:15', 0, 1),
(224, 24, 'Anvesh', 'https://www.google.com/amp/s/thecalminvestor.com/top-10-profitable-industries-india/amp/', '', '2019-01-24 13:52:13', 0, 1),
(225, 24, 'Anvesh', 'https://youtu.be/TrPT3_cIC4c', '', '2019-01-24 13:53:24', 0, 1),
(226, 24, 'Anvesh', 'http://www.ecoti.in/4d3BNb72', '', '2019-01-24 13:54:32', 0, 1),
(227, 24, 'Anvesh', 'https://retail.economictimes.indiatimes.com/news/e-commerce/e-tailing/jeff-bezos-vs-mukesh-ambani-is-the-bout-that-had-to-happen/67634655', '', '2019-01-24 13:58:26', 0, 1),
(228, 24, 'Anvesh', 'http://www.ecoti.in/L5e1HZ', '', '2019-01-24 13:59:52', 0, 1),
(229, 24, 'Anvesh', 'https://www.google.co.in/amp/s/www.bloombergquint.com/opinion/an-air-india-jet-airways-merger-could-save-both.amp', '', '2019-01-24 14:01:12', 0, 1),
(230, 24, 'Anvesh', 'http://www.moneycontrol.com/news/business/earnings/indigo-operators-q3-net-profit-at-rs-191-crore-on-adverse-impact-of-crude-rupee-3425591.html', '', '2019-01-24 14:02:31', 0, 1),
(231, 24, 'Anvesh', 'https://m.timesofindia.com/business/india-business/beard-care-mkt-grows-to-rs-100cr/amp_articleshow/62421528.cms', '', '2019-01-24 14:03:46', 0, 1),
(232, 24, 'Anvesh', ' https://retail.economictimes.indiatimes.com/news/e-commerce/e-tailing/amazon-knows-what-you-buy-and-its-building-a-big-ad-business-from-it/67619037', '', '2019-01-24 14:20:39', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `likes_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `no_likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `mobile`, `email`, `password`) VALUES
(2, 'Ramya', '7386880150', 'yramyayegu@gmail.com', '123456'),
(3, 'Ramya', '7386880150', 'yramyayegu@gmail.com', '123456'),
(4, 'Ramya', '7386880150', 'yramyayegu@gmail.com', '123456'),
(5, 'Ramya', '7386880150', 'yramyayegu@gmail.com', '123456'),
(6, 'Ramya', '7386880150', 'yramyayegu@gmail.com', '123456'),
(7, 'Ramya', '7386880150', 'yramyayegu@gmail.com', '123456'),
(8, 'nickolaskirsch242099', '0911 70 64 73', 'evette@mauriss.xyz', 'il9gebMKxW4FOsF'),
(9, 'nickolaskirsch242099', '0911 70 64 73', 'evette@mauriss.xyz', 'il9gebMKxW4FOsF'),
(10, 'laylakilfoyle51833214', '(12) 7165-4543', 'evelynn@mauriss.xyz', 'TZqwDuB5GJ0n7WE'),
(11, 'laylakilfoyle51833214', '(12) 7165-4543', 'evelynn@mauriss.xyz', 'TZqwDuB5GJ0n7WE'),
(12, 'penneycolosimo44524', '72 159 10 67', 'evie@mauriss.xyz', 'kIruhQPjCBD0Bt9'),
(13, 'penneycolosimo44524', '72 159 10 67', 'evie@mauriss.xyz', 'kIruhQPjCBD0Bt9'),
(14, 'Lusleypeapy', '86169794823', 'pavlovadina263952@gmail.com', '666vagonWS'),
(15, 'Lusleypeapy', '84319879166', 'pavlovadina263952@gmail.com', '666vagonWS'),
(16, 'Carlosendopay', '85174592176', 'olhamilyavskiena@yandex.ru', 'v87nux$jX9Y'),
(17, 'Carlosendopay', '85165945435', 'olhamilyavskiena@yandex.ru', 'v87nux$jX9Y'),
(18, 'ASWBetrugpsymn', '84213121284', 'plv@plv-capital.com', 'sL2ovrb53$H'),
(19, 'ASWBetrugpsymn', '89143277293', 'plv@plv-capital.com', 'sL2ovrb53$H'),
(20, 'SwineRoll', '82567888631', 'swinerol@yandex.ru', 'a72yR5broE'),
(21, 'SwineRoll', '83253491375', 'swinerol@yandex.ru', 'a72yR5broE'),
(22, 'Davidbek', '82831139853', '280i2oyhjb@sfxmailbox.com', 'c4k1U7ng$wZ'),
(23, 'Davidbek', '82343597964', '280i2oyhjb@sfxmailbox.com', 'c4k1U7ng$wZ'),
(24, 'BQMichael', '84991623227', 'zhukpit@yandex.com', 'If7e#xp6z2V'),
(25, 'BQMichael', '85492897783', 'zhukpit@yandex.com', 'If7e#xp6z2V'),
(26, 'lsnezhinkina', '85531419838', 'larasnezhinkina@yandex.ru', '9oEzvqh47&G'),
(27, 'lsnezhinkina', '87215998165', 'larasnezhinkina@yandex.ru', '9oEzvqh47&G');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `link` text NOT NULL,
  `description` text NOT NULL,
  `datetime` datetime NOT NULL,
  `clap` int(11) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `link`, `description`, `datetime`, `clap`, `status`) VALUES
(1, 'demo 1', 'https://www.youtube.com/embed/pWOk4H2FzmY', 'Artificial intelligence (AI) platforms provide users a tool kit to build intelligent applications. These platforms combine intelligent, decision-making algorithms with data, which enables developers to create a business solution. Some platforms offer pre-built algorithms and simplistic workflows with such features as drag-and-drop modeling and visual interfaces that easily connect necessary data to the end solution, while others require a greater knowledge of development and coding. These algorithms can include functionality for image recognition, natural language processing, voice recognition, recommendation systems, and predicitve analytics, in addition to other machine learning capabilities.', '2018-12-05 04:15:26', 0, 1),
(2, 'demo 2', 'https://www.youtube.com/embed/SHL9H7Lt3Y4', 'As the world entered the era of big data, the need for its storage also grew. It was the main challenge and concern for the enterprise industries until 2010. The main focus was on building framework and solutions to store data. Now when Hadoop and other frameworks have successfully solved the problem of storage, the focus has shifted to the processing of this data. Data Science is the secret sauce here. All the ideas which you see in Hollywood sci-fi movies can actually turn into reality by Data Science. Data Science is the future of Artificial Intelligence. Therefore, it is very important to understand what is Data Science and how can it add value to your business.', '2018-12-02 10:28:16', 0, 1),
(3, 'week 1 Prereads', 'https://www.youtube.com/embed/5MgBikgcWnY', '<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Please go through the following videos/refresh before the start of the program.</p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong>The critical component of machine learning product :</strong></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; background: white;\"><span style=\"color: #500050;\"><a style=\"color: #1155cc;\" href=\"https://youtu.be/5346M9lNYE4\" data-saferedirecturl=\"https://www.google.com/url?q=https://youtu.be/5346M9lNYE4&amp;source=gmail&amp;ust=1546678350818000&amp;usg=AFQjCNGnnSdSCDrrtWikcsL-MLUKzd1EtA\"><span style=\"color: #1155cc;\">https://youtu.be/5346M9lNYE4</span></a></span></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; background: white;\"><span style=\"color: #500050;\">&nbsp;</span></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong>What is Collaborative Filtering :</strong></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; background: white;\"><span style=\"color: #500050;\"><a style=\"color: #1155cc;\" href=\"https://youtu.be/HTRUosyQrm0\" data-saferedirecturl=\"https://www.google.com/url?q=https://youtu.be/HTRUosyQrm0&amp;source=gmail&amp;ust=1546678350819000&amp;usg=AFQjCNE_cyo4jTu3wZvf6HqI9MGaMZ2bgg\"><span style=\"color: #1155cc;\">https://youtu.be/HTRUosyQrm0</span></a></span></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong>Supervised, Unsupervised and Reinforced learning :</strong></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; background: white;\"><span style=\"color: #500050;\"><a style=\"color: #1155cc;\" href=\"https://youtu.be/-ZIt9LC8Uig\" data-saferedirecturl=\"https://www.google.com/url?q=https://youtu.be/-ZIt9LC8Uig&amp;source=gmail&amp;ust=1546678350819000&amp;usg=AFQjCNEvNG4n3TKO-9Ptp1LudkVWagN9xA\"><span style=\"color: #1155cc;\">https://youtu.be/-ZIt9LC8Uig</span></a></span></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong>How to make a transition into the field of Data Science :</strong></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; background: white;\"><span style=\"color: #500050;\"><a style=\"color: #1155cc;\" href=\"https://youtu.be/SHL9H7Lt3Y4\" data-saferedirecturl=\"https://www.google.com/url?q=https://youtu.be/SHL9H7Lt3Y4&amp;source=gmail&amp;ust=1546678350819000&amp;usg=AFQjCNH-SvtDRfjy4C5LLsk3qPwQnSiy1Q\"><span style=\"color: #1155cc;\">https://youtu.be/SHL9H7Lt3Y4</span></a></span></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"color: #1f497d;\">&nbsp;</span></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong><u><span style=\"font-size: 16pt; color: #1f497d;\">Essential Prereads</span></u></strong></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><strong><span style=\"color: #1f497d;\">&nbsp;</span></strong></p>\r\n<p style=\"margin: 0px; color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\"><a style=\"color: #1155cc;\" href=\"https://www.dataquest.io/blog/jupyter-notebook-tutorial/\" data-saferedirecturl=\"https://www.google.com/url?q=https://www.dataquest.io/blog/jupyter-notebook-tutorial/&amp;source=gmail&amp;ust=1546678350819000&amp;usg=AFQjCNG5RDfa4nFtVuE0bKxcq9U-cvWCmg\">https://www.dataquest.io/blog/jupyter-notebook-tutorial/</a></p>', '2018-12-02 10:28:16', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `company` varchar(100) NOT NULL,
  `timetaken` varchar(10) NOT NULL,
  `attempted_qu` varchar(10) NOT NULL,
  `unattempted_qu` varchar(10) NOT NULL,
  `correct` varchar(10) NOT NULL,
  `wrong` varchar(10) NOT NULL,
  `statistics` int(11) NOT NULL,
  `dataanalysis` int(11) NOT NULL,
  `programing` int(11) NOT NULL,
  `one` int(11) NOT NULL,
  `two` int(11) NOT NULL,
  `three` int(11) NOT NULL,
  `four` int(11) NOT NULL,
  `five` int(11) NOT NULL,
  `six` int(11) NOT NULL,
  `seven` int(11) NOT NULL,
  `eight` int(11) NOT NULL,
  `nine` int(11) NOT NULL,
  `ten` int(11) NOT NULL,
  `job` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `tech` int(11) NOT NULL,
  `prefer` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `email`, `mobile`, `company`, `timetaken`, `attempted_qu`, `unattempted_qu`, `correct`, `wrong`, `statistics`, `dataanalysis`, `programing`, `one`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `job`, `role`, `tech`, `prefer`, `datetime`, `status`) VALUES
(26, 'Varun', 'varun.etlfolk@gmail.com', '6300055757', 'Cognizant', '0:8:37', '8', '2', '4', '4', 3, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 1, 4, '2018-12-22 16:04:48', 1),
(25, 'Ram Kurra', 'ramkurra01@gmail.com', '9000545652', 'Franklin', '0:9:14', '10', '0', '0', '10', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 4, 1, '2018-12-22 16:04:52', 1),
(65, 'Abc', 'abc@def.com', '1234567891', 'Abc', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `image` text NOT NULL,
  `company` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `linkedin` text NOT NULL,
  `resume` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `mobile`, `image`, `company`, `position`, `linkedin`, `resume`, `email`, `password`, `date`, `status`, `batch`) VALUES
(1, 'Shruthi Sayinedi', '9000701020', 'shruthi.JPG', 'Sageable Technologies', 'Project Manager', '', 'Shruthi', '', '', '0000-00-00 00:00:00', 0, 1),
(18, 'ramya', '7386880150', '939.jpg', 'zinka', '', '', '', 'yramyayegu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-01-04 13:07:22', 1, 0),
(24, 'Anvesh', '7680887728', 'newuser.jpg', 'Blackbucks', '', '', '', 'anveshsirikonda@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '2019-01-08 17:34:04', 0, 0),
(25, 'Anuradha Thota', '9000701020', 'newuser.jpg', 'Blackbucks', '', '', '', 'anuradha.s.thota@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-01-12 14:26:54', 1, 0),
(26, 'Rajasekhar', '7569670050', 'newuser.jpg', '', '', '', '', 'shekar8142@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 1, 0),
(27, 'Raghav', '9000145111', 'newuser.jpg', 'Virtusa', '', '', '', 'raghavavarma145@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(28, 'Sandeep Gandhe', '9885758820', 'newuser.jpg', 'Virtusa', '', '', '', 'sandeep081984@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 1, 0),
(29, 'K. Swathi', '7093935144', 'newuser.jpg', '', '', '', '', 'swathikrishna0503@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(30, 'Yamini', '8500580880', 'newuser.jpg', 'Tech Mahindra', '', '', '', 'yaminireddyaitha@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(31, 'Dasaradhi Bendi', '9849759754', 'newuser.jpg', 'TCS ', '', '', '', 'dasaradhibendi@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(32, 'Kali', '9398233627', 'newuser.jpg', 'L&T', '', '', '', 'tkali2002@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 1, 0),
(33, 'Abilash Ansari', '9000117672', 'newuser.jpg', 'IMI Mobile', '', '', '', 'ansaritw@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 1, 0),
(34, 'Vinod Shukla', '8121178848', 'newuser.jpg', 'Kore AI', '', '', '', 'mailshukla.thewriter@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 1, 0),
(35, 'Arvind Simhachalam', '9640436398', 'newuser.jpg', '', '', '', '', 'doublea.thehr@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(36, 'Anil.J', '9573273177', 'newuser.jpg', 'Virtusa', '', '', '', 'bestanil@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(37, 'P Joe Prakash', '8919117559', 'newuser.jpg', 'Cyient - Anuradha', '', '', '', 'p.joeprakash@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(38, 'Gowtham', '9640397824', 'newuser.jpg', '', '', '', '', 'lingutlagowtham@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(39, 'Sk Yasin', '9963367379', 'newuser.jpg', '', '', '', '', 'yasinbasha60@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(40, 'Shravan kumar', '8886566409', 'newuser.jpg', 'L&T Infotech', '', '', '', ' rhudm.shravan@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(41, 'Ram Balijapalli', '9069996699', 'newuser.jpg', 'CTS ', '', '', '', 'rambalijapalli@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(43, 'Dhruthi', '9440413435', 'newuser.jpg', 'Ascendas IT park', '', '', '', 'dhruthidhulipala@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 0, 0),
(44, 'Upendra', '9676605670', 'newuser.jpg', 'Blackbucks', '', '', '', 'upendraparchuri@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '2019-01-24 13:11:12', 0, 0),
(45, 'Soumyajit Sarker ', '9160999682', 'SoumyajitSarker.jpeg', 'Virtusa', ' Lead Consultant', '', 'SoumyajitSarkek', '', '', '0000-00-00 00:00:00', 0, 1),
(46, 'K Milind Kumar', '8985738516', 'Milind.JPG', 'Cognizant Technology Solutions', 'Associate Projects', '', '', '', '', '0000-00-00 00:00:00', 0, 1),
(47, 'Daggumati Ravi Kumar', '8008833939', '', ' Incessant Technologies Pvt Ltd', ' Senior Manger QA', '', '', '', '', '0000-00-00 00:00:00', 0, 4),
(48, 'Jaya Prakash B', '8977763243', 'JayaPrakash.JPG', 'Virtusa Consulting Services Pvt Ltd', ' Associate  Consultant', '', 'jayaprakash', '', '', '0000-00-00 00:00:00', 0, 1),
(49, 'Harini Jakkula', '7032654199', 'Harini.JPG', 'Tech Mahindra', 'Senior Software Engineer', '', 'harinijakkula', '', '', '0000-00-00 00:00:00', 0, 1),
(50, 'Uday Bhaskar PV', '9652012347', 'Uday.JPG', 'Oracle India pvt ltd', 'Software Engineer| \r\n Product Development', '', 'uday', '', '', '0000-00-00 00:00:00', 0, 1),
(51, 'Raghavendra Chaduvula', '8106045404', 'Raghavendra.JPG', 'C3i solutions', 'Technical Support Lead', '', '', '', '', '0000-00-00 00:00:00', 0, 1),
(52, 'Renuka G', '9701010279', 'RENUKA.JPG', 'C3i Solutions', 'Help Desk Analyst', '', 'renuka', '', '', '0000-00-00 00:00:00', 0, 1),
(53, 'Deepak Balivada', '8095604040', 'Deepak.JPG', 'Infosys Ltd', 'Systems Engineer', '', 'Deepak', '', '', '0000-00-00 00:00:00', 0, 1),
(54, 'Jagadeeswararao Murapaka', '9989788877', 'Jagadeeswararao.JPG', 'Infosys Ltd', 'Technology Analyst', '', '', '', '', '0000-00-00 00:00:00', 0, 1),
(55, 'Rajesh', '9848193126', 'Rajesh.JPG', 'Infosys Ltd', 'Project Manager', '', '', '', '', '0000-00-00 00:00:00', 0, 1),
(56, 'Varun Karpurapu', '9666099966', 'Varun.JPG', 'Wipro Ltd', ' Senior Project Engineer', '', 'varun', '', '', '0000-00-00 00:00:00', 0, 1),
(57, 'Karuna', '9182179268', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(58, 'Madhusudhan', '8686778957', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(59, 'Mastan', '9502884558', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(60, 'Rohit', '9885920591', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(61, 'Sai Koundinya', '7569277774', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(62, 'Satyanarayana Raju', '9908995058', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(63, 'Sreenath', '9620931137', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(64, 'Suchitra CH', '9032196544', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(65, 'Venkat Duvvuri', '8095210222', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(66, 'Vinod Prajapati', '9177594389', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(67, 'Jhansi', '7730967766', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 0, 2),
(68, 'mani', '', '', 'Blackbucks', '', '', '', 'nmani009@gmail.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 1, 0),
(69, 'subbu', '', '', 'Blackbucks', '', '', '', 'subbu_kapila@yahoo.com', '319f4d26e3c536b5dd871bb2c52e3178', '0000-00-00 00:00:00', 1, 0),
(70, 'doublea', '', '', '', '', '', '', 'doublea.thehr@gmail.com', 'PASSWORD', '0000-00-00 00:00:00', 1, 0),
(71, 'Krishnakanth', '', '', '', '', '', '', 'Krishnakanth99999@gmail.com', 'PASSWORD', '0000-00-00 00:00:00', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `earlyregister`
--
ALTER TABLE `earlyregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likes_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `earlyregister`
--
ALTER TABLE `earlyregister`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `likes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
