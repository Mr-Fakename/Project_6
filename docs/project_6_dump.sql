-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: project_6
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `user_account_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_account_id` (`user_account_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'2021-07-13 09:25:29',51),(2,'2021-07-13 09:25:29',52),(3,'2021-07-13 09:25:29',53),(4,'2021-07-13 09:25:29',54),(5,'2021-07-13 09:25:30',55),(6,'2021-07-13 09:25:30',56),(7,'2021-07-13 09:25:30',57),(8,'2021-07-13 09:25:30',58),(9,'2021-07-13 09:25:30',59),(10,'2021-07-13 09:25:30',60),(11,'2021-07-13 09:25:30',61),(12,'2021-07-13 09:25:30',62),(13,'2021-07-13 09:25:30',63),(14,'2021-07-13 09:25:30',64),(15,'2021-07-13 09:25:31',65),(16,'2021-07-13 09:25:31',66),(17,'2021-07-13 09:25:31',67),(18,'2021-07-13 09:25:31',68),(19,'2021-07-13 09:25:31',69),(20,'2021-07-13 09:25:31',70),(21,'2021-07-13 09:25:31',71),(22,'2021-07-13 09:25:31',72),(23,'2021-07-13 09:25:31',73),(24,'2021-07-13 09:25:32',74),(25,'2021-07-13 09:25:32',75),(26,'2021-07-13 09:25:32',76),(27,'2021-07-13 09:25:32',77),(28,'2021-07-13 09:25:32',78),(29,'2021-07-13 09:25:32',79),(30,'2021-07-13 09:25:32',80),(31,'2021-07-13 09:25:32',81),(32,'2021-07-13 09:25:32',82),(33,'2021-07-13 09:25:32',83),(34,'2021-07-13 09:25:33',84),(35,'2021-07-13 09:25:33',85),(36,'2021-07-13 09:25:33',86),(37,'2021-07-13 09:25:33',87),(38,'2021-07-13 09:25:33',88),(39,'2021-07-13 09:25:33',89),(40,'2021-07-13 09:25:33',90),(41,'2021-07-13 09:25:33',91),(42,'2021-07-13 09:25:33',92),(43,'2021-07-13 09:25:33',93),(44,'2021-07-13 09:25:34',94),(45,'2021-07-13 09:25:34',95),(46,'2021-07-13 09:25:34',96),(47,'2021-07-13 09:25:34',97),(48,'2021-07-13 09:25:34',98),(49,'2021-07-13 09:25:34',99),(50,'2021-07-13 09:25:34',100),(51,'2021-07-13 09:25:34',101),(52,'2021-07-13 09:25:34',102),(53,'2021-07-13 09:25:34',103),(54,'2021-07-13 09:25:34',104),(55,'2021-07-13 09:25:35',105),(56,'2021-07-13 09:25:35',106),(57,'2021-07-13 09:25:35',107),(58,'2021-07-13 09:25:35',108),(59,'2021-07-13 09:25:35',109),(60,'2021-07-13 09:25:35',110),(61,'2021-07-13 09:25:35',111),(62,'2021-07-13 09:25:35',112),(63,'2021-07-13 09:25:35',113),(64,'2021-07-13 09:25:35',114),(65,'2021-07-13 09:25:36',115),(66,'2021-07-13 09:25:36',116),(67,'2021-07-13 09:25:36',117),(68,'2021-07-13 09:25:36',118),(69,'2021-07-13 09:25:36',119),(70,'2021-07-13 09:25:36',120),(71,'2021-07-13 09:25:36',121),(72,'2021-07-13 09:25:36',122),(73,'2021-07-13 09:25:36',123),(74,'2021-07-13 09:25:36',124),(75,'2021-07-13 09:25:36',125),(76,'2021-07-13 09:25:37',126),(77,'2021-07-13 09:25:37',127),(78,'2021-07-13 09:25:37',128),(79,'2021-07-13 09:25:37',129),(80,'2021-07-13 09:25:37',130);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_has_product`
--

DROP TABLE IF EXISTS `cart_has_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_has_product` (
  `product_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `product_quantity` int DEFAULT '1',
  `product_size` int DEFAULT NULL,
  PRIMARY KEY (`product_id`,`cart_id`),
  KEY `cart_id` (`cart_id`),
  CONSTRAINT `cart_has_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `cart_has_product_ibfk_2` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_has_product`
--

LOCK TABLES `cart_has_product` WRITE;
/*!40000 ALTER TABLE `cart_has_product` DISABLE KEYS */;
INSERT INTO `cart_has_product` VALUES (1,1,5,31),(1,2,5,21),(1,3,5,21),(1,6,1,31),(1,8,1,31),(1,10,4,21),(1,12,3,21),(1,14,2,21),(1,16,2,21),(1,18,3,21),(1,19,5,21),(1,20,1,31),(1,24,4,27),(1,25,1,27),(1,26,4,31),(1,28,3,21),(1,29,2,27),(1,32,1,27),(1,33,4,27),(1,36,4,27),(1,37,3,21),(1,39,2,21),(1,41,2,21),(1,42,4,27),(1,43,4,21),(1,44,2,31),(1,45,1,31),(1,48,2,21),(1,49,3,31),(1,51,5,31),(1,53,1,27),(1,54,1,31),(1,55,3,27),(1,57,3,21),(1,58,2,27),(1,61,4,31),(1,63,2,31),(1,64,3,21),(1,66,5,21),(1,68,1,21),(1,70,1,21),(1,77,1,27),(1,79,1,21),(1,80,1,27),(2,1,3,21),(2,2,3,27),(2,3,2,27),(2,4,3,21),(2,5,2,21),(2,6,4,27),(2,8,5,27),(2,10,2,27),(2,12,5,21),(2,13,5,21),(2,15,4,27),(2,16,3,31),(2,17,1,27),(2,19,4,21),(2,20,4,21),(2,21,3,21),(2,22,3,27),(2,24,3,31),(2,25,2,21),(2,26,4,21),(2,28,3,31),(2,29,2,27),(2,30,1,21),(2,31,4,31),(2,33,4,27),(2,38,2,21),(2,40,3,31),(2,41,2,21),(2,43,2,27),(2,44,4,21),(2,45,4,21),(2,49,4,31),(2,51,1,27),(2,54,2,21),(2,55,4,27),(2,57,5,31),(2,58,1,21),(2,59,2,27),(2,61,4,31),(2,62,5,31),(2,63,4,21),(2,64,3,27),(2,67,5,21),(2,68,5,21),(2,69,4,27),(2,70,3,21),(2,75,2,21),(2,78,4,27),(2,79,2,21),(3,2,5,31),(3,3,4,31),(3,5,2,21),(3,6,2,21),(3,8,1,21),(3,9,4,27),(3,10,3,21),(3,16,2,21),(3,19,4,31),(3,20,2,27),(3,23,4,27),(3,24,3,31),(3,25,3,21),(3,26,5,21),(3,28,5,31),(3,29,5,21),(3,30,1,21),(3,34,1,27),(3,36,2,31),(3,37,3,27),(3,38,3,27),(3,39,3,31),(3,41,1,21),(3,42,4,27),(3,43,1,21),(3,44,2,27),(3,45,1,27),(3,46,4,31),(3,49,5,31),(3,50,5,21),(3,51,4,27),(3,56,1,31),(3,57,2,27),(3,58,4,21),(3,59,4,27),(3,60,3,27),(3,61,3,31),(3,62,4,21),(3,63,5,27),(3,64,4,27),(3,65,5,21),(3,67,3,31),(3,68,5,27),(3,69,3,21),(3,70,4,21),(3,73,4,21),(3,76,1,21),(3,77,3,27),(3,80,5,31),(4,1,4,27),(4,2,1,31),(4,3,4,27),(4,8,2,31),(4,11,3,21),(4,12,3,27),(4,13,5,27),(4,15,5,27),(4,16,4,27),(4,19,2,21),(4,22,4,27),(4,24,4,21),(4,25,3,31),(4,28,1,27),(4,29,5,27),(4,31,2,27),(4,32,4,31),(4,39,1,31),(4,41,3,21),(4,43,3,31),(4,44,1,27),(4,45,3,27),(4,48,1,27),(4,49,2,31),(4,51,5,21),(4,54,1,21),(4,55,2,21),(4,56,4,21),(4,57,5,27),(4,58,5,27),(4,59,4,27),(4,63,1,21),(4,64,3,21),(4,65,4,27),(4,66,5,21),(4,67,2,27),(4,69,4,27),(4,70,3,31),(4,71,5,31),(4,72,3,21),(4,73,1,21),(4,76,5,31),(4,77,1,31),(4,79,1,21),(5,1,2,27),(5,2,3,21),(5,3,2,31),(5,4,5,31),(5,5,3,31),(5,6,2,27),(5,7,1,31),(5,10,5,21),(5,12,2,21),(5,13,3,27),(5,14,4,31),(5,15,1,27),(5,16,4,27),(5,18,3,21),(5,19,3,21),(5,20,3,31),(5,22,2,31),(5,23,2,21),(5,24,4,27),(5,25,4,21),(5,26,3,21),(5,28,5,21),(5,29,3,21),(5,32,1,31),(5,35,5,31),(5,38,5,21),(5,42,2,21),(5,43,4,21),(5,44,2,21),(5,45,3,21),(5,46,5,27),(5,49,5,21),(5,50,4,21),(5,51,4,21),(5,53,5,21),(5,57,2,27),(5,59,4,27),(5,60,5,31),(5,63,4,21),(5,64,1,21),(5,67,1,21),(5,69,3,31),(5,70,2,27),(5,71,4,21),(5,73,5,21),(5,74,5,27),(5,77,5,31),(5,79,4,31),(5,80,2,31),(6,1,5,21),(6,2,5,27),(6,3,1,31),(6,6,2,31),(6,8,4,27),(6,9,5,31),(6,10,1,31),(6,11,2,27),(6,16,5,21),(6,18,2,31),(6,19,5,27),(6,20,1,27),(6,21,5,21),(6,22,2,27),(6,24,5,31),(6,26,2,31),(6,27,3,31),(6,29,4,27),(6,31,1,31),(6,32,2,21),(6,33,5,21),(6,34,1,27),(6,35,4,31),(6,38,3,27),(6,39,2,31),(6,41,5,31),(6,42,4,27),(6,43,3,21),(6,44,1,31),(6,45,2,21),(6,48,5,31),(6,49,5,27),(6,51,2,27),(6,52,1,31),(6,53,2,31),(6,54,2,31),(6,57,5,27),(6,58,1,21),(6,60,3,27),(6,61,5,21),(6,62,4,27),(6,63,5,31),(6,64,5,27),(6,65,4,27),(6,67,2,31),(6,70,5,31),(6,71,1,27),(6,76,2,31),(6,79,5,27),(7,1,3,21),(7,3,4,21),(7,5,4,31),(7,6,5,21),(7,10,4,21),(7,12,5,27),(7,13,1,21),(7,15,4,31),(7,18,5,31),(7,20,2,27),(7,22,3,27),(7,24,3,31),(7,26,1,21),(7,27,5,21),(7,28,5,27),(7,29,2,31),(7,30,5,21),(7,32,4,21),(7,34,5,21),(7,37,5,27),(7,41,3,31),(7,44,2,27),(7,45,3,27),(7,47,2,31),(7,48,2,27),(7,49,1,31),(7,52,2,21),(7,53,3,21),(7,57,4,27),(7,58,2,21),(7,59,4,27),(7,61,2,21),(7,62,1,21),(7,63,4,27),(7,64,4,27),(7,65,1,31),(7,67,2,31),(7,69,3,31),(7,70,3,27),(7,73,2,27),(7,76,2,27),(7,77,1,27);
/*!40000 ALTER TABLE `cart_has_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Vegetarian','Le pouvoir d\'innover plus rapidement'),(2,'Classics','Le droit de concr├®tiser vos projets plus rapidement'),(3,'Oriental','L\'art de louer naturellement'),(4,'Meaty','Le confort d\'avancer ├á l\'├®tat pur');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL,
  `street_name` varchar(120) DEFAULT NULL,
  `street_num` int DEFAULT NULL,
  `city_name` varchar(120) DEFAULT NULL,
  `city_pin` int DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (51,'boulevard Boyer',491,'Sainte Christiane',26789,'Fr├®d├®ric.Antoine@email.com'),(52,'avenue Camille Maillot',68,'Sainte Thierry',90503,'Raymond.Jourdan@email.com'),(53,'rue Jacques',24,'Meunierdan',61728,'Zacharie.Bodin@email.com'),(54,'avenue Brigitte Foucher',3,'Sainte C├®lina',9925,'Laetitia.Berthelot@email.com'),(55,'rue Vidal',40,'Morvan',17406,'Margaud.Guillaume@email.com'),(56,'avenue Chartier',71,'Maurice-la-For├¬t',67962,'Sylvie.Fournier@email.com'),(57,'rue Cousin',15,'Thomas-les-Bains',60659,'Susan.Caron@email.com'),(58,'rue Mich├¿le Vallee',89,'Andre',3069,'Corinne.Marchand@email.com'),(59,'rue Meunier',6,'Julien',58515,'St├®phane.Neveu@email.com'),(60,'avenue Le Gall',26,'Legendredan',86606,'├ëlise.Daniel@email.com'),(61,'rue de Rousseau',215,'Saint Maggienec',47108,'Thibault.Cousin@email.com'),(62,'rue Marie Cousin',49,'Saint MartineBourg',58235,'R├®my.Godard@email.com'),(63,'rue Audrey Pereira',57,'Sainte David',37323,'Bernard.Leger@email.com'),(64,'rue de Garcia',79,'Pires',81583,'Maggie.Schmitt@email.com'),(65,'avenue Leblanc',85,'Lopez-sur-Thomas',59297,'Yves.Guillet@email.com'),(66,'rue Marianne Laine',63,'VidalVille',86348,'Olivie.Diaz@email.com'),(67,'boulevard Guibert',34,'Le Gall',9525,'V├®ronique.Petitjean@email.com'),(68,'chemin Aim├®e Salmon',5,'Sainte Alex',90221,'P├®n├®lope.Pasquier@email.com'),(69,'rue Prevost',18,'Saint Alphonse',842,'P├®n├®lope.Leduc@email.com'),(70,'rue Yves Lagarde',81,'Renaud',31808,'Valentine.Courtois@email.com'),(71,'rue de Pires',23,'Moreau',91472,'Jeannine.Perez@email.com'),(72,'boulevard Ren├® Chartier',25,'Saint AnastasieVille',60669,'Madeleine.Seguin@email.com'),(73,'rue de Carpentier',33,'Ferreira',21925,'Fran├ºoise.Weber@email.com'),(74,'rue de Laurent',44,'Chevallier',44318,'Jean.Valette@email.com'),(75,'rue de Fabre',1,'Morel',87186,'S├®bastien.Mace@email.com'),(76,'chemin de Valette',517,'Lemaire',80545,'S├®bastien.Boulanger@email.com'),(77,'avenue de Maillard',172,'Picard',43861,'Lucy.Lelievre@email.com'),(78,'boulevard Dos Santos',47,'Ledouxnec',35651,'Denise.Philippe@email.com'),(79,'chemin Martin',970,'Sainte Sophie-la-For├¬t',31670,'Diane.Hardy@email.com'),(80,'rue Rocher',79,'Camus-sur-Mer',11536,'Michel.Lejeune@email.com'),(81,'rue Fran├ºois Riou',5,'Sainte Patricia-la-For├¬t',5449,'Gabrielle.Wagner@email.com'),(82,'rue L├®on Goncalves',2,'Devaux',61404,'Lorraine.Ramos@email.com'),(83,'rue Anouk Le Gall',17,'Delannoy-sur-Aubert',19112,'No├½l.Robin@email.com'),(84,'chemin Bousquet',82,'Guyot-sur-Mer',9444,'Doroth├®e.Rossi@email.com'),(85,'chemin Mich├¿le Pires',1,'Ferreira',86358,'Joseph.Leleu@email.com'),(86,'rue Gabriel Laroche',6,'FerreiraBourg',62456,'Tristan.Lecoq@email.com'),(87,'avenue de Roger',96,'Sainte Laurence',43499,'Eug├¿ne.Lemaire@email.com'),(88,'boulevard Maurice Chauvin',63,'Costaboeuf',2078,'Yves.Gilles@email.com'),(89,'rue Charlotte Petit',11,'Sainte Tristan',77375,'Andr├®e.Letellier@email.com'),(90,'rue Cl├®mence Fouquet',309,'Sainte Margot-les-Bains',6938,'Hugues.Gregoire@email.com'),(91,'chemin Astrid Chauveau',77,'Guerin-les-Bains',20533,'Genevi├¿ve.Nguyen@email.com'),(92,'rue de Menard',62,'Sauvageboeuf',37347,'Lucas.Cohen@email.com'),(93,'rue Moulin',79,'Brunet',57949,'├ëdouard.Louis@email.com'),(94,'boulevard Denis',3,'Saint Andr├®',90357,'Ren├®.Pons@email.com'),(95,'rue Luce Samson',146,'Bourgeois',26241,'St├®phanie.Labbe@email.com'),(96,'chemin S├®bastien Maurice',712,'Vallet',78482,'Louise.Bernard@email.com'),(97,'boulevard de Pascal',53,'Saint Aurore',99575,'Maryse.Dumont@email.com'),(98,'rue Ren├® Lefort',43,'Le Gall',38144,'Lucas.Arnaud@email.com'),(99,'avenue de Colin',30,'Sainte ├ëdith',54396,'Cl├®mence.Aubert@email.com'),(100,'avenue de Baron',511,'Blin',35140,'Ana├»s.Valentin@email.com'),(101,'rue de Guillot',52,'Renaultnec',36511,'Marcelle.Reynaud@email.com'),(102,'rue de Lambert',81,'Sainte Alice',83500,'Marthe.Besson@email.com'),(103,'chemin Marechal',29,'Godard',95798,'Raymond.Dias@email.com'),(104,'avenue de Texier',17,'Meyer',13461,'Thibaut.Munoz@email.com'),(105,'boulevard de Jacob',91,'Alvesboeuf',8993,'Laurence.Gimenez@email.com'),(106,'chemin Thomas Remy',76,'GomesBourg',28110,'Alfred.Cohen@email.com'),(107,'boulevard de Paris',28,'Ledoux',56221,'Zo├®.Carpentier@email.com'),(108,'rue de Duval',70,'Moreau',77982,'Catherine.Guilbert@email.com'),(109,'rue de Masse',99,'Morvan',8172,'Thierry.Vasseur@email.com'),(110,'boulevard Leclercq',82,'Blotdan',83014,'Julie.Deschamps@email.com'),(111,'rue Laine',54,'Bonnet',41527,'Colette.Lejeune@email.com'),(112,'avenue de Chartier',25,'Saint Maggie',5563,'Andr├®.Lamy@email.com'),(113,'rue Chevallier',62,'Saint Hortense',41089,'Marguerite.Masson@email.com'),(114,'rue Gilles Pichon',6,'Costa',59942,'Brigitte.Rocher@email.com'),(115,'rue Dupont',63,'Sainte AlixVille',51710,'Am├®lie.Leleu@email.com'),(116,'rue Marin',4,'Dialloboeuf',92546,'Alexandria.Couturier@email.com'),(117,'boulevard de Rodrigues',95,'Sainte Michelle',4793,'No├½l.Dufour@email.com'),(118,'rue Lacroix',79,'Camus-sur-Lenoir',54511,'├ël├®onore.Vaillant@email.com'),(119,'boulevard Blin',75,'BourdonVille',76396,'Arnaude.Arnaud@email.com'),(120,'avenue de Meyer',11,'Charrier',84738,'Emmanuelle.Arnaud@email.com'),(121,'boulevard Navarro',360,'Adam',2208,'Marcelle.Fabre@email.com'),(122,'rue Jean Tanguy',11,'Merciernec',3152,'L├®on.Loiseau@email.com'),(123,'avenue Gilles Robin',64,'Allain',50380,'Diane.Jacquet@email.com'),(124,'avenue de Laurent',45,'Bouchet',60931,'Alexandrie.Grondin@email.com'),(125,'boulevard de Gilbert',71,'Aubertboeuf',21835,'Alexandria.Valentin@email.com'),(126,'chemin de Antoine',39,'Saint Lucas',20697,'Nathalie.Bourdon@email.com'),(127,'chemin Rodrigues',455,'Leblancnec',39474,'Fr├®d├®ric.Carlier@email.com'),(128,'rue Hortense Legendre',87,'Gauthier-sur-Mer',83073,'Charles.Benard@email.com'),(129,'chemin Guillou',9,'Pruvost',37393,'Andr├®e.Foucher@email.com'),(130,'avenue de Normand',385,'Guillot-sur-Hernandez',67136,'Gabriel.Couturier@email.com'),(131,'rue Colette Delahaye',868,'Saint Julie-les-Bains',16685,'Olivier.Hoarau@email.com'),(132,'avenue No├®mi Gilles',3,'Hoareau-sur-Pierre',42618,'Patricia.Delorme@email.com'),(133,'rue Coste',60,'Renard',37162,'Camille.Perez@email.com'),(134,'boulevard Joubert',6,'Robertboeuf',3155,'Constance.Dupuy@email.com'),(135,'rue Regnier',53,'Laroche',49566,'Louis.Benoit@email.com'),(136,'rue Gr├®goire Faivre',824,'Bernier',74985,'Odette.Simon@email.com'),(137,'rue Julien Guillon',593,'Menard',9983,'Am├®lie.Gros@email.com'),(138,'boulevard de Renault',82,'Lemoineboeuf',80052,'Olivie.Remy@email.com'),(139,'rue Thierry',70,'Brunel',2835,'Jeannine.Bouvet@email.com'),(140,'boulevard Moreau',914,'Durand-sur-Daniel',43034,'Honor├®.Bonneau@email.com'),(141,'avenue Buisson',928,'Sainte Ren├®',20569,'Nathalie.Chevallier@email.com'),(142,'avenue Robin',27,'RouxBourg',34253,'Margot.Lemaire@email.com'),(143,'chemin de Wagner',43,'Dumas',78615,'Fran├ºois.Vincent@email.com'),(144,'avenue Jules Grenier',83,'Baudry',10489,'Thierry.Benoit@email.com'),(145,'avenue Eug├¿ne Thibault',77,'Saint Agn├¿s',35431,'Claude.Blin@email.com'),(146,'avenue Colette Regnier',297,'Neveu-la-For├¬t',9533,'Anne.Guillot@email.com'),(147,'rue Henriette Lemoine',45,'Mary',2661,'Andr├®e.Couturier@email.com'),(148,'rue de Lefebvre',787,'Saint Chantalboeuf',7008,'Virginie.Barbe@email.com'),(149,'rue de Bazin',977,'Diallo',83074,'Denis.Guibert@email.com'),(150,'boulevard Laurence Lopez',30,'Grenier-sur-Da Silva',85164,'Luce.Blin@email.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_address`
--

DROP TABLE IF EXISTS `delivery_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `street_name` varchar(120) DEFAULT NULL,
  `street_num` int DEFAULT NULL,
  `city_name` varchar(120) DEFAULT NULL,
  `city_pin` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `delivery_address_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_address`
--

LOCK TABLES `delivery_address` WRITE;
/*!40000 ALTER TABLE `delivery_address` DISABLE KEYS */;
INSERT INTO `delivery_address` VALUES (1,'rue de Baron',10,'Sainte Maggie',63516,1),(2,'chemin Valentine Mercier',14,'Julien',71021,2),(3,'boulevard de Traore',20,'Mahe',71725,3),(4,'rue de Morvan',311,'CostaVille',617,4),(5,'boulevard Corinne Perret',15,'Boulay',99698,5),(6,'rue Nath Mace',23,'Ledoux',76217,6),(7,'rue Doroth├®e Riou',316,'Leblanc',75281,7),(8,'chemin Paris',47,'Rousseau-les-Bains',87164,8),(9,'boulevard Audrey Menard',22,'PiresVille',50900,9),(10,'avenue Dubois',98,'Gautier',40000,10),(11,'chemin Lenoir',6,'Sainte Aim├®eVille',87911,11),(12,'chemin de Auger',97,'Sauvage-sur-Lemaire',46358,12),(13,'avenue Franck Barthelemy',9,'Sainte Th├®ophile-sur-Mer',92260,13),(14,'rue Neveu',4,'Joseph',56697,14),(15,'rue de Teixeira',610,'Muller',20006,15),(16,'rue Texier',1,'Mary',15936,16),(17,'boulevard de Lambert',367,'Sainte Oc├®ane',45962,17),(18,'boulevard St├®phane Henry',578,'Courtoisboeuf',77322,18),(19,'rue Constance Leclercq',4,'Traore',62349,19),(20,'boulevard Lucie Diallo',1,'Ferrand',46743,20),(21,'rue Jacquot',21,'Saint ├ël├®onorenec',46028,21),(22,'rue Delahaye',24,'Bonneau',20532,22),(23,'boulevard Bernier',4,'Martin-sur-Mer',90087,23),(24,'chemin de Maurice',71,'Colas',89411,24),(25,'boulevard ├ëtienne Rossi',452,'Gosselin-sur-Mer',45737,25),(26,'avenue de Devaux',3,'Monnierdan',78878,26),(27,'avenue Barbe',880,'Saint MargotVille',20724,27),(28,'chemin Pichon',43,'Sainte Margaretboeuf',69150,28),(29,'rue de Pottier',96,'Bigot-sur-Duhamel',66083,29),(30,'rue Genevi├¿ve Besnard',67,'Saint ├ëlise',32182,30),(31,'avenue Lemonnier',4,'Petitjean-sur-Mer',36386,31),(32,'chemin Margot Levy',6,'Thibault',77069,32),(33,'chemin de Vidal',12,'Moreau-sur-Poirier',22245,33),(34,'avenue Georges',41,'Colas',38257,34),(35,'rue de Lagarde',977,'Pinto',88124,35),(36,'avenue Alice Guibert',7,'Aubry',52886,36),(37,'rue Evrard',60,'DevauxVille',23766,37),(38,'rue Clement',28,'Roussel-sur-Gaudin',36755,38),(39,'boulevard de Brunel',49,'Sainte Alix',42233,39),(40,'chemin Vidal',918,'Blanchard',75707,40),(41,'avenue de Courtois',67,'Sainte Daniel',57161,41),(42,'boulevard Morvan',62,'Lenoir',3072,42),(43,'rue de Lejeune',810,'Lacombe',97124,43),(44,'rue Diane Bonnet',23,'Albert-sur-Germain',59873,44),(45,'rue Thierry',555,'Sainte H├®l├¿nedan',46572,45),(46,'chemin de Girard',36,'Didierdan',49812,46),(47,'avenue ├ëdith Roussel',78,'Goncalvesdan',68827,47),(48,'chemin de Blanchet',9,'Saint Vincent',88220,48),(49,'rue Margot Germain',2,'Sainte LuceVille',39351,49);
/*!40000 ALTER TABLE `delivery_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Ham'),(2,'Mushrooms'),(3,'Mozzarella'),(4,'Tomato'),(5,'Basil'),(6,'Onions'),(7,'Salami'),(8,'Paprika'),(9,'Kebab'),(10,'Parmesan'),(11,'Shrimps'),(12,'Cream');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pizzeria_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_id` (`pizzeria_id`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`pizzeria_id`) REFERENCES `pizzeria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_has_product`
--

DROP TABLE IF EXISTS `menu_has_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_has_product` (
  `menu_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  UNIQUE KEY `_stock_ingredient_uc` (`menu_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `menu_has_product_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  CONSTRAINT `menu_has_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_has_product`
--

LOCK TABLES `menu_has_product` WRITE;
/*!40000 ALTER TABLE `menu_has_product` DISABLE KEYS */;
INSERT INTO `menu_has_product` VALUES (1,1),(1,3),(1,4),(1,5),(1,6),(1,7),(2,1),(2,3),(2,4),(2,6),(2,7),(3,1),(3,2),(3,3),(3,4),(3,7),(4,1),(4,2),(4,3),(4,5),(4,6),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7);
/*!40000 ALTER TABLE `menu_has_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `pizzeria_id` int NOT NULL,
  `employee_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `order_status_id` int NOT NULL,
  `ordered` datetime DEFAULT NULL,
  `cost` varchar(10) DEFAULT NULL,
  `vat` varchar(10) DEFAULT NULL,
  `total_cost` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`cart_id`,`pizzeria_id`,`employee_id`,`customer_id`,`order_status_id`),
  KEY `cart_id` (`cart_id`),
  KEY `pizzeria_id` (`pizzeria_id`),
  KEY `employee_id` (`employee_id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_status_id` (`order_status_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`pizzeria_id`) REFERENCES `pizzeria` (`id`),
  CONSTRAINT `order_ibfk_3` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  CONSTRAINT `order_ibfk_4` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `order_ibfk_5` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,2,44,51,3,'2021-07-13 09:25:39','373.5','37.35','410.85'),(2,2,2,13,52,1,'2021-07-13 09:25:39','357.4','35.74','393.14'),(3,3,5,26,53,4,'2021-07-13 09:25:39','336.5','33.65','370.15'),(4,4,3,27,54,1,'2021-07-13 09:25:40','124.5','12.45','136.95'),(5,5,5,26,55,6,'2021-07-13 09:25:40','156.5','15.65','172.15'),(6,6,4,24,56,6,'2021-07-13 09:25:40','251.3','25.13','276.43'),(7,7,2,31,57,6,'2021-07-13 09:25:40','13.5','1.35','14.85'),(8,8,5,21,58,6,'2021-07-13 09:25:40','259.5','25.95','285.45'),(9,9,5,16,59,3,'2021-07-13 09:25:40','155.7','15.57','171.27'),(10,10,4,28,60,5,'2021-07-13 09:25:40','248.1','24.81','272.91'),(11,11,2,33,61,2,'2021-07-13 09:25:40','75','7.5','82.5'),(12,12,4,11,62,6,'2021-07-13 09:25:40','270.8','27.08','297.88'),(13,13,2,31,63,2,'2021-07-13 09:25:40','215.4','21.54','236.94'),(14,14,5,26,64,4,'2021-07-13 09:25:40','88','8.8','96.8'),(15,15,1,9,65,2,'2021-07-13 09:25:41','240','24','264'),(16,16,4,8,66,4,'2021-07-13 09:25:41','318.1','31.81','349.91'),(17,17,3,3,67,5,'2021-07-13 09:25:41','22.8','2.28','25.08'),(18,18,2,1,68,4,'2021-07-13 09:25:41','198','19.8','217.8'),(19,19,5,2,69,3,'2021-07-13 09:25:41','358','35.8','393.8'),(20,20,3,22,70,4,'2021-07-13 09:25:41','205.6','20.56','226.16'),(21,21,1,47,71,2,'2021-07-13 09:25:41','132','13.2','145.2'),(22,22,5,40,72,3,'2021-07-13 09:25:41','229.8','22.98','252.78'),(23,23,1,22,73,2,'2021-07-13 09:25:41','61.2','6.12','67.32'),(24,24,2,38,74,6,'2021-07-13 09:25:41','460.3','46.03','506.33'),(25,25,1,39,75,1,'2021-07-13 09:25:42','179.9','17.99','197.89'),(26,26,2,29,76,4,'2021-07-13 09:25:42','305','30.5','335.5'),(27,27,5,45,77,4,'2021-07-13 09:25:42','117.5','11.75','129.25'),(28,28,5,44,78,4,'2021-07-13 09:25:42','324.6','32.46','357.06'),(29,29,5,21,79,1,'2021-07-13 09:25:42','338.4','33.84','372.24'),(30,30,5,49,80,3,'2021-07-13 09:25:42','78','7.8','85.8'),(31,31,3,3,81,5,'2021-07-13 09:25:42','167.7','16.77','184.47'),(32,32,5,40,82,3,'2021-07-13 09:25:42','181.9','18.19','200.09'),(33,33,1,8,83,4,'2021-07-13 09:25:42','247.8','24.78','272.58'),(34,34,3,5,84,5,'2021-07-13 09:25:42','78.8','7.88','86.68'),(35,35,2,24,85,3,'2021-07-13 09:25:43','157.5','15.75','173.25'),(36,36,3,37,86,6,'2021-07-13 09:25:43','108.6','10.86','119.46'),(37,37,1,20,87,2,'2021-07-13 09:25:43','143.4','14.34','157.74'),(38,38,1,2,88,5,'2021-07-13 09:25:43','169.4','16.94','186.34'),(39,39,3,40,89,4,'2021-07-13 09:25:43','139','13.9','152.9'),(40,40,4,22,90,6,'2021-07-13 09:25:43','85.5','8.55','94.05'),(41,41,4,5,91,5,'2021-07-13 09:25:43','277.5','27.75','305.25'),(42,42,1,12,92,4,'2021-07-13 09:25:43','214.8','21.48','236.28'),(43,43,2,33,93,4,'2021-07-13 09:25:43','262.1','26.21','288.31'),(44,44,2,35,94,1,'2021-07-13 09:25:43','228.7','22.87','251.57'),(45,45,4,14,95,6,'2021-07-13 09:25:43','252.1','25.21','277.31'),(46,46,5,5,96,6,'2021-07-13 09:25:44','108','10.8','118.8'),(47,47,2,24,97,2,'2021-07-13 09:25:44','30','3','33'),(48,48,3,17,98,3,'2021-07-13 09:25:44','186.1','18.61','204.71'),(49,49,5,39,99,2,'2021-07-13 09:25:44','447','44.7','491.7');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (6,'Cancelled'),(5,'Closed'),(4,'Delivered'),(2,'In Preparation'),(1,'New'),(3,'Shipped');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `handed` varchar(45) DEFAULT NULL,
  `change` varchar(45) DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'410.85','0',1),(2,'393.14','0',2),(3,'370.15','0',3),(4,'136.95','0',4),(5,'172.15','0',5),(6,'276.43','0',6),(7,'14.85','0',7),(8,'285.45','0',8),(9,'171.27','0',9),(10,'272.91','0',10),(11,'82.5','0',11),(12,'297.88','0',12),(13,'236.94','0',13),(14,'96.8','0',14),(15,'264','0',15),(16,'349.91','0',16),(17,'25.08','0',17),(18,'217.8','0',18),(19,'393.8','0',19),(20,'226.16','0',20),(21,'145.2','0',21),(22,'252.78','0',22),(23,'67.32','0',23),(24,'506.33','0',24),(25,'197.89','0',25),(26,'335.5','0',26),(27,'129.25','0',27),(28,'357.06','0',28),(29,'372.24','0',29),(30,'85.8','0',30),(31,'184.47','0',31),(32,'200.09','0',32),(33,'272.58','0',33),(34,'86.68','0',34),(35,'173.25','0',35),(36,'119.46','0',36),(37,'157.74','0',37),(38,'186.34','0',38),(39,'152.9','0',39),(40,'94.05','0',40),(41,'305.25','0',41),(42,'236.28','0',42),(43,'288.31','0',43),(44,'251.57','0',44),(45,'277.31','0',45),(46,'118.8','0',46),(47,'33','0',47),(48,'204.71','0',48),(49,'491.7','0',49);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (6,'Assign Order'),(7,'Change Order Status'),(2,'Create User'),(3,'Delete User'),(4,'Update Any User'),(5,'Update Menu'),(1,'Update User');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizza` (
  `id` int NOT NULL,
  `recipe` mediumtext,
  `image_link` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `pizza_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES (1,'D\'Autres autrefois r├®sister. Faute b├¬te encore doute nerveux traverser tout. D├®passer battre descendre piti├®.\nSimple oreille parti derri├¿re d├®part. Lendemain compte voix.','/dominer/clef/abri/appel/dessiner/naturel.gif','Le droit d\'atteindre vos buts de mani├¿re s├╗re'),(2,'Rien davantage attendre lever. Premier impossible fortune occasion. Anglais angoisse tout davantage voisin titre combat car.','/as/sans/vaincre/sonner/classe/cr├®er.gif','La possibilit├® d\'avancer ├á sa source'),(3,'Armer arbre politique entre fum├®e dessus garde. Passion enfant figurer r├¬ve saint. Cruel discuter vite demander. Larme tant├┤t simplement entendre emmener.\nNe jour en endroit.','/remettre/contre/honneur/place/├®chapper/haut.tiff','Le plaisir de rouler autrement'),(4,'Distinguer avant ├®lever public. Soutenir froid saint place occasion ├®motion l\'un. Vingt changement envelopper libre d├®crire.','/grandir/choisir/pleurer/salle/expliquer/exemple.tiff','Le droit de rouler en toute tranquilit├®'),(5,'Vaste manquer r├®sultat recevoir parmi bas. Mal son dire de.\n├ëtrange l\'une disposer lune c├┤te r├®sultat caract├¿re. Prochain rose profond sec article. Secr├®taire sous supporter ├®chapper race.','/comme/force/sans/ventre/ministre/naturel.bmp','L\'avantage de rouler avant-tout'),(6,'Tout supposer fleur faible. Emp├¬cher voisin importance chaud assez compagnon. Grandir ligne retour entr├®e. Guerre malade avant l\'un.\nSaint enfance dessus autorit├® faible occasion.','/cent/plaindre/pays/voil├á/feu/sujet.png','Le confort d\'avancer naturellement'),(7,'Cercle figurer d├®faut compter comme point lieu dessiner. Titre dessiner cacher d├®poser avis ├®taler.','/figurer/traiter/an/confier/musique/├®cole.tiff','L\'art d\'innover de mani├¿re efficace');
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzeria`
--

DROP TABLE IF EXISTS `pizzeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizzeria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzeria`
--

LOCK TABLES `pizzeria` WRITE;
/*!40000 ALTER TABLE `pizzeria` DISABLE KEYS */;
INSERT INTO `pizzeria` VALUES (4,'Delattre Berger S.A.S.'),(1,'Guillon S.A.S.'),(3,'Lebon'),(5,'Lefebvre'),(2,'Royer');
/*!40000 ALTER TABLE `pizzeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzeria_has_employee`
--

DROP TABLE IF EXISTS `pizzeria_has_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizzeria_has_employee` (
  `pizzeria_id` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  UNIQUE KEY `_stock_ingredient_uc` (`pizzeria_id`,`employee_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `pizzeria_has_employee_ibfk_1` FOREIGN KEY (`pizzeria_id`) REFERENCES `pizzeria` (`id`),
  CONSTRAINT `pizzeria_has_employee_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzeria_has_employee`
