-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: mystery_blog
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(30) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title_UN` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES
(1,'Healthy Snacks','Discover a range of delicious and nutritious snacks that will satisfy your cravings while keeping you on track with your health goals. From homemade energy balls to veggie chips, we\'ve got you covered with these guilt-free treats.','2020-03-14'),
(2,'DIY Home Decor','Get inspired to transform your living space with these easy do-it-yourself home decor ideas. From handmade wall art to repurposed furniture, learn how to add a personal touch to your home without breaking the bank.','2021-06-04'),
(3,'Travel Tips','Planning your next adventure? Check out these travel tips for a smooth and unforgettable journey. From packing hacks to budget-friendly accommodations, make the most of your trip with these handy suggestions.','2022-07-08'),
(4,'Productivity Hacks','Boost your productivity with these simple yet effective hacks. From time management techniques to organization tips, learn how to maximize your efficiency and accomplish more in less time.','2023-01-01'),
(5,'Beginner\'s Guide','New to a certain subject or hobby? This beginner\'s guide has got you covered. Whether it\'s photography, cooking, or coding, get started on the right foot with these easy-to-follow tips and tricks.','2023-02-12'),
(6,'Mindfulness Tips','Discover the power of mindfulness with these practical tips. Learn how to be present in the moment, reduce stress, and enhance your overall well-being. Start incorporating mindfulness into your daily life today.','2019-10-15'),
(7,'Fashion Essentials','Stay stylish with these must-have fashion essentials. From timeless wardrobe staples to trendy accessories, build a versatile and fashionable closet that reflects your personal style.','2020-01-29'),
(8,'Budget Travel','Explore the world on a budget with these money-saving travel tips. From finding cheap flights to affordable accommodations, learn how to make your travel dreams a reality without breaking the bank.','2022-05-05'),
(9,'Digital Marketing','Dive into the world of digital marketing with these valuable insights and strategies. Whether you\'re a beginner or an experienced professional, stay ahead of the game with these expert tips.','2023-05-29'),
(10,'Self-Care Tips','Prioritize self-care with these practical and rejuvenating tips. From creating a relaxing spa day at home to practicing mindfulness, learn how to take care of yourself and nurture your well-being.','2021-11-24');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_view`
--

DROP TABLE IF EXISTS `post_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_view` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_view_FK` (`post_id`),
  CONSTRAINT `post_view_FK` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_view`
--

LOCK TABLES `post_view` WRITE;
/*!40000 ALTER TABLE `post_view` DISABLE KEYS */;
INSERT INTO `post_view` VALUES
(1,3,'2019-02-02'),
(2,3,'2021-12-04'),
(3,7,'2019-10-03'),
(4,1,'2020-11-14'),
(5,6,'2020-11-29'),
(6,1,'2021-03-13'),
(7,6,'2022-03-05'),
(8,3,'2021-07-12'),
(9,1,'2018-12-25'),
(10,4,'2022-06-01'),
(11,6,'2019-12-06'),
(12,9,'2022-03-20'),
(13,4,'2022-04-06'),
(14,4,'2022-10-01'),
(15,3,'2019-10-18'),
(16,3,'2022-03-25'),
(17,1,'2020-04-26'),
(18,2,'2019-02-14'),
(19,10,'2022-06-02'),
(20,10,'2018-04-11'),
(21,5,'2020-10-10'),
(22,1,'2018-04-27'),
(23,10,'2019-08-06'),
(24,1,'2018-07-06'),
(25,10,'2021-02-24'),
(26,8,'2019-12-28'),
(27,6,'2020-12-13'),
(28,9,'2019-12-26'),
(29,8,'2020-08-17'),
(30,2,'2018-01-06'),
(31,3,'2018-12-04'),
(32,7,'2020-12-23'),
(33,8,'2021-12-02'),
(34,1,'2018-08-09'),
(35,10,'2020-07-14'),
(36,2,'2018-09-21'),
(37,5,'2018-12-30'),
(38,9,'2020-06-02'),
(39,5,'2021-11-24'),
(40,3,'2019-10-08'),
(41,2,'2019-10-23'),
(42,3,'2021-12-02'),
(43,2,'2018-01-28'),
(44,2,'2022-01-30'),
(45,7,'2018-11-29'),
(46,7,'2018-10-16'),
(47,7,'2018-06-11'),
(48,7,'2022-04-22'),
(49,1,'2021-12-07'),
(50,1,'2021-08-29'),
(51,3,'2022-12-21'),
(52,1,'2022-05-09'),
(53,9,'2022-01-13'),
(54,4,'2020-07-21'),
(55,4,'2022-01-11'),
(56,9,'2022-04-16'),
(57,8,'2022-06-30'),
(58,6,'2021-05-18'),
(59,2,'2018-03-15'),
(60,9,'2022-12-19'),
(61,3,'2018-12-26'),
(62,2,'2019-12-05'),
(63,4,'2022-09-27'),
(64,9,'2019-02-05'),
(65,9,'2021-07-28'),
(66,10,'2021-06-27'),
(67,3,'2020-03-20'),
(68,2,'2020-11-01'),
(69,1,'2018-06-01'),
(70,5,'2021-09-26'),
(71,10,'2019-09-04'),
(72,1,'2018-09-21'),
(73,2,'2022-04-30'),
(74,9,'2021-06-19'),
(75,9,'2021-09-16'),
(76,3,'2022-08-19'),
(77,6,'2019-10-11'),
(78,7,'2020-01-27'),
(79,6,'2019-02-27'),
(80,7,'2019-11-05'),
(81,6,'2018-08-30'),
(82,9,'2021-10-08'),
(83,6,'2021-06-20'),
(84,4,'2020-09-29'),
(85,4,'2018-07-23'),
(86,4,'2022-12-04'),
(87,7,'2019-11-20'),
(88,10,'2018-09-22'),
(89,8,'2020-07-25'),
(90,10,'2021-06-25'),
(91,3,'2022-02-04'),
(92,3,'2022-02-23'),
(93,10,'2018-08-14'),
(94,10,'2018-07-14'),
(95,6,'2022-01-07'),
(96,7,'2022-11-11'),
(97,5,'2018-03-27'),
(98,4,'2021-07-14'),
(99,1,'2022-04-26'),
(100,1,'2022-06-17'),
(101,10,'2020-01-15');
/*!40000 ALTER TABLE `post_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mystery_blog'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `five_most_recent_post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `five_most_recent_post`()
BEGIN
	SELECT title, content FROM post ORDER BY date_created DESC LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `three_most_viewed_post` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `three_most_viewed_post`()
BEGIN
	SELECT p.title FROM post p INNER JOIN post_view pv ON p.id = pv.post_id GROUP BY p.id ORDER BY COUNT(pv.id) DESC LIMIT 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 17:40:33
