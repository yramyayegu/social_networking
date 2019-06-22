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
-- Database: `theblam4_AIExam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'sanjeev', 'sanjeev');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` text,
  `ans1` text,
  `ans2` text,
  `ans3` text,
  `ans4` text,
  `true_ans` int(1) DEFAULT NULL,
  `level` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `sub_subject` varchar(200) NOT NULL,
  `que_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `level`, `subject`, `sub_subject`, `que_img`) VALUES
(1, 8, 'For a normal distribution, both the median and mean happen to be 75. Can you guess approximately what will be the value of the mode?', '150', '0', '75', '5625', 3, 'EASY', 'Statistics', 'Central Tendency', ''),
(2, 8, '<p><strong> You are a Data Scientist working with Flipkart. The Category Manager who is tasked with increasing the sales of Sports Merchandise on the site comes up to you and asks</strong><br /><strong>&ldquo;How are the sales of Sports Merchandise doing this year? Are we better off this year than in the past?&rdquo;</strong><br /><strong>You have the yearly data of the Sports Merchandise sales for the last decade. You also have monthly data for the six months lapsed this year. This is the only data at your disposal. Which of the below measures will you generate to support your response?</strong></p>', 'Kurtosis', 'Sample Variance', 'Mean/Median/Mode', 'Z-score', 3, 'EASY', 'Statistics', 'Central Tendency', ''),
(3, 8, '<p><strong>Your company is gearing up to organize its annual conference this year. They came to you and asked for an estimate of the approximate number of attendees for this year&rsquo;s conference so that they can prepare better with the logistics. They gave you the below data. Which number will you quote them as the possible number of attendees for this year&rsquo;s conference?</strong></p><img src=\"queimg/q3.PNG\">', '697', '714', '900', '512', 3, 'HARD', 'Statistics', 'Central Tendency', ''),
(4, 8, '<p><strong>You are working as a Data Scientist at BlueStone.com. When the CEO asks you &ldquo;Can you mine the data and tell me something interesting?&rdquo;, you get all excited. You collect data about all the purchases made by all the customers on Bluestone.com. You plot a normal distribution curve like the one below and tell the CEO &ldquo;We need to focus our marketing efforts to the people who made transactions in the highlighted region as they constitute the bulk of the revenue&rdquo;. CEO shakes his head and says, &lsquo;Nah..I need to target the people in the regions(tails) outside the highlighted area to grow the business&rsquo;. Which measure did you overlook and was understood by the CEO?</strong></p><img src=\"queimg/q4.png\">', 'Skewness', 'Kurtosis', 'Sample Variance', 'Mean', 2, 'MEDIUM', 'Statistics', 'Probability', ''),
(5, 8, '<p><strong>You are working on fine-tuning several models to predict the adoption rate of the &lsquo;Chat bot&rsquo; feature in your product. 3 of the models are powered by the Random Forest algorithm, 2 of them are based on Clustering, 5 of them are using Decision tree algorithm. When you tell the Product Manager that you need more time to decide upon a model, he asks you &ldquo;What are the chances of the Random Forest algorithm successfully predicting the adoption rate?&rdquo; Your immediate response would be:</strong></p>', '50%', '300%\r\n', '40%\r\n', '30%', 4, 'EASY', 'Statistics', 'Probability', ''),
(6, 8, '<p><strong> From the below graph, what is the approximate average height of people(in feet) who weigh below 40 kgs? </strong></p><img src=\"queimg/q6.PNG\">', '1.8', '3.5', '2', '2.5', 4, 'EASY', 'Algebra', 'Data Interpretation', ''),
(7, 8, '<p><strong>The relationship between marks of a bunch of students and the amount of time they have spent on extra-curricular activities(in hrs) is given by the below equation.</strong><br /><strong> Marks = -3*Time spent on extra-curricular activities + 1</strong><br /><strong>What can you infer from the above equation?</strong></p>', 'Whenever a student spends an additional hour in extra-curriculars, his marks are going to increase by 4 units', 'Whenever a student spends an additional hour in extra-curriculars, his marks are going to increase by 3 units', 'Whenever a student gets an additional mark, his time spent in extra-curriculars is going to increase by 1 unit', 'Whenever a student spends an additional hour in extra-curriculars, his marks are going to decrease by 3 units', 4, 'MEDIUM', 'Algebra', 'Equations', ''),
(8, 8, '<p><strong>Can you tell the value of &lsquo;count&rsquo; at the end of the loop for below two code snippets:</strong><br /><strong><u>Snippet 1:</u></strong><br /><strong>count = 0</strong><br /><strong>while (count &lt; 9)</strong><br /><strong> count = count + 1</strong><br /><strong>print (count)</strong><br /><strong><u>Snippet 2:</u></strong><br /><strong>for count in range(0,9): #Range(0,9) results in a list of numbers from 0 till 8.</strong><br /><strong> print (count)</strong><br /><strong>else:</strong><br /><strong> print (\"The for loop is over and count value is %d\" %(count)) </strong></p>', '9 and 9', '8 and 8', '9 and 8', '8 and 9', 3, 'EASY', 'Programming', 'Loops', ''),
(9, 8, '<p><strong>If you are using the below python code to calculate the time taken for travelling three different distances, what would be the output:</strong><br /><strong>Snippet 1:</strong><br /><strong>distance = [45,51,35]</strong><br /><strong>speed = [5,10,7]</strong><br /><strong>time = distance/speed </strong><br /><strong>print (time) </strong></p>', '[9, 5.1, 5]', '[6.33]', 'Python code has a problem', 'Formula used for calculating time is wrong', 3, 'MEDIUM', 'Programming', 'Loops', ''),
(10, 8, '<p><strong>Below is a data set that has some values missing in the &lsquo;Flight Duration&rsquo; column for a bunch of flights. How will you deal with these missing values?</strong></p><img src=\"queimg/q10.PNG\">', 'I will drop those rows that contain these missing values\r\n', 'I will replace the missing values with zeros\r\n', 'I will drop the ‘Flight Duration’ column altogether from my analysis\r\n', 'I will fill the missing values with the average of the other values in the ‘Flight Duration’ column', 4, 'EASY', 'Programming', 'Data Interpretation', ''),
(11, 8, '<p>A Sales Manager is trying to understand the average size of the deals that his Sales Reps are closing every year. He came up to you and presented the below data. You saw the data and it represented a bell curve. You performed a quick calculation and said: &ldquo;Your sales reps on an average sell somewhere between $282,403 and $419,928.&rdquo;How confident were you in quoting that range?</p><img src=\"queimg/q11.PNG\">', '75%\r\n\r\n', '68%', '95%', '99%', 3, 'HARD', 'Statistics', 'Probability', ''),
(12, 8, '<p><strong> As a Data Scientist, you are always intrigued by how well you are paid compared with the rest of the folks in other departments within your organization. You somehow got access to an excel that lists out all the monthly salaries of individuals (9500 employees). You quickly calculated the mean and S.D as 65,000/- and 15,000/-. Your salary is 71,000/- What would be your rank in the organization when it comes to salary payout? (p-value for Z-score less than or equal to 0.4 is 0.6554)</strong></p>', '3325', '5675', '4325', '9500', 1, 'HARD', 'Statistics', 'Probability', ''),
(13, 8, '<p><strong> To force their way over the enemy&rsquo;s surrounding wall :</strong></p> <p><strong>1. An army constructed ladders to reach the top of the enemy&rsquo;s wall, and they did this by calculating the height of the wall from the number of layers of bricks at a point which was facing in their direction and had not been plastered. </strong></p> <p><strong>2. The layers were counted by a lot of people at the same time, and though some were likely to get the figure wrong, the majority would get it right, especially as they counted the layers frequently and were not so far away from the wall that they could not see it well enough for their purpose. </strong></p> <p><strong>3. Thus, guessing what the thickness of a single brick was, they calculated how long their ladders would have to be ...</strong></p> <p><strong>Which Central Tendency measure was they </strong><strong>used to estimate the length of their ladders?</strong></p><img src=\"queimg/q13.PNG\">', 'Mean', 'Median\r\n', 'Mode', 'None of the above', 3, 'MEDIUM', 'Statistics', 'Central Tendency', ''),
(14, 8, '<p>What is the probability (chance) that this hamburger weighs <strong>exactly </strong>0.25 pounds?</p><img src=\"queimg/q14.PNG\">', '0.25', '0.75', '0\r\n', '1\r\n', 3, 'HARD', 'Statistics', 'Probability', ''),
(15, 8, '<p>The <strong>Wechsler</strong> Adult <strong>Intelligence Scale</strong> (<strong>WAIS</strong>) is an <strong>IQ test</strong> designed to <strong>measure intelligence</strong> and cognitive ability in adults and older adolescents. Below is a graph that represents the data points for students in schools across a country. 96% of students scored between <strong>_</strong><strong>_</strong><strong>_</strong> and <strong>_</strong>____</p><img src=\"queimg/q15.PNG\">', '85 and 115 points', '55 and 130 points', '70 and 130 points', '55 and 115 points', 3, 'MEDIUM', 'Statistics', 'Probability', ''),
(16, 8, '<p><strong>What can you infer from the below image?</strong></p><img src=\"queimg/q16.PNG\">', 'Average height of an women is higher than the average height of men', 'Average height of a man is 65 inches', 'The number of women having heights around the average woman height (65 inches) is more compared to the number of men having heights around the average man height (70 inches)', 'There are a lot of women whose height is around 85 inches', 3, 'HARD', 'Statistics', 'Probability', ''),
(17, 8, '<p><strong>Below heatmap represents the no.of passengers traveling via flights across time. Which months have the highest frequency of passengers?</strong></p><img src=\"queimg/q17.PNG\">', 'Jan and Feb', 'Jan and March', 'November and December', 'July and August', 4, 'EASY', 'Statistics', 'Data Interpretation', ''),
(18, 8, '<p><strong>Below are the no.of assault incidents that happened across 7 years in a town. Which of the below measures best describes this dataset?</strong></p> <p><strong>Assaults: 63, 71,74, 78, 87, 98,246</strong></p>', '63', '246', '78', '103', 3, 'MEDIUM', 'Statistics', 'Central Tendency', ''),
(19, 8, '<p><strong>Below are the no.of car theft incidents that happened across 7 years in a town. Which of the below measures best describes this dataset?</strong></p> <p><br /><strong>Car Thefts : 65,70,72,74,180,201,203</strong></p>', '74', '65', '203', '120', 4, 'HARD', 'Statistics', 'Central Tendency', ''),
(20, 8, '<p><strong>Sarah is a student of English literature. Class of 50 students complete an assignment. Sarah scores 70. Mean is 60; Standard deviation is 15. Whilst Sarah has still scored much higher than the mean score, she has not necessarily achieved one of the best marks in her class. Sarah will get a scholarship only if she is in the top 10% of the class. Which of the below statements is false? The student score distribution is a normal distribution and probability for Z score greater than 0.67 is 0.2514</strong></p>', 'Around 25% of the class scored better than Sarah', 'Sarah scored better than 50% of the class', 'Sarah scored better than 75% of the class', 'Sarah is in the top 10%\r\n\r\n', 4, 'HARD', 'Statistics', 'Probability', ''),
(21, 8, '<p>Which of the below represents a &lsquo;Regression&rsquo; problem?</p>', 'Predicting whether an email is SPAM or not', 'Predicting whether a loan request is going to get approved or not', 'Predicting the amount of time by which a flight is getting delayed', 'Predict the trending topic based on social media activity', 3, 'EASY', 'Algebra', '', ''),
(22, 8, '<p>Can you identify the &lsquo;Unsupervised Learning&rsquo; problem from the below?</p>', 'From the user usage patterns on a website, figure out what different groups of users exist.', 'Given many emails, you want to determine if they are spam or non-spam emails.', 'Given historical data, predicting the future stock price of a company', 'Given historical weather records, predict if tomorrow’s climate is going to be sunny or rainy.', 1, 'EASY', 'Algebra', '', ''),
(23, 8, '<p><strong>Suppose you want to perform Min-Max normalization to the below dataset. How will the dataset look like after applying the transformation?</strong></p>\r\n<p><br /><strong>X : [5,9,2,6]</strong></p>\r\n<br><img src=\"queimg/q23.PNG\">', '[0,1,1,0]\r\n', '[0.43,1,0,0.57]\r\n', '[0.17,0.29,0.43,0.38]\r\n', '[4,9,2,4]\r\n', 2, 'HARD', 'Algebra', 'Equations', ''),
(24, 8, '<p>The admission at a fair is $2 for children and $4 for adults. On a certain day, 500 people enter the fair and $1300 is collected. How many children and adults entered the fair?</p>', 'Children = 200; Adults = 100', 'Children = 250; Adults = 150', 'Children = 300; Adults = 100\r\n', 'Children = 350; Adults = 150\r\n', 4, 'EASY', 'Algebra', 'Equations', ''),
(25, 8, '<p><strong>Which of the below features (columns) is least important for predicting whether someone is going to get a promotion or not? </strong></p>\r\n<img src=\"queimg/q25.PNG\">', 'Gender\r\n', 'Work Experience', 'Age', 'Salary', 1, 'MEDIUM', 'Statistics', 'Central Tendency', ''),
(26, 8, '<p>Below is a confusion matrix that evaluates the classifications done by a Logistic Regression model. Can you calculate the accuracy of the model?</p>\r\n<p><img src=\"queimg/q26.PNG\" /></p>', '99.09%\r\n', '57.14%\r\n', '63.63%\r\n', '90.90%', 4, 'MEDIUM', 'Algebra', 'Matrices', ''),
(27, 8, '<p>Below is a confusion matrix that evaluates the classifications done by a Logistic Regression model. Can you calculate the misclassification rate of the model?</p>\r\n<p><img src=\"queimg/q27.PNG\" /></p>', '90.90%', '57.14%', '9.09%', '63.63%', 3, 'EASY', 'Algebra', 'Matrices', ''),
(28, 8, '<p><strong>Below is a confusion matrix that evaluates the classifications done by a Logistic Regression model. When its actually no, how often does the model predict no(Specificity)?</strong></p><p><img src=\"queimg/q28.PNG\" /></p>', '90.90%', '57.14%', '9.09%', '83.33%', 4, 'MEDIUM', 'Algebra', 'Matrices', ''),
(29, 8, '<p>A decision tree model was used to predict whether a loan request is going to get approved or rejected. In the below &lsquo;Confusion Matrix&rsquo;, when the loan request was actually approved, how often is the prediction correct(Recall)?</p><p><img src=\"queimg/q29.PNG\" /></p>', '21.50%', '40%', '60%', '78.50%', 2, 'HARD', 'Algebra', 'Matrices', ''),
(30, 8, '<p>What is the output of the below piece of code?<br /><br />import re<br />string1=\'5+6*<em>3-45\'</em><br /><em>print (list(string1))</em><br /><em>list1=re.findall(\'[+-/</em>]|\\d+\',string1)<br />print (list1)<br />output_string=list1[::-1]<br />print (output_string)<br />\'\'.join(output_string)</p>', '8', '54-3*6+5', '45-3*6+5', 'The above code has a problem\r\n', 3, 'HARD', 'Programming', 'Logical Thinking', ''),
(31, 8, '<p>What is the output of the below piece of code?&nbsp;</p>\r\n<p><br />a=\"Apples are better than \\\\n Oranges\"<br />print (a)</p>', '<p>Apples are better than <br />Oranges</p>', 'b.Apples are better than \\\\n Oranges', 'Apples are better than Oranges\r\n', 'Apples are better than \\n Oranges', 4, 'EASY', 'Programming', 'Syntactic Understanding', ''),
(32, 8, '<p>What is the output of the below piece of code?&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>str_input=\"Hey how are you doing. I am doing great\"<br />print(str_input[:10]+\"_\"+str_input[-10:])</p>', 'Hey how are_doing great', 'great doing_am I doing. you are', 'Hey how ar_oing great', 'Hey how a_ing great', 3, 'EASY', 'Programming', 'Syntactic Understanding', ''),
(33, 8, '<p>What is the output of the below piece of code?</p>\r\n<p>string1=\"Hotelspace\"<br />string2=\"Facilities\"<br />m=string1[-3:]+string1[3:-3]+string1[:3]<br />n=string2[-3:]+string2[3:-3]+string2[:3]<br />m+\"@\"+n</p>', '\'aceelspHot@iesilitFac\'', '\'iesilitFac@aceelspHot\'', '\'Facilities@Hotelspace\'', '\'Hotelspace@Facilities\'', 1, 'HARD', 'Programming', 'Syntactic Understanding', ''),
(34, 8, '<p>What is the output of the below piece of code?</p>\r\n<img src=\"queimg/q34.PNG\">', 'It will print the numbers from 1 to 5', 'It will print the numbers from 1 to 10', 'It will print the numbers from 1 to 9', 'It will print the numbers from 1 to 6', 1, 'EASY', 'Programming', 'Logical Thinking', ''),
(35, 8, '<p>What is the output of the below piece of code?</p>\r\n<img src=\"queimg/q35.PNG\">', '13 is maximum', '12 is maximum', 'Syntax error', 'No output', 3, 'MEDIUM', 'Programming', 'Syntactic Understanding', ''),
(36, 8, '<p>What is the output of the below piece of code?</p>\r\n<p><img src=\"queimg/q36.PNG\"></p>', 'Execution stops with Zero Division error', 'Execution stops with Type Error error', 'Execution stops with the average output as 30', 'No errors and no output', 3, 'HARD', 'Programming', 'Syntactic Understanding', ''),
(37, 8, '<p>Jaccard Similarity is a measure that quantifies how similar two vectors are. In the below dataset, can you calculate the similarity between the ratings given by persons A and B: sim(A, B)?</p>\r\n<p><img src=\"queimg/q37.PNG\" /></p>', '0.4', '0.1', '0.2', '0.6', 3, 'MEDIUM', 'Algebra', 'Matrices', ''),
(38, 8, '<p>Consider the ratings given by 4 people for some of the most popular movies of all-time. Which of the below options represents the relationship between similar users?</p>\r\n<p><img src=\"queimg/q27.PNG\" /></p>', 'SIM(A,B) > SIM(A,C)', 'SIM(A,C) < SIM(A,B)', 'SIM(A,B) = SIM(A,C)', 'none', 1, 'EASY', 'Algebra', 'Matrices', ''),
(39, 8, 'Distance from the point (-3,-4) to the line 5x+6y-10 is', '7.5', '8.3', '2.5', '6.2', 4, 'HARD', 'Algebra', 'Equations', ''),
(40, 8, 'What is the euclidean distance between two points (4,5) and (5,6)?', '1.414', '2.828', '1.732', '3.456', 1, 'EASY', 'Algebra', 'Equations', ''),
(41, 8, '<p>Which of the below distance measures was used to determine the distance between points (13,5,8) and (11,2,1) as 7 units? </p>\r\n<p><img src=\"queimg/q41.PNG\" /></p>', 'Euclidean Distance', 'Manhattan Distance', 'Chebyshev Distance', 'None of the above', 3, 'MEDIUM', 'Algebra', 'Equations', ''),
(42, 8, 'Mr.Divakar has two children. If the older child is a boy, what are the odds that the other child is also a boy?', '1:2', '2:1', '1:1', '0.5:0.75\r\n', 3, 'EASY', 'Statistics', 'Probability', ''),
(43, 8, 'Divakar received a total of 1500 emails, 950 emails are genuine and rest are spam. What is the probability of a spam email appearing in Divakar&rsquo;s account?', '0.63', '0.37', '0.5', '0.49', 2, 'EASY', 'Statistics', 'Probability', ''),
(44, 8, 'Below is a breakdown of the emails received by Divakar. What is the joint probability of word &lsquo;Jackpot&rsquo; appearing in spam emails?<img src=\"queimg/44.PNG\">', '13%', '14%', '27%', '15%', 1, 'MEDIUM', 'Statistics', 'Probability', ''),
(45, 8, 'What is the probability that an email is spam given that it contains the word &lsquo;Jackpot&rsquo;? Below is a breakdown of the emails.<img src=\"queimg/q45.PNG\">', '0.52', '0.48', '0.36', '0.24', 2, 'HARD', 'Statistics', 'Probability', ''),
(46, 8, 'There are 4 aces in a deck of cards. There are 52 outcomes in a deck of cards. There are 13 spades in a deck of cards. What is the probability of drawing an ace, replacing it and then drawing a spade?', '13/52', '4/52', '17/52', '1/52', 4, 'MEDIUM', 'Statistics', 'Probability', ''),
(47, 8, '<p>Identify the &lsquo;K&rsquo; value(the question mark value) from the below equation. A and &lsquo;v&rsquo; are matrices</p><p><img src=\"queimg/q47.PNG\"></p>', '4', '6', '8', '2\r\n', 1, 'HARD', 'Algebra', 'Matrices', ''),
(48, 8, 'You are currently visiting France and a french colleague asked you “What is the salary of an Indian?”. If you have the salary details of all the 1.3 billion Indians, which of the below measures will you cite as a response to your colleague\'s question', 'Mode salary of an Indian', 'Mean salary of an Indian', 'Median salary of an Indian', 'Highest salary of an Indian\r\n', 3, 'MEDIUM', 'Statistics', 'Central Tendency', ''),
(49, 8, 'You are presenting your annual hospital budget proposal for the upcoming year. You considered the last 12 months data. In the past year, there were two major epidemics in June and August. As a result, the number of patient admissions for the months of June and August are significantly higher than those of the rest of the months. If your goal is to make sure that the hospital has enough money to cater to the patients in the upcoming year, which of the below measures will you cite in your budget proposal? ', 'Median expenses incurred by the hospital in the last 12 months - I will not consider the months June and August as they seem to be outliers.', 'Mean expenses incurred by the hospital in the past 12 months - I will consider the months June and August even though they are outliers', 'Lowest monthly expense incurred by the hospital in the past 12 months and I multiply it by 12 to get the annual budget requirement', 'Most frequent monthly expense incurred by the hospital in the past 12 months and I multiply it by 12 to get the annual budget requirement.', 2, 'MEDIUM', 'Statistics', 'Central Tendency', ''),
(50, 8, '<p>What are the three values in the yhat vector from the below equation? &lsquo;.&rsquo; represents a dot product between two vectors.</p><p><img src=\"queimg/q50.PNG\"></p>', '1.2, 2.4, -1.8', '0.5, 1, 1.3', '-1.6,2.4,1.2', '1.8,1.2,-3.0', 1, 'HARD', 'Algebra', 'Matrices', ''),
(51, 8, '<p>Two matrices A and B are getting multiplied. A has 4 columns and 3 rows. B has 5 columns and 4 rows. What would be the order of the output matrix?</p>', '5 rows and 3 columns', '4 rows and 4 columns', '7 rows and 9 columns', '3 rows and 5 columns', 4, 'MEDIUM', 'Algebra', 'Matrices', ''),
(52, 8, '<p>Find the slope of the line 5x-5y=7</p>', '5', '07', '7/5', '1', 4, 'MEDIUM', 'Algebra', 'Equations', ''),
(53, 8, '<p>Solve the equation |- 2 x + 2| - 3 = -3. What is the value of x?</p>', '0', '-1 or -2', '1', '2', 3, 'MEDIUM', 'Algebra', 'Equations', ''),
(54, 8, 'What are the values of a,b,c,d from the below equation?\r\n<p><img src=\"queimg/q54.PNG\"></p>', 'a=5, b=4, c=3, d=5', 'a=4,b=5,c=5,d=3', 'a=3,b=4,c=5,d=5', 'a=5,b=3,c=4,d=5', 1, 'HARD', 'Algebra', 'Matrices', ''),
(55, 8, '<p>Apply the below decision tree for a fruit whose radius is 2.5 and color is &lsquo;Green&rsquo;. Can you tell which fruit is this?</p><p><img src=\"queimg/q11.PNG\"></p>', 'Apple', 'Lemon', 'Grape', 'Cannot say ', 1, 'MEDIUM', 'Algebra', 'Data Interpretation', ''),
(56, 8, '<p><strong><p>.Looking at the below decision tree for playing Golf, can you identify which of the conditions in the options is not correct?</p></strong></p>\r\n<br><img src=\"queimg/q56.PNG\">', 'IF outlook = sunny AND wind = False THEN play golf = No', 'IF outlook = rainy AND humidity = high THEN play golf = No', 'IF outlook = rainy AND humidity = Normal THEN play golf=Yes', 'IF outlook = sunny AND windy = True THEN play golf = No', 1, 'HARD', 'Algebra', 'Data Interpretation', ''),
(57, 8, '<p><strong>What would be the output of the below code?</strong></p><p><em>a=6.99</em><br /><em>b=7</em><br /><em>c=42</em><br /><em>print (not a == 7 and b == 7)</em></p>', 'True', 'False', 'No output', 'Error', 1, 'MEDIUM', 'Programming', 'Logical Thinking', ''),
(58, 8, '<p>What would be the output of the below code?</p>\r\n<p>list1=[\'sumana\',\'saru\',\'avinash\',\'abhi\',\'abhilash\']<br />print(sorted(list1,key=len,reverse=True))</p>', '[\'abhilash\', \'avinash\', \'sumana\', \'saru\', \'abhi\']', '[\'abhi\', \'abhilash ,\'avinash\', \'saru\', \'sumana\']', '[\'sumana\',\'saru\',\'avinash\',\'abhilash\',\'abhi\']', '[\'abhi, \'saru\', \'sumana\', \'avinash\', \'abhilash\']\r\n', 1, 'MEDIUM', 'Programming', 'Syntactic Understanding', ''),
(59, 8, '<p>What would be the output of the below code?<br />values = 1,2,3,4,5,7,6,3,2<br />y,x,z,d,c,b,a,w,h = values<br />print(c)</p>', 'Error', '2', '5', '(1,2,3,4,5,7,6,3,2)', 3, 'EASY', 'Programming', 'Syntactic Understanding', ''),
(60, 8, '<p>What would be the output of the below code?</p>\r\n<p><img src=\"queimg/q60.PNG\"></p>', '13', '-5', '2', 'Error', 3, 'HARD', 'Programming', 'Logical Thinking', ''),
(61, 8, '<p>.What would be the output of the below code? [Easy] [Programming]</p>\r\n<p>import numpy as np<br />test_score = np.array([[65,55,45,63],[28,92,88,65]] )<br />passing_score = test_score &gt; 65<br />print (test_score[passing_score])</p>', '[65 92 88 65]', '[92 88]', '[True False False False] [False True True True]', '[False False False False] [False True True False]\r\n', 2, 'EASY', 'Programming', 'Syntactic Understanding', ''),
(62, 8, '<p>In the below code, the value &lsquo;K&rsquo; is masking an actual numerical value. Can you look at the output and tell what the value of &lsquo;K&rsquo; should be? [Hard] [Programming]</p><p>import matplotlib.pyplot as plt</p><p># Pie chart, where the slices will be ordered and plotted counter-clockwise:<br />labels = &lsquo;Frogs&rsquo;, \'Hogs\', &rsquo;Dogs&rsquo;, &lsquo;Logs&rsquo;<br />sizes = [10, 30, 40, K]<br />explode = (0, 0, 0, 0) # only &lsquo;explode&rsquo; the 2nd slice (i.e. &lsquo;Hogs&rsquo;)<br />plt.pie(sizes, explode=explode, labels=labels, autopct=&lsquo;%1.1f%%&rsquo;,shadow=True, startangle=90)<br />plt.show()</p><p><img src=\"queimg/q62.PNG\"></p>', '15\r\n', '20', '16', '10', 4, 'HARD', 'Programming', 'Logical Thinking', ''),
(63, 8, '<p>What is the output of the below statement?</p>\r\n<p>&nbsp;</p>\r\n<p>[27*x for x in range(1,20) if x&lt;=5]</p>', '[27 27 27 27 27]', '[0 27 54 81 108 135]', '[27 54 81 108 135]', '[27 54 81 108 135 162]', 3, 'MEDIUM', 'Programming', 'Syntactic Understanding', ''),
(64, 8, '<p>What would be the output of the below code that reads the above text? [Hard] [Programming]</p><p>import re<br />match = re.search(r&rsquo;\\\\title\\s(\\d\\d\\d\\d)&rsquo;, text)<br />print (match)</p><img src=\"queimg/q64.PNG\">', '\\\\title 1996', '\\\\title 2123', '\\\\title 1996 \\\\title 2123', '\\\\title 19965', 1, 'HARD', 'Programming', 'Syntactic Understanding', ''),
(65, 8, '<p>What would be the output of the below code that reads the above text? [Hard] [Programming]</p><p>import re<br />matches = re.findall(r&rsquo;\\\\title\\s(\\d\\d\\d\\d)&rsquo;, text)<br />print (matches)<br />print (match)</p><img src=\"queimg/q64.PNG\">', '[19965]\r\n', '[19965 2123]', '[2123]', '[1996 2123]', 4, 'HARD', 'Programming', 'Syntactic Understanding', ''),
(66, 8, '<p>What is the output of the below code?<br />x = 50<br />def func(x):<br />x = 2<br />x=50.0<br />func(x)<br />print(x)</p>', '2', 'No output/Error', '50.0', '50', 4, 'MEDIUM', 'Programming', 'Logical Thinking', ''),
(67, 8, '<p>What would be the output of the below code?</p><p>def func(a, b=5, c=10):<br />print(&lsquo;a is&rsquo;, a, &lsquo;and b is&rsquo;, b, &lsquo;and c is&rsquo;, c)<br />func(25, c=24)</p>', 'a is 25 and b is 5 and c is 24', 'a is 0 and b is 25 and c is 24', 'a is 0 and b is 5 and c is 10', 'Error', 1, 'MEDIUM', 'Programming', 'Syntactic Understanding', '');

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `id` int(11) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `totalquestion` int(11) NOT NULL,
  `trueanswer` int(11) NOT NULL,
  `wronganswer` int(11) NOT NULL,
  `totaleasy` int(11) NOT NULL,
  `totalmedium` int(11) NOT NULL,
  `totalhard` int(11) NOT NULL,
  `totalstat` int(11) NOT NULL,
  `totalalg` int(11) NOT NULL,
  `totalprog` int(11) NOT NULL,
  `score` int(3) DEFAULT NULL,
  `totalpoints` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `test_date` datetime DEFAULT NULL,
  `AIquotient` varchar(50) NOT NULL,
  `test_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`id`, `login`, `test_id`, `totalquestion`, `trueanswer`, `wronganswer`, `totaleasy`, `totalmedium`, `totalhard`, `totalstat`, `totalalg`, `totalprog`, `score`, `totalpoints`, `end_time`, `test_date`, `AIquotient`, `test_type`) VALUES