--

LOCK TABLES `pizzeria_has_employee` WRITE;
/*!40000 ALTER TABLE `pizzeria_has_employee` DISABLE KEYS */;
INSERT INTO `pizzeria_has_employee` VALUES (1,2),(1,15),(1,22),(1,25),(1,34),(1,37),(1,46),(2,5),(2,14),(2,21),(2,27),(2,28),(2,29),(2,33),(2,39),(2,44),(2,47),(2,50),(3,3),(3,10),(3,17),(3,23),(3,24),(3,32),(3,35),(3,40),(3,41),(4,4),(4,6),(4,7),(4,11),(4,12),(4,16),(4,20),(4,26),(4,31),(4,36),(4,42),(4,45),(4,48),(4,49),(5,1),(5,8),(5,9),(5,13),(5,18),(5,19),(5,30),(5,38),(5,43);
/*!40000 ALTER TABLE `pizzeria_has_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `VAT` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Regina',10,17,'pizza'),(2,'BBQ',10,19,'pizza'),(3,'Kebab',10,9,'pizza'),(4,'Hawaiian',10,13,'pizza'),(5,'4 seasons',10,9,'pizza'),(6,'Cheesy',10,15,'pizza'),(7,'Hot & Spicy',10,10,'pizza');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_has_category`
--

DROP TABLE IF EXISTS `product_has_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_has_category` (
  `product_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  UNIQUE KEY `_product_category_uc` (`product_id`,`category_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_has_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `product_has_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_has_category`
--

LOCK TABLES `product_has_category` WRITE;
/*!40000 ALTER TABLE `product_has_category` DISABLE KEYS */;
INSERT INTO `product_has_category` VALUES (1,1),(1,4),(2,1),(2,2),(3,1),(3,2),(4,2),(4,3),(5,1),(6,1),(6,2),(7,2),(7,3);
/*!40000 ALTER TABLE `product_has_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_has_ingredient`
--

DROP TABLE IF EXISTS `product_has_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_has_ingredient` (
  `ingredient_id` int NOT NULL,
  `product_id` int NOT NULL,
  `ingredient_quantity` int DEFAULT NULL,
  PRIMARY KEY (`ingredient_id`,`product_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_has_ingredient_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `product_has_ingredient_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_has_ingredient`
--

LOCK TABLES `product_has_ingredient` WRITE;
/*!40000 ALTER TABLE `product_has_ingredient` DISABLE KEYS */;
INSERT INTO `product_has_ingredient` VALUES (1,6,22),(1,7,19),(2,2,47),(2,4,50),(2,6,46),(2,7,4),(3,2,27),(3,4,30),(3,5,39),(3,6,7),(3,7,17),(4,2,10),(4,3,24),(4,4,26),(4,5,45),(4,7,38),(5,1,20),(5,3,30),(5,4,16),(5,6,36),(5,7,11),(6,1,9),(6,3,45),(6,4,46),(6,6,0),(6,7,3),(7,2,1),(7,3,3),(7,5,10),(7,6,5),(7,7,31),(8,1,3),(8,2,41),(8,5,0),(8,6,24),(8,7,22),(9,1,20),(9,2,23),(9,3,12),(9,4,33),(9,6,11),(9,7,32),(10,4,0),(10,5,19),(10,6,43),(10,7,41),(11,1,45),(11,2,24),(11,3,24),(11,4,46),(11,6,29),(11,7,9),(12,4,3),(12,5,10),(12,6,34),(12,7,16);
/*!40000 ALTER TABLE `product_has_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(80) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `user_account_id` int DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `user_account_id` (`user_account_id`),
  CONSTRAINT `role_ibfk_1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Paulette','Bernard','+33 (0)4 04 96 ',1,'employee'),(2,'Eug├¿ne','Joly','+33 6 47 99 25 ',2,'employee'),(3,'Zacharie','Labbe','+33 (0)6 26 02 ',3,'employee'),(4,'Christelle','Meunier','+33 4 76 24 67 ',4,'employee'),(5,'Aim├®e','Menard','+33 (0)4 56 48 ',5,'employee'),(6,'Adrienne','Vallee','08 09 37 61 76',6,'employee'),(7,'Emmanuel','Remy','0584913278',7,'employee'),(8,'Jean','Bonnet','+33 6 84 34 41 ',8,'employee'),(9,'Ana├»s','Vidal','0295601129',9,'employee'),(10,'Andr├®','Faure','0485085385',10,'employee'),(11,'Alphonse','Wagner','+33 (0)6 75 96 ',11,'employee'),(12,'Beno├«t','Hoareau','+33 2 79 48 34 ',12,'employee'),(13,'Guillaume','Guerin','+33 8 09 71 03 ',13,'employee'),(14,'Susanne','Foucher','+33 4 64 94 05 ',14,'employee'),(15,'Antoine','Reynaud','+33 (0)8 02 66 ',15,'employee'),(16,'Gilbert','Mary','+33 8 09 20 96 ',16,'employee'),(17,'Alphonse','Dumont','+33 (0)2 95 88 ',17,'employee'),(18,'Auguste','Valentin','08 05 96 45 52',18,'employee'),(19,'Genevi├¿ve','Legendre','+33 8 00 24 78 ',19,'employee'),(20,'Thibault','Vaillant','+33 (0)2 82 59 ',20,'employee'),(21,'Margaux','Poirier','04 26 76 26 15',21,'employee'),(22,'Ren├®','Leclerc','+33 (0)2 08 68 ',22,'employee'),(23,'Danielle','Michel','+33 (0)8 07 02 ',23,'employee'),(24,'Louis','Charpentier','+33 (0)6 18 93 ',24,'employee'),(25,'Louis','Marchand','0809452657',25,'employee'),(26,'Gilles','Clement','+33 (0)3 99 87 ',26,'employee'),(27,'├ëdith','Dubois','+33 (0)1 44 57 ',27,'employee'),(28,'Denise','Ollivier','+33 5 07 67 60 ',28,'employee'),(29,'Alexandria','Louis','01 77 34 26 67',29,'employee'),(30,'Aim├®e','Prevost','01 18 14 34 22',30,'employee'),(31,'Sylvie','Neveu','01 72 60 15 44',31,'employee'),(32,'Jos├®phine','Philippe','01 99 77 96 89',32,'employee'),(33,'Laurent','Carlier','+33 6 76 13 66 ',33,'employee'),(34,'Luce','Riviere','+33 1 34 90 79 ',34,'employee'),(35,'C├®lina','Moulin','01 29 73 66 11',35,'employee'),(36,'R├®my','Legendre','+33 (0)1 40 94 ',36,'employee'),(37,'Diane','Merle','+33 (0)6 94 10 ',37,'employee'),(38,'Marianne','Lefevre','0312715903',38,'employee'),(39,'Adrien','Jacquet','+33 (0)4 04 35 ',39,'employee'),(40,'Louis','Salmon','+33 (0)1 37 09 ',40,'employee'),(41,'Christelle','Delahaye','+33 1 18 22 98 ',41,'employee'),(42,'Auguste','Brunel','01 30 43 79 91',42,'employee'),(43,'├ëmile','Fernandes','+33 5 02 66 44 ',43,'employee'),(44,'Jules','Guillaume','0669042055',44,'employee'),(45,'Aurore','Dufour','0539297239',45,'employee'),(46,'Anne','Barthelemy','06 60 31 61 46',46,'employee'),(47,'No├½l','Valentin','+33 8 03 50 66 ',47,'employee'),(48,'Olivier','Le Roux','0601145105',48,'employee'),(49,'Mathilde','Renault','0640803789',49,'employee'),(50,'Margaret','Laurent','0363647512',50,'employee'),(51,'Fr├®d├®ric','Antoine','0800122568',51,'customer'),(52,'Raymond','Jourdan','+33 (0)2 95 20 ',52,'customer'),(53,'Zacharie','Bodin','+33 (0)6 13 74 ',53,'customer'),(54,'Laetitia','Berthelot','+33 2 77 24 55 ',54,'customer'),(55,'Margaud','Guillaume','03 58 55 70 60',55,'customer'),(56,'Sylvie','Fournier','04 96 06 80 56',56,'customer'),(57,'Susan','Caron','+33 6 50 58 62 ',57,'customer'),(58,'Corinne','Marchand','+33 3 31 81 58 ',58,'customer'),(59,'St├®phane','Neveu','+33 (0)6 77 72 ',59,'customer'),(60,'├ëlise','Daniel','+33 (0)1 14 58 ',60,'customer'),(61,'Thibault','Cousin','03 07 49 39 40',61,'customer'),(62,'R├®my','Godard','0516347706',62,'customer'),(63,'Bernard','Leger','0248176156',63,'customer'),(64,'Maggie','Schmitt','08 09 02 68 82',64,'customer'),(65,'Yves','Guillet','0616850134',65,'customer'),(66,'Olivie','Diaz','+33 (0)8 04 09 ',66,'customer'),(67,'V├®ronique','Petitjean','+33 1 80 22 13 ',67,'customer'),(68,'P├®n├®lope','Pasquier','+33 8 02 63 55 ',68,'customer'),(69,'P├®n├®lope','Leduc','0157905542',69,'customer'),(70,'Valentine','Courtois','05 18 04 75 32',70,'customer'),(71,'Jeannine','Perez','+33 (0)5 08 57 ',71,'customer'),(72,'Madeleine','Seguin','+33 (0)2 60 65 ',72,'customer'),(73,'Fran├ºoise','Weber','01 21 35 11 58',73,'customer'),(74,'Jean','Valette','05 79 63 66 93',74,'customer'),(75,'S├®bastien','Mace','+33 4 94 13 04 ',75,'customer'),(76,'S├®bastien','Boulanger','+33 8 08 05 73 ',76,'customer'),(77,'Lucy','Lelievre','+33 (0)1 98 94 ',77,'customer'),(78,'Denise','Philippe','+33 2 94 46 31 ',78,'customer'),(79,'Diane','Hardy','+33 (0)8 09 77 ',79,'customer'),(80,'Michel','Lejeune','0170875370',80,'customer'),(81,'Gabrielle','Wagner','+33 1 48 28 86 ',81,'customer'),(82,'Lorraine','Ramos','+33 2 47 05 24 ',82,'customer'),(83,'No├½l','Robin','0240178404',83,'customer'),(84,'Doroth├®e','Rossi','+33 (0)6 14 85 ',84,'customer'),(85,'Joseph','Leleu','05 76 67 76 19',85,'customer'),(86,'Tristan','Lecoq','0490904711',86,'customer'),(87,'Eug├¿ne','Lemaire','0318282390',87,'customer'),(88,'Yves','Gilles','+33 (0)1 32 13 ',88,'customer'),(89,'Andr├®e','Letellier','+33 1 08 60 29 ',89,'customer'),(90,'Hugues','Gregoire','+33 (0)4 12 71 ',90,'customer'),(91,'Genevi├¿ve','Nguyen','+33 (0)3 69 57 ',91,'customer'),(92,'Lucas','Cohen','+33 (0)6 18 40 ',92,'customer'),(93,'├ëdouard','Louis','01 00 41 06 60',93,'customer'),(94,'Ren├®','Pons','+33 (0)1 54 94 ',94,'customer'),(95,'St├®phanie','Labbe','08 08 81 74 67',95,'customer'),(96,'Louise','Bernard','0341511590',96,'customer'),(97,'Maryse','Dumont','+33 (0)2 42 98 ',97,'customer'),(98,'Lucas','Arnaud','+33 (0)6 11 04 ',98,'customer'),(99,'Cl├®mence','Aubert','04 63 80 56 76',99,'customer'),(100,'Ana├»s','Valentin','+33 4 69 78 93 ',100,'customer'),(101,'Marcelle','Reynaud','01 92 68 45 85',101,'customer'),(102,'Marthe','Besson','+33 (0)5 88 04 ',102,'customer'),(103,'Raymond','Dias','+33 (0)3 07 22 ',103,'customer'),(104,'Thibaut','Munoz','03 38 06 81 40',104,'customer'),(105,'Laurence','Gimenez','+33 4 19 34 14 ',105,'customer'),(106,'Alfred','Cohen','+33 (0)4 23 15 ',106,'customer'),(107,'Zo├®','Carpentier','+33 (0)8 05 90 ',107,'customer'),(108,'Catherine','Guilbert','06 23 63 73 89',108,'customer'),(109,'Thierry','Vasseur','01 11 70 20 41',109,'customer'),(110,'Julie','Deschamps','0467762953',110,'customer'),(111,'Colette','Lejeune','+33 1 29 96 95 ',111,'customer'),(112,'Andr├®','Lamy','01 73 99 41 87',112,'customer'),(113,'Marguerite','Masson','05 76 68 28 42',113,'customer'),(114,'Brigitte','Rocher','05 93 49 89 91',114,'customer'),(115,'Am├®lie','Leleu','06 45 18 92 64',115,'customer'),(116,'Alexandria','Couturier','+33 (0)4 32 94 ',116,'customer'),(117,'No├½l','Dufour','+33 1 57 95 99 ',117,'customer'),(118,'├ël├®onore','Vaillant','+33 (0)1 41 44 ',118,'customer'),(119,'Arnaude','Arnaud','0107123452',119,'customer'),(120,'Emmanuelle','Arnaud','06 23 17 03 95',120,'customer'),(121,'Marcelle','Fabre','0515876041',121,'customer'),(122,'L├®on','Loiseau','+33 (0)2 60 54 ',122,'customer'),(123,'Diane','Jacquet','03 05 68 98 33',123,'customer'),(124,'Alexandrie','Grondin','+33 5 52 99 36 ',124,'customer'),(125,'Alexandria','Valentin','+33 (0)2 62 57 ',125,'customer'),(126,'Nathalie','Bourdon','0132558457',126,'customer'),(127,'Fr├®d├®ric','Carlier','04 60 61 49 88',127,'customer'),(128,'Charles','Benard','0306477471',128,'customer'),(129,'Andr├®e','Foucher','04 43 63 47 85',129,'customer'),(130,'Gabriel','Couturier','08 06 37 21 89',130,'customer'),(131,'Olivier','Hoarau','0136832543',131,'customer'),(132,'Patricia','Delorme','+33 3 73 83 98 ',132,'customer'),(133,'Camille','Perez','04 49 82 28 39',133,'customer'),(134,'Constance','Dupuy','0462556470',134,'customer'),(135,'Louis','Benoit','+33 (0)4 43 74 ',135,'customer'),(136,'Odette','Simon','0445019927',136,'customer'),(137,'Am├®lie','Gros','+33 (0)3 43 48 ',137,'customer'),(138,'Olivie','Remy','+33 3 95 19 05 ',138,'customer'),(139,'Jeannine','Bouvet','01 10 12 67 75',139,'customer'),(140,'Honor├®','Bonneau','+33 2 91 74 58 ',140,'customer'),(141,'Nathalie','Chevallier','+33 (0)5 68 02 ',141,'customer'),(142,'Margot','Lemaire','04 54 04 18 70',142,'customer'),(143,'Fran├ºois','Vincent','06 16 66 73 41',143,'customer'),(144,'Thierry','Benoit','04 06 68 85 05',144,'customer'),(145,'Claude','Blin','+33 1 13 35 99 ',145,'customer'),(146,'Anne','Guillot','+33 (0)6 86 40 ',146,'customer'),(147,'Andr├®e','Couturier','0190318511',147,'customer'),(148,'Virginie','Barbe','+33 (0)8 02 14 ',148,'customer'),(149,'Denis','Guibert','+33 8 06 60 55 ',149,'customer'),(150,'Luce','Blin','04 97 92 98 15',150,'customer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permission`
--

DROP TABLE IF EXISTS `role_has_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permission` (
  `role_id` int DEFAULT NULL,
  `permission_id` int DEFAULT NULL,
  UNIQUE KEY `_stock_ingredient_uc` (`role_id`,`permission_id`),
  KEY `permission_id` (`permission_id`),
  CONSTRAINT `role_has_permission_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `role_has_permission_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permission`
--

LOCK TABLES `role_has_permission` WRITE;
/*!40000 ALTER TABLE `role_has_permission` DISABLE KEYS */;
INSERT INTO `role_has_permission` VALUES (1,1),(1,6),(1,7),(2,1),(2,6),(2,7),(3,1),(3,6),(3,7),(4,1),(4,6),(4,7),(5,1),(5,6),(5,7),(6,1),(6,6),(6,7),(7,1),(7,6),(7,7),(8,1),(8,6),(8,7),(9,1),(9,6),(9,7),(10,1),(10,6),(10,7),(11,1),(11,6),(11,7),(12,1),(12,6),(12,7),(13,1),(13,6),(13,7),(14,1),(14,6),(14,7),(15,1),(15,6),(15,7),(16,1),(16,6),(16,7),(17,1),(17,6),(17,7),(18,1),(18,6),(18,7),(19,1),(19,6),(19,7),(20,1),(20,6),(20,7),(21,1),(21,6),(21,7),(22,1),(22,6),(22,7),(23,1),(23,6),(23,7),(24,1),(24,6),(24,7),(25,1),(25,6),(25,7),(26,1),(26,6),(26,7),(27,1),(27,6),(27,7),(28,1),(28,6),(28,7),(29,1),(29,6),(29,7),(30,1),(30,6),(30,7),(31,1),(31,6),(31,7),(32,1),(32,6),(32,7),(33,1),(33,6),(33,7),(34,1),(34,6),(34,7),(35,1),(35,6),(35,7),(36,1),(36,6),(36,7),(37,1),(37,6),(37,7),(38,1),(38,6),(38,7),(39,1),(39,6),(39,7),(40,1),(40,6),(40,7),(41,1),(41,6),(41,7),(42,1),(42,6),(42,7),(43,1),(43,6),(43,7),(44,1),(44,6),(44,7),(45,1),(45,6),(45,7),(46,1),(46,6),(46,7),(47,1),(47,6),(47,7),(48,1),(48,6),(48,7),(49,1),(49,6),(49,7),(50,1),(50,6),(50,7),(51,1),(51,3),(52,1),(52,3),(53,1),(53,3),(54,1),(54,3),(55,1),(55,3),(56,1),(56,3),(57,1),(57,3),(58,1),(58,3),(59,1),(59,3),(60,1),(60,3),(61,1),(61,3),(62,1),(62,3),(63,1),(63,3),(64,1),(64,3),(65,1),(65,3),(66,1),(66,3),(67,1),(67,3),(68,1),(68,3),(69,1),(69,3),(70,1),(70,3),(71,1),(71,3),(72,1),(72,3),(73,1),(73,3),(74,1),(74,3),(75,1),(75,3),(76,1),(76,3),(77,1),(77,3),(78,1),(78,3),(79,1),(79,3),(80,1),(80,3),(81,1),(81,3),(82,1),(82,3),(83,1),(83,3),(84,1),(84,3),(85,1),(85,3),(86,1),(86,3),(87,1),(87,3),(88,1),(88,3),(89,1),(89,3),(90,1),(90,3),(91,1),(91,3),(92,1),(92,3),(93,1),(93,3),(94,1),(94,3),(95,1),(95,3),(96,1),(96,3),(97,1),(97,3),(98,1),(98,3),(99,1),(99,3),(100,1),(100,3),(101,1),(101,3),(102,1),(102,3),(103,1),(103,3),(104,1),(104,3),(105,1),(105,3),(106,1),(106,3),(107,1),(107,3),(108,1),(108,3),(109,1),(109,3),(110,1),(110,3),(111,1),(111,3),(112,1),(112,3),(113,1),(113,3),(114,1),(114,3),(115,1),(115,3),(116,1),(116,3),(117,1),(117,3),(118,1),(118,3),(119,1),(119,3),(120,1),(120,3),(121,1),(121,3),(122,1),(122,3),(123,1),(123,3),(124,1),(124,3),(125,1),(125,3),(126,1),(126,3),(127,1),(127,3),(128,1),(128,3),(129,1),(129,3),(130,1),(130,3),(131,1),(131,3),(132,1),(132,3),(133,1),(133,3),(134,1),(134,3),(135,1),(135,3),(136,1),(136,3),(137,1),(137,3),(138,1),(138,3),(139,1),(139,3),(140,1),(140,3),(141,1),(141,3),(142,1),(142,3),(143,1),(143,3),(144,1),(144,3),(145,1),(145,3),(146,1),(146,3),(147,1),(147,3),(148,1),(148,3),(149,1),(149,3),(150,1),(150,3);
/*!40000 ALTER TABLE `role_has_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pizzeria_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_id` (`pizzeria_id`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`pizzeria_id`) REFERENCES `pizzeria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_has_ingredient`
--

DROP TABLE IF EXISTS `stock_has_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_has_ingredient` (
  `ingredient_id` int NOT NULL,
  `stock_id` int NOT NULL,
  `ingredient_quantity` int DEFAULT NULL,
  PRIMARY KEY (`ingredient_id`,`stock_id`),
  KEY `stock_id` (`stock_id`),
  CONSTRAINT `stock_has_ingredient_ibfk_1` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`),
  CONSTRAINT `stock_has_ingredient_ibfk_2` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_has_ingredient`
--

LOCK TABLES `stock_has_ingredient` WRITE;
/*!40000 ALTER TABLE `stock_has_ingredient` DISABLE KEYS */;
INSERT INTO `stock_has_ingredient` VALUES (1,1,4814),(1,2,4511),(1,3,1519),(1,5,4508),(2,1,4828),(2,2,4876),(2,3,3555),(2,4,14),(2,5,2355),(3,1,2116),(3,2,2315),(3,3,37),(3,4,813),(3,5,3693),(4,1,4029),(4,2,928),(4,3,407),(4,5,4835),(5,2,4449),(5,3,573),(5,5,1517),(6,2,1457),(6,3,589),(6,4,1689),(6,5,1034),(7,2,2297),(7,3,898),(7,5,4965),(8,2,4516),(8,3,3708),(8,5,3654),(9,1,4503),(9,2,840),(9,5,831),(10,1,2522),(10,2,2122),(10,3,101),(10,5,2660),(11,2,2161),(11,5,2861),(12,2,819),(12,3,1632),(12,4,3773),(12,5,4277);
/*!40000 ALTER TABLE `stock_has_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,'Paulette.Bernard','$Rf9WlNzbt'),(2,'Eug├¿ne.Joly','%8hIo8!yrq'),(3,'Zacharie.Labbe','Wk41_PGmY)'),(4,'Christelle.Meunier','_)Qz6Z&bK8'),(5,'Aim├®e.Menard',')VRmczXP8o'),(6,'Adrienne.Vallee','*1PKFvRQ@c'),(7,'Emmanuel.Remy','^3lW2cIm_3'),(8,'Jean.Bonnet','*+43bVxwod'),(9,'Ana├»s.Vidal','+(UQ5eBBX9'),(10,'Andr├®.Faure','*sHb$V*zK1'),(11,'Alphonse.Wagner','(%GRNyXBs5'),(12,'Beno├«t.Hoareau','I3h0RBhVE&'),(13,'Guillaume.Guerin','_2TUrd*jp)'),(14,'Susanne.Foucher','i$r2)JnTUn'),(15,'Antoine.Reynaud','rrsCE2ny@0'),(16,'Gilbert.Mary','t#F52jXaK('),(17,'Alphonse.Dumont','3z2K8hvk+R'),(18,'Auguste.Valentin','a%03tnXo2M'),(19,'Genevi├¿ve.Legendre','(*T7SelcOE'),(20,'Thibault.Vaillant','A6EA(h0C+6'),(21,'Margaux.Poirier','2g$fLS+a@p'),(22,'Ren├®.Leclerc','TCQfDCsW)4'),(23,'Danielle.Michel','(1ILpvj7mA'),(24,'Louis.Charpentier','#9ImcOXaW#'),(25,'Louis.Marchand','p2A^l%Gh)8'),(26,'Gilles.Clement','@%Y#Ch*BO0'),(27,'├ëdith.Dubois','!nS1ndKf28'),(28,'Denise.Ollivier','$#_xWIoP1F'),(29,'Alexandria.Louis','%)2KGfbl3d'),(30,'Aim├®e.Prevost',')CL*7OLsz0'),(31,'Sylvie.Neveu','@cd9Tnwd9z'),(32,'Jos├®phine.Philippe','#)7^@A_m(b'),(33,'Laurent.Carlier','b^)6EJcxxm'),(34,'Luce.Riviere','O2O$whnm@7'),(35,'C├®lina.Moulin','+_e2VcnKuH'),(36,'R├®my.Legendre','07dDni^2#K'),(37,'Diane.Merle','Wu7AoOd9$$'),(38,'Marianne.Lefevre','zoN7SXoaF_'),(39,'Adrien.Jacquet','xOet&4Aig_'),(40,'Louis.Salmon','+L94RPZu_O'),(41,'Christelle.Delahaye','kS21JNp4X)'),(42,'Auguste.Brunel','^2Tnu)!xyf'),(43,'├ëmile.Fernandes','86Mm6hw6+Q'),(44,'Jules.Guillaume','^)K8@8Rwk('),(45,'Aurore.Dufour','&i5hEBqzk5'),(46,'Anne.Barthelemy','wuY0kDQj)2'),(47,'No├½l.Valentin','!a6GObCIcB'),(48,'Olivier.Le Roux','^eKt^_8CS5'),(49,'Mathilde.Renault','^+ZbFnEKf7'),(50,'Margaret.Laurent','04SU5Ben^z'),(51,'Fr├®d├®ric.Antoine','Q9KWAbuh^6'),(52,'Raymond.Jourdan','_9nKwgKB11'),(53,'Zacharie.Bodin','InR(0ClXYx'),(54,'Laetitia.Berthelot','&5_KjtD&Zb'),(55,'Margaud.Guillaume','!D6SiwuZaC'),(56,'Sylvie.Fournier','o)0Dco$F&B'),(57,'Susan.Caron','6_2LUjz!GY'),(58,'Corinne.Marchand','N2SkPNQj&U'),(59,'St├®phane.Neveu','vs1Eg#1j@N'),(60,'├ëlise.Daniel','#(AKlyWjm1'),(61,'Thibault.Cousin','T*2RDaE@6u'),(62,'R├®my.Godard','+aMlHbSV61'),(63,'Bernard.Leger','$2pS6FbIRX'),(64,'Maggie.Schmitt','1YgD@Yjw*L'),(65,'Yves.Guillet','_5UT*tqjTY'),(66,'Olivie.Diaz','W6wEur@I_K'),(67,'V├®ronique.Petitjean','@r6V*fJmn@'),(68,'P├®n├®lope.Pasquier','Hqw6P3iqC+'),(69,'P├®n├®lope.Leduc','E52kMwQq_Z'),(70,'Valentine.Courtois','@62xWlxBbt'),(71,'Jeannine.Perez','*olUTPIz%8'),(72,'Madeleine.Seguin','qBYbni3t#9'),(73,'Fran├ºoise.Weber','plS0UbRp7*'),(74,'Jean.Valette','I0TBMEFg%h'),(75,'S├®bastien.Mace','6_y7DtWGHH'),(76,'S├®bastien.Boulanger','ryt6U@0e)2'),(77,'Lucy.Lelievre','HMei&3RiYz'),(78,'Denise.Philippe','(jjMXI$b^4'),(79,'Diane.Hardy','Qc_1Mr%5v*'),(80,'Michel.Lejeune','c@6_C1Nx1n'),(81,'Gabrielle.Wagner','@T4GZ@zf94'),(82,'Lorraine.Ramos','&0TSf0gyX7'),(83,'No├½l.Robin','uXM3_8Fem+'),(84,'Doroth├®e.Rossi','J+rZ2Kos)1'),(85,'Joseph.Leleu','A+N3@Sba#0'),(86,'Tristan.Lecoq','(#*2+BHv3i'),(87,'Eug├¿ne.Lemaire','$1ZDCH+tH@'),(88,'Yves.Gilles','+3HmS)7Ng)'),(89,'Andr├®e.Letellier','%D7yRShK$6'),(90,'Hugues.Gregoire','(zR(hZcs6R'),(91,'Genevi├¿ve.Nguyen','o@1!C+txqk'),(92,'Lucas.Cohen','$7gac$Rub8'),(93,'├ëdouard.Louis','M^K1PDwkCV'),(94,'Ren├®.Pons','(3jPOrb*_!'),(95,'St├®phanie.Labbe','!AGmw@%pW0'),(96,'Louise.Bernard','(6hdW3WmMk'),(97,'Maryse.Dumont','l!mY24Nosb'),(98,'Lucas.Arnaud','#qx3!NV(4V'),(99,'Cl├®mence.Aubert','(k77yJivaa'),(100,'Ana├»s.Valentin','C)O5kY4a6T'),(101,'Marcelle.Reynaud','ZE3vBg%dO$'),(102,'Marthe.Besson','v@6eNbiM*X'),(103,'Raymond.Dias','7w60kSh(a$'),(104,'Thibaut.Munoz','kF4$#NYtu!'),(105,'Laurence.Gimenez','W_93XHiI#@'),(106,'Alfred.Cohen','ci$p^9VwAa'),(107,'Zo├®.Carpentier','w@$4L%k02K'),(108,'Catherine.Guilbert','J0Zx3Sn3@T'),(109,'Thierry.Vasseur','Ty9hA$u5(6'),(110,'Julie.Deschamps','y@8quN8q+h'),(111,'Colette.Lejeune','b+Ab0XzgCo'),(112,'Andr├®.Lamy','f#19*W&zy$'),(113,'Marguerite.Masson','#kVjPu%g32'),(114,'Brigitte.Rocher','*9cCKXQltc'),(115,'Am├®lie.Leleu','#1kI8Izk&A'),(116,'Alexandria.Couturier','$6T&#_*h)2'),(117,'No├½l.Dufour',')mh9GBfo9K'),(118,'├ël├®onore.Vaillant','X65Lxwnz%q'),(119,'Arnaude.Arnaud','$7i3UsUyK4'),(120,'Emmanuelle.Arnaud','6)2WXszJ@f'),(121,'Marcelle.Fabre','WG2OnwWjA('),(122,'L├®on.Loiseau','$+83BtlsP3'),(123,'Diane.Jacquet','z06!sXkh_2'),(124,'Alexandrie.Grondin','N8VDDlvo$#'),(125,'Alexandria.Valentin',')o1@TzHsPI'),(126,'Nathalie.Bourdon','l7FKu89_%i'),(127,'Fr├®d├®ric.Carlier','Xh6FkGDk*c'),(128,'Charles.Benard','BkQ0NfKpY!'),(129,'Andr├®e.Foucher','!EVQOn&sR2'),(130,'Gabriel.Couturier','y^T4zDt0u3'),(131,'Olivier.Hoarau','&A*!NcCuU5'),(132,'Patricia.Delorme','26c_Aw5I#)'),(133,'Camille.Perez','4(21tIOfiQ'),(134,'Constance.Dupuy','(6NOz0ycq1'),(135,'Louis.Benoit',')9GgDBmYfT'),(136,'Odette.Simon','J)&6ZZi1^l'),(137,'Am├®lie.Gros','+O^OhDSA4W'),(138,'Olivie.Remy','feXYlG%b@4'),(139,'Jeannine.Bouvet','yM+xg1Hq+@'),(140,'Honor├®.Bonneau','e#0Y5ec_Ia'),(141,'Nathalie.Chevallier','Z)2i^CZNUn'),(142,'Margot.Lemaire','_6^zAUEf6R'),(143,'Fran├ºois.Vincent','FF$7ZcThmi'),(144,'Thierry.Benoit','o^f4CV$aHz'),(145,'Claude.Blin',')nnROTgn!1'),(146,'Anne.Guillot','G^Y33QaW%G'),(147,'Andr├®e.Couturier','Z$9ruAYvLU'),(148,'Virginie.Barbe','7$*6YUeK4W'),(149,'Denis.Guibert','T&476MKwlH'),(150,'Luce.Blin','uwb2NpZM@D');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-14 12:33:45
