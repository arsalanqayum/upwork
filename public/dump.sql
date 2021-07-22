
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
DROP TABLE IF EXISTS `card_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_models` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `card_models_column_id_foreign` (`column_id`),
  CONSTRAINT `card_models_column_id_foreign` FOREIGN KEY (`column_id`) REFERENCES `column_models` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `card_models` WRITE;
/*!40000 ALTER TABLE `card_models` DISABLE KEYS */;
INSERT INTO `card_models` VALUES (1,'Eum illum itaque voluptatem quaerat quia impedit.','Tempora laudantium ut aut voluptatem ut aspernatur voluptas. Accusantium ipsam quis unde fuga.',1,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(2,'Soluta repellat quia reprehenderit sint beatae modi cumque.','Cupiditate debitis saepe facilis molestiae. Et id quod consequatur sit. Accusamus occaecati enim nobis. Rerum veritatis rerum id aut.',1,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(3,'Molestias consequatur pariatur sit qui.','Accusantium commodi totam tenetur impedit. Harum sunt debitis cum sequi earum.',1,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(4,'Expedita animi aut rerum molestiae.','Tempora cumque sed optio vel doloremque. Eaque ad laboriosam culpa quis. Eius rerum voluptas provident temporibus itaque iure quos. Aliquid libero ab unde sapiente iure.',1,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(5,'Sed voluptate voluptatibus alias est illum in repudiandae dolorum.','Voluptate quos perspiciatis aut. Quisquam et est ducimus laborum consequatur dolor. Tenetur necessitatibus earum quisquam voluptatem cupiditate dignissimos incidunt eius.',1,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(6,'Quis aut iusto et aperiam.','Veniam porro culpa velit laudantium nemo aut consequatur. Repudiandae reprehenderit ut beatae voluptatum. Inventore omnis facere ut exercitationem alias. Quibusdam reprehenderit cum cum molestiae. Eum quo architecto provident vel unde itaque voluptatem.',1,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(7,'Sit reprehenderit consequuntur omnis nisi ea.','Sapiente ab eum dolorem. Molestiae nisi a totam eum vel occaecati ipsum aut.',2,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(8,'Nihil ut dolore quia pariatur.','Mollitia et voluptatem sit et ut deserunt quod. Enim sed qui sit exercitationem sit in a. Corporis et aut accusantium voluptatem sit. Et sequi nisi aliquid aut repellendus et.',1,'2021-07-21 15:27:48','2021-07-22 01:01:35'),(9,'Dolorem perferendis alias fugit consequatur.','Aut consequatur quas repellat ducimus molestiae. Ipsum ut quibusdam suscipit. Ut cumque cumque laboriosam nobis eos aut neque. Ipsa ab reiciendis esse quaerat quo.',3,'2021-07-21 15:27:48','2021-07-22 01:01:37'),(10,'Quia nobis saepe voluptatibus omnis.','Et omnis corporis placeat et eius blanditiis. Laboriosam consequatur sit sunt fuga laudantium aliquam natus. In nemo incidunt qui facilis neque vitae.',1,'2021-07-21 15:27:48','2021-07-22 01:01:39'),(11,'Voluptatum quia quasi quaerat id dolorem dolorum.','Et exercitationem quidem quidem rerum repellendus quis error. Tempora voluptas expedita quo repellat et ut alias. Quis quis dicta beatae quas ad recusandae pariatur.',2,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(12,'Voluptatem culpa aut omnis.','Possimus amet dolore quibusdam. Aliquid doloribus odio repellendus dolores iusto. Sit fuga itaque voluptas corrupti in ut. Laboriosam at exercitationem possimus voluptas enim.',3,'2021-07-21 15:27:48','2021-07-22 01:01:45'),(13,'Omnis ut voluptas occaecati ullam occaecati et.','Dolorum et ut blanditiis velit est doloremque. Omnis nostrum expedita aut adipisci. Enim eius aut esse accusamus voluptas. Facilis cumque asperiores autem hic provident.',3,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(14,'Eveniet tenetur laborum laudantium est ut deleniti et aut.','Cum nostrum maxime ad. Molestiae et et beatae error quidem neque pariatur. Sed eius molestiae ea deleniti quia ratione ipsum.',3,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(15,'Nostrum eum tempore dolor possimus tenetur temporibus.','Quisquam expedita dignissimos sapiente perspiciatis in ut. Et repellat pariatur possimus et architecto sint. Quos necessitatibus ut sapiente. Corrupti quaerat fuga omnis aperiam ut quaerat. Nemo sed ea fuga voluptatum.',3,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(16,'Corrupti voluptatem officia sit velit deleniti autem ut.','Sed perspiciatis autem quia enim impedit voluptatem esse. Adipisci et rerum sequi in doloremque sequi. Enim totam maxime cupiditate alias nulla aspernatur. Expedita in eos dolorem rerum.',3,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(17,'Voluptates et a soluta natus.','Modi quo doloremque voluptatum quos deserunt. Et voluptatem delectus iusto. Asperiores laboriosam officia doloremque ab. Quo nemo nesciunt eos asperiores occaecati.',3,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(18,'Dolorem dolore magnam iure commodi magnam.','Porro praesentium facere et aperiam laborum natus. Aut deserunt veritatis nisi beatae. Odit deleniti sit et. Facere odio iure asperiores laborum.',3,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(19,'Optio pariatur minus qui rerum aperiam velit.','Aut cupiditate laboriosam ratione explicabo. Officiis nobis quis optio qui rerum. Suscipit sit velit veniam est consequatur et sit. Nobis sint quisquam architecto qui quisquam.',4,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(20,'In velit consectetur natus fugit quidem.','Ad id qui dolore eius voluptatem. Eos ipsa ut sed vel voluptates. Eos quis praesentium facere rerum quibusdam. Rem qui blanditiis amet excepturi aspernatur voluptas dolor qui. Molestias et iste aut provident.',4,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(21,'Quam voluptas quibusdam impedit ea beatae.','Magni vel aut consequatur eligendi et. Praesentium dolores ut quam in. Magni voluptas porro excepturi nam dolores.',4,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(22,'Laudantium quia quas laboriosam quam.','Nemo et architecto maiores quam qui magni qui eum. Quo qui voluptas et quia ab maiores. Dolorem excepturi possimus deserunt autem vel.',4,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(23,'Quidem molestiae nulla magnam accusantium.','Rerum dignissimos quo voluptas aut hic voluptates numquam. Modi asperiores autem adipisci rerum tempore. Molestiae voluptatem quos voluptatem et.',4,'2021-07-21 15:27:48','2021-07-21 15:27:48'),(24,'Voluptas enim aliquam in quis ut sed delectus.','Adipisci cumque eos sapiente ipsum. Hic sed unde et et praesentium dolore id consequatur. Adipisci eveniet sint voluptatem aliquam eligendi id. Error accusamus voluptatibus qui quaerat. Vel sed similique animi quaerat aspernatur ut quaerat.',4,'2021-07-21 15:27:48','2021-07-21 15:27:48');
/*!40000 ALTER TABLE `card_models` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `column_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `column_models` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `column_models` WRITE;
/*!40000 ALTER TABLE `column_models` DISABLE KEYS */;
INSERT INTO `column_models` VALUES (1,'In progress','2021-07-21 15:27:48','2021-07-21 15:27:48'),(2,'Pick for development','2021-07-21 15:27:48','2021-07-21 15:27:48'),(3,'Completed','2021-07-21 15:27:48','2021-07-21 15:27:48'),(4,'In progress','2021-07-21 15:27:48','2021-07-21 15:27:48');
/*!40000 ALTER TABLE `column_models` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_07_20_201103_create_column_models_table',1),(2,'2021_07_20_201406_create_card_models_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

