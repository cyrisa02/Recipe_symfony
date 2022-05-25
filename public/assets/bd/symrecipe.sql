CREATE DATABASE  IF NOT EXISTS heroku_51cc0de1b697ee5 /*!40100 DEFAULT CHARACTER SET utf8 */;
USE heroku_51cc0de1b697ee5;

-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: heroku_51cc0de1b697ee5
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20220522074501','2022-05-22 09:45:30',90),('DoctrineMigrations\\Version20220523063439','2022-05-23 08:35:30',315);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (52,'consequatur',10,'2022-05-23 09:49:30'),(53,'ut',93,'2022-05-23 09:49:30'),(54,'vitae',86,'2022-05-23 09:49:30'),(55,'dolor',67,'2022-05-23 09:49:30'),(56,'sint',96,'2022-05-23 09:49:30'),(57,'vel',60,'2022-05-23 09:49:30'),(58,'cumque',60,'2022-05-23 09:49:30'),(59,'cumque',45,'2022-05-23 09:49:30'),(60,'neque',82,'2022-05-23 09:49:30'),(61,'perferendis',57,'2022-05-23 09:49:30'),(62,'qui',88,'2022-05-23 09:49:30'),(63,'sit',53,'2022-05-23 09:49:30'),(64,'velit',21,'2022-05-23 09:49:30'),(65,'incidunt',93,'2022-05-23 09:49:30'),(66,'ea',75,'2022-05-23 09:49:30'),(67,'est',17,'2022-05-23 09:49:30'),(68,'pariatur',94,'2022-05-23 09:49:30'),(69,'earum',96,'2022-05-23 09:49:30'),(70,'beatae',34,'2022-05-23 09:49:30'),(71,'dolores',84,'2022-05-23 09:49:30'),(72,'aut',20,'2022-05-23 09:49:30'),(73,'dignissimos',65,'2022-05-23 09:49:30'),(74,'rem',30,'2022-05-23 09:49:30'),(75,'eum',0,'2022-05-23 09:49:30'),(76,'qui',48,'2022-05-23 09:49:30'),(77,'ipsam',62,'2022-05-23 09:49:30'),(78,'quasi',55,'2022-05-23 09:49:30'),(79,'nesciunt',77,'2022-05-23 09:49:30'),(80,'et',61,'2022-05-23 09:49:30'),(81,'ut',40,'2022-05-23 09:49:30'),(82,'optio',62,'2022-05-23 09:49:30'),(83,'magnam',89,'2022-05-23 09:49:30'),(84,'distinctio',69,'2022-05-23 09:49:30'),(85,'aut',73,'2022-05-23 09:49:30'),(86,'quas',9,'2022-05-23 09:49:30'),(87,'amet',21,'2022-05-23 09:49:30'),(88,'harum',84,'2022-05-23 09:49:30'),(89,'id',98,'2022-05-23 09:49:30'),(90,'asperiores',57,'2022-05-23 09:49:30'),(91,'aut',44,'2022-05-23 09:49:30'),(92,'recusandae',11,'2022-05-23 09:49:30'),(93,'suscipit',76,'2022-05-23 09:49:30'),(94,'vel',98,'2022-05-23 09:49:30'),(95,'est',22,'2022-05-23 09:49:30'),(96,'beatae',21,'2022-05-23 09:49:30'),(97,'est',100,'2022-05-23 09:49:30'),(98,'voluptatem',54,'2022-05-23 09:49:30'),(99,'dolores',45,'2022-05-23 09:49:30'),(100,'exercitationem',52,'2022-05-23 09:49:30'),(101,'Patate',15,'2022-05-23 11:47:07'),(102,'Paul',50,'2022-05-23 16:30:05');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(11) DEFAULT NULL,
  `nb_people` int(11) DEFAULT NULL,
  `difficulty` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double DEFAULT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,'quis',1212,27,4,'Consectetur doloremque fuga sunt quia quidem et modi. Sequi tenetur quia consequatur cumque. Enim tenetur illo mollitia a. Molestiae dolorem iste voluptate. Fuga voluptate commodi autem. Deleniti sed distinctio eaque dicta consequatur nostrum. Ipsum est blanditiis ipsam harum maiores ut qui est.',183,0,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(2,'modi',376,24,0,'Voluptates repellendus dolores fugit commodi. Porro ea ut quas doloremque. Odio aut aut rem est debitis et et. Et nesciunt inventore et saepe eveniet. Facere minus id qui eligendi perferendis optio perferendis. Qui vel voluptas dolore quae quis illum. Eligendi velit saepe impedit beatae.',481,1,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(3,'quia',785,50,2,'Quaerat enim sequi fugiat ullam sed nemo odit. Aut sit recusandae qui ipsum enim pariatur. Et aut sunt incidunt laboriosam aliquid aut. Esse et impedit sit totam aliquid qui ut. Illo amet quia qui consequuntur mollitia ut. Voluptatum a voluptatem tempore qui consectetur omnis dolorem. Adipisci quia eveniet eum sed et.',578,0,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(4,'qui',541,36,5,'Fugiat quo ea incidunt minima maiores qui. Et eius pariatur nihil quas voluptas ipsum aperiam. Sed quam fugiat vitae qui sed et. Assumenda sed ullam consectetur voluptatem nihil consequatur. Dolor et facere hic cumque qui aliquid.',255,1,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(5,'ad',792,0,1,'Eos necessitatibus voluptates natus blanditiis. Molestias sunt repudiandae a quasi eum recusandae qui qui. Qui tempore omnis eligendi facilis. Fugit quibusdam dolorem id itaque.',430,1,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(6,'et',897,2,6,'Eaque ad culpa inventore officia enim enim. Ut odio illum cum iusto. Possimus commodi voluptatem molestiae aut aperiam eum odit tempore. Voluptas nihil saepe qui voluptatibus velit.',293,1,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(7,'quibusdam',665,2,5,'Tenetur facilis minus impedit molestiae. Sit voluptas voluptatum molestiae rerum minima autem. Sapiente possimus id architecto mollitia dolore qui et. Delectus aperiam doloribus a. Dolore quaerat et animi. Rem nam maxime voluptas. Consequatur omnis maiores ut dolorum et rem.',915,1,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(8,'quia',223,39,4,'Minima porro voluptatem ipsa rerum. Voluptas soluta quos non voluptatibus nobis. Amet odio esse id dolorem ut minima. Totam temporibus sed provident vero recusandae. Quae libero eaque rerum aspernatur sunt pariatur. Impedit enim vel quibusdam debitis dolores nemo aut. Ut ut sit sit non esse facere nisi.',486,0,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(9,'aut',1356,23,0,'Sapiente dolorem rerum occaecati sit vero nam. Maiores tempore accusamus impedit magnam deserunt harum ex omnis. Tempora expedita praesentium officiis enim. Ipsa distinctio maiores sit qui a qui laboriosam. Reiciendis autem dignissimos aut saepe deleniti perspiciatis qui.',313,0,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(10,'commodi',258,34,1,'Minus laudantium qui sapiente. Sed dignissimos aliquid vel perspiciatis voluptas. Nihil incidunt impedit adipisci placeat voluptatum aut libero. Ab et rerum quisquam. Culpa autem rerum odio enim quisquam recusandae dolores totam. Nam est dolor nulla quia. Quam officia vel assumenda iste non. Nisi beatae natus est autem veniam adipisci.',517,0,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(11,'adipisci',519,43,0,'Sit ut quod quaerat cumque sint. Sint sint omnis tempore beatae quo possimus. Eum sint quis a fuga ut. Cum qui consectetur unde. Voluptatem omnis voluptas et doloremque asperiores explicabo. Voluptates fugit aut occaecati ea harum id. Voluptatem magni recusandae accusantium nam labore.',423,1,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(12,'voluptatum',1310,50,6,'Reprehenderit aut et natus repellat recusandae ut. Consequatur ipsum numquam eum ea deserunt vitae. Sint placeat reiciendis aut commodi voluptas ex voluptas. Qui eos incidunt velit. Sapiente esse atque error magnam id. Sunt est est et itaque nemo. Harum maxime ex harum. Aut vitae dolores recusandae ea nemo sequi nobis.',291,1,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(13,'officiis',536,14,5,'Quae enim hic aut. Perspiciatis accusamus et iure eligendi a omnis labore. Et eos et fugiat corrupti nulla. Tempora impedit ut similique voluptas quasi. Est debitis rem est placeat eveniet illum facilis. Fugit voluptas mollitia in illo. Voluptas non deserunt unde veniam voluptas aut quo et.',193,0,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(14,'fugit',838,34,5,'Dignissimos excepturi consequuntur incidunt provident. Ut vel consequatur veniam iusto quisquam. Sunt possimus adipisci incidunt dolores voluptatem quaerat. Et ut commodi adipisci et.',465,0,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(15,'molestiae',431,35,1,'Ut nulla est et mollitia voluptas deserunt harum at. Architecto amet repudiandae eos. Exercitationem accusamus est quis harum. Deserunt velit molestiae aliquam recusandae et. Quis labore minima eligendi aperiam dolorum aliquid non. Qui molestias qui molestias corporis velit id itaque. Repellat cupiditate excepturi totam et.',12,0,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(16,'ea',557,2,2,'Maxime amet laudantium accusamus nam omnis. Vitae est pariatur consequatur voluptas illum distinctio. Et rerum sed reprehenderit. Consequatur eligendi quam id a quia sapiente. Fugit omnis qui maxime ut dolorem. Similique tempora enim ipsam voluptas eum molestiae. Sit veniam ut molestiae ullam assumenda quaerat commodi sapiente.',445,1,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(17,'eum',1395,17,5,'Distinctio maiores neque aspernatur incidunt consequatur. Sed quae ipsam totam et voluptatum. Odit ipsa dolore suscipit aperiam rem. Sint harum temporibus velit nam eos quae ullam expedita. Ut earum voluptates ut dolorem ut atque reiciendis aperiam.',946,0,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(18,'maiores',953,41,0,'Officia ut ipsa et minus praesentium optio sint qui. Nisi laudantium minima sit id adipisci. Tenetur enim consequatur sit voluptas quo rerum sequi facere. Eum quod voluptatem et omnis.',138,1,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(19,'laboriosam',1310,26,5,'Exercitationem libero ad illo qui quia. Accusantium odit ipsum quae quidem vel nam quam. Asperiores quia assumenda occaecati hic quam error. Vel sint eaque non neque similique. Error ea aut minima eos reiciendis molestias reiciendis. Corrupti tempore consectetur nemo. Labore maxime sapiente dolor aspernatur totam consequuntur porro.',582,1,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(20,'rerum',375,46,5,'Molestias rem quaerat tempora sed. Dolores omnis dicta et adipisci voluptatem assumenda nam voluptatum. Voluptatem libero rerum minus qui sint. Ea voluptas consequatur eligendi maxime mollitia est non. Rem et voluptas doloremque sunt impedit debitis voluptas. Consectetur maiores doloremque dolore impedit.',633,0,1,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(21,'et',554,1,6,'Et error et voluptatem expedita eum sint error. Rerum voluptas quod ut corrupti id officia laborum. Delectus velit enim quasi est. Animi est modi illum quae molestiae natus. Molestiae et tempora facilis voluptatem.',785,1,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(22,'et',111,21,6,'Provident fugiat veritatis voluptas vel aspernatur fuga qui. Dolore placeat et veritatis repellat. Illo maiores deleniti nobis delectus. Corporis itaque quae amet blanditiis et esse. Tenetur quaerat corporis distinctio. Id modi omnis earum recusandae sequi autem quod iste. Ex non illum doloremque ducimus repellendus eos.',838,0,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(23,'sunt',811,11,4,'Molestiae autem qui nemo et sit dolor voluptates. Porro quaerat et est qui in est laboriosam. Alias vitae consequatur quo inventore. Neque labore est ipsa voluptas explicabo aut praesentium porro. Hic pariatur ipsum libero et. Totam aspernatur reprehenderit fugiat aut consequatur. Nam corporis repellendus voluptas rerum aliquam.',338,1,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(24,'eum',450,21,2,'Qui id odio odit sapiente quo natus nulla. Quo ea voluptatem totam ducimus quas at soluta. Aut iusto officia accusantium qui facere. Omnis deserunt reiciendis quam culpa voluptate commodi sed.',763,0,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(25,'non',546,34,0,'Laboriosam consequuntur quia quia odit ipsum ullam explicabo. Veniam tempora nostrum libero nulla aut. Omnis quo libero voluptatum placeat recusandae totam inventore. Consequuntur quia esse dolores aperiam placeat. Ut itaque est omnis excepturi corrupti officiis. Voluptas dolorem doloribus autem modi tenetur ea.',656,1,0,'2022-05-23 09:49:30','2022-05-23 09:49:30'),(26,'tomates',20,3,3,'sqdqsdzsqd',5,1,0,'2022-05-24 10:42:03','2022-05-24 10:42:03');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_ingredient`
--

DROP TABLE IF EXISTS `recipe_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_ingredient` (
  `recipe_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  PRIMARY KEY (`recipe_id`,`ingredient_id`),
  KEY `IDX_22D1FE1359D8A214` (`recipe_id`),
  KEY `IDX_22D1FE13933FE08C` (`ingredient_id`),
  CONSTRAINT `FK_22D1FE1359D8A214` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_22D1FE13933FE08C` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_ingredient`
--

LOCK TABLES `recipe_ingredient` WRITE;
/*!40000 ALTER TABLE `recipe_ingredient` DISABLE KEYS */;
INSERT INTO `recipe_ingredient` VALUES (1,55),(1,68),(1,71),(1,81),(1,92),(1,94),(1,98),(1,100),(2,52),(2,80),(2,86),(2,92),(2,94),(2,98),(2,99),(3,53),(3,57),(3,60),(3,62),(3,68),(3,76),(3,97),(4,53),(4,57),(4,67),(4,71),(4,72),(4,77),(4,88),(4,96),(5,53),(5,54),(5,68),(5,70),(5,72),(5,73),(5,76),(5,86),(5,88),(5,94),(5,100),(6,54),(6,69),(6,73),(6,76),(6,93),(6,99),(7,67),(7,69),(7,70),(7,78),(7,82),(7,92),(7,96),(8,55),(8,59),(8,61),(8,63),(8,81),(8,83),(8,90),(8,91),(9,52),(9,54),(9,57),(9,92),(9,93),(9,97),(10,53),(10,54),(10,63),(10,65),(10,81),(10,90),(10,95),(10,99),(11,54),(11,57),(11,64),(11,67),(11,68),(11,70),(11,74),(11,83),(11,86),(11,97),(12,64),(12,66),(12,68),(12,74),(12,89),(13,55),(13,70),(13,71),(13,80),(13,93),(13,99),(13,100),(14,54),(14,55),(14,67),(14,69),(14,78),(14,84),(14,94),(14,97),(15,54),(15,56),(15,58),(15,67),(15,69),(15,76),(15,82),(15,85),(15,90),(15,98),(16,58),(16,69),(16,72),(16,75),(16,90),(16,93),(17,57),(17,60),(17,70),(17,79),(17,98),(17,100),(18,70),(18,75),(18,76),(18,78),(18,83),(18,96),(18,99),(19,52),(19,55),(19,56),(19,59),(19,78),(19,89),(19,90),(19,95),(20,52),(20,58),(20,78),(20,85),(20,91),(20,96),(21,65),(21,73),(21,75),(21,80),(21,83),(21,92),(21,95),(22,59),(22,64),(22,77),(22,78),(22,86),(22,92),(22,99),(22,100),(23,52),(23,59),(23,83),(23,87),(23,88),(23,90),(23,92),(24,60),(24,62),(24,70),(24,71),(24,73),(24,79),(25,55),(25,70),(25,71),(25,81),(25,93),(25,94),(25,95),(26,68);
/*!40000 ALTER TABLE `recipe_ingredient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-24 15:18:25
