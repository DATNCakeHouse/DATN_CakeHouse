-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: martfury_shop
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `app_roles`
--

DROP TABLE IF EXISTS `app_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_roles`
--

LOCK TABLES `app_roles` WRITE;
/*!40000 ALTER TABLE `app_roles` DISABLE KEYS */;
INSERT INTO `app_roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `app_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_details` (
  `cart_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `cart_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_detail_id`),
  KEY `FKkcochhsa891wv0s9wrtf36wgt` (`cart_id`),
  KEY `FK9rlic3aynl3g75jvedkx84lhv` (`product_id`),
  CONSTRAINT `FK9rlic3aynl3g75jvedkx84lhv` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKkcochhsa891wv0s9wrtf36wgt` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `cart_id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`),
  CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (5,0,'aaaaaaaaaaaaaaaaaaaaaaa','0375838166',6),(6,0,'Nguyên Xá, Hà Nội','0856862003',7);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Bánh sinh nhật trái cây tươi'),(2,'Bánh sinh nhật kem tươi'),(3,'Bánh sinh nhật bé trai'),(4,'Bánh sinh nhật bé gái'),(5,'Bánh Mousse'),(6,'Bánh sự kiện'),(7,'Bánh tráng miệng - Tiramisu'),(8,'Bánh sinh nhật trái tim - Valentine'),(9,'Merry Chrismas'),(10,'New Year Sweetness'),(11,'Bánh mì & Bánh mặn'),(12,'Phụ kiện bánh kem');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`favorite_id`),
  KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  KEY `FKk7du8b8ewipawnnpg76d55fus` (`user_id`),
  CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKk7du8b8ewipawnnpg76d55fus` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (33,41,6),(34,13,6),(35,15,6),(36,34,6),(37,1,6),(38,6,6);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (15,'Ckiiiii đã đặt một đơn hàng (14)',_binary '','2025-05-17 23:12:31'),(16,'Ckiiiii đã đặt một đơn hàng (15)',_binary '','2025-05-18 14:33:30'),(17,'Ckiiiii đã đặt một đơn hàng (16)',_binary '\0','2025-05-22 23:43:10'),(18,'Ckiiiii đã đặt một đơn hàng (17)',_binary '\0','2025-05-22 23:58:57'),(19,'Ckiiiii đã đặt một đơn hàng (18)',_binary '\0','2025-05-23 00:04:15');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (84,500000,1,14,1),(85,13000,1,14,52),(86,21000,1,14,54),(87,6000,1,14,55),(88,36000,1,14,41),(89,350000,1,14,13),(90,290000,1,15,15),(91,490000,1,15,1),(92,13000,1,15,52),(93,23000,1,15,53),(94,6000,1,15,56),(95,490000,1,16,1),(96,1220000,2,16,34),(97,290000,1,17,45),(98,270000,1,17,44),(99,15000,1,18,36),(100,470400,1,18,6),(101,640000,2,18,10);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orders_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (14,'Ngô Quyền, Thanh Hóa',926000,'2025-05-17 23:12:30','0375838166',2,6),(15,'Nguyên Xá, Hà Nội',822000,'2025-05-18 14:33:29','0375838166',2,6),(16,'Triều Khúc, Hà Nội',1710000,'2025-05-22 23:43:09','0375838166',0,6),(17,'Nguyên Xá, Hà Nội',560000,'2025-05-22 23:58:57','0375838166',0,6),(18,'aaaaaaaaaaaaaaaaaaaaaaa',1125400,'2025-05-23 00:04:15','0375838166',2,6);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `discount` int NOT NULL,
  `entered_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `sold` int NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Hương vị: Vani kem sữa chua xoài.\nChi tiết: 2 lớp cốt bông lan vani, 2 lớp mousse xoài xen kẽ xoài tươi xắt nhỏ, trang trí xoài tươi xắt miếng, socola và kem tươi.\nTrọng lượng: 500g.\nHình dạng: Tròn.\nPhục vụ: 4 - 6 người.\nKích thước: Đường kính 20cm.\n\nLưu ý: Bánh nên được bảo quản lạnh và sử dụng trong ngày để giữ trọn vẹn hương vị tươi ngon của trái cây',2,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747234573/products/msbqbtdbwczsvamorrxb.jpg','Bánh Kem Sữa Chua Xoài Hảo Hạng',500000,198,2,_binary '',1),(2,'Hương vị: Vani dâu tây\nChi tiết: 1 lớp cốt bông lan socola, 1 lớp mousse dâu, 1 lớp cốt bông lan socola, 1 lớp mousse sữa chua, trang trí dâu tây tươi, kem tươi, socola.\nTrọng lượng: 500g.\nHình dạng: Vuông.\nPhục vụ: 5-10 người.\nKích thước: Đường kính 20cm.\nVới bánh đặt theo yêu cầu Quý khách vui lòng đặt trước 24h – 48h để Origato phục vụ Quý khách chu đáo nhất!',2,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747235168/products/o5epbelsgcelwdcd1df6.jpg','Bánh Kem Sữa Chua Dâu Hảo Hạng',600000,200,0,_binary '',1),(3,'Hương vị: Sô cô la hoặc vani kèm mứt cherry.\nTrọng lượng: 500g.\nHình dạng: Tròn.\nPhục vụ: 4 - 6 -8 người\nKích thước: Đường kính 20cm.\nLưu ý: Bánh nên được bảo quản lạnh và sử dụng trong ngày để giữ trọn vẹn hương vị tươi ngon của trái cây.\n',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747235423/products/mjgvcxv6na7dx1qqstjx.jpg','Bánh Macaron Và Việt Quất',380000,200,0,_binary '',1),(4,'Hương vị: Xoài chanh leo.\nChi tiết: 2 lớp cốt bông lan vani, 2 lớp mousse xoài xen kẽ xoài tươi xắt nhỏ, trang trí xoài tươi xắt miếng, socola và kem tươi.\nHình dạng: Tròn.\nPhục vụ: 4 - 6 người.\nKích thước: Đường kính 16-18cm.\nLưu ý: Bánh nên được bảo quản lạnh và sử dụng trong ngày để giữ trọn vẹn hương vị tươi ngon của trái cây',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747235523/products/efpvq5ygz2dngmjjvnm0.jpg','Bánh Xoài Chanh Leo Thanh Mát',480000,200,0,_binary '',1),(5,'Hương vị: Kem tươi, hoa quả\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 18cm\nLưu ý: Bánh nên được bảo quản lạnh và sử dụng trong ngày để giữ trọn vẹn hương vị tươi ngon của trái cây',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747235651/products/ey1zy5n8h3zmcqrcsvgn.jpg','Bánh Kem Tươi Hoa Quả',360000,150,0,_binary '',1),(6,'Hương vị: Kem tươi, hoa quả, vanilla\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 18cm\nLưu ý: Bánh nên được bảo quản lạnh và sử dụng trong ngày để giữ trọn vẹn hương vị tươi ngon của trái cây',2,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747235701/products/idqpswjkfwz2dh6dkusp.jpg','Bánh Hoa Quả Phủ Hạnh Nhân',480000,149,1,_binary '',1),(7,'Hương vị: Caramel.\nChi tiết: Cốt bánh chiffon caramel mềm ẩm, hòa quyện cùng nhân thạch dai giòn và caramel béo thơm, tạo nên sự bùng nổ hương vị đầy lôi cuốn. Bánh được trang trí với mô hình rượu Chivas cuốn hút, tạo nên tổng thể mạnh mẽ và ấn tượng.\nLưu ý: Chai rượu là vật phẩm trang trí, không dùng để uống hoặc ăn.\nHình dạng: Tròn.\nPhục vụ: 4 - 6 người.\nKích thước: Đường kính 18cm.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747236548/products/oupjukmahmjfqelda3yf.webp','Bánh kem Amber Spirit',320000,150,0,_binary '',2),(8,'Hương vị: Kem tươi, phô mai\nChi tiết: Cốt bánh 3 lớp chiffon phô mai mềm ẩm ngậy béo, quyện giữa từng lớp bánh là nhân kem marshmallow mát lạnh thơm vị bơ sữa.\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 18cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747236800/products/ojdagsob1ntxjh4uqnpw.webp','Bánh kem Tasty Love',150000,200,0,_binary '',2),(9,'Hương vị: Socola.\nChi tiết: Cốt bánh 3 lớp chiffon sô cô la chip mềm ẩm, đậm vị đặc trưng, quyện giữa từng lớp bánh là nhân mứt nam việt quất thơm ngọt, chua dịu đầy lôi cuốn. Bánh phủ tráng gương sô cô la đen bóng mượt. \nHình dạng: Tròn.\nPhục vụ: 4 - 6 người.\nKích thước: Đường kính 18cm.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747236943/products/lqccjkfqf4koanjezx8y.webp','Bánh kem Sweet Love',350000,200,0,_binary '',2),(10,'Hương vị: Socola\nChi tiết: 5 lớp chiffon sô cô la mềm mịn thêm vỏ cam thơm, mang đến vị ngon tươi mát, xen lẫn nhân mứt cam chua chua ngọt ngọt. Bánh phủ kem tươi oreo mát lạnh và trang trí bánh oreo, sô cô la đen và hoa kem trang nhã.\nHình dạng: Tròn.\nPhục vụ: 4 - 6 người.\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747237019/products/z38qyj5jiyb5tx7pz1fp.webp','Bánh kem Oreo Flower',320000,198,2,_binary '',2),(11,'Hương vị: Kem tươi, hoa quả, vani\nChi tiết: Cốt bánh 4 lớp chiffon vani hoa quả khô mềm mịn ẩm mướt, xen giữa từng lớp bánh là mứt cam chua chua ngọt ngọt, thơm ngon.\nHình dạng: Tròn.\nPhục vụ: 4 - 6 người.\nKích thước: Đường kính 16-18cm.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747237169/products/p7ongc5zhrdgxusvivwk.webp','Bánh kem Romantic',320000,200,0,_binary '',2),(12,'Hương vị: Kem tươi, hoa quả, vanilla.\nChi tiết: Cốt bánh 3 lớp chiffon vani mềm mịn, nhẹ tan, xen giữa từng lớp bánh là nhân cocktail hoa quả thanh thanh, ngọt mát. Bánh phủ kem tươi mát lạnh và trang trí socola và cupcake xinh xắn.\nHình dạng: Tròn.\nPhục vụ: 4 - 6 người.\nKích thước: Đường kính 18cm.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747237305/products/bh1k05jrjx04ceu5lfrq.webp','Bánh kem Kiss Of Lady',350000,150,0,_binary '',2),(13,'Hương vị: Kem tươi, hoa quả, vanilla.\nChi tiết: 3 lớp chiffon hoa quả khô kết hợp cùng mứt cam ngọt nhẹ, chua chua giúp cân bằng lại vị béo ngậy của kem, mang lại cho chiếc bánh một hương vị cực kỳ hài hòa và tinh tế. Mặt bánh phủ tráng gương tạo hoạt tiết vân cẩm thạch trang nhã, thanh lịch.\nHình dạng: Tròn.\nPhục vụ: 4 - 6 người.\nKích thước: Đường kính 18cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747237472/products/vsf4qmlzztrjbpbsg1r0.webp','Bánh kem Darling Bloom',350000,149,1,_binary '',2),(14,'Hương vị: Kem tươi, vanilla, socola.\nChi tiết: cốt bánh 4 lớp, bông lan truyền thống kết hợp kem tươi vị vani, trang trí kem tươi, kẹo đường và socola.\nHình dạng: Tròn\nPhục vụ: 4 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747238426/products/hgbgxahjia6qwfsqdnal.png','BTR1',300000,150,0,_binary '',3),(15,'Hương vị: Kem tươi, mứt, vanilla\nChi tiết: cốt 4 lớp bông lan truyền thống kết hợp 3 lớp kem tươi vị vani và 1 lớp mứt trái cây, trang trí hoa kem tươi, kẹo đường và phụ kiện.\nHình dạng: Tròn\nPhục vụ: 4 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747238590/products/t3940mog9hdejmso9r08.jpg','Gato phi hành gia',290000,149,1,_binary '',3),(16,'Hương vị: Kem tươi, hoa quả, vanilla\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 18cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747239047/products/s4dk2wjcmo9f1fkylz0c.jpg','Gato ô tô cảnh sát',390000,150,0,_binary '',3),(17,'Hương vị: Kem tươi, hoa quả, vanilla\nHình dạng: Tròn\nPhục vụ: 4 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747239098/products/timzjo8e5wlvdvjrsnvd.png','BTR2',330000,150,0,_binary '',3),(18,'Hương vị: Kem tươi, hoa quả, vanilla\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747239297/products/d13zyglhjyncu664jc5w.jpg','Gato Người Nhện',290000,150,0,_binary '',3),(19,'Hương vị: Kem tươi, vanilla\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747239468/products/fmrlcqzwtmhsa5iw1ydd.jpg','Doraemon',290000,150,0,_binary '',3),(20,'Hương vị: Kem tươi, socola\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747239408/products/iw3zfcfevoerxfjlrrkc.jpg','Gato gấu nâu',280000,150,0,_binary '',3),(21,'Hương vị: Kem tươi, hoa quả, vanilla\nHình dạng: Tròn\nPhục vụ: 4 người\nKích thước: Đường kính 14cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747239829/products/eo3yirv3md1oxdjf0yz1.png','BGA1',280000,150,0,_binary '',4),(22,'Hương vị: Kem tươi, dâu tây\nHình dạng: Tròn\nPhục vụ: 4 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747239953/products/bzpkj2dcwpjc9sjpvvmd.jpg','GATO GẤU ĐỎ',280000,150,0,_binary '',4),(23,'Hương vị: Kem tươi, hoa quả, vanilla\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240024/products/mckg4wm0o2qthhlpap6p.png','BGA2',280000,150,0,_binary '',4),(24,'Hương vị: Kem tươi, hoa quả, vanilla\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240052/products/jac386yycycuklxvtzms.jpg','GATO KITTY',280000,150,0,_binary '',4),(25,'Hương vị: Kem tươi, hoa quả, vanilla\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240085/products/ttkwrfdhtgkzzcsk4imn.png','BGA3',280000,150,0,_binary '',4),(26,'Hương vị: Kem tươi, hoa quả, vanilla\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240145/products/yz6p7mem98hvo6hnioou.jpg','BÁNH Công Chúa SOPHIA',280000,150,0,_binary '',4),(27,'Hương vị:  2 lớp bông lan socola, 1 lớp mousse dừa, 1 lớp mousse cafe muối, trang trí socola\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240502/products/iq4tvrpjcjd4lhlwtfl1.jpg','Mousse Cốt Dừa',310000,150,0,_binary '',5),(28,'Hương vị: Kem tươi, matcha\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240536/products/td4iwsqtg5mv46yh6nvz.jpg','Mousse Matcha',300000,150,0,_binary '',5),(29,'Hương vị: Kem tươi, socola\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240598/products/fe6ls5ufujz9qixfcxrp.jpg','Mousse Socola',320000,200,0,_binary '',5),(30,'Hương vị: 2 lớp bông lan, 1 lớp mousse sữa chua, 1 lớp mousse dâu.\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 18cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240639/products/m29wu6jykkhd7bxyeqwx.jpg','Mousse Sữa Chua Dâu',300000,150,0,_binary '',5),(31,'Hương vị: Cốt bánh mousse cam, trang trí socola\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240705/products/lpmkhpmysoho8f2bdraq.jpg','Mousse Cam',360000,150,0,_binary '',5),(32,'Hương vị: Cốt bánh mousse chanh leo, trang trí vani\nHình dạng: Tròn\nPhục vụ: 4 - 6 người\nKích thước: Đường kính 16cm',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747240776/products/dytpkissjfxxnbvqb2bb.jpg','Mousse Chanh Leo',320000,150,0,_binary '',5),(33,'Liên hệ với cửa hàng để đặt trước!!! Vui lòng đặt trước 24h – 48h!!!\n\nCác size bánh: Size 18 cao ~7cm (5 – 7 người ăn); Size 22 cao ~7cm (9 – 11 người ăn)',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747241039/products/ibo9tnwmw7edyceqbivt.jpg','Bánh cưới 2 tầng',600000,100,0,_binary '',6),(34,'Vui lòng đặt trước 24h – 48h để được phục vụ Quý khách chu đáo nhất!\n\nCác size bánh: Size 18 cao ~7cm (5 – 7 người ăn); Size 22 cao ~7cm (9 – 11 người ăn)',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747241263/products/wuxptjtdmngohuhhjprn.jpg','Bánh sự kiện vị chanh leo',610000,100,0,_binary '',6),(35,'Vui lòng đặt trước 24h – 48h để được phục vụ Quý khách chu đáo nhất!\n\nCác size bánh: Size 18 cao ~7cm (5 – 7 người ăn); Size 22 cao ~7cm (9 – 11 người ăn)',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747241320/products/djzohtvlggqcfm0jvopz.jpg','Bánh sự kiện trang trí hoa hồng',610000,100,0,_binary '',6),(36,'Thành phần: Bột mỳ, bơ, sữa bột, đường, trứng gà, men, muối, nước.\nTrang trí: socola, cốm, đường icing.\nĐế bánh mềm xốp phủ lớp sô cô la dâu thơm lừng, bắt mắt. Hương vị hài hòa, vừa hấp dẫn vị giác vừa cuốn hút từ ánh nhìn đầu tiên.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747246534/products/u7eigbzmfjzbzfy4lgwz.webp','Bánh Donut Socola hương dâu',15000,199,1,_binary '',7),(37,'Bột hạnh nhân, đường, lòng trắng trứng, sô cô la, sữa tươi, cam vàng, chanh vàng, chanh leo, mứt mơ, mứt dâu, trà bá tước, trà xanh, mè đen, gelatin, quả vani, hương bạc hà, màu thực phẩm.\nSự kết hợp tinh tế của những chiếc bánh nhỏ xinh với lớp vỏ giòn nhẹ, nhân kem ngọt ngào. Đa dạng hương vị, màu sắc bắt mắt, mỗi chiếc macaron là một trải nghiệm ngọt ngào, thích hợp làm quà tặng hoặc thưởng thức cùng trà chiều sang trọng. ',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747246605/products/h3xxkadaakwsyqjerwcp.webp','Bánh macaron 90g',99000,200,0,_binary '',7),(38,'Thành phần: Trứng gà, bột mỳ, bơ, nước, đường, tinh bột biến tính (E1414), béo thực vật, bột sữa gầy, chất làm dày (E401), hương vani tổng hợp, màu thực phẩm (E160aii)), muối.\nBánh su kem với lớp vỏ dai mềm kết hợp cùng nhân kem vani mát lạnh và béo ngậy.\nSản phẩm nhỏ gọn, dễ dàng mang theo khi đi học, du lịch hoặc dã ngoại.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747246665/products/wfmzqkl8fcpjefyooto4.webp','Bánh su kem',35000,250,0,_binary '',7),(39,'Thành phần chung: Trứng gà, đường kính, bột mì hảo hạng, kem sữa tươi, kem làm bánh.\nBánh cuộn chuối: Chuối tiêu (8,5 %), hương liệu chuối tổng hợp.\nBánh cuộn đào: Mứt đào (6%), màu vàng thực phẩm tổng hợp (E102), hương liệu đào tổng hợp.\nBánh cuộn ổi hồng: Mứt ổi hồng (6%), màu đỏ thực phẩm tổng hợp (E124), hương liệu ổi tổng hợp\nBánh cuộn với lớp vỏ mềm mịn, cuốn lấy lớp kem tươi tinh tế, ngọt ngào, kết hợp cùng các hương vị trái cây mát lành, đậm chất nhiệt đới là đào, ổi hồng và chuối thơm ngon.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747246745/products/jrugo4vy7uc6ppm7g7r2.webp','Bánh cuộn 3 vị',59000,250,0,_binary '',7),(40,'Thành phần: Phô mai kem, trứng, bột hạnh nhân, cà phê, rượu Kahlua, bơ, kem tươi, cacao, bánh quy, đường, hương vani tổng hợp, chất tạo đông gelatin, nước.\nHạn sử dụng: 4 ngày kể từ ngày sản xuất\nBảo quản: 2-5 độ\nBánh tiramisu size lớn mang đến trải nghiệm tráng miệng trọn vẹn hơn với lớp kem mascarpone mịn màng, quyện cùng cốt bánh thấm đẫm cà phê đậm đà. Hương vị cân bằng, béo nhẹ, ít ngọt, hòa cùng chút đắng nhẹ từ cacao tuyệt vời để nhâm nhi',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747246792/products/yf5uf3zmnmsvb4zjdcw.webp','Bánh tiramisu',36000,200,0,_binary '',7),(41,'Thành phần: Bột mỳ, đường, trứng, bơ, cà phê, bột hạnh nhân, rượu Kahlua, kem bơ cà phê, socola ganache, socola trang trí\nHạn sử dụng: 4 ngày kể từ ngày sản xuất\nNhiệt độ: 2-5 độ\nBánh Opera tinh tế với từng lớp mỏng hoàn hảo, kết hợp giữa cốt bánh hạnh nhân mềm mịn, cà phê đậm đà và ganache sô cô la thơm ngậy.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747246833/products/w2lhyorjzrm2aztarlcs.webp','Bánh opera',36000,199,1,_binary '',7),(42,'Mô tả cốt bánh: 2 lớp bông lan, 2 lớp kem tươi vị vani, phủ bột red velvet\n\nCác size bánh: Size 14 cao ~4cm (3 – 4 người ăn)\n\nVới bánh đặt theo yêu cầu Quý khách vui lòng đặt trước 24h – 48h để CakeHouse phục vụ Quý khách chu đáo nhất!',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247039/products/fmm0dwiz7rhrmygi1syj.jpg','Gato Tim Đỏ',200000,100,0,_binary '',8),(43,'hành phần: Cốt bánh bông lan truyền thống, trang trí kem tươi, socola.\n\nQuý khách có thể lựa chọn các cốt bánh khác như: mousse, tiramisu, red velvet…\n\nCác size bánh: Size 18 cao ~7cm (5 – 7 người ăn); Size 22 cao ~7cm (9 – 11 người ăn); Size 25 cao ~ 7cm ( 12-15 người ăn)',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247090/products/kilgyqdw92yxw2hp7n5f.png','Bánh Gato Tim Hoa Quả',230000,100,0,_binary '',8),(44,'Mô tả cốt bánh: Cốt bông lan truyền thống kết hợp kem tươi vani, trang trí kem tươi.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247237/products/csssjautwtpioyoeqpjx.png','NE29 – Set bento & cupcake',270000,50,0,_binary '',9),(45,'Mô tả cốt bánh: cốt bông lan truyền thống kết hợp kem tươi vị vani, trang trí hoa kem tươi\n\nCác size bánh: Size 16 cho 3-4 người ăn; Size 18 cho 5 – 7 người ăn; Size 22 cho 9 – 11 người ăn; Size 25 cho 12-15 người ăn',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247360/products/nefw5bnmsdb6ilsafwet.jpg','Bánh cây đào',290000,100,0,_binary '',10),(46,'Mô tả cốt bánh: cupcake cốt bông lan phủ hoa kem tươi vani',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247449/products/xxmxqd7ju9oqyoidcght.jpg','Spring cupcake set',80000,100,0,_binary '',10),(47,'Thành phần: Vỏ bánh mì kẹp cỡ lớn, thịt xá xíu, sốt bánh mỳ kẹp, dưa góp, rau mùi\nThịt xá xíu mềm mọng, đậm vị được kẹp trong lớp bánh mì giòn rụm. Thêm rau thơm thanh mát và dưa muối giòn giòn chua ngọt làm dậy lên hương vị tươi ngon, hấp dẫn trong từng miếng cắn. Mỗi miếng bánh là sự cân bằng hoàn hảo giữa vị mặn ngọt hài hòa, hấp dẫn.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247694/products/nt5fs0timvvc1a7aypet.webp','Bánh mì kẹp xá xíu',25000,100,0,_binary '',11),(48,'Thành phần: Vỏ bánh mì kẹp cỡ lớn, pa tê, chả, thịt xá xíu, sốt bánh mỳ kẹp, dưa góp, rau mùi\nBánh mì giòn rụm kết hợp cùng nhiều loại nhân phong phú: pa tê, chả, thịt xá xíu, hòa quyện bởi lớp sốt đậm đà, thơm béo. Thêm rau tươi và dưa muối chua ngọt giúp cân bằng hương vị, tạo nên trải nghiệm ăn uống hài hòa, khó cưỡng.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247720/products/tehbvd8jxwa842mpqi8r.webp','Bánh mì kẹp thập cẩm',25000,100,0,_binary '',11),(49,'Thành phần: Vỏ bánh mì kẹp cỡ lớn, pa tê, sốt bánh mỳ kẹp, dưa góp, rau mùi\nPa tê béo mịn, thơm lừng hòa quyện trong lớp bánh mì vàng giòn, kết hợp cùng rau tươi và dưa muối giòn chua ngọt, tạo nên tổng thể hài hòa giữa béo, bùi, tươi mát. Mỗi miếng bánh đều tròn vị, hấp dẫn và giàu dinh dưỡng.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247760/products/rfumqwjrl2k1ry4l2dsg.webp','Bánh mì kẹp pa tê',35000,97,0,_binary '',11),(50,'Chả tươi ngon kết hợp với bánh mì giòn rụm và sốt đậm vị. Thêm rau xanh và dưa muối giòn chua ngọt giúp bánh thêm tươi ngon, cân bằng vị giác, tạo nên món ăn vừa quen thuộc vừa hấp dẫn.\nThành phần: Vỏ bánh mì kẹp cỡ lớn, chả, sốt bánh mỳ kẹp, dưa góp, rau mùi',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247797/products/jeymla55zhngwcnseijf.webp','Bánh mì kẹp chả',25000,100,0,_binary '',11),(51,'Bột mì, men, muối, bơ, đường, sữa bột, trứng gà, nước\nBánh mì gối trắng được làm từ nguyên liệu sạch, chất lượng cao, mang đến hương vị thơm ngon tươi ngọt tự nhiên. Nhờ công thức đặc biệt, bánh có kết cấu mềm ẩm, tươi ngon, giữ trọn độ tơi xốp hấp dẫn, là lựa chọn hoàn hảo để kẹp nhân, nướng bơ hoặc ăn kèm các món yêu thích. Thích hợp cho bữa sáng dinh dưỡng hay bữa ăn nhẹ tiện lợi!',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747247859/products/pojacltswgmrnlfevp1l.webp','Bánh mì gối trắng',30000,100,0,_binary '',11),(52,'Bộ phụ kiện tiện lợi gồm dao nĩa nhựa cao cấp và nến sinh nhật lung linh, giúp bữa tiệc thêm trọn vẹn. Dễ dàng sử dụng, phù hợp cho mọi bữa tiệc sinh nhật và khoảnh khắc đáng nhớ bên gia đình, bạn bè!',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747248061/products/srcy3p3ejphgmuuz4blc.webp',' Bộ dao dĩa cho 6 người kèm nến',13000,498,2,_binary '',12),(53,'Bộ nến chữ \"Happy Birthday\" với thiết kế nổi bật, màu sắc bắt mắt, làm từ sáp an toàn, cháy sáng ổn định, tỏa hương thơm nhẹ tự nhiên. Dễ cắm trên bánh, giúp bữa tiệc thêm lung linh, trọn vẹn niềm vui.',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747248096/products/vpjfemg5eyifcr7grybt.webp','Bộ nến chữ happy birthday',23000,499,1,_binary '',12),(54,'Thành phần: Sắp ong tinh khiết, bấc bông, nhựa PP thực phẩm\nCông dụng: Dùng trong các buổi tiệc sinh nhật, sự kiện\nLưu ý sử dụng: Tránh gió mạnh, tránh vật dễ cháy, nổ kiểm soát trẻ nhỏ\n \nLoại trừ hoàn toàn độc hại với 100% sáp ong tinh khueets và bấc bông\nCháy 10 phút/ cây tỏa sáng vàng lung linh tuyệt đẹp\nKhông chảy nhỏ giọt , không sử dụng hóa chất, nguyên liệu có hại cho con người và môi trường',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747248143/products/pcltwtlj0xp5efbvhjbz.webp',' Nến số',21000,499,1,_binary '',12),(55,'Những chiếc mũ sinh nhật đáng yêu với nhiều lựa chọn như hình Elsa, nàng tiên cá, unicorn, giúp bé yêu thêm vui thích trong ngày đặc biệt. Thiết kế dễ thương, chất liệu an toàn, tạo điểm nhấn cho bữa tiệc sinh nhật tràn ngập niềm vui!',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747248176/products/wljz4gpmqae3llsnxmdb.webp','Mũ sinh nhật bé gái',6000,499,1,_binary '',12),(56,'Những chiếc mũ sinh nhật sắc xanh vui nhộn, hình Spider-Man, Iron Man cực ngầu, mang đến niềm vui và phong cách cho bé trai trong ngày đặc biệt. Thiết kế bắt mắt, chất liệu an toàn, giúp bữa tiệc thêm phần rực rỡ và đáng nhớ!',0,'2025-05-14','https://res.cloudinary.com/martfury/image/upload/v1747248198/products/aspiwujlkydpo49e3oks.webp','Mũ sinh nhật bé trai',6000,499,1,_binary '',12),(113,'11111111111111',1,'2025-05-22','https://res.cloudinary.com/veggie-shop/image/upload/v1633434089/products/jq4drid7ttqsxwd15xn9.jpg','Antex Playlist',12000,3,0,_binary '\0',1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoesgfm245y1ula1pn74fw9mkk` (`order_detail_id`),
  KEY `FK4mdsmkrr7od84tpgxto2v3t2e` (`product_id`),
  KEY `FKanlgavwqngljux10mtly8qr6f` (`user_id`),
  CONSTRAINT `FK4mdsmkrr7od84tpgxto2v3t2e` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKanlgavwqngljux10mtly8qr6f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKoesgfm245y1ula1pn74fw9mkk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (45,'Ngon quá, vừa sang vừa ngọt!','2025-05-18 01:11:07',5,84,1,6),(46,'Chưa bao giờ ăn tiramisu nào ngon như vậy','2025-05-18 01:11:07',5,88,41,6),(47,'Nhân bánh bên trong ngon vô đối!','2025-05-18 01:11:07',5,89,13,6),(48,'mũ rất đáng yêu, con tôi thích','2025-05-22 23:43:20',4,94,56,6),(49,'hơi ít xoài','2025-05-22 23:43:20',4,91,1,6),(50,'thiếu nến rồi shop ơi, buồn lắm','2025-05-22 23:43:59',2,92,52,6);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKihg20vygk8qb8lw0s573lqsmq` (`role_id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKihg20vygk8qb8lw0s573lqsmq` FOREIGN KEY (`role_id`) REFERENCES `app_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (6,1),(7,1),(5,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (5,'Thanh Hóa','thangnguyenquyet41@gmail.com',_binary '','https://res.cloudinary.com/martfury/image/upload/v1747328024/users/lolsnmyi5zasht3b33ww.jpg','Thắnggg','$2a$10$7PT8qoK2ipJuFVzQwPItXOOJs85yBaPDyoH.7Z2EMx6B3T2U1aT.6','0977695004','2025-05-08',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0aGFuZ25ndXllbnF1eWV0NDFAZ21haWwuY29tIiwic2NvcGVzIjpbeyJhdXRob3JpdHkiOiJST0xFX0FETUlOIn1dLCJpc3MiOiJodHRwOi8vZGV2Z2xhbi5jb20iLCJpYXQiOjE3NDY3MTYzNjgsImV4cCI6MTc0NjczNDM2OH0.xz_AZqXQUfphvIWFbCQ3QvnKIn92LXl2swB8ANMXyMk'),(6,'Thanh Hóa','nguyenkhanhhuyen591@gmail.com',_binary '','https://res.cloudinary.com/martfury/image/upload/v1747504451/users/ydplbjxjyhy2xprix456.jpg','Ckiiiii','$2a$10$q06JX8vQvRHfowsJmzuiouXUWLh0KtCbwCgpRK0vnsVtR7.gXby8C','0375838166','2025-05-17',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJuZ3V5ZW5raGFuaGh1eWVuNTkxQGdtYWlsLmNvbSIsInNjb3BlcyI6W3siYXV0aG9yaXR5IjoiUk9MRV9BRE1JTiJ9XSwiaXNzIjoiaHR0cDovL2RldmdsYW4uY29tIiwiaWF0IjoxNzQ3NDk3OTY1LCJleHAiOjE3NDc1MTU5NjV9.YqJaVRRqAJznKxa7wgMs4YYCI6k4QLL8EGPM_0mO7nE'),(7,'Nguyên Xá, Hà Nội','huudong297@gmail.com',_binary '','https://res.cloudinary.com/martfury/image/upload/v1747935047/users/ljh8ee8yybx0xmop60ai.webp','Thang Nguyen','$2a$10$sRdecd1/cvxtJveSS1xGjOJ6WhAK3bIlirnyVpvZDz0CO3yMv0k6C','0856862003','2025-05-22',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJodXVkb25nMjk3QGdtYWlsLmNvbSIsInNjb3BlcyI6W3siYXV0aG9yaXR5IjoiUk9MRV9BRE1JTiJ9XSwiaXNzIjoiaHR0cDovL2RldmdsYW4uY29tIiwiaWF0IjoxNzQ3OTM0OTI3LCJleHAiOjE3NDc5NTI5Mjd9.UEmnUVit-jHUD_OtEZAum03V1QpYfasJr1Gw_tAdzlo');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-23  0:43:25
