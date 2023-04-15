-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: csc307final
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Product_id` int NOT NULL,
  `Product_name` varchar(45) NOT NULL,
  `Customers_Customers_id` int NOT NULL,
  `Ware_house_Ware_house_id` int NOT NULL,
  PRIMARY KEY (`Product_id`,`Customers_Customers_id`,`Ware_house_Ware_house_id`),
  KEY `fk_Product_Customers_idx` (`Customers_Customers_id`),
  KEY `fk_Product_Ware_house1_idx` (`Ware_house_Ware_house_id`),
  CONSTRAINT `fk_Product_Customers` FOREIGN KEY (`Customers_Customers_id`) REFERENCES `customers` (`Customers_id`),
  CONSTRAINT `fk_Product_Ware_house1` FOREIGN KEY (`Ware_house_Ware_house_id`) REFERENCES `ware_house` (`Ware_house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Bag',3,1),(2,'Cloth',1,1),(3,'Pencil',4,1),(4,'Blanket',5,1),(5,'Vest',6,1),(6,'Shock',7,1),(7,'Shoe',5,1),(8,'Phone',9,1),(9,'Decks',10,1),(10,'table',2,1),(11,'Wire',4,1),(12,'Mouse',1,1),(13,'Laptop',1,1),(14,'Pant',1,1),(15,'Plank',1,1),(16,'Eraser',1,1),(17,'Hotplate',10,1),(18,'Iphone',9,1),(19,'Computer',2,1),(20,'Board',3,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14 10:59:44
