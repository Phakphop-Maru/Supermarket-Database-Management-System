DROP DATABASE IF EXISTS `ProjectTopSupermarket`;
CREATE DATABASE IF NOT EXISTS ProjectTopSupermarket DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `ProjectTopSupermarket`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: topsupermarket_database
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL,
  `C_FNAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `C_LNAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PHONE` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `C_ADDRESS` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `LOYAL_POINTS` int NOT NULL,
  `C_CONTACTINFORMATION` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (10,'Tanasub','Rattanaharirak','tanasub.rat@gmail.com','0878987111','123 Sukhumvit Rd, BKK',312,'Tanasub_facebook'),(11,'Poottapol','Paannna','poottapol.ponna@gmail.com','0812345678','42 Sukhumvit Road, Bangkok',75,'Poottapol_facebook'),(12,'Phakphup','Phoonphoem','phakphup.phoonphoem@gmail.com','0876543210','15 Ratchadamnoen Avenue, Chiang Mai',120,'Phakphop_facebook'),(13,'Kasama','Kiatapakul','kasamatransaction.kiat@gmail.com','0898765432','78 Tha Phae Road, Phuket',180,'Kasama_facebook'),(14,'Supasri','Seekane','supasr.seekane@gmail.com','0954321987','123/45 Charoen Krung Street, Pattaya',220,'Supasri_facebook'),(15,'Nantipat','Lnwza','nantipat.Lnw@gmail.com','0865432198','99 Sukhumvit Soi 21, Bangkok',90,'Nantipat_facebook'),(16,'Pimmy','Nekognum','pimmy,nego@gmail.com','0887654321','555/22 Phahonyothin Road, Chiang Rai',160,'Pimmy_facebook'),(17,'Pathu','Sudlhor','pathu.sudlhor@gmail.com','0943219876','777/33 Chang Klan Road, Krabi',200,'Pathu_facebook'),(18,'Napat','Zaza','napat.zaza@gmail.com','0923456789','321/8 Thong Lor Street, Phang Nga',250,'Napat_facebook'),(19,'Ratchaneekorn','Suaymak','ratchaneekorn.suay@gmail.com','0934567891','456 Siam Square, Surat Thani',130,'Ratchaneekorn_facebook'),(20,'Thawanthong','Lhormak','thawanthong.lhor@gmail.com','0967890123','789/10 Khao San Road, Nakhon Ratchasima',180,'Thawanthong_facebook');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL,
  `E_FNAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `E_LNAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `POSITION` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `E_ADDRESS` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `E_CONTACT_INFORMATION` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (112,'Phakphop','Phunphoem','Cashier','Phakphop.ph@gmail.com','Phakphop_Phu_Facebook'),(113,'Mark','Parin','Cashier','Mark.parin@gmail.com','Mark_Facebook'),(114,'Yaya','Suaysood','Sales Associate','Yaya.suay@gmail.com','Yaya_Facebook'),(115,'Piyapong','Piwon','Store Manager','piyapong.piwon@gmail.com','Piyapong_Facebook'),(116,'Teerasil','Dangda','Sales Representative','Teerasil.dang@gmail.com','Teerasil_Facebook'),(117,'Chanathip','Songkrasin','Assistant Manager','Chantip.song@gmail.com','Chanatip_Facebook'),(118,'Supanat','Muenta','Cashier','supanat.muen@gmail.com','Supanat_Facebook'),(119,'Cristiano','Ronaldo','Store Clerk','cristiano.ronaldo@gmail.com','Cristiano_Facebook'),(120,'Leo','Messi','Sales Consultant','leo.messi@gmail.com','Leo_Facebook'),(121,'Romelu','Lukaku','Cashier','romelu.lukaku@gmail.com','Lukaku_Facebook'),(122,'Luka','Modric','Assistant Store Manager','luka.modric@gmail.com','Modric_Facebook');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL,
  `P_NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `P_Description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `StockQuantity` int NOT NULL,
  `P_Category` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1121,'Supasri snack','Premium chocolate snack bar',50.00,120,'Snack'),(1122,'Taro Cupcake','Delicious and sweet Taro-flavored cupcake',35.00,80,'Thai Desserts'),(1123,'Bubble Milk Tea','Sweet and soft bubble milk tea',45.00,100,'Beverages'),(1124,'Traditional Thai Clothing','Handwoven traditional Thai clothing made from silk with elephant pattern',150.00,20,'Fashion'),(1125,'Natural Ink Cartridge','Ink cartridge made from Thai herbs',80.00,50,'Office Supplies'),(1126,'Genuine Leather Bag','Genuine leather bag made from selected animal hides',120.00,30,'Fashion'),(1127,'Shockproof Hat','Vibrant shockproof hat for sports',60.00,40,'Sports'),(1128,'Thai Language Book','Interesting Thai language book',25.00,70,'Books'),(1129,'Thai Tea Cup','Thai tea cup adorned with gold patterns',40.00,60,'Home Essentials'),(1130,'Sensory Balls','Colorful sensory balls for play',15.00,120,'Toys'),(1131,'Herbal Soap','Herbal soap made from Thai herbs',30.00,90,'Home Essentials'),(1132,'Iphone 15 pro max 256GB','Apple product',999.99,10,'Snack'),(1133,'Ipad Pro 2022 256GB','Apple product',1299.99,10,'Snack'),(1134,'Macbook Air M1 512','Apple product',1599.99,10,'Snack');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_for_customer`
