-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: fundmyproject
-- ------------------------------------------------------
-- Server version	5.5.35-0+wheezy1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Message` text NOT NULL,
  `Sender` int(11) NOT NULL,
  `Reciever` int(11) NOT NULL,
  `Status` enum('Readed','New') NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Sender` (`Sender`),
  KEY `Reciever` (`Reciever`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`Sender`) REFERENCES `user` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`Reciever`) REFERENCES `user` (`Id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `EstimateBudget` float NOT NULL,
  `CurrentBudget` float NOT NULL DEFAULT '0',
  `Deadline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Remains` int(11) NOT NULL,
  `Owner` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Owner` (`Owner`),
  CONSTRAINT `project_ibfk_2` FOREIGN KEY (`Owner`) REFERENCES `user` (`Id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Duolingo','Duolingo is changing the way people learn languages.\n\n• It\'s free, for real. No fees, no ads, no gimmicks. A college-quality education without the price tag.\n\n• It\'s fun. Lose hearts for answering incorrectly, advance by completing bite-sized lessons, and track your progress with shiny achievements.\n\n• It\'s constantly improving. We bust out the lab coats regularly and measure how well you learn on Duolingo. Your learning experience only gets better over time.',300,0,'2014-01-06 00:02:19',0,1),(2,'Charlie Brown','Charlie Brown’s All Stars! magically springs to life in this charming interactive storybook designed for your Android tablet and smartphone. Peanuts fans will delight in sharing this classic story of team spirit and friendship with a whole new generation of underdogs! ',450,0,'2014-01-06 00:02:24',5,2),(3,'Diner Dash','Build your restaurant empire in this chart-topping game of speed and savvy. Help Flo, a spunky entrepreneur, grow her signature diner from a greasy spoon to a five-star joint. Delight eager customers by seating, serving, and clearing tables quickly to earn big tips. Soothe impatient guests before they get angry and skip out on the bill. Tap and slide your way to the top of the restaurant ladder in this worldwide hit game!',450,0,'2014-01-05 23:48:22',5,2),(4,'Angry Birds','In addition to the Mighty Eagle, Angry Birds now has power-ups! Boost your birds’ abilities and three-star levels to unlock secret content! Angry Birds now has the following amazing power-ups: Sling Scope for laser targeting, King Sling for maximum flinging power, Super Seeds to supersize your birds, and Birdquake to shake pigs’ defenses to the ground!',500,0,'2014-01-05 23:48:57',1,3),(5,'Draw Something 2™','Create cool effects with dozens of new tools, patterns, stamps and colors - allowing you to transform even the simplest drawings into masterpieces.',2131,0,'2014-01-05 23:49:40',0,1),(6,'\nSoundwave\n','Instantly see what songs are playing at any location (country, city, street, building) simply by drawing a circle over any location of your choosing with your finger to see in real time what songs are playing and the top played songs for that area. ',333,0,'2014-01-05 23:50:15',0,2),(7,'Combo Crew','In a world where a fist to the face is a perfectly viable solution, Mr. Boss has it all. Now he wants to break the greatest fighters ever! Trapped in his giant tower, you must fight your way to the top to take him down! Inspired by the best brawlers of the arcade era, Combo Crew is pure rumble with no virtual buttons to mess up your moves. ',890,0,'2014-01-05 23:51:04',8,1),(8,'Ticket to Ride','Ticket to Ride® for Android is a cross-country train adventure playable online, in which you will collect and play train cards to claim railway routes connecting cities listed on Destination Tickets you will receive at the start of each game.',21345,0,'2014-01-05 23:51:35',214,1),(9,'Beauty and the Beast','The bewitching tale of beautiful Belle, who must leave behind her father and sisters and live with the Beast in his enchanted castle. Can she really find happiness and her own true love?',1234,0,'2014-01-05 23:52:00',13,1),(13,'Fireball SE','Smooth Controls, Explosive Action, and Thrilling Escapes!\n\nFireball: Special Edition is an addictive and challenging, arcade survival game. Dodge swarms of enemies and lead them to their destruction across 3 modes and 2 difficulty levels.',231,0,'2014-01-05 23:52:24',3,3),(14,'Engadget Mini','Engadget Mini is a real-time stream of everything important, interesting, and fun in the world of consumer technology, with instant updates on the latest product news and reviews, as well as a mix of the best photos, videos, and posts from across the social web.',1200,400,'2014-01-06 00:11:11',8,5);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shareholders`
--

DROP TABLE IF EXISTS `shareholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shareholders` (
  `User_Id` int(11) NOT NULL,
  `Project_Id` int(11) NOT NULL,
  `Contribute` float NOT NULL,
  `Status` varchar(30) NOT NULL,
  PRIMARY KEY (`User_Id`,`Project_Id`),
  KEY `Project_Id` (`Project_Id`),
  CONSTRAINT `shareholders_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `user` (`Id`) ON UPDATE CASCADE,
  CONSTRAINT `shareholders_ibfk_2` FOREIGN KEY (`Project_Id`) REFERENCES `project` (`Id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shareholders`
--

LOCK TABLES `shareholders` WRITE;
/*!40000 ALTER TABLE `shareholders` DISABLE KEYS */;
INSERT INTO `shareholders` VALUES (6,3,300,'waiting'),(6,14,400,'accepted');
/*!40000 ALTER TABLE `shareholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Avatar` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user1','user1','user1.png'),(2,'user2','user2','user2.png'),(3,'user3','user3','user3.png'),(4,'user4','user4','user4.png'),(5,'usuario1','usuario1','user5.png'),(6,'usuario2','usuario2','user6.png'),(7,'usuario3','usuario3','user7.png');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-01-03 21:30:19