(1, '1', 8, 20, 3, 17, 1, 2, 0, 3, 0, 0, 3, 50, 1556109344, '2019-04-24 16:45:44', '166.666666667', '2');

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, '=> VB');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'VB Basic Test', '3'),
(9, 1, 'Essentials of VB', '5'),
(10, 1, 'Creating User Services', '5'),
(11, 7, 'function', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `optingmass` int(1) NOT NULL DEFAULT '0',
  `optincareer` int(1) NOT NULL DEFAULT '0',
  `optingmat` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`, `optingmass`, `optincareer`, `optingmat`) VALUES
(1, NULL, '123456', 'Anuradha Thota', NULL, NULL, NULL, 'siddharth.sayinedi@gmail.com', 1, 1, 1),
(2, NULL, NULL, NULL, NULL, NULL, NULL, 'xyaa@gmail.com', 0, 0, 0),
(3, NULL, '123456', 'Anuradha Thota', NULL, NULL, NULL, 'yramyayegu@gmail.com', 1, 1, 1),
(4, NULL, NULL, NULL, NULL, NULL, NULL, 'ftftftft@gmil.com', 0, 0, 0),
(5, NULL, '123', 'Anuradha Thota', NULL, NULL, NULL, 'siddharth.sayine@gmail.com', 1, 1, 1),
(6, NULL, NULL, NULL, NULL, NULL, NULL, 'yddgygy@gmail.com', 0, 0, 0),
(7, NULL, NULL, NULL, NULL, NULL, NULL, 'eeeeeeeeeeee@gmail.com', 0, 0, 0),
(8, NULL, NULL, NULL, NULL, NULL, NULL, 'ggggggggg@g.com', 0, 0, 0),
(9, NULL, NULL, NULL, NULL, NULL, NULL, 'siddharthe.sayinedi@gmail.com', 0, 0, 0),
(10, NULL, NULL, NULL, NULL, NULL, NULL, 'abc@gmail.com', 0, 0, 0),
(11, NULL, '123', 'Anuradha Thota', NULL, NULL, NULL, 'abcd@gmail.com', 1, 1, 1),
(12, NULL, '123', 'Anuradha Thota', NULL, NULL, NULL, 'the@gmail.com', 1, 1, 1),
(13, NULL, NULL, NULL, NULL, NULL, NULL, 'abcd@abcd.com', 0, 0, 0),
(14, NULL, NULL, NULL, NULL, NULL, NULL, 'yuip@yuip.com', 0, 0, 0),
(15, NULL, NULL, NULL, NULL, NULL, NULL, 'yramya99@yahoo.in', 0, 0, 0),
(16, NULL, NULL, NULL, NULL, NULL, NULL, 'siddhar.sayinedi@gmail.com', 0, 0, 0),
(17, NULL, '123456', 'siva charan', NULL, NULL, NULL, 'siva@gmail.com', 1, 1, 1),
(18, NULL, 'Florida01', 'leena immmanuel', NULL, NULL, NULL, 'leena.immanuel@cognizant.com', 1, 1, 1),
(19, NULL, NULL, NULL, NULL, NULL, NULL, 'siv@gmail.com', 0, 0, 0),
(20, NULL, '123456', 'Anuradha Thota', NULL, NULL, NULL, 'sidth.sayinedi@gmail.com', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `id` int(11) NOT NULL,
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_id` int(11) NOT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`id`, `sess_id`, `test_id`, `que_id`, `true_ans`, `your_ans`) VALUES
(1, '1', 8, 4, 2, 2),
(2, '1', 8, 7, 4, 3),
(3, '1', 8, 9, 3, 2),
(4, '1', 8, 1, 3, 3),
(5, '1', 8, 6, 4, 3),
(6, '1', 8, 8, 3, 1),
(7, '1', 8, 2, 3, 1),
(8, '1', 8, 21, 3, 2),
(9, '1', 8, 10, 4, 2),
(10, '1', 8, 5, 4, 2),
(11, '1', 8, 26, 4, 1),
(12, '1', 8, 35, 3, 1),
(13, '1', 8, 13, 3, 3),
(14, '1', 8, 22, 1, 3),
(15, '1', 8, 31, 4, 3),
(16, '1', 8, 17, 4, 1),
(17, '1', 8, 24, 4, 1),
(18, '1', 8, 32, 3, 1),
(19, '1', 8, 42, 3, 2),
(20, '1', 8, 27, 3, 1);

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
  `datetime` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `login` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `email`, `mobile`, `company`, `timetaken`, `attempted_qu`, `unattempted_qu`, `correct`, `wrong`, `statistics`, `dataanalysis`, `programing`, `datetime`, `status`, `login`) VALUES