--

DROP TABLE IF EXISTS `reward_for_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reward_for_customer` (
  `SystemID` int NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`SystemID`,`CustomerID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `reward_for_customer_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `reward_for_customer_ibfk_2` FOREIGN KEY (`SystemID`) REFERENCES `systemtable` (`SystemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_for_customer`
--

LOCK TABLES `reward_for_customer` WRITE;
/*!40000 ALTER TABLE `reward_for_customer` DISABLE KEYS */;
INSERT INTO `reward_for_customer` VALUES (91230,10),(91230,11),(91230,12),(91230,13),(91230,14),(91230,15),(91230,16),(91230,17),(91230,18),(91230,19);
/*!40000 ALTER TABLE `reward_for_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serves`
--

DROP TABLE IF EXISTS `serves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serves` (
  `EmployeeID` int NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`EmployeeID`,`CustomerID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `serves_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `serves_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serves`
--

LOCK TABLES `serves` WRITE;
/*!40000 ALTER TABLE `serves` DISABLE KEYS */;
INSERT INTO `serves` VALUES (112,10),(112,11),(112,12),(113,13),(113,14),(114,15),(115,16),(116,17),(122,18),(121,19),(120,20);
/*!40000 ALTER TABLE `serves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share_table`
--

DROP TABLE IF EXISTS `share_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `share_table` (
  `SystemID` int NOT NULL,
  `CustomerID` int NOT NULL,
  PRIMARY KEY (`SystemID`,`CustomerID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `share_table_ibfk_1` FOREIGN KEY (`SystemID`) REFERENCES `systemtable` (`SystemID`),
  CONSTRAINT `share_table_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share_table`
--

LOCK TABLES `share_table` WRITE;
/*!40000 ALTER TABLE `share_table` DISABLE KEYS */;
INSERT INTO `share_table` VALUES (91230,10),(91230,11),(91230,12),(91230,13),(91230,14),(91230,15),(91230,16),(91230,17),(91230,18),(91230,19),(91230,20);
/*!40000 ALTER TABLE `share_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervises`
--

DROP TABLE IF EXISTS `supervises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervises` (
  `EmployeeID` int NOT NULL,
  `SupervisorID` int NOT NULL,
  PRIMARY KEY (`EmployeeID`,`SupervisorID`),
  KEY `SupervisorID` (`SupervisorID`),
  CONSTRAINT `supervises_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`),
  CONSTRAINT `supervises_ibfk_2` FOREIGN KEY (`SupervisorID`) REFERENCES `supervisor` (`SupervisorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervises`
--

LOCK TABLES `supervises` WRITE;
/*!40000 ALTER TABLE `supervises` DISABLE KEYS */;
INSERT INTO `supervises` VALUES (112,312300),(114,312301),(118,312302);
/*!40000 ALTER TABLE `supervises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervisor` (
  `SupervisorID` int NOT NULL,
  `S_FNAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `S_LNAME` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `EmployeeID` int NOT NULL,
  PRIMARY KEY (`SupervisorID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `supervisor_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervisor`
--

LOCK TABLES `supervisor` WRITE;
/*!40000 ALTER TABLE `supervisor` DISABLE KEYS */;
INSERT INTO `supervisor` VALUES (312300,'Poottapol','Poonna',112),(312301,'Tinder','Louis',114),(312302,'John','Terry',118);
/*!40000 ALTER TABLE `supervisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemtable`
--

DROP TABLE IF EXISTS `systemtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `systemtable` (
  `SystemID` int NOT NULL,
  `S_NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`SystemID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `systemtable_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemtable`
--

LOCK TABLES `systemtable` WRITE;
/*!40000 ALTER TABLE `systemtable` DISABLE KEYS */;
INSERT INTO `systemtable` VALUES (91230,'Loyal System','Description of Loyal System',NULL);
/*!40000 ALTER TABLE `systemtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `TransactionID` int NOT NULL,
  `T_NAME` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `T_Description` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Date` date NOT NULL,
  `ProductID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  KEY `ProductID` (`ProductID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `product` (`ProductID`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (11312,'Purchase1','Grocery shopping',300.00,300.00,'2023-11-18',1121,10),(11313,'Purchase2','Payment for purchases at convenience store',450.00,150.00,'2023-11-19',1122,13),(11314,'Shopping3','Shopping for consumer products',600.00,200.00,'2023-11-20',1123,18),(11315,'Order4','Online product order',750.00,250.00,'2023-11-21',1124,20),(11316,'Purchase5','Purchase of items from the store',900.00,300.00,'2023-11-22',1125,16),(11317,'Shopping6','Shopping at the department store',1050.00,350.00,'2023-11-23',1126,18),(11318,'Order7','Online product order',1200.00,400.00,'2023-11-24',1127,12),(11319,'Purchase8','Purchase of goods at the local market',1350.00,450.00,'2023-11-25',1128,13),(11320,'Shopping9','Shopping for beauty and cosmetics products',1500.00,500.00,'2023-11-26',1129,14),(11321,'Order10','Online product order',1650.00,550.00,'2023-11-27',1130,17),(11322,'Shopping11','Shopping for children\'s toys',1800.00,600.00,'2023-11-28',1131,11);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-20  1:53:15
-- 1
-- basic
-- Retrieve all customer name and email
SELECT CONCAT(C_FNAME," ",C_LNAME) as "Customer Name", EMAIL
FROM Customer;

-- 2
-- basic
-- Retrieve Transactions name and amount
SELECT T_NAME, Amount
FROM Transaction
Where amount >= 400;

-- 3
-- basic
-- Retrieve productID,product name and description
SELECT ProductID, P_NAME, P_Description
FROM Product;

-- 4
-- advance
-- Find customers and their transactions
SELECT C.C_FNAME, C.C_LNAME, T.T_NAME, T.TotalAmount
FROM Customer C
JOIN Transaction T ON C.CustomerID = T.CustomerID;

-- 5
-- advance
-- Find customers who made transactions on 2023-11-18
SELECT C.CustomerID, C.C_FNAME, C.C_LNAME
FROM Customer C
WHERE C.CustomerID IN (SELECT DISTINCT T.CustomerID FROM Transaction T WHERE T.Date = '2023-11-18');

-- 6
-- advance
-- Get the total number of transactions for each customer
SELECT C.CustomerID, C.C_FNAME, C.C_LNAME, COUNT(T.TransactionID) AS TotalTransactions
FROM Customer C
LEFT JOIN Transaction T ON C.CustomerID = T.CustomerID
GROUP BY C.CustomerID;

-- 7
-- advance
-- Find supervisors and their subordinates
SELECT S.S_FNAME, S.S_LNAME, E.E_FNAME, E.E_LNAME
FROM Supervisor S
JOIN Supervises SS ON S.SupervisorID = SS.SupervisorID
JOIN Employee E ON SS.EmployeeID = E.EmployeeID;

-- 8
-- advance
-- Retrieve customers who purchased a ProductID 1121
SELECT C.C_FNAME, C.C_LNAME
FROM Customer C
WHERE C.CustomerID IN (SELECT DISTINCT T.CustomerID FROM Transaction T WHERE T.ProductID = 1121);

-- 9
-- advance
-- Find customers who purchase a snack
SELECT C_FNAME, C_LNAME
FROM Customer
WHERE CustomerID IN (
    SELECT DISTINCT T.CustomerID
    FROM Transaction T
    JOIN Product P ON T.ProductID = P.ProductID
    WHERE P.P_Category = 'Snack'
);

-- 10
-- advance
-- List products that have a stock quantity greater than the average stock quantity
SELECT *
FROM Product
WHERE StockQuantity > (
    SELECT AVG(StockQuantity)
    FROM Product
)
ORDER BY StockQuantity DESC;

-- 11
-- basic
-- select all customers
select *
from customer;

-- 12
-- basic
-- select all product with stock quantity greater than 50
select *
from product where stockquantity > 50;

-- 13
-- basic
-- select all transaction with total amount greater than 200
select *
from transaction where totalamount > 200;

-- 14
-- advance
-- find the top 5 customers with the highest loyalty pionts
select *
from customer order by loyal_points desc limit 5;

-- 15
-- advance
-- calculate the total revenue from each product cataggory
SELECT P.P_Category, SUM(T.Amount) AS TotalRevenue
FROM Product P
JOIN Transaction T ON P.ProductID = T.ProductID
GROUP BY P.P_Category;

-- 16
-- advance
-- find the product that purchase by customer name "Poottapol"
SELECT P.*
FROM Product P
JOIN Transaction T ON P.ProductID = T.ProductID
JOIN Customer C ON T.CustomerID = C.CustomerID
WHERE C.C_FNAME = 'Poottapol';

-- 17
-- advance
-- find the average price of products in each catagory and order in aescending
SELECT p.p_category, AVG(p.price) AS avgprice
FROM product p
GROUP BY p.p_category
order by AVG(p.price) asc;

-- 18
-- advance
-- find customer who haven't made  any transactions
SELECT C.CustomerID, C.C_FNAME, C.C_LNAME
FROM Customer C
LEFT JOIN Transaction T ON C.CustomerID = T.CustomerID
WHERE T.TransactionID IS NULL;

-- 19
-- advance
-- find the customer with the highest transaction in descending order
SELECT c.customerid, c.c_FNAME, c.c_LNAME, COUNT(T.TransactionID) AS TransactionCount
FROM customer c
LEFT JOIN Transaction T ON c.customerID = t.customerID
GROUP BY c.customerID, c.c_FNAME, c.c_LNAME
ORDER BY TransactionCount DESC;

-- 20
-- advance 
-- find the average number of transaction per customer
SELECT c.customerID, c.c_FNAME, c.c_LNAME, COUNT(T.TransactionID) AS TransactionCount, AVG(T.Amount) AS AvgTransactionAmount
FROM customer c
LEFT JOIN Transaction T ON c.customerID = T.customerID
GROUP BY c.customerID, c.c_FNAME, c.c_LNAME;

-- 21
-- basic
-- Retrieve all supervisors
SELECT S_FNAME, S_LNAME
FROM Supervisor;

-- 22
-- basic
-- Retrieve products with low stock (less than 20)
SELECT *
FROM Product
WHERE StockQuantity < 20;

-- 23
-- basic
-- Retrieve transactions that description is Online product order
SELECT *
FROM Transaction
WHERE T_Description = 'Online product order';

-- 24
-- advance
-- Calculate the total revenue for each customer
SELECT C.CustomerID, CONCAT(C.C_FNAME, ' ', C.C_LNAME) AS CustomerName, SUM(T.Amount) AS TotalRevenue
FROM Customer C
JOIN Transaction T ON C.CustomerID = T.CustomerID
GROUP BY C.CustomerID, CustomerName;

-- 25
-- advance
-- Find the most popular product category (highest transaction count)
SELECT P.P_Category, COUNT(T.TransactionID) AS TransactionCount
FROM Product P
LEFT JOIN Transaction T ON P.ProductID = T.ProductID
GROUP BY P.P_Category
ORDER BY TransactionCount DESC
LIMIT 1;

-- 26
-- advance
-- Identify customers who made transactions with multiple payment
SELECT C.CustomerID, CONCAT(C.C_FNAME, ' ', C.C_LNAME) AS CustomerName
FROM Customer C
JOIN (
    SELECT CustomerID
    FROM Transaction
    GROUP BY CustomerID
    HAVING COUNT(DISTINCT T_Description) > 1
) MultiPayment ON C.CustomerID = MultiPayment.CustomerID;

-- 27
-- advance
-- Retrieve the latest transaction for each customer
SELECT C.CustomerID, CONCAT(C.C_FNAME, ' ', C.C_LNAME) AS CustomerName, MAX(T.Date) AS LatestTransactionDate
FROM Customer C
LEFT JOIN Transaction T ON C.CustomerID = T.CustomerID
GROUP BY C.CustomerID, CustomerName;

-- 28
-- advance
-- Calculate the average transaction amount per product category
SELECT P.P_Category, AVG(T.Amount) AS AvgTransactionAmount
FROM Product P
JOIN Transaction T ON P.ProductID = T.ProductID
GROUP BY P.P_Category;

-- 29
-- advance
-- Find products that haven't been purchased
SELECT P.ProductID, P.P_NAME
FROM Product P
LEFT JOIN Transaction T ON P.ProductID = T.ProductID
WHERE T.TransactionID IS NULL;

-- 30
-- advance
-- Retrieve customers who made transactions in the last 7 days
SELECT DISTINCT C.CustomerID, CONCAT(C.C_FNAME, ' ', C.C_LNAME) AS CustomerName
FROM Customer C
JOIN Transaction T ON C.CustomerID = T.CustomerID
WHERE T.Date >= CURDATE() - INTERVAL 7 DAY;

-- 31
-- basic
-- Retrieve all products with a price greater than 50
SELECT *
FROM Product
WHERE Price > 50;

-- 32
-- basic
-- Retrieve transactions with a total amount more than 500
SELECT *
FROM Transaction
WHERE TotalAmount > 500;

-- 33
-- basic
-- Retrieve customers who have a loyalty_points greater than 100
SELECT *
FROM Customer
WHERE loyal_points > 100;

-- 34
-- advance
-- Find the top 3 products with the highest total revenue
SELECT P.ProductID, P.P_NAME, SUM(T.Amount) AS TotalRevenue
FROM Product P
JOIN Transaction T ON P.ProductID = T.ProductID
GROUP BY P.ProductID, P.P_NAME
ORDER BY TotalRevenue DESC
LIMIT 3;

-- 35
-- advance
-- Retrieve customers who made transactions on weekdays (Monday to Friday)
SELECT DISTINCT C.CustomerID, CONCAT(C.C_FNAME, ' ', C.C_LNAME) AS CustomerName
FROM Customer C
JOIN Transaction T ON C.CustomerID = T.CustomerID
WHERE DAYOFWEEK(T.Date) BETWEEN 2 AND 6; -- 2: Monday, 6: Friday

-- 36
-- advance
-- Retrieve products with a stock quantity less than the average stock quantity
SELECT *
FROM Product
WHERE StockQuantity < (
    SELECT AVG(StockQuantity)
    FROM Product
);

-- 37
-- advance
-- Find the customer with the highest total spending
SELECT C.CustomerID, CONCAT(C.C_FNAME, ' ', C.C_LNAME) AS CustomerName, SUM(T.Amount) AS TotalSpending
FROM Customer C
JOIN Transaction T ON C.CustomerID = T.CustomerID
GROUP BY C.CustomerID, CustomerName
ORDER BY TotalSpending DESC
LIMIT 1;

-- 38
-- advance
-- Find customers who made transactions on weekends (Saturday or Sunday)
SELECT DISTINCT C.CustomerID, CONCAT(C.C_FNAME, ' ', C.C_LNAME) AS CustomerName
FROM Customer C
JOIN Transaction T ON C.CustomerID = T.CustomerID
WHERE DAYOFWEEK(T.Date) IN (1, 7); -- 1: Sunday, 7: Saturday

-- 39
-- advance
-- Retrieve the top-selling product for each product category
WITH RankedProducts AS (
    SELECT
        P.ProductID,
        P.P_NAME,
        P.P_Category,
        RANK() OVER (PARTITION BY P.P_Category ORDER BY COUNT(T.TransactionID) DESC) AS ProductRank
    FROM Product P
    LEFT JOIN Transaction T ON P.ProductID = T.ProductID
    GROUP BY P.ProductID, P.P_NAME, P.P_Category
)
SELECT *
FROM RankedProducts
WHERE ProductRank = 1;

-- 40
-- advance
-- Find the products with the highest and lowest transaction amounts
SELECT P.ProductID, P.P_NAME, MAX(T.Amount) AS MaxTransactionAmount, MIN(T.Amount) AS MinTransactionAmount
FROM Product P
JOIN Transaction T ON P.ProductID = T.ProductID
GROUP BY P.ProductID, P.P_NAME;
