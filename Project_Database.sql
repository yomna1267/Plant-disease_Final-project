CREATE DATABASE  IF NOT EXISTS `javafx` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `javafx`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: javafx
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `iddisease` int(11) NOT NULL AUTO_INCREMENT,
  `symptom1` varchar(155) DEFAULT NULL,
  `symptom2` varchar(155) DEFAULT NULL,
  `symptom3` varchar(155) DEFAULT NULL,
  `disease_name` varchar(155) DEFAULT NULL,
  `about` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`iddisease`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (1,'Pustules at the base of the stem of the plant.	Pustules at the base of the stem of the plant.','Pustules on the leaves.','Wounds located on stems and leaves.','Charbon commun.','No thresholds have been established. There are no fungicides available to control common smut.'),(2,'Black stripes on the lower part of the stem of the plant.','withered leaves.','Dark brown color on the inner tissue of the stem.','Stalk rot.','Crop rotation reduces Diplodia stalk and ear rot. Soybeans are a good alternative crop in a rotation programme, followed by groundnuts, wheat and dry beans. Crop rotation reduces inoculum levels in two ways.'),(3,'They turned Yellow.','Yes.','The branches are about to fall off.','Cotton Root Rot.','Prune the tree or plant back, working ammonium sulfate into a trench built around the tree and water thoroughly. Only 2 treatments may be applied per season and it isn’t a cure; only some plants will come out of the wilt and survive.'),(4,'They are drooping off','No.','Black lesions on stem and branches.','Bacterial blight.','Delint the cotton seeds with concentrated sulphuric acid at 100ml/kg of seed, and treat the acid delinted seeds with Carboxin or Oxycarboxin at 2 g/kg or soak the seeds in 1000 ppm Streptomycin sulphate overnight.'),(5,'The leaves begin to yellow and wilt.','A streaky brown discolouration of the stem an inch.','Inside the fruit is brown.','Potato Brown rot.','Disinfecting knives and cutting tools is one of the best ways to treat potato bacterial diseases.'),(6,'The lesions change in the form of small brown spots.','Brown spots are formed on the surface of the fruit.','Outside the fruit is brown.','Common scab.','You need to maintain soil moisture levels for 2 to 6 weeks after tuberculosis, as this will prevent infection.'),(7,'A light fine film may form on the spots from the underside of the leaf.','Pale green to bright yellow spots on the upper surface of the fruits.','The lesions start out as small brown spots.','Powdery mildew','Name of the pesticide Concentration / liter Safety period today, Offer 100 - 75 cm3 per dunam for 3 days.'),(8,'The tissue surrounding the spot becomes yellow, and when the spots are many, the whole leaf turns yellow.','Infection begins on older fruits as small, brown, blackish spots.','The fruit may be exposed to sunstroke.','Early blight','Name of the pesticide Concentration / liter Safety period today, Intracol 70% 150-200g for 7 days.');
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idlogin`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'yomna1','123','yomna@gmail.com');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plant`
--

