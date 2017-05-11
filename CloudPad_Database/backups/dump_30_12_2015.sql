-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: athena01.fhict.local    Database: dbi324201
-- ------------------------------------------------------
-- Server version	5.5.11

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blocked` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'username1','email1','password1','2015-11-13 08:54:06',0),(2,'swag','email2','password2','2015-11-13 08:54:06',0),(3,'username3','email3','password3','2015-11-13 08:54:06',0),(4,'admin','a','televisie9','2015-11-13 09:06:25',0),(6,'a','b','b','2015-11-15 11:52:30',0),(7,'c','c','c','2015-11-15 11:52:30',0),(8,'d','d','d','2015-11-15 11:57:46',0),(10,'f','f','f','2015-11-15 11:57:46',0),(11,'g','g','g','2015-11-15 11:57:46',0),(12,'gummybeerninja','nancy-bust@hotmail.com','nancy1997','2015-11-16 11:26:24',0),(13,'test','deze','test','2015-12-02 14:40:11',0),(14,'Rekto','rekk','to','2015-12-11 10:52:23',0),(15,'Testend','edwinvrooij@gmail.com','dmjsj5','2015-12-30 15:37:55',0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_combination`
--

DROP TABLE IF EXISTS `admin_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_combination` (
  `first_word_id` int(11) NOT NULL DEFAULT '0',
  `second_word_id` int(11) NOT NULL DEFAULT '0',
  `count` int(11) DEFAULT '1',
  PRIMARY KEY (`first_word_id`,`second_word_id`),
  KEY `first_word_idx` (`first_word_id`),
  KEY `after_word_idx` (`second_word_id`),
  CONSTRAINT `first_word` FOREIGN KEY (`first_word_id`) REFERENCES `admin_word` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `second_word` FOREIGN KEY (`second_word_id`) REFERENCES `admin_word` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_combination`
--

LOCK TABLES `admin_combination` WRITE;
/*!40000 ALTER TABLE `admin_combination` DISABLE KEYS */;
INSERT INTO `admin_combination` VALUES (67,116,3),(93,94,3),(94,106,2),(94,113,19),(94,117,6),(106,107,1),(107,108,1),(107,115,1),(108,109,1),(109,110,1),(110,111,1),(110,112,1),(110,114,1),(112,94,1),(114,94,1),(115,110,1),(116,94,7);
/*!40000 ALTER TABLE `admin_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_word`
--

DROP TABLE IF EXISTS `admin_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_UNIQUE` (`content`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_word`
--

LOCK TABLES `admin_word` WRITE;
/*!40000 ALTER TABLE `admin_word` DISABLE KEYS */;
INSERT INTO `admin_word` VALUES (110,'(select'),(109,'='),(104,'admin_combination'),(105,'admin_combination;'),(103,'admin_word'),(117,'Antonio'),(89,'best'),(87,'Daan'),(91,'dag'),(93,'delete'),(69,'dingen'),(81,'Dit'),(73,'een'),(74,'enzo'),(92,'fag'),(94,'from'),(101,'gekke'),(79,'goed'),(96,'Hier'),(84,'Ik'),(67,'insert'),(82,'is'),(102,'man'),(111,'max'),(112,'max(number)'),(114,'max(version)'),(76,'Mijn'),(90,'n'),(72,'nog'),(86,'nu'),(71,'null'),(108,'number'),(95,'other'),(99,'Rekto'),(77,'shit'),(116,'swag'),(83,'t'),(100,'tekk'),(68,'test'),(88,'the'),(80,'troep'),(85,'typ'),(70,'update'),(106,'Update_log'),(113,'Update_log)'),(97,'uw'),(115,'version='),(98,'voorbeeld'),(78,'werkt'),(107,'where'),(75,'woord');
/*!40000 ALTER TABLE `admin_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boodschappen_product`
--

DROP TABLE IF EXISTS `boodschappen_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boodschappen_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `amount` int(11) DEFAULT '1',
  `remark` varchar(255) DEFAULT 'Geen opmerking.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boodschappen_product`
--

LOCK TABLES `boodschappen_product` WRITE;
/*!40000 ALTER TABLE `boodschappen_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `boodschappen_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `type` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `date_sent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_account_feedback_idx` (`account_id`),
  CONSTRAINT `fk_feedback_account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (8,4,'Bug','Fout een','2015-11-19 12:50:49',0),(11,4,'Bug','Jaa','2015-11-19 22:49:50',0),(12,4,'Bug','Gekke fout','2015-11-20 20:57:38',0),(13,4,'Suggestion','Swag','2015-11-23 19:28:16',0),(14,4,'Suggestion','Jaa','2015-11-23 21:33:23',0),(15,4,'Suggestion','Gekke feedback','2015-11-29 20:59:01',0),(16,4,'Bug','Gg','2015-11-29 20:59:18',0),(17,4,'Bug','Hallo Marcus en ik ben klein beetje te laat om te zien dat het niet zo veel uit te leggen op het gebied waar ik me af wat er komt te staan wanneer Timer die aftelt ipv optelt Instellen.','2015-11-29 21:00:58',0),(18,4,'Suggestion','Gekke feedback','2015-12-04 10:14:47',0),(19,4,'Bug','Test','2015-12-04 13:35:40',0),(20,4,'Bug','Doe maar wat feedback','2015-12-11 13:44:57',0),(21,4,'Bug','','2015-12-19 11:11:57',1);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` text,
  `text` text,
  `active` varchar(1) DEFAULT '1',
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edited` timestamp NULL DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_of_note_idx` (`owner_id`),
  CONSTRAINT `owner_of_note` FOREIGN KEY (`owner_id`) REFERENCES `account` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note`
--

LOCK TABLES `note` WRITE;
/*!40000 ALTER TABLE `note` DISABLE KEYS */;
INSERT INTO `note` VALUES (368,'why','Hier alvast wa dingen opsommen waarvoor je het kunt gebruiken \n\n- snelle aantekeningen maken voor je studie\n- alles online opgeslagen dus je raakt het nooit kwijt & kan er overal bij\n- hoor je een liedje en wil je deze downloaden maar heb je weinig tijd, maak snel een cptje aan\n- gedeelde afspraken maken met je klasgenoten,  vriendengroep, gezin/familie\n- vergeet nooit meer je boodschappenlijstje, maak er gewoon een cptje voor en je kan het in de winkel gewoon weer bekijken\n- gebruiksvriendelijk','1','2015-11-26 20:52:54','2015-11-26 21:05:44',4),(371,'PrivÃ©','Iban:\nNL92RABO0157701484\n\nNL92 RABO 0157 7014 48\n\nHuisarts nr: 541440\n\nKaspersky activate code: \n4SYAK-D4HKA-D3T9E-74624','1','2015-11-26 20:57:09','2015-11-29 11:47:58',4),(372,'Hrvatski','Ja - da\nNee - ne\n\nIk - ja\nJij - ti\nHij - on\nZij - ona\nHet - ono\nJullie - vi\nWij - mi\nU - vi\n\nHallo - bok\nDoei - pozdrav\n\nGoed - dobro\nDankje - hvala\nNatuurlijk - naravno\n\nJedem\nDva \nTri \nÄŒetri\nPet\nÅ est\nSedam \nOssam? \nDevet \nDeset? \n\nJedamnaest \nDvanaest \nTrinaest \nÄŒetrnaest? \nPetnaest? \nÅ esnaest \nSedamnaest \nOsamnaest? \nDevetnaest \n\nDvadeset \nDvadeset jedem \nDvadeset dva \nDvadeset tri\nDvadeset Äetri \nDvadeset pet \nDvadeset Å¡est\nDvadeset sedam \nDvadeset osam \nDvadeset devet \n\nTrideset','1','2015-11-26 20:57:22','2015-12-06 20:51:17',4),(373,'Wifi','Oma no:\n%_!V@ND3NBR03K!_%\n\nAnder oma:\nIcc39GQdX43J\n\nThuis:\n5571LR52015','1','2015-11-26 20:58:02','2015-12-06 20:47:39',4),(391,'Onbekend','Leeg','1','2015-11-27 22:48:40','2015-12-11 10:51:55',4),(410,'Bedrijfsnaam','Notable','1','2015-11-29 13:54:31','2015-12-04 10:12:31',4),(481,'Indrinken','Bob\nEdwin\nNanc','1','2015-12-03 15:23:22','2015-12-04 10:12:23',4),(495,'Onbekend','Leeg','0','2015-12-03 21:32:11','2015-12-07 15:38:27',4),(498,'hoi','','1','2015-12-03 22:20:03','2015-12-03 22:20:03',12),(499,'hdjdj','xnd','1','2015-12-03 22:20:28','2015-12-03 22:20:28',12),(506,'Test','Leeg','0','2015-12-03 22:50:39','2015-12-07 15:27:03',4),(508,'To do long term','App maken om alle foto en video in een map te zetten','0','2015-12-04 10:03:31','2015-12-23 14:07:25',4),(509,'Onbekend','Leeg','0','2015-12-04 10:04:40','2015-12-04 10:04:47',4),(510,'Onbekend','Leeg','0','2015-12-04 21:11:49','2015-12-05 00:24:23',4),(511,'Onbekend','Leeg','0','2015-12-04 21:13:43','2015-12-04 21:15:04',4),(512,'Onbekend','Leeg','0','2015-12-04 21:14:57','2015-12-04 21:15:03',4),(513,'Onbekend','Leeg','0','2015-12-05 00:24:17','2015-12-05 00:24:21',4),(514,'AI','Pratende robot naam:\n\nHenk l\nDonny 1','0','2015-12-05 12:05:05','2015-12-05 14:37:27',4),(515,'1,20','Van smam noten','0','2015-12-05 23:33:52','2015-12-07 08:14:20',4),(516,'Films','Divergent\nWatchmen\nThe internship','1','2015-12-06 20:50:02','2015-12-06 20:50:02',4),(517,'Imgur','http://i.imgur.com/LHozKWe.jpg','1','2015-12-06 20:50:44','2015-12-06 20:50:44',4),(518,'Onbekend','nErv3dismal5','1','2015-12-06 20:51:41','2015-12-06 20:51:41',4),(519,'Eduard','Control  to rek eduard','1','2015-12-06 20:51:57','2015-12-06 20:51:57',4),(520,'Series','Viking\nSense 8','1','2015-12-07 09:20:36','2015-12-07 09:20:51',4),(521,'Finger','â•­âˆ©â•®(-_-)â•­âˆ©â•®','1','2015-12-07 09:21:18','2015-12-07 09:21:18',4),(522,'Datum schat','Woensdag 13 mei 2015','1','2015-12-07 09:21:42','2015-12-07 09:21:42',4),(523,'Vpn','Cyberghost VPN. Com','1','2015-12-07 09:22:07','2015-12-07 09:22:07',4),(524,'Servers','One.com professional hosting\nVersio','1','2015-12-07 09:22:35','2015-12-07 09:22:35',4),(525,'Pringles film codes','HYNIXDNJXA\nHYADMSHHBX','1','2015-12-10 11:34:27','2015-12-18 18:20:20',4),(526,'Rekto pad','Gekke rekto','0','2015-12-11 10:50:09','2015-12-20 17:47:58',4),(527,'Onbekend','Leegfxd','0','2015-12-11 10:51:29','2015-12-11 10:52:01',4),(528,'Onbekend','Leeg','1','2015-12-11 13:42:18','2015-12-11 13:42:18',14),(529,'Onbekend','Leeg','0','2015-12-11 13:42:25','2015-12-18 09:00:49',14),(530,'Nieuwjaar','Geldrop:\nRoy\nNancy\nKim\nRob\nLinda\nDjoey\n\nBergeijk:\nFons\nJelke\nRik\nRenske\nBob\nTom\nTeun\nIk\n\nTijd:\nVanaf 7 uur welkom\n\nVuurwerk individueel\n\nDrank en eten enshit is overlegd \n\n\n\nHugo enshit kostte â‚¬12','1','2015-12-12 19:48:21','2015-12-30 11:25:53',4),(531,'Onbekend','Dinsdag 23:05 net 5','0','2015-12-13 17:08:10','2015-12-18 18:22:23',4),(532,'Maatwerk dossier','Ik vind jouw portfolio erg goed, je hebt zeker laten zien wat je allemaal gedaan hebt deze periode en volgens mij begin je het zelfs leuk te vinden om nieuwe uitdagingen aan te gaan. Ik denk hierbij aan dat idee met de grammaticaal correcte chatbot. Zet nog even de laatste puntjes op de i mbt jouw portfolio en dan denk ik dat je DBS2MW heel degelijk gaat afronden. Je zou nog een concluderende evaluatie kunnen schrijven aan het einde, denk hierbij ook aan de nulmeting en hoe je zelf vindt dat je verbeterd bent over de afgelopen periode.\n\nÂ ','0','2015-12-15 00:21:42','2015-12-20 17:47:38',4),(533,'Afspeellijst nieuwjaar','Timber\nSpice girls\nHot n cold \nTralala\nMacarena\nEr is een nacht guusje meeuwis\nKensington\nNon non rien\nStitches\nNon stop\nRamperen\nParty squad\nDangerous so dangerous I wanna do it again\nI got it from my daddy\nWaterscooter','0','2015-12-15 10:33:37','2015-12-20 18:35:53',4),(534,'Smam krijgt van mij','â‚¬23,50\n-â‚¬5 boodschappen \n_____\nâ‚¬18,50\n- â‚¬14 pizza kip Optimel \n_____\nâ‚¬10\n- â‚¬2,44\n- â‚¬1,07\n- â‚¬5,00\n- â‚¬5,80\n- â‚¬0,75\n- â‚¬5,00\n-â‚¬5,15\n____\n-â‚¬15,21\n+â‚¬50,00\n______\nâ‚¬35,00','1','2015-12-15 17:17:22','2015-12-29 20:37:48',4),(535,'Database dossier','Opschrijven waarom ik het in de nulmeting had gezet','0','2015-12-18 09:42:38','2015-12-18 18:22:14',4),(536,'Test','Leegtt','0','2015-12-18 17:14:50','2015-12-18 18:22:18',4),(537,'Opstap zaterdag ehv','Ik\nKim\nRoy\nLinda\nRob\nTim\n\nMss:\nDjoey \n\nNiet:\nCorine','0','2015-12-18 20:49:19','2015-12-20 17:47:22',4),(538,'Boodschappen','Ei\nGehakt\nGroente\nDrank\nAfbakbroodjes','0','2015-12-19 13:24:57','2015-12-19 15:14:38',4),(539,'Onbekend','Leeg','1','2015-12-19 23:36:37','2015-12-19 23:36:37',4),(540,'Top 2000','Huidige nr \n\n\n1990','0','2015-12-20 18:38:09','2015-12-20 18:57:16',4),(541,'Onbekend','White house down','1','2015-12-25 22:00:34','2015-12-25 22:00:34',4),(542,'Onbekend','Xite top 150 downloaden','1','2015-12-26 12:38:21','2015-12-26 12:38:21',4),(543,'Monay','Nancy voor mij betaald: â‚¬110\n\nIk voor Nancy betaald:  â‚¬30 +â‚¬25digitaal\n110\n-\n55\n-----\nâ‚¬55\n\nIk totale uitgaven: \nSchoenen: â‚¬60\nBlouse: â‚¬15\nShirt: â‚¬10\n2 broeken: â‚¬110\n1 vest & broek: â‚¬20\n\nâ‚¬80 + â‚¬110 + â‚¬15 = â‚¬205+ contant \nâ‚¬215 is het','0','2015-12-28 16:26:18','2015-12-29 20:34:26',4),(544,'Betaald:','Nancy\nDjoey\nFons','1','2015-12-30 11:26:13','2015-12-30 11:46:40',4),(545,'Test','Leeg','1','2015-12-30 15:38:06','2015-12-30 15:38:06',15),(546,'Test','Djdn','1','2015-12-30 15:38:21','2015-12-30 15:38:21',15);
/*!40000 ALTER TABLE `note` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dbi324201`@`%`*/ /*!50003 TRIGGER `test_before_insert` BEFORE INSERT ON `note`
FOR EACH ROW
BEGIN
    IF new.active < 0 || new.active > 1 THEN
        SIGNAL SQLSTATE '12345'
            SET MESSAGE_TEXT = 'check constraint on note failed';
    END IF;
    
    set new.last_edited = current_timestamp();
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dbi324201`@`%`*/ /*!50003 TRIGGER `insert_query_for_self` AFTER INSERT ON `note`
FOR EACH ROW
BEGIN
	insert into share (account_id, note_id) values (new.owner_id, new.id);
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dbi324201`@`%`*/ /*!50003 TRIGGER `update_note_last_edited` BEFORE UPDATE ON `note`
FOR EACH ROW
BEGIN
SET new.last_edited = current_timestamp();
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `share`
--

DROP TABLE IF EXISTS `share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `share` (
  `account_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  KEY `fk_account_note_account_idx` (`account_id`),
  KEY `fk_account_note_note_idx` (`note_id`),
  CONSTRAINT `fk_account_note_account` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_account_note_note` FOREIGN KEY (`note_id`) REFERENCES `note` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
INSERT INTO `share` VALUES (4,368),(4,371),(4,372),(4,373),(4,391),(3,391),(6,391),(4,410),(4,481),(4,495),(6,495),(7,495),(12,498),(12,499),(4,506),(13,506),(4,508),(4,509),(4,510),(4,511),(2,511),(3,511),(4,512),(13,512),(4,513),(4,514),(4,515),(4,516),(4,517),(4,518),(4,519),(4,520),(4,521),(4,522),(4,523),(4,524),(4,525),(4,526),(4,527),(3,527),(6,527),(14,528),(14,529),(2,529),(4,529),(4,530),(4,531),(4,532),(4,533),(4,534),(4,535),(4,536),(4,537),(4,538),(4,539),(8,539),(10,539),(11,539),(4,540),(4,541),(4,542),(4,543),(4,544),(15,545),(15,546),(4,546),(6,546);
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `update_log`
--

DROP TABLE IF EXISTS `update_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `update_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` decimal(4,3) DEFAULT '0.000',
  `description` text,
  `creation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `update_log`
--

LOCK TABLES `update_log` WRITE;
/*!40000 ALTER TABLE `update_log` DISABLE KEYS */;
INSERT INTO `update_log` VALUES (1,1.000,'Initiatie van de app.','2015-10-26 11:00:00'),(28,1.001,'Update_log fancified. Admin app gemaakt.','2015-11-04 12:23:41'),(31,1.002,'Kan nu update logs aanmaken in admin app.','2015-11-04 13:45:41'),(32,1.003,'Feedback formulier toegevoegd. Je kunt nu feedback sturen die ik kan teruglezen.','2015-11-04 22:18:17'),(36,1.004,'Gui update. Reformat on string resources. Overall infrastructure improvements, specifically async task reusability.','2015-11-06 20:34:19'),(37,1.005,'Kan nu push notificaties ontvangen & sturen vanuit de app.','2015-11-07 15:44:52'),(38,1.006,'Database update om gedeelde cloudpads toe te staan.','2015-11-07 15:54:32'),(39,1.007,'Json class volledig geÃ¯mplementeerd & een aantal php scripts dynamisch gemaakt. Verder readability updates in de source files.','2015-11-09 01:19:19'),(41,1.008,'& lots of reusability improvements, php scripts reduced to 2 instead of increasingly over 10. Cleaned up http requests.','2015-11-10 00:40:27'),(44,1.009,'Notes delen werkt nu. PrivÃ© notes maken ook. Compleet openbare notes weggehaald.','2015-11-11 20:09:44'),(45,1.010,'Bug fixes.','2015-11-12 21:37:29'),(46,1.011,'Feedback bekijken vanuit admin app werkt.','2015-11-19 13:00:13'),(47,1.012,'Cleaned up some shit.','2015-11-19 13:00:20'),(48,1.013,'PrivÃ© en shared notes onderscheid gemaakt & layout differences ook.','2015-11-19 13:00:49'),(49,1.014,'Tab layout aan het implementeren.','2015-11-20 12:31:47'),(50,1.015,'Tab layout implementatie compleet.','2015-11-20 18:53:25'),(51,1.016,'Onderscheid in tabs tussen shared en privÃ©.','2015-11-20 18:53:41'),(52,1.017,'+-knop blijft staan nu','2015-11-20 18:54:24'),(53,1.018,'Reorganisatie in classes, 3-lagenmodel concept gedeeltelijk toegepast.','2015-11-24 11:32:05'),(54,1.019,'Sqlite handler voor local private notes begin gemaakt.','2015-11-24 11:32:28'),(55,1.020,'Kan feedback nu zien & behandelen in admin app.','2015-11-24 11:33:22'),(57,1.022,'Material design implemented.','2015-11-25 14:50:30'),(58,1.023,'Eerste recyclerview geÃ¯mplementeerd ipv listview.','2015-11-25 16:07:45'),(59,1.024,'Implemented recycleviews for sharednotes and privatenotes.','2015-11-25 19:26:08'),(60,1.025,'Implemented structural exception handling.','2015-11-26 11:11:17'),(61,1.026,'Parcelable geÃ¯mplementeerd in de klassen waar mogelijk. Op weg naar meer object georiÃ«nteerd programmeren.','2015-11-27 16:49:57'),(62,1.027,'Login smoothified. Aparte activity gemaakt voor launch handling.','2015-11-27 19:30:44'),(63,1.028,'Objecten worden nu door activities meegegeven en account object wordt opgeslagen. Veel overbodige constructors weggehaald uit physical objects.','2015-11-27 19:31:20'),(64,1.029,'Color scheme aangepast. Custom tablayout aangepast zodat het een wit accent pakt ipv accent color. Hoogte van de tab balk onder de naam dikker.','2015-11-30 07:24:31'),(65,1.030,'Search algoritme gemaakt, gedeeltelijke front-end functionaliteit geÃ¯mplementeerd.','2015-11-30 13:55:56'),(66,1.031,'Search functionaliteit basis functionaliteit afgerond.','2015-11-30 15:53:59'),(67,1.032,'Query builder verbeterd. Leert zelf nu.','2015-12-04 13:36:09'),(68,1.033,'Notificaties infrastructuur sterk verbeterd. Uitbreidbaarder gemaakt & nu ook bij editnote aan de juiste personen laten zien.','2015-12-04 13:36:53'),(69,1.034,'Begin gemaakt aan profiel pagina.','2015-12-04 23:51:07'),(70,1.035,'Exception handling gestructureerd.','2015-12-18 17:39:04'),(71,1.036,'Gekke gekke UI update incoming. Smoothness way through the roof.','2015-12-28 10:16:57');
/*!40000 ALTER TABLE `update_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`dbi324201`@`%`*/ /*!50003 TRIGGER `generate_version` BEFORE INSERT ON `update_log`
FOR EACH ROW
BEGIN
DECLARE message text;
    IF new.version = 0 THEN
			SET new.version = (select version from update_log where id = (select max(id) from update_log)) + 0.001;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `number` int(11) NOT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` VALUES (0);
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dbi324201'
--

--
-- Dumping routines for database 'dbi324201'
--
/*!50003 DROP PROCEDURE IF EXISTS `procedure_get_words` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dbi324201`@`%` PROCEDURE `procedure_get_words`(p_first_word VARCHAR(100))
BEGIN

select content from admin_word w, admin_combination c where w.id = c.second_word_id and first_word_id = (select id from admin_word w2 where w2.content = p_first_word) order by count desc limit 3;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `procedure_insert_word` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`dbi324201`@`%` PROCEDURE `procedure_insert_word`(IN p_first_word VARCHAR(100),
IN p_second_word VARCHAR(100))
BEGIN
-- does_word_exist is the boolean to check wether the word already exists or not, 0 means it doesn't, 1 means it does
	DECLARE does_first_word_exist INT DEFAULT 0;
    DECLARE does_second_word_exist INT DEFAULT 0;
    DECLARE does_combination_exist INT DEFAULT 0;
    DECLARE v_first_word_id INT;
    DECLARE v_second_word_id INT;

-- initialize variables
	select count(*) into does_first_word_exist from admin_word where content = p_first_word;
    select count(*) into does_second_word_exist from admin_word where content = p_second_word;

-- if the word does not already exist, insert the word
	if does_first_word_exist = 0 THEN
		insert into admin_word (content) values (p_first_word);
	end if;
    select id into v_first_word_id from admin_word where content = p_first_word;
    
    if does_second_word_exist = 0 THEN
		insert into admin_word (content) values (p_second_word);
	end if;
    select id into v_second_word_id from admin_word where content = p_second_word;
    
    select count(*) 
    into does_combination_exist 
    from admin_combination
    where first_word_id = v_first_word_id
    and second_word_id = v_second_word_id;
    
    if does_combination_exist = 0 THEN
		insert into admin_combination (first_word_id, second_word_id) values (v_first_word_id, v_second_word_id);
	else
		update admin_combination
        set count = count + 1
        where first_word_id = v_first_word_id 
        and second_word_id = v_second_word_id;
	end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-30 16:40:05