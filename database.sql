CREATE DATABASE  IF NOT EXISTS `codejavadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `codejavadb`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: codejavadb
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `restaurant_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`favorite_id`),
  UNIQUE KEY `uq_user_restaurant` (`user_id`,`restaurant_id`),
  KEY `idx_restaurant_id` (`restaurant_id`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`RestaurantId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (25,18,3,'2025-12-27 02:51:46'),(26,18,7,'2025-12-27 02:51:46'),(27,18,12,'2025-12-27 02:51:46'),(28,18,15,'2025-12-27 02:51:46'),(29,19,1,'2025-12-27 02:51:46'),(30,19,5,'2025-12-27 02:51:46'),(31,19,9,'2025-12-27 02:51:46'),(32,19,11,'2025-12-27 02:51:46'),(33,19,14,'2025-12-27 02:51:46'),(34,20,2,'2025-12-27 02:51:46'),(35,20,4,'2025-12-27 02:51:46'),(36,20,8,'2025-12-27 02:51:46'),(37,20,10,'2025-12-27 02:51:46'),(38,20,13,'2025-12-27 02:51:46'),(39,21,6,'2025-12-27 02:51:46'),(40,21,8,'2025-12-27 02:51:46'),(41,21,12,'2025-12-27 02:51:46'),(42,21,15,'2025-12-27 02:51:46'),(53,18,1,NULL);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LocationId` varchar(255) DEFAULT NULL,
  `RoadNumberAndStreet` varchar(255) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `location_id` varchar(10) NOT NULL,
  `road_number_and_street` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES ('001','No.07,LuoJiaShan Road','Mei Yuan',30.5399,114.37,'',''),('002','No.3,XingHu Road','Xin Bu',30.5373,114.37,'',''),('003','No.81,LuoNan Road','Dong Hu',30.5356,114.366,'',''),('004','No.1-2010,FengYuan Road','Feng Yuan',30.5405,114.371,'',''),('005','No.107,HongShan Road','Dong Hu',30.539,114.369,'',''),('006','No.1-2018,FengYuan Road','Feng Yuan',30.5361,114.369,'',''),('007','No.06-01,LuoNan Road','Xin Bu',30.5371,114.369,'',''),('008','No.299,Bayi Road','Feng Yuan',30.5343,114.368,'',''),('009','No.300,Bayi Road','Feng Yuan',30.5371,114.369,'',''),('010','No.06-2014,Bayi Road','Mei Yuan',30.5363,114.368,'',''),('011','No.01-03,LuoNan Road','Gong Xue Bu',30.5407,114.369,'',''),('012','No.12-01,LuoNan Road','Dong Hu',30.5359,114.365,'',''),('013','No.11-09,LuoNan Road','Xin Bu',30.538,114.37,'',''),('014','No.113,GuangDuDun Road','Gong Xue Bu',30.5349,114.373,'',''),('015','No.25,HongShan Road','Dong Hu',30.5374,114.369,'','');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu1`
--

DROP TABLE IF EXISTS `menu1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu1` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Picture` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu1`
--

LOCK TABLES `menu1` WRITE;
/*!40000 ALTER TABLE `menu1` DISABLE KEYS */;
INSERT INTO `menu1` VALUES (1,'Japanese Chicken Curry Rice',20,'images/menu1/1.jpg'),(2,'Angus Beef Rice',26,'images/menu1/2.jpg'),(3,'Cha Siew Rice',24.8,'images/menu1/3.jpg'),(4,'Teriyaki Chicken Rice',25.8,'images/menu1/4.jpg'),(5,'Pork Leg Rice',26.8,'images/menu1/5.jpg');
/*!40000 ALTER TABLE `menu1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu10`
--

DROP TABLE IF EXISTS `menu10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu10` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu10`
--

LOCK TABLES `menu10` WRITE;
/*!40000 ALTER TABLE `menu10` DISABLE KEYS */;
INSERT INTO `menu10` VALUES (1,'Brown Sugar Pearl Milk Tea',19),(2,'Matcha Mochi Coconut Latte',21),(3,'Lime Lemon Juice',6),(4,'Jasmine Milk Tea',12),(5,'Good Coconut Latte',15);
/*!40000 ALTER TABLE `menu10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu11`
--

DROP TABLE IF EXISTS `menu11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu11` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu11`
--

LOCK TABLES `menu11` WRITE;
/*!40000 ALTER TABLE `menu11` DISABLE KEYS */;
INSERT INTO `menu11` VALUES (1,'Hot Dry Noodle',12.5),(2,'Fish and Meat Slice Rice',16.99),(3,'Red Oil Beef Noodle',20.8),(4,'Chong Qing Noodle',12.8),(5,'Mala Hot Dry Noodle',9.5);
/*!40000 ALTER TABLE `menu11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu12`
--

DROP TABLE IF EXISTS `menu12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu12` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu12`
--

LOCK TABLES `menu12` WRITE;
/*!40000 ALTER TABLE `menu12` DISABLE KEYS */;
INSERT INTO `menu12` VALUES (1,'Caesar Chicken Salad',24),(2,'Orange Festival Salad',15),(3,'Chicken Noodle',20),(4,'Tuna Salad',24),(5,'Shrimp Festival Salad',27);
/*!40000 ALTER TABLE `menu12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu13`
--

DROP TABLE IF EXISTS `menu13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu13` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu13`
--

LOCK TABLES `menu13` WRITE;
/*!40000 ALTER TABLE `menu13` DISABLE KEYS */;
INSERT INTO `menu13` VALUES (1,'Buo Ya Zue Xuan',17),(2,'Da Hong Pao',19),(3,'Qing Xiang Nuo Shan',15),(4,'Hua Tian Wu Long',17),(5,'Gui Wu Lan Xiang',17);
/*!40000 ALTER TABLE `menu13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu14`
--

DROP TABLE IF EXISTS `menu14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu14` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu14`
--

LOCK TABLES `menu14` WRITE;
/*!40000 ALTER TABLE `menu14` DISABLE KEYS */;
INSERT INTO `menu14` VALUES (1,'Chicken Kebab',23.5),(2,'Chicken Kebab Mega Box',38.88),(3,'Chicken Kebab Rice',28.88),(4,'Lamb Shank Rice',35),(5,'Chicken Kebab Roll',25);
/*!40000 ALTER TABLE `menu14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu15`
--

DROP TABLE IF EXISTS `menu15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu15` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu15`
--

LOCK TABLES `menu15` WRITE;
/*!40000 ALTER TABLE `menu15` DISABLE KEYS */;
INSERT INTO `menu15` VALUES (1,'Beef Guilin Noodle',18.5),(2,'Spicy Pork Lungs Noodle',23.99),(3,'Spicy Beef Wide Noodle',19.99),(4,'Luo Shi Noodle',19.99),(5,'Zha Jiang Noodle',17);
/*!40000 ALTER TABLE `menu15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu2`
--

DROP TABLE IF EXISTS `menu2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu2` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu2`
--

LOCK TABLES `menu2` WRITE;
/*!40000 ALTER TABLE `menu2` DISABLE KEYS */;
INSERT INTO `menu2` VALUES (1,'Coconut Milk Latte',12,'images/menu2/1.jpg'),(2,'Jasmine tea latte',14.5,'images/menu2/2.jpg'),(3,'Butter Latte',18,'images/menu2/3.jpg'),(4,'Orange C Americano',16.5,'images/menu2/4.jpg'),(5,'Jasmine Tea',10,'images/menu2/5.jpg');
/*!40000 ALTER TABLE `menu2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu3`
--

DROP TABLE IF EXISTS `menu3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu3` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu3`
--

LOCK TABLES `menu3` WRITE;
/*!40000 ALTER TABLE `menu3` DISABLE KEYS */;
INSERT INTO `menu3` VALUES (1,'Grill Chicken Rice',18.5),(2,'Spicy Grill Chicken Rice',20.5),(3,'Honey Grill Chicken Rice',20.5),(4,'BBQ Grill Chicken Rice',20.5),(5,'Sweet and Sour Grill Chicken Rice',20.5);
/*!40000 ALTER TABLE `menu3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu4`
--

DROP TABLE IF EXISTS `menu4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu4` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu4`
--

LOCK TABLES `menu4` WRITE;
/*!40000 ALTER TABLE `menu4` DISABLE KEYS */;
INSERT INTO `menu4` VALUES (1,'Lemon Juice',5),(2,'Jasmine Milk Tea',7),(3,'Pearl Milk Tea',7),(4,'Oreo Milk Tea',7),(5,'Peach Apple Juice',8);
/*!40000 ALTER TABLE `menu4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu5`
--

DROP TABLE IF EXISTS `menu5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu5` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu5`
--

LOCK TABLES `menu5` WRITE;
/*!40000 ALTER TABLE `menu5` DISABLE KEYS */;
INSERT INTO `menu5` VALUES (1,'Cheese Fried Chicken',30),(2,'Sweet And Sour Fried Chicken',28),(3,'Spicy Fried Chicken',28),(4,'Original Fried Chicken',26),(5,'Garlic And Soy Sauce Fried Chicken',28);
/*!40000 ALTER TABLE `menu5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu6`
--

DROP TABLE IF EXISTS `menu6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu6` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu6`
--

LOCK TABLES `menu6` WRITE;
/*!40000 ALTER TABLE `menu6` DISABLE KEYS */;
INSERT INTO `menu6` VALUES (1,'Chicken Burger',14),(2,'Cheese Burger',17),(3,'Grill Whole Chicken',25),(4,'Mexican Chicken Roll',17),(5,'Fried Chicken',12);
/*!40000 ALTER TABLE `menu6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu7`
--

DROP TABLE IF EXISTS `menu7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu7` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu7`
--

LOCK TABLES `menu7` WRITE;
/*!40000 ALTER TABLE `menu7` DISABLE KEYS */;
INSERT INTO `menu7` VALUES (1,'Rose Latte',20),(2,'Tiramisu Latte',22),(3,'Hazelnut Latte',20),(4,'Sea Salt Latte',22),(5,'Americano',16);
/*!40000 ALTER TABLE `menu7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu8`
--

DROP TABLE IF EXISTS `menu8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu8` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu8`
--

LOCK TABLES `menu8` WRITE;
/*!40000 ALTER TABLE `menu8` DISABLE KEYS */;
INSERT INTO `menu8` VALUES (1,'Big Mac',28.88),(2,'Mc Chicken',20),(3,'Cheese Burger',23),(4,'GCB',29.88),(5,'Filet O Fish',22.5);
/*!40000 ALTER TABLE `menu8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu9`
--

DROP TABLE IF EXISTS `menu9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu9` (
  `FoodId` int DEFAULT NULL,
  `FoodName` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu9`
--

LOCK TABLES `menu9` WRITE;
/*!40000 ALTER TABLE `menu9` DISABLE KEYS */;
INSERT INTO `menu9` VALUES (1,'Aloha Chicken Pizza',71),(2,'Beef Pepperoni Pizza',71),(3,'Hawaian Chicken Pizza',71),(4,'Mini Lobster Pizza',90),(5,'Potato Bacon Pizza',71);
/*!40000 ALTER TABLE `menu9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `restaurant_id` int NOT NULL,
  `food_id` int NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `price` float DEFAULT NULL,
  `picture_url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_restaurant_id` (`restaurant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,1,'Japanese Chicken Curry Rice',20,'/images/Menu_item_pictures/Restaurant1/Picture1.jpg'),(2,1,2,'Angus Beef Rice',26,'/images/Menu_item_pictures/Restaurant1/Picture2.jpg'),(3,1,3,'Cha Siew Rice',24.8,'/images/Menu_item_pictures/Restaurant1/Picture3.jpg'),(4,1,4,'Teriyaki Chicken Rice',25.8,'/images/Menu_item_pictures/Restaurant1/Picture4.jpg'),(5,1,5,'Pork Leg Rice',26.8,'/images/Menu_item_pictures/Restaurant1/Picture5.jpg'),(6,2,1,'Coconut Milk Latte',12,'/images/Menu_item_pictures/Restaurant2/Picture1.jpg'),(7,2,2,'Jasmine tea latte',14.5,'/images/Menu_item_pictures/Restaurant2/Picture2.jpg'),(8,2,3,'Butter Latte',18,'/images/Menu_item_pictures/Restaurant2/Picture3.jpg'),(9,2,4,'Orange C Americano',16.5,'/images/Menu_item_pictures/Restaurant2/Picture4.jpg'),(10,2,5,'Jasmine Tea',10,'/images/Menu_item_pictures/Restaurant2/Picture5.jpg'),(11,3,1,'Grill Chicken Rice',18.5,'/images/Menu_item_pictures/Restaurant3/Picture1.jpg'),(12,3,2,'Spicy Grill Chicken Rice',20.5,'/images/Menu_item_pictures/Restaurant3/Picture2.jpg'),(13,3,3,'Honey Grill Chicken Rice',20.5,'/images/Menu_item_pictures/Restaurant3/Picture3.jpg'),(14,3,4,'BBQ Grill Chicken Rice',20.5,'/images/Menu_item_pictures/Restaurant3/Picture4.jpg'),(15,3,5,'Sweet and Sour Grill Chicken Rice',20.5,'/images/Menu_item_pictures/Restaurant3/Picture5.jpg'),(16,4,1,'Lemon Juice',5,'/images/Menu_item_pictures/Restaurant4/Picture1.jpg'),(17,4,2,'Jasmine Milk Tea',7,'/images/Menu_item_pictures/Restaurant4/Picture2.jpg'),(18,4,3,'Pearl Milk Tea',7,'/images/Menu_item_pictures/Restaurant4/Picture3.jpg'),(19,4,4,'Oreo Milk Tea',7,'/images/Menu_item_pictures/Restaurant4/Picture4.jpg'),(20,4,5,'Peach Apple Juice',8,'/images/Menu_item_pictures/Restaurant4/Picture5.jpg'),(21,5,1,'Cheese Fried Chicken',30,'/images/Menu_item_pictures/Restaurant5/Picture1.jpg'),(22,5,2,'Sweet And Sour Fried Chicken',28,'/images/Menu_item_pictures/Restaurant5/Picture2.jpg'),(23,5,3,'Spicy Fried Chicken',28,'/images/Menu_item_pictures/Restaurant5/Picture3.jpg'),(24,5,4,'Original Fried Chicken',26,'/images/Menu_item_pictures/Restaurant5/Picture4.jpg'),(25,5,5,'Garlic And Soy Sauce Fried Chicken',28,'/images/Menu_item_pictures/Restaurant5/Picture5.jpg'),(26,6,1,'Chicken Burger',14,'/images/Menu_item_pictures/Restaurant6/Picture1.jpg'),(27,6,2,'Cheese Burger',17,'/images/Menu_item_pictures/Restaurant6/Picture2.jpg'),(28,6,3,'Grill Whole Chicken',25,'/images/Menu_item_pictures/Restaurant6/Picture3.jpg'),(29,6,4,'Mexican Chicken Roll',17,'/images/Menu_item_pictures/Restaurant6/Picture4.jpg'),(30,6,5,'Fried Chicken',12,'/images/Menu_item_pictures/Restaurant6/Picture5.jpg'),(31,7,1,'Rose Latte',20,'/images/Menu_item_pictures/Restaurant7/Picture1.jpg'),(32,7,2,'Tiramisu Latte',22,'/images/Menu_item_pictures/Restaurant7/Picture2.jpg'),(33,7,3,'Hazelnut Latte',20,'/images/Menu_item_pictures/Restaurant7/Picture3.jpg'),(34,7,4,'Sea Salt Latte',22,'/images/Menu_item_pictures/Restaurant7/Picture4.jpg'),(35,7,5,'Americano',16,'/images/Menu_item_pictures/Restaurant7/Picture5.jpg'),(36,8,1,'Big Mac',28.88,'/images/Menu_item_pictures/Restaurant8/Picture1.jpg'),(37,8,2,'Mc Chicken',20,'/images/Menu_item_pictures/Restaurant8/Picture2.jpg'),(38,8,3,'Cheese Burger',23,'/images/Menu_item_pictures/Restaurant8/Picture3.jpg'),(39,8,4,'GCB',29.88,'/images/Menu_item_pictures/Restaurant8/Picture4.jpg'),(40,8,5,'Filet O Fish',22.5,'/images/Menu_item_pictures/Restaurant8/Picture5.jpg'),(41,9,1,'Aloha Chicken Pizza',71,'/images/Menu_item_pictures/Restaurant9/Picture1.jpg'),(42,9,2,'Beef Pepperoni Pizza',71,'/images/Menu_item_pictures/Restaurant9/Picture2.jpg'),(43,9,3,'Hawaian Chicken Pizza',71,'/images/Menu_item_pictures/Restaurant9/Picture3.jpg'),(44,9,4,'Mini Lobster Pizza',90,'/images/Menu_item_pictures/Restaurant9/Picture4.jpg'),(45,9,5,'Potato Bacon Pizza',71,'/images/Menu_item_pictures/Restaurant9/Picture5.jpg'),(46,10,1,'Brown Sugar Pearl Milk Tea',19,'/images/Menu_item_pictures/Restaurant10/Picture1.jpg'),(47,10,2,'Matcha Mochi Coconut Latte',21,'/images/Menu_item_pictures/Restaurant10/Picture2.jpg'),(48,10,3,'Lime Lemon Juice',6,'/images/Menu_item_pictures/Restaurant10/Picture3.jpg'),(49,10,4,'Jasmine Milk Tea',12,'/images/Menu_item_pictures/Restaurant10/Picture4.jpg'),(50,10,5,'Good Coconut Latte',15,'/images/Menu_item_pictures/Restaurant10/Picture5.jpg'),(51,11,1,'Hot Dry Noodle',12.5,'/images/Menu_item_pictures/Restaurant11/Picture1.jpg'),(52,11,2,'Fish and Meat Slice Rice',16.99,'/images/Menu_item_pictures/Restaurant11/Picture2.jpg'),(53,11,3,'Red Oil Beef Noodle',20.8,'/images/Menu_item_pictures/Restaurant11/Picture3.jpg'),(54,11,4,'Chong Qing Noodle',12.8,'/images/Menu_item_pictures/Restaurant11/Picture4.jpg'),(55,11,5,'Mala Hot Dry Noodle',9.5,'/images/Menu_item_pictures/Restaurant11/Picture5.jpg'),(56,12,1,'Caesar Chicken Salad',24,'/images/Menu_item_pictures/Restaurant12/Picture1.jpg'),(57,12,2,'Orange Festival Salad',15,'/images/Menu_item_pictures/Restaurant12/Picture2.jpg'),(58,12,3,'Chicken Noodle',20,'/images/Menu_item_pictures/Restaurant12/Picture3.jpg'),(59,12,4,'Tuna Salad',24,'/images/Menu_item_pictures/Restaurant12/Picture4.jpg'),(60,12,5,'Shrimp Festival Salad',27,'/images/Menu_item_pictures/Restaurant12/Picture5.jpg'),(61,13,1,'Buo Ya Zue Xuan',17,'/images/Menu_item_pictures/Restaurant13/Picture1.jpg'),(62,13,2,'Da Hong Pao',19,'/images/Menu_item_pictures/Restaurant13/Picture2.jpg'),(63,13,3,'Qing Xiang Nuo Shan',15,'/images/Menu_item_pictures/Restaurant13/Picture3.jpg'),(64,13,4,'Hua Tian Wu Long',17,'/images/Menu_item_pictures/Restaurant13/Picture4.jpg'),(65,13,5,'Gui Wu Lan Xiang',17,'/images/Menu_item_pictures/Restaurant13/Picture5.jpg'),(66,14,1,'Chicken Kebab',23.5,'/images/Menu_item_pictures/Restaurant14/Picture1.jpg'),(67,14,2,'Chicken Kebab Mega Box',38.88,'/images/Menu_item_pictures/Restaurant14/Picture2.jpg'),(68,14,3,'Chicken Kebab Rice',28.88,'/images/Menu_item_pictures/Restaurant14/Picture3.jpg'),(69,14,4,'Lamb Shank Rice',35,'/images/Menu_item_pictures/Restaurant14/Picture4.jpg'),(70,14,5,'Chicken Kebab Roll',25,'/images/Menu_item_pictures/Restaurant14/Picture5.jpg'),(71,15,1,'Beef Guilin Noodle',18.5,'/images/Menu_item_pictures/Restaurant15/Picture1.jpg'),(72,15,2,'Spicy Pork Lungs Noodle',23.99,'/images/Menu_item_pictures/Restaurant15/Picture2.jpg'),(73,15,3,'Spicy Beef Wide Noodle',19.99,'/images/Menu_item_pictures/Restaurant15/Picture3.jpg'),(74,15,4,'Luo Shi Noodle',19.99,'/images/Menu_item_pictures/Restaurant15/Picture4.jpg'),(75,15,5,'Zha Jiang Noodle',17,'/images/Menu_item_pictures/Restaurant15/Picture5.jpg');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `RestaurantId` int DEFAULT NULL,
  `RestaurantName` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `AveragePrice` int DEFAULT NULL,
  `Signature` varchar(255) DEFAULT NULL,
  `SignaturePrice` float DEFAULT NULL,
  `OperatingHour` varchar(255) DEFAULT NULL,
  `LocationId` varchar(255) DEFAULT NULL,
  `Tags` json DEFAULT NULL,
  KEY `idx_restaurant_id` (`RestaurantId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Baolilai','Food',4.8,25,'Japanese Chicken Curry Rice',20,'10:30-20:30','001','[\"Healthy\", \"Global Cuisine\", \"Good Environment\"]'),(2,'Luckin Coffee','Beverage',4.9,15,'Coconut Milk Latte',12,'07:00-22:00','002','[\"High quality\", \"Coffee\", \"Grab and go\"]'),(3,'Yang jie grill chicken rice','Food',4.5,20,'Grill Chicken Rice',18.5,'10:30-14:30,16:00-20:30','003','[\"Halal\", \"Grill chicken\", \"Non spicy\"]'),(4,'Mixue','Beverage',5,7,'Lemon juice',5,'09:00-22:30','004','[\"Cheap\", \"Grab and go\", \"Fast Serving Time\"]'),(5,'Mido Fried Chicken','Food',4.1,28,'Cheese Fried Chicken',30,'09:00-23:59','005','[\"Fried Chicken\", \"Korean Cuisine\", \"Late Closing Time\"]'),(6,'Meiqike','Food',4.8,17,'Chicken Burger',14,'09:30-23:30','006','[\"Fast Food\", \"Cheap\", \"Late Closing Time\"]'),(7,'Manner Coffee','Beverage',4.9,20,'Rose Latte',20,'07:00-21:30','007','[\"Coffee\", \"High Quality\", \"Good Environment\"]'),(8,'McDonald','Food',5,25,'Big Mac',28.88,'07:00-22:30','008','[\"Fast Food\", \"Fried Chicken\", \"Local Favourite\"]'),(9,'Dominos Pizza','Food',4.7,45,'Aloha Chicken Pizza',71,'10:00-22:00','009','[\"Pizza\", \"Italian Cuisine\", \"Newly Opened\"]'),(10,'Goodme','Beverage',4.2,15,'Brown Sugar Pearl Milk Tea',19,'08:00-22:00','010','[\"Milk Tea\", \"Fast Serving Time\", \"Grab and go\"]'),(11,'CaiMingWei','Food',5,14,'Hot Dry Noodle',12.5,'07:00-19:00','011','[\"Cheap\", \"Chinese Cuisine\", \"Local Favourite\"]'),(12,'Mint Light Food','Food',4.3,21,'Caesar Chicken Salad',24,'09:30-19:00','012','[\"Healthy\", \"Halal\", \"Non Spicy\"]'),(13,'ChaGee','Beverage',4.5,17,'Buo Ya Zue Xuan',17,'09:00-22:00','013','[\"Milk Tea\", \"Local Favourite\", \"Fast Serving Time\"]'),(14,'Kiosk','Food',3.9,30,'Chicken Kebab',23.5,'10:00-21:00','014','[\"Halal\", \"Arab Cuisine\", \"Grill Chicken\"]'),(15,'Gui Lin Noodle','Food',4.8,20,'Beef Slice Guilin Noodle',18.5,'08:00-22:00','015','[\"Chinese Cuisine\", \"Good Environment\", \"Newly Opened\"]');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `restaurant_snake`
--

DROP TABLE IF EXISTS `restaurant_snake`;
/*!50001 DROP VIEW IF EXISTS `restaurant_snake`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `restaurant_snake` AS SELECT 
 1 AS `restaurant_id`,
 1 AS `restaurant_name`,
 1 AS `category`,
 1 AS `rating`,
 1 AS `average_price`,
 1 AS `signature`,
 1 AS `signature_price`,
 1 AS `operating_hour`,
 1 AS `location_id`,
 1 AS `tags`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `restaurant_id` int NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `comment` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  UNIQUE KEY `uq_user_restaurant` (`user_id`,`restaurant_id`),
  KEY `idx_restaurant_id` (`restaurant_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant` (`RestaurantId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (5,18,1,4.0,'Good','2025-12-27 02:50:23','2025-12-29 02:30:54'),(6,19,1,4.0,'Solid experience overall. Will come back again.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(7,20,2,4.0,'Nice place with good portions. Everything tasted fresh.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(8,21,2,5.0,'One of my favorites! Always consistent and tasty.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(9,18,3,5.0,'Excellent service and amazing flavors. Highly recommend.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(10,20,3,4.0,'Very enjoyable meal. Good value for money.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(11,19,4,3.0,'Decent food and quick service. Nothing extraordinary but satisfactory.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(12,21,4,4.0,'Pleasant experience. Staff was attentive.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(13,18,5,5.0,'Outstanding! Everything was perfect from start to finish.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(14,20,6,4.0,'Cozy spot with great options. Really liked the vibe.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(15,19,6,5.0,'Fantastic all around. Can’t wait to return.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(16,21,7,4.0,'Good quality food and reasonable prices.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(17,18,8,4.5,'Loved IT!','2025-12-27 02:50:23','2025-12-28 22:56:25'),(18,20,8,4.0,'Very satisfied. Portions were generous.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(19,19,9,4.0,'Nice and clean place. Food came out fast and hot.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(20,21,10,5.0,'Perfect evening out. Great food and service.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(21,18,11,3.0,'It was okay. Service was a bit slow but food was fine.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(22,20,11,4.0,'Better than expected. Would try again.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(23,19,12,5.0,'Absolutely delicious. Everything was spot on.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(24,21,13,4.0,'Reliable spot with consistent quality.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(25,18,14,5.0,'Top-notch experience. Will definitely recommend to friends.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(26,20,15,4.0,'Enjoyed the meal thoroughly. Great flavors.','2025-12-27 02:50:23','2025-12-27 02:50:23'),(27,19,15,5.0,'Amazing! One of the highlights of the week.','2025-12-27 02:50:23','2025-12-27 02:50:23');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (18,'Alice','Anderson','alice.anderson@test.com','$2a$10$48naxSW7KSo7KVBSt09gXOD7YV/aX/6uitXErw4jmAYNNlSwo.HP2'),(19,'Bob','Brown','bob.brown@test.com','$2a$10$NQrwhQ.8tkeDdyMJJAYvFODcdgkUx4fwEGB.WajB7YGt2Vyug7/cG'),(20,'Charlie','Clark','charlie.clark@test.com','$2a$10$Agw8oHTNCA8i/gASwApo2.7cjgeo61eQ0G3TmyTDDKDE2o3YoQ1Xi'),(21,'Diana','Davis','diana.davis@test.com','$2a$10$Yue/25wKdcC.dyAcfhigou4oUXhKwAvuBIBb.wMzbRumasVdnv9pi');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_all_menu_items`
--

DROP TABLE IF EXISTS `v_all_menu_items`;
/*!50001 DROP VIEW IF EXISTS `v_all_menu_items`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_all_menu_items` AS SELECT 
 1 AS `RestaurantId`,
 1 AS `FoodId`,
 1 AS `FoodName`,
 1 AS `Price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_menu_cards`
--

DROP TABLE IF EXISTS `v_menu_cards`;
/*!50001 DROP VIEW IF EXISTS `v_menu_cards`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_menu_cards` AS SELECT 
 1 AS `id`,
 1 AS `restaurant_id`,
 1 AS `food_id`,
 1 AS `food_name`,
 1 AS `price`,
 1 AS `picture_url`,
 1 AS `restaurant_name`,
 1 AS `restaurant_rating`,
 1 AS `restaurant_category`,
 1 AS `restaurant_avg_price`,
 1 AS `restaurant_operating_hour`,
 1 AS `restaurant_tags`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `restaurant_snake`
--

/*!50001 DROP VIEW IF EXISTS `restaurant_snake`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `restaurant_snake` AS select `restaurant`.`RestaurantId` AS `restaurant_id`,`restaurant`.`RestaurantName` AS `restaurant_name`,`restaurant`.`Category` AS `category`,`restaurant`.`Rating` AS `rating`,`restaurant`.`AveragePrice` AS `average_price`,`restaurant`.`Signature` AS `signature`,`restaurant`.`SignaturePrice` AS `signature_price`,`restaurant`.`OperatingHour` AS `operating_hour`,`restaurant`.`LocationId` AS `location_id`,`restaurant`.`Tags` AS `tags` from `restaurant` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_all_menu_items`
--

/*!50001 DROP VIEW IF EXISTS `v_all_menu_items`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_all_menu_items` AS select 1 AS `RestaurantId`,`menu1`.`FoodId` AS `FoodId`,`menu1`.`FoodName` AS `FoodName`,`menu1`.`Price` AS `Price` from `menu1` union all select 2 AS `2`,`menu2`.`FoodId` AS `FoodId`,`menu2`.`FoodName` AS `FoodName`,`menu2`.`Price` AS `Price` from `menu2` union all select 3 AS `3`,`menu3`.`FoodId` AS `FoodId`,`menu3`.`FoodName` AS `FoodName`,`menu3`.`Price` AS `Price` from `menu3` union all select 4 AS `4`,`menu4`.`FoodId` AS `FoodId`,`menu4`.`FoodName` AS `FoodName`,`menu4`.`Price` AS `Price` from `menu4` union all select 5 AS `5`,`menu5`.`FoodId` AS `FoodId`,`menu5`.`FoodName` AS `FoodName`,`menu5`.`Price` AS `Price` from `menu5` union all select 6 AS `6`,`menu6`.`FoodId` AS `FoodId`,`menu6`.`FoodName` AS `FoodName`,`menu6`.`Price` AS `Price` from `menu6` union all select 7 AS `7`,`menu7`.`FoodId` AS `FoodId`,`menu7`.`FoodName` AS `FoodName`,`menu7`.`Price` AS `Price` from `menu7` union all select 8 AS `8`,`menu8`.`FoodId` AS `FoodId`,`menu8`.`FoodName` AS `FoodName`,`menu8`.`Price` AS `Price` from `menu8` union all select 9 AS `9`,`menu9`.`FoodId` AS `FoodId`,`menu9`.`FoodName` AS `FoodName`,`menu9`.`Price` AS `Price` from `menu9` union all select 10 AS `10`,`menu10`.`FoodId` AS `FoodId`,`menu10`.`FoodName` AS `FoodName`,`menu10`.`Price` AS `Price` from `menu10` union all select 11 AS `11`,`menu11`.`FoodId` AS `FoodId`,`menu11`.`FoodName` AS `FoodName`,`menu11`.`Price` AS `Price` from `menu11` union all select 12 AS `12`,`menu12`.`FoodId` AS `FoodId`,`menu12`.`FoodName` AS `FoodName`,`menu12`.`Price` AS `Price` from `menu12` union all select 13 AS `13`,`menu13`.`FoodId` AS `FoodId`,`menu13`.`FoodName` AS `FoodName`,`menu13`.`Price` AS `Price` from `menu13` union all select 14 AS `14`,`menu14`.`FoodId` AS `FoodId`,`menu14`.`FoodName` AS `FoodName`,`menu14`.`Price` AS `Price` from `menu14` union all select 15 AS `15`,`menu15`.`FoodId` AS `FoodId`,`menu15`.`FoodName` AS `FoodName`,`menu15`.`Price` AS `Price` from `menu15` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_menu_cards`
--

/*!50001 DROP VIEW IF EXISTS `v_menu_cards`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_menu_cards` AS select `mi`.`id` AS `id`,`mi`.`restaurant_id` AS `restaurant_id`,`mi`.`food_id` AS `food_id`,`mi`.`food_name` AS `food_name`,`mi`.`price` AS `price`,`mi`.`picture_url` AS `picture_url`,`r`.`restaurant_name` AS `restaurant_name`,`r`.`rating` AS `restaurant_rating`,`r`.`category` AS `restaurant_category`,`r`.`average_price` AS `restaurant_avg_price`,`r`.`operating_hour` AS `restaurant_operating_hour`,`r`.`tags` AS `restaurant_tags` from (`menu_items` `mi` join `restaurant_snake` `r` on((`r`.`restaurant_id` = `mi`.`restaurant_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-02 12:13:58