DROP TABLE IF EXISTS `plant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plant` (
  `idplant` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `q1` varchar(155) DEFAULT NULL,
  `q2` varchar(155) DEFAULT NULL,
  `q3` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`idplant`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `q1_UNIQUE` (`q1`),
  UNIQUE KEY `q2_UNIQUE` (`q2`),
  UNIQUE KEY `q3_UNIQUE` (`q3`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plant`
--

LOCK TABLES `plant` WRITE;
/*!40000 ALTER TABLE `plant` DISABLE KEYS */;
INSERT INTO `plant` VALUES (1,'corn','Choose the state of the stem?','Choose the state of the leaves?','Is there anything else that characterizes the disease?'),(2,'tomato','What happens to the leaves?','Which statement describe the plant ?','What happens after symptoms appear on the fruit?'),(3,'cotton','Which change appears on the leaves?','Root bark is decayed and brownish?','If there’s any change stem and branches, what is it ?'),(4,'potato','What happens to the leaves of a plant?','Which statement describe the plant?','Is there anything else?');
/*!40000 ALTER TABLE `plant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question1`
--

DROP TABLE IF EXISTS `question1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question1` (
  `idquestion 1` int(11) NOT NULL AUTO_INCREMENT,
  `q1` varchar(155) DEFAULT NULL,
  `ans1` varchar(155) DEFAULT NULL,
  `ans2` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`idquestion 1`),
  UNIQUE KEY `q1_UNIQUE` (`q1`),
  CONSTRAINT `q1` FOREIGN KEY (`q1`) REFERENCES `plant` (`q1`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question1`
--

LOCK TABLES `question1` WRITE;
/*!40000 ALTER TABLE `question1` DISABLE KEYS */;
INSERT INTO `question1` VALUES (1,'Choose the state of the stem?','Black stripes on the lower part of the stem of the plant.','Pustules at the base of the stem of the plant.	Pustules at the base of the stem of the plant.'),(2,'Which change appears on the leaves?','They turned Yellow.','They are drooping off'),(3,'What happens to the leaves of a plant?','The leaves begin to yellow and wilt.','The lesions change in the form of small brown spots.'),(4,'What happens to the leaves?','A light fine film may form on the spots from the underside of the leaf.','The tissue surrounding the spot becomes yellow, and when the spots are many, the whole leaf turns yellow.');
/*!40000 ALTER TABLE `question1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question2`
--

DROP TABLE IF EXISTS `question2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question2` (
  `idquestion2` int(11) NOT NULL AUTO_INCREMENT,
  `q2` varchar(155) DEFAULT NULL,
  `ans1` varchar(155) DEFAULT NULL,
  `ans2` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`idquestion2`),
  UNIQUE KEY `question2col_UNIQUE` (`q2`),
  CONSTRAINT `q2` FOREIGN KEY (`q2`) REFERENCES `plant` (`q2`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question2`
--

LOCK TABLES `question2` WRITE;
/*!40000 ALTER TABLE `question2` DISABLE KEYS */;
INSERT INTO `question2` VALUES (1,'Choose the state of the leaves?','withered leaves.','Pustules on the leaves.'),(2,'Root bark is decayed and brownish?','Yes.','No.'),(3,'Which statement describe the plant?','A streaky brown discolouration of the stem an inch.','Brown spots are formed on the surface of the fruit.'),(4,'Which statement describe the plant ?','Pale green to bright yellow spots on the upper surface of the fruits.','Infection begins on older fruits as small, brown, blackish spots.');
/*!40000 ALTER TABLE `question2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question3`
--

DROP TABLE IF EXISTS `question3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question3` (
  `idquestion3` int(11) NOT NULL AUTO_INCREMENT,
  `q3` varchar(155) DEFAULT NULL,
  `ans1` varchar(155) DEFAULT NULL,
  `ans2` varchar(155) DEFAULT NULL,
  PRIMARY KEY (`idquestion3`),
  UNIQUE KEY `question3col_UNIQUE` (`q3`),
  CONSTRAINT `q3` FOREIGN KEY (`q3`) REFERENCES `plant` (`q3`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question3`
--

LOCK TABLES `question3` WRITE;
/*!40000 ALTER TABLE `question3` DISABLE KEYS */;
INSERT INTO `question3` VALUES (1,'Is there anything else that characterizes the disease?','Wounds located on stems and leaves.','Dark brown color on the inner tissue of the stem.'),(2,'If there’s any change stem and branches, what is it ?','The branches are about to fall off.','Black lesions on stem and branches.'),(3,'Is there anything else?','Inside the fruit is brown.','Outside the fruit is brown.'),(4,'What happens after symptoms appear on the fruit?','The lesions start out as small brown spots.','The fruit may be exposed to sunstroke.');
/*!40000 ALTER TABLE `question3` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-25  0:13:03