(1, '', '', '', '', '', '30', '0', '13', '17', 4, 6, 3, '2019-04-24 16:04:15', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`, `college`, `email`, `mob`, `password`, `status`, `level`) VALUES
(1, 'test1', '', '', 'test1', 0, 'test1', 1, 'programmer'),
(2, 'test2', '', '', 'test2', 0, 'test2', 0, 'programmer'),
(3, 'test3', '', '', 'test3', 0, 'test3', 0, 'programmer'),
(4, 'test4', '', '', 'test4', 0, 'test4', 0, 'programmer'),
(5, 'test5', '', '', 'test5', 0, 'test5', 0, 'programmer'),
(7, 'test6', '', '', 'test6', 0, 'test6', 1, 'manager'),
(8, 'test7', '', '', 'test7', 0, 'test7', 0, 'manager'),
(9, 'test8', '', '', 'test8', 0, 'test8', 0, 'manager'),
(10, 'test9', '', '', 'test9', 0, 'test9', 0, 'manager'),
(11, 'test10', '', '', 'test10', 0, 'test10', 0, 'manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_result`
--
ALTER TABLE `mst_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `mst_useranswer`
--
ALTER TABLE `mst_useranswer`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `mst_result`
--
ALTER TABLE `mst_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mst_useranswer`
--
ALTER TABLE `mst_useranswer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
