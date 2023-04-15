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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Customers_id` int NOT NULL,
  `Customers_name` varchar(45) NOT NULL,
  `Customer_address` varchar(45) NOT NULL,
  `Customers_phone` varchar(45) NOT NULL,
  `Customers_email` varchar(45) NOT NULL,
  `Delivery_agent_Delivery_agent_id` int NOT NULL,
  `Delivery_agent_Ware_house_Ware_house_id` int NOT NULL,
  PRIMARY KEY (`Customers_id`,`Delivery_agent_Delivery_agent_id`,`Delivery_agent_Ware_house_Ware_house_id`),
  KEY `fk_Customers_Delivery_agent1_idx` (`Delivery_agent_Delivery_agent_id`,`Delivery_agent_Ware_house_Ware_house_id`),
  CONSTRAINT `fk_Customers_Delivery_agent1` FOREIGN KEY (`Delivery_agent_Delivery_agent_id`, `Delivery_agent_Ware_house_Ware_house_id`) REFERENCES `delivery_agent` (`Delivery_agent_id`, `Ware_house_Ware_house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Ola','Felele','09045342317','Ola@gmail.com',4,1),(2,'Abdul','Ful','09047342317','Abdul@gmail.com',5,1),(3,'peace','Ful juction','09047342310','Peace@gmail.com',6,1),(4,'Ojo','Lagoes','09047344310','Ojo@gmail.com',6,1),(4,'Mark','Felele juction','09045342312','Femi@gmail.com',7,1),(4,'victor','Oyo','090423445312','Vic@gmail',10,1),(5,'Gift','Ganaja juction','090423442312','gift@gmail.com',7,1),(6,'Victor','Ibadan','09040944310','Ojo@gmail.com',6,1),(7,'Favour','Zone 8','090423442232','gift@gmail.com',7,1),(8,'Blessing','Abuja','09047344399','Ojo@gmail.com',6,1),(9,'Emeka',' Adankolo','090436442312','gift@gmail.com',7,1),(10,'Samson','Ibadan','09047344220','Samson@gmail.com',6,1),(11,'Mercy','Ondo','090423412312','Mercy@gmail.com',1,1),(12,'Ade','Adankolo','090423478312','Ade@gmail.com',3,1),(13,'Seun','Jos','090423478345','Seun@gmail.com',4,1),(14,'Ade Ola','Lokoja','090423123780','ade@gmail.com',9,1),(15,'Ben','Phase1','090423478312','Ben@gmail.com',1,1),(16,'John','Phase2','0904234783123','Jon@gmail.com',5,1),(17,'Ada','Phase4','090423478390','Ada@gmail.com',4,1),(18,'Johnson','Phase3','090423408314','John@gmail.com',8,1),(19,'Benson','Phase9','090423478312','Benson@gmail.com',7,1),(20,'Benjami','Phase7','090423478313','Benjami@gmail.com',10,1),(21,'Benma',' Akure','090423478310','Benma@gmail.com',9,1);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-14 10:59:43
