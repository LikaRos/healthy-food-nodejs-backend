-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: food
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category` varchar(100) NOT NULL,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('Vegetables',1),('Health',2),('Millets',3),('Nuts',4),('Fresh',5);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `old_price` decimal(10,2) NOT NULL,
  `new_price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `additional_info` text,
  `image` varchar(255) DEFAULT NULL,
  `count` mediumint NOT NULL DEFAULT '1',
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_FK` (`category_id`),
  CONSTRAINT `goods_FK` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'Calabrese Broccoli',20.00,13.00,'Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','broccoli.png',10,5),(2,'Fresh Banana Fruites',20.00,14.00,'Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','banana.png',5,5),(3,'White Nuts',20.00,15.00,'Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','pistachio.png',2,4),(4,'Vegan Red Tomato',20.00,17.00,'Lorem ipLorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illumsum dolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','tomato.png',1,1),(5,'Mung Bean',20.00,11.00,'Lorem Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illumipsum dolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','mung-bean.png',1,2),(6,'Brown Hazelnut',20.00,12.00,'Lorem ipsumLorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum dolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','nuts.png',1,4),(7,'Eggs',20.00,17.00,'Lorem Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illumipsum dolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','eggs.png',1,2),(8,'Tsukini',20.00,11.00,'Lorem ipsum dolor Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illumsit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','tsukini.png',1,2),(9,'White Hazelnut',20.00,12.00,'Lorem ipsum dolor Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','hazelnut.png',1,4),(10,'Fresh Corn',20.00,17.00,'Lorem ipsum dolor Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illumsit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','corn.png',1,3),(11,'Organic Almonds',20.00,15.00,'Lorem ipsum dolorLorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','almonds.png',1,4),(12,'Сauliflower',20.00,11.00,'Lorem ipsum dolor sitLorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','cauliflower.png',1,5),(13,' Zelco Suji Elaichi Rusk',20.00,15.00,'Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illumdolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','bread.png',1,3),(14,'Marrow',20.00,12.00,'Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illumdolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','marrow.png',1,1),(15,'Onion',20.00,17.00,'Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illumdolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','onion.png',1,1),(16,'Cabbage',20.00,17.00,'Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit. IllumLorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum Lorem ipsum dolor sit amet consectetur adipisicing elit. Illumdolor sit amet consectetur adipisicing elit. Illum','Quidem minus libero tenetur odio ut laudantium repellendus similique consectetur id quam voluptas non possimus eveniet recusandae at debitis, ducimus accusantium adipisci? Veniam sint hic eligendi esse at omnis corporis ipsa, sit magni, pariatur, beatae soluta ratione amet tempore officiis facere ab blanditiis ducimus quam distinctio vel minus iure odit ipsam. Molestias eveniet doloribus ducimus ex rerum fugiat aperiam at, deserunt, rem magni incidunt, unde ea?','cabbage.png',1,1);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_orders`
--

DROP TABLE IF EXISTS `goods_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods_orders` (
  `goods_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `quantity` mediumint unsigned NOT NULL,
  KEY `goods_orders_FK` (`goods_id`),
  KEY `goods_orders_FK_1` (`order_id`),
  CONSTRAINT `goods_orders_FK` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `goods_orders_FK_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_orders`
--

LOCK TABLES `goods_orders` WRITE;
/*!40000 ALTER TABLE `goods_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `name` varchar(100) NOT NULL,
  `email` varchar(300) DEFAULT NULL,
  `address` text NOT NULL,
  `number` varchar(100) NOT NULL,
  `message` text,
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'food'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-10  1:11:33
