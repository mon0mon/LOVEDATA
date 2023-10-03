-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for Win64 (AMD64)
--
-- Host: mon0mon.iptime.org    Database: lovedata
-- ------------------------------------------------------
-- Server version	10.3.29-MariaDB-0+deb10u1

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
-- Table structure for table `bizreg`
--

DROP TABLE IF EXISTS `bizreg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bizreg` (
  `br_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `biz_call` varchar(255) NOT NULL,
  `biz_ceo_name` varchar(255) NOT NULL,
  `biz_name` varchar(255) NOT NULL,
  `certified` bit(1) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_no` bigint(20) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  PRIMARY KEY (`br_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bizreg`
--

LOCK TABLES `bizreg` WRITE;
/*!40000 ALTER TABLE `bizreg` DISABLE KEYS */;
INSERT INTO `bizreg` (`br_no`, `moddate`, `regdate`, `biz_call`, `biz_ceo_name`, `biz_name`, `certified`, `deleted`, `url`, `user_no`, `uuid`) VALUES (1,'2021-12-19 13:23:10','2021-12-15 09:08:26','01049268100','홍길동','LoveData','','','/image/biz_reg/7d78fb8a-5332-4ac4-9b8b-2e3f341445d8.jpg',5,'7d78fb8a-5332-4ac4-9b8b-2e3f341445d8.jpg'),(2,'2021-12-17 12:47:48','2021-12-17 12:40:43','01055555555','aa','aa','','',NULL,9,'7aa4792b-0f25-4f4a-9b5b-ec636d357cc2'),(3,'2021-12-19 13:23:21','2021-12-19 13:23:21','01049268100','홍길동','asdfa','\0','\0','/image/biz_reg/f855c645-69c5-488b-baaa-94d79b6b0ca3.png',5,'f855c645-69c5-488b-baaa-94d79b6b0ca3.png');
/*!40000 ALTER TABLE `bizreg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calender`
--

DROP TABLE IF EXISTS `calender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calender` (
  `cal_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `all_day` tinyint(1) DEFAULT NULL,
  `cal_activation` tinyint(1) DEFAULT NULL,
  `color` varchar(15) NOT NULL,
  `end` varchar(20) NOT NULL,
  `road` varchar(50) DEFAULT NULL,
  `road2` varchar(50) DEFAULT NULL,
  `start` varchar(20) NOT NULL,
  `text` varchar(100) DEFAULT NULL,
  `title` varchar(15) NOT NULL,
  `user_mail` varchar(50) NOT NULL,
  PRIMARY KEY (`cal_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calender`
--

LOCK TABLES `calender` WRITE;
/*!40000 ALTER TABLE `calender` DISABLE KEYS */;
INSERT INTO `calender` (`cal_no`, `moddate`, `regdate`, `all_day`, `cal_activation`, `color`, `end`, `road`, `road2`, `start`, `text`, `title`, `user_mail`) VALUES (1,'2021-12-02 09:09:09','2021-12-01 01:54:49',0,1,'#D25565','2021-12-04 00:30','','','2021-12-01 14:30','하...','졸업 발표','knightanne@naver.com '),(2,'2021-12-01 06:36:03','2021-12-01 06:35:50',0,1,'#D25565','2021-12-09 16:35','','','2021-12-09 15:35','','안녕','alswn123@naver.com'),(3,'2021-12-01 06:54:53','2021-12-01 06:54:48',0,1,'#D25565','2021-12-01 16:54','','','2021-12-01 15:54','','1','sooah0907@naver.com'),(4,'2021-12-03 01:52:56','2021-12-03 01:52:56',0,1,'#a9e34b','2021-12-09 11:52','','','2021-12-09 10:52','','맛집탐방','knightanne@naver.com '),(5,'2021-12-03 06:21:06','2021-12-03 06:21:06',1,1,'#4d638c','2021-12-04','','','2021-12-03','','졸전','haeun@mmm.mmm'),(6,'2021-12-08 13:31:31','2021-12-08 13:31:31',1,1,'#D25565','2021-12-04','경기도 고양시 덕양구 동헌로 305','세종관 541호','2021-12-01','중부대학교 학생들의 졸업작품이 전시 됩니다.','졸업작품 전시회','99gywls@naver.com ');
/*!40000 ALTER TABLE `calender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `cmt_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `cmt_content` varchar(300) NOT NULL,
  `cmt_idx` bigint(20) NOT NULL,
  `cmt_uuid` varchar(60) NOT NULL,
  `dislikecount` int(11) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `is_reported` bit(1) NOT NULL,
  `likecount` int(11) NOT NULL,
  `is_modified` bit(1) NOT NULL,
  `location_loc_no` bigint(20) DEFAULT NULL,
  `user_user_no` bigint(20) NOT NULL,
  PRIMARY KEY (`cmt_no`),
  KEY `FKe2sqie7jgcyvvyuekwx181vsf` (`location_loc_no`),
  KEY `FK5sgnblekkqyvmejrggk0if01c` (`user_user_no`),
  CONSTRAINT `FK5sgnblekkqyvmejrggk0if01c` FOREIGN KEY (`user_user_no`) REFERENCES `user` (`user_no`) ON DELETE CASCADE,
  CONSTRAINT `FKe2sqie7jgcyvvyuekwx181vsf` FOREIGN KEY (`location_loc_no`) REFERENCES `location` (`loc_no`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`cmt_no`, `moddate`, `regdate`, `cmt_content`, `cmt_idx`, `cmt_uuid`, `dislikecount`, `is_deleted`, `is_reported`, `likecount`, `is_modified`, `location_loc_no`, `user_user_no`) VALUES (1,'2021-12-01 13:16:38','2021-12-01 13:16:31','test',0,'c4314e7d-5d3c-4c31-b411-b8fbcdcd002a',0,'\0','\0',11,'\0',9,5),(2,'2021-12-01 13:17:20','2021-12-01 13:16:35','test123',1,'95a6f5ee-f143-447b-a367-8d325267fd28',0,'\0','\0',0,'',9,5),(3,'2021-12-02 02:11:18','2021-12-02 02:11:18','연인들과 산책하기 좋은 코스입니다! 또한 분수쇼도 있으니 시간을 알아보고 맞춰 가시면 더욱 좋은 추억으로 남을 것 같습니다~!!',0,'6966e00e-6c41-49cc-8c8c-0920cb3cd4f8',0,'\0','\0',0,'\0',2,14),(4,'2021-12-02 02:13:19','2021-12-02 02:13:19','근처에 라베니체라는 곳도 데이트 코스로 좋을 것 같아요! 저녁에 가면 더욱 운치있습니다!',0,'edd68c73-af93-4a98-8d2b-6595fb2e6668',0,'\0','\0',0,'\0',8,14),(5,'2021-12-02 02:14:25','2021-12-02 02:14:25','보드게임 카페, 먹거리 등 많은 문화를 즐길 수 있는 곳입니다! 유명한 만큼 사람들도 많이 북적이는 곳입니다~!',0,'f3939ff8-5044-4fac-b65a-16072063e40f',0,'\0','\0',0,'\0',19,14),(6,'2021-12-02 04:27:15','2021-12-02 04:27:15','추천부탁드려용',0,'23354971-4adb-44b2-bdba-58f09b2af8ef',0,'\0','\0',0,'\0',21,21),(7,'2021-12-03 01:32:16','2021-12-02 04:29:49','오 여기 정말 좋네요~',0,'f599cf37-3343-4998-ad88-a8de5e3c625c',1,'\0','\0',0,'\0',14,21),(8,'2021-12-03 06:21:36','2021-12-02 06:12:46','정말 좋아요^^.....................',0,'6cae402c-df0e-456d-b76f-0a957482e58d',0,'\0','\0',100,'\0',1,22),(9,'2021-12-03 07:04:31','2021-12-02 06:17:06','야경이 너무 좋을 것 같아요~ 나중에 가봐야겠어요!ㅎㅎ',1,'7d153757-dd29-4f27-a2ac-b3d6c1de957f',0,'\0','\0',20,'\0',21,14),(10,'2021-12-02 06:18:19','2021-12-02 06:18:19','놀이기구는 잘 못타지만 한번쯤 가볼만 할 것 같아요!',0,'46d582e6-43fc-4b32-b768-abd13f8e34c0',0,'\0','\0',0,'\0',17,14),(11,'2021-12-02 06:19:06','2021-12-02 06:19:06','이곳도 커플들이 많이 다녀오더라구요!! 저도 나중에 가볼려고요~!~!ㅎㅎ',0,'4a9320e6-2b91-439c-804e-651c20ff18df',0,'\0','\0',0,'\0',22,14),(12,'2021-12-02 06:20:18','2021-12-02 06:20:18','이곳은 시기를 잘 맞춰서 가면 인생샷을 남길 수 있을 것 같아요! 추천 짱!',0,'846bc626-c246-4175-9382-fdce05eb1a76',0,'\0','\0',0,'\0',5,14),(13,'2021-12-02 06:20:59','2021-12-02 06:20:59','캠핑 너무 가고싶어요ㅠㅜ 글램핑같은 곳인 것 같은데 가게 된다면 재밌게 놀 수 있을 것 같아요!',0,'dca207a4-0bf6-4556-a9b3-bb8f284c4449',0,'\0','\0',0,'\0',6,14),(14,'2021-12-02 06:22:12','2021-12-02 06:22:12','행주산성에서 인생샷을 많이 건져오더라구요! 강추!bb',0,'6eb864ae-9e2f-4982-9ca0-363838d17983',0,'\0','\0',0,'\0',12,14),(15,'2021-12-03 01:48:08','2021-12-03 01:47:57','좋아요',0,'fa1d2c24-2cbd-4a46-842f-4a7d6427dd44',0,'\0','\0',1,'\0',11,7),(16,'2021-12-08 13:16:29','2021-12-08 13:16:29','집 데이트코스로 내주시는 건가요',0,'4499162f-ef1b-4375-a4e2-d404d7c413ab',0,'\0','\0',0,'\0',28,9),(17,'2021-12-08 13:32:40','2021-12-08 13:32:36','많이 사랑해 주십시오!!!!!!',0,'a6e2bb15-d8ed-4be0-8cfc-bb2b648b95dc',0,'\0','\0',1,'\0',30,25),(18,'2021-12-08 13:35:55','2021-12-08 13:35:43','그쵸 파리도 생명이니깐요',1,'02e2bce2-c730-46d1-a905-4f538838efbf',0,'\0','\0',1,'\0',30,27),(19,'2021-12-08 13:40:04','2021-12-08 13:36:15','맞습니다 오히려 맛있기 때문에 파리가 오는 것입니다!!! 감사합니다 채원님!!!',2,'4cf385b3-21e1-47bb-ba51-bb1adaf6dabd',0,'\0','\0',2,'',30,25),(20,'2021-12-08 13:37:02','2021-12-08 13:36:35','친절한 장소 설명 감사합니다.',0,'f16807f8-671b-49a0-ba63-4513b8370f28',0,'\0','\0',1,'\0',29,9);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cor_image`
--

DROP TABLE IF EXISTS `cor_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cor_image` (
  `img_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `cor_no` bigint(20) NOT NULL,
  `img_idx` bigint(20) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `img_uuid` varchar(45) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  PRIMARY KEY (`img_no`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cor_image`
--

LOCK TABLES `cor_image` WRITE;
/*!40000 ALTER TABLE `cor_image` DISABLE KEYS */;
INSERT INTO `cor_image` (`img_no`, `moddate`, `regdate`, `cor_no`, `img_idx`, `img_url`, `img_uuid`, `is_deleted`, `user_no`) VALUES (1,'2021-12-03 01:51:50','2021-12-01 00:52:45',1,0,'/image/course/d6aa3e02-7a4c-477c-9ef1-5b1af9b83351.jpg','d6aa3e02-7a4c-477c-9ef1-5b1af9b83351.jpg','',1),(2,'2021-12-03 01:51:50','2021-12-01 00:52:45',1,1,'/image/course/295cedb4-956e-452d-8c13-7aebca46b06c.jpg','295cedb4-956e-452d-8c13-7aebca46b06c.jpg','',1),(3,'2021-12-03 01:51:50','2021-12-01 00:52:45',1,2,'/image/course/3a7d91ea-5948-4722-aba0-78249c3db2e8.jpg','3a7d91ea-5948-4722-aba0-78249c3db2e8.jpg','',1),(4,'2021-12-03 01:51:50','2021-12-01 00:52:45',1,3,'/image/course/8cf09569-5be0-4cb1-9576-29ffbf092b4b.jpg','8cf09569-5be0-4cb1-9576-29ffbf092b4b.jpg','',1),(5,'2021-12-01 02:30:28','2021-12-01 02:30:28',2,0,'/image/course/c2c98afb-fdc2-41f9-9f8e-2f51d3992288.jpg','c2c98afb-fdc2-41f9-9f8e-2f51d3992288.jpg','\0',5),(6,'2021-12-01 02:30:28','2021-12-01 02:30:28',2,1,'/image/course/404747c8-65e2-4cd4-9a8d-1af410b00da9.jpg','404747c8-65e2-4cd4-9a8d-1af410b00da9.jpg','\0',5),(7,'2021-12-01 02:30:28','2021-12-01 02:30:28',2,2,'/image/course/ba648680-1095-452d-bdd4-046f63a88925.jpg','ba648680-1095-452d-bdd4-046f63a88925.jpg','\0',5),(8,'2021-12-01 05:34:05','2021-12-01 05:34:05',3,0,'/image/course/36fe2e9a-cb7d-4cc3-a165-66686466a095.jpg','36fe2e9a-cb7d-4cc3-a165-66686466a095.jpg','\0',12),(9,'2021-12-01 05:34:05','2021-12-01 05:34:05',3,1,'/image/course/79986307-948f-4deb-bb22-336b82c8eee2.jpg','79986307-948f-4deb-bb22-336b82c8eee2.jpg','\0',12),(10,'2021-12-01 05:34:05','2021-12-01 05:34:05',3,2,'/image/course/b07188ef-2ab2-468e-88e9-b447279aabe8.jpg','b07188ef-2ab2-468e-88e9-b447279aabe8.jpg','\0',12),(11,'2021-12-01 13:18:01','2021-12-01 13:18:01',4,0,'/image/course/fe32ad89-3f98-4755-bcd7-1062efdb2058.jpg','fe32ad89-3f98-4755-bcd7-1062efdb2058.jpg','\0',5),(12,'2021-12-01 13:18:01','2021-12-01 13:18:01',4,1,'/image/course/c06d5c13-4443-45fe-9ebe-b8c2763a6286.jpg','c06d5c13-4443-45fe-9ebe-b8c2763a6286.jpg','\0',5),(13,'2021-12-01 13:18:02','2021-12-01 13:18:02',4,2,'/image/course/6364a0fd-a3ac-49a9-840f-c29a39cbc58c.jpg','6364a0fd-a3ac-49a9-840f-c29a39cbc58c.jpg','\0',5),(14,'2021-12-02 04:31:40','2021-12-02 04:31:40',5,0,'/image/course/fd0ac68e-2810-4d3a-b42d-6c18f331e49a.jpg','fd0ac68e-2810-4d3a-b42d-6c18f331e49a.jpg','\0',21),(15,'2021-12-02 04:31:40','2021-12-02 04:31:40',5,1,'/image/course/1592d9b2-2294-47f3-9df1-17f3f326c2d0.jpg','1592d9b2-2294-47f3-9df1-17f3f326c2d0.jpg','\0',21),(16,'2021-12-02 04:31:40','2021-12-02 04:31:40',5,2,'/image/course/25efb6ea-9d4c-44e8-93fe-f9c565930a85.jpg','25efb6ea-9d4c-44e8-93fe-f9c565930a85.jpg','\0',21),(17,'2021-12-03 06:09:31','2021-12-03 06:09:31',6,0,'/image/course/3a19c27f-b091-42f4-8a69-feabeec060c1.jpg','3a19c27f-b091-42f4-8a69-feabeec060c1.jpg','\0',7),(18,'2021-12-03 06:09:31','2021-12-03 06:09:31',6,1,'/image/course/cc05d8a5-3186-48fc-b962-c8d95565ceef.jpg','cc05d8a5-3186-48fc-b962-c8d95565ceef.jpg','\0',7),(19,'2021-12-03 06:09:32','2021-12-03 06:09:32',6,2,'/image/course/cb933394-a5ac-40a4-ac64-3378aabcd129.jpg','cb933394-a5ac-40a4-ac64-3378aabcd129.jpg','\0',7);
/*!40000 ALTER TABLE `cor_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cor_loc_mapper`
--

DROP TABLE IF EXISTS `cor_loc_mapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cor_loc_mapper` (
  `clm_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `clm_uuid` varchar(255) NOT NULL,
  `cor_no` bigint(20) NOT NULL,
  `loc_index` int(11) NOT NULL,
  `loc_no` bigint(20) NOT NULL,
  PRIMARY KEY (`clm_no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cor_loc_mapper`
--

LOCK TABLES `cor_loc_mapper` WRITE;
/*!40000 ALTER TABLE `cor_loc_mapper` DISABLE KEYS */;
INSERT INTO `cor_loc_mapper` (`clm_no`, `moddate`, `regdate`, `clm_uuid`, `cor_no`, `loc_index`, `loc_no`) VALUES (3,'2021-12-01 02:30:28','2021-12-01 02:30:28','e20e6d06-ed59-4a75-b079-7e78830bb0e5',2,0,1),(4,'2021-12-01 02:30:28','2021-12-01 02:30:28','e98f7c73-dd76-459f-b683-82dfc23aba23',2,1,5),(5,'2021-12-01 05:34:05','2021-12-01 05:34:05','f9f20bd6-29da-4ed1-a385-73a19f331b62',3,0,1),(6,'2021-12-01 13:18:02','2021-12-01 13:18:02','780aea29-9508-499a-97fe-f14aea78121a',4,0,9),(7,'2021-12-01 13:18:02','2021-12-01 13:18:02','097e1152-779a-48e9-a68e-7fbeac045f92',4,1,12),(8,'2021-12-02 04:31:40','2021-12-02 04:31:40','89e0e3ef-446e-4e7e-8fd1-2e402c527e61',5,0,21),(9,'2021-12-02 04:31:40','2021-12-02 04:31:40','0b2c9889-984d-4a93-b75f-392a585ef141',5,1,14),(10,'2021-12-02 04:31:40','2021-12-02 04:31:40','875c6c13-ab73-430b-b77e-29ee16114a4e',5,2,9),(11,'2021-12-03 06:09:32','2021-12-03 06:09:32','638743d5-0bd5-44be-8a6d-20e87992f112',6,0,4),(12,'2021-12-03 06:09:32','2021-12-03 06:09:32','82381d79-adfa-4832-9049-c2057c3591a7',6,1,1);
/*!40000 ALTER TABLE `cor_loc_mapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `cor_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `accommodations_info` varchar(255) DEFAULT NULL,
  `cor_name` varchar(40) NOT NULL,
  `cor_uuid` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `est_type` varchar(255) NOT NULL,
  `est_value` varchar(255) NOT NULL,
  `info` varchar(150) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `is_reported` bit(1) NOT NULL,
  `likecount` int(11) NOT NULL DEFAULT 0,
  `location_count` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cor_no`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`cor_no`, `moddate`, `regdate`, `accommodations_info`, `cor_name`, `cor_uuid`, `cost`, `est_type`, `est_value`, `info`, `is_deleted`, `is_reported`, `likecount`, `location_count`, `thumbnail`, `transportation`, `user_no`, `viewcount`) VALUES (2,'2021-12-08 13:31:48','2021-12-01 02:30:28','','ㅁㄴㅇㄹ','1d021bec-57de-42f3-b405-91ee61e99cfe','2만원','time','1시간 30분','ㅁㄴㅇㄹ','\0','\0',1,2,'/image/course/c2c98afb-fdc2-41f9-9f8e-2f51d3992288.jpg','도보',5,16),(3,'2021-12-03 16:06:31','2021-12-01 05:34:05','','중부대산책길','2c7e0671-6f4a-4732-89c3-3308faf64cbc','1만원','time','30분','학교 뒷 편 언덕을 올라 신선한 공기를 온 몸으로 느낄 수 있습니다! 한번 씩와서 운동도 하고 연인과 데이트도 해보세요~','\0','\0',1,1,'/image/course/36fe2e9a-cb7d-4cc3-a165-66686466a095.jpg','자동차',12,10),(4,'2021-12-08 13:43:48','2021-12-01 13:18:01','','gg','d08ebc7f-d1f9-4b85-9980-69ff5306102a','00 만원','time','1시간 30분','asdf','\0','\0',1,2,'/image/course/fe32ad89-3f98-4755-bcd7-1062efdb2058.jpg','자동차',5,9),(5,'2021-12-24 13:35:31','2021-12-02 04:31:40','','권현모','0e4e6abc-0573-4ff4-81e0-6fa5f0773609','15','time','12시간','4계절 즐길수 있는 명륜진사갈비','\0','\0',1,3,'/image/course/fd0ac68e-2810-4d3a-b42d-6c18f331e49a.jpg','걸음걸이',21,56),(6,'2021-12-11 13:14:34','2021-12-03 06:09:31','','손호진','2aa1b368-b6c2-44b6-b1fa-b34788e46009','5만원','time','1시간 30분','','\0','\0',0,2,'/image/course/3a19c27f-b091-42f4-8a69-feabeec060c1.jpg','도보 및 대중교통',7,8);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_tag_set`
--

DROP TABLE IF EXISTS `course_tag_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_tag_set` (
  `course_cor_no` bigint(20) NOT NULL,
  `tag_set` varchar(255) DEFAULT NULL,
  KEY `FKrr8frd88gu1iqaoilocuonlxy` (`course_cor_no`),
  CONSTRAINT `FKrr8frd88gu1iqaoilocuonlxy` FOREIGN KEY (`course_cor_no`) REFERENCES `course` (`cor_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_tag_set`
--

LOCK TABLES `course_tag_set` WRITE;
/*!40000 ALTER TABLE `course_tag_set` DISABLE KEYS */;
INSERT INTO `course_tag_set` (`course_cor_no`, `tag_set`) VALUES (2,'야외'),(2,'실내'),(2,'자전거'),(3,'산'),(3,'숲'),(3,'야외'),(4,'야외'),(4,'실내'),(4,'자전거'),(5,'여름'),(5,'가을'),(5,'야외'),(5,'봄'),(5,'겨울'),(5,'실내'),(6,'꽃구경'),(6,'한옥'),(6,'야외');
/*!40000 ALTER TABLE `course_tag_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `del_img_info`
--

DROP TABLE IF EXISTS `del_img_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `del_img_info` (
  `dii_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `deleted` bit(1) NOT NULL,
  `dii_uuid` varchar(255) NOT NULL,
  `img_no` bigint(20) NOT NULL,
  `img_type` varchar(255) NOT NULL,
  `img_user_no` bigint(20) NOT NULL,
  `img_uuid` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  PRIMARY KEY (`dii_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `del_img_info`
--

LOCK TABLES `del_img_info` WRITE;
/*!40000 ALTER TABLE `del_img_info` DISABLE KEYS */;
INSERT INTO `del_img_info` (`dii_no`, `moddate`, `regdate`, `deleted`, `dii_uuid`, `img_no`, `img_type`, `img_user_no`, `img_uuid`, `result`) VALUES (1,'2021-12-16 07:16:35','2021-12-16 07:16:35','\0','06bd43b9-a63e-4bad-be55-994ca7716ed0',80,'LOC_IMG',5,'LOC^e6eafb51-223f-4a0d-bd1b-17542c94263c.jfif',''),(2,'2021-12-16 07:21:10','2021-12-16 07:21:10','\0','44cc4683-9f6e-4f90-9fd5-437a3b709588',102,'LOC_IMG',5,'LOC^3b167920-ebad-479a-87c1-5b985225b925.gif',''),(3,'2021-12-16 07:21:10','2021-12-16 07:21:10','\0','3574fec6-5599-42a6-a9a1-e17cd0fb1254',103,'LOC_IMG',5,'LOC^34950fdd-1e71-48b8-b583-9d0d6a7b30a2.jpg',''),(4,'2021-12-16 07:21:10','2021-12-16 07:21:10','\0','72add596-59da-4434-b7a8-5c4925a4459d',104,'LOC_IMG',5,'LOC^4e5f600a-d256-45aa-951f-7f5f04f89364.png','');
/*!40000 ALTER TABLE `del_img_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loc_image`
--

DROP TABLE IF EXISTS `loc_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loc_image` (
  `img_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `img_idx` bigint(20) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `img_uuid` varchar(45) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `location_loc_no` bigint(20) DEFAULT NULL,
  `loc_no` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`img_no`),
  KEY `FKb1c6wmt0ynattkkdkwi4oxowr` (`location_loc_no`),
  KEY `FK57hf880ludabe6ma7ca0erh9q` (`loc_no`),
  CONSTRAINT `FK57hf880ludabe6ma7ca0erh9q` FOREIGN KEY (`loc_no`) REFERENCES `location` (`loc_no`) ON DELETE CASCADE,
  CONSTRAINT `FKb1c6wmt0ynattkkdkwi4oxowr` FOREIGN KEY (`location_loc_no`) REFERENCES `location` (`loc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc_image`
--

LOCK TABLES `loc_image` WRITE;
/*!40000 ALTER TABLE `loc_image` DISABLE KEYS */;
INSERT INTO `loc_image` (`img_no`, `moddate`, `regdate`, `img_idx`, `img_url`, `img_uuid`, `is_deleted`, `user_no`, `location_loc_no`, `loc_no`) VALUES (1,'2021-12-01 00:43:23','2021-12-01 00:43:23',0,'/image/location/c708b271-bf3b-4fdd-86ce-99f8f03f60e0.jpg','c708b271-bf3b-4fdd-86ce-99f8f03f60e0.jpg','\0',1,1,1),(2,'2021-12-01 00:43:23','2021-12-01 00:43:23',1,'/image/location/1e884cd4-799b-4150-8efc-2b4474611963.jpg','1e884cd4-799b-4150-8efc-2b4474611963.jpg','\0',1,1,1),(3,'2021-12-01 00:43:23','2021-12-01 00:43:23',2,'/image/location/52343553-0ffb-4116-9f19-52025859788d.jpg','52343553-0ffb-4116-9f19-52025859788d.jpg','\0',1,1,1),(4,'2021-12-01 00:44:23','2021-12-01 00:44:23',0,'/image/location/f34a1f2f-05eb-4d82-9797-67c1a4aadc4c.jpg','f34a1f2f-05eb-4d82-9797-67c1a4aadc4c.jpg','\0',7,2,2),(5,'2021-12-01 00:44:23','2021-12-01 00:44:23',1,'/image/location/17b819fc-c6d6-48ae-af1d-e7e161d1de3f.jpg','17b819fc-c6d6-48ae-af1d-e7e161d1de3f.jpg','\0',7,2,2),(6,'2021-12-01 00:44:23','2021-12-01 00:44:23',2,'/image/location/d994bb9e-7a6a-4835-b67e-31efa9b3685a.jpg','d994bb9e-7a6a-4835-b67e-31efa9b3685a.jpg','\0',7,2,2),(7,'2021-12-01 00:44:23','2021-12-01 00:44:23',3,'/image/location/8f454895-88e7-456a-9de5-f3dcf079629f.jpg','8f454895-88e7-456a-9de5-f3dcf079629f.jpg','\0',7,2,2),(8,'2021-12-01 00:44:41','2021-12-01 00:44:41',0,'/image/location/9342ae1d-6acf-49a9-ba16-4e027d7838bc.jpg','9342ae1d-6acf-49a9-ba16-4e027d7838bc.jpg','\0',1,3,3),(9,'2021-12-01 00:44:41','2021-12-01 00:44:41',1,'/image/location/e52f9b5e-c765-4a40-96c9-a74398f7ccd6.jpg','e52f9b5e-c765-4a40-96c9-a74398f7ccd6.jpg','\0',1,3,3),(10,'2021-12-01 00:44:41','2021-12-01 00:44:41',2,'/image/location/36cc5956-b14d-490e-8b95-2fb98c46ea5d.jpg','36cc5956-b14d-490e-8b95-2fb98c46ea5d.jpg','\0',1,3,3),(11,'2021-12-01 00:44:41','2021-12-01 00:44:41',3,'/image/location/2c45e255-2a3d-4f6c-a6ff-f90615bf9fd0.jpg','2c45e255-2a3d-4f6c-a6ff-f90615bf9fd0.jpg','\0',1,3,3),(12,'2021-12-01 00:49:09','2021-12-01 00:49:09',0,'/image/location/8cdee583-55ca-450a-b633-aeae8da3c39b.jpg','8cdee583-55ca-450a-b633-aeae8da3c39b.jpg','\0',1,4,4),(13,'2021-12-01 00:49:09','2021-12-01 00:49:09',1,'/image/location/e668f944-f8e3-4a41-bc67-d9b3505aee55.jpg','e668f944-f8e3-4a41-bc67-d9b3505aee55.jpg','\0',1,4,4),(14,'2021-12-01 00:49:09','2021-12-01 00:49:09',2,'/image/location/784e8795-981f-4e8c-a452-275ed46f2401.jpg','784e8795-981f-4e8c-a452-275ed46f2401.jpg','\0',1,4,4),(15,'2021-12-01 00:49:09','2021-12-01 00:49:09',3,'/image/location/e1a9f3bf-ac1d-41b8-87df-fbf12dcba937.jpg','e1a9f3bf-ac1d-41b8-87df-fbf12dcba937.jpg','\0',1,4,4),(16,'2021-12-01 00:50:33','2021-12-01 00:50:33',0,'/image/location/5c0bb242-5c97-491c-ada0-0cf69cc83899.jpg','5c0bb242-5c97-491c-ada0-0cf69cc83899.jpg','\0',1,5,5),(17,'2021-12-01 00:50:33','2021-12-01 00:50:33',1,'/image/location/3a543ea4-1601-48aa-9bb5-158101e21b22.jpg','3a543ea4-1601-48aa-9bb5-158101e21b22.jpg','\0',1,5,5),(18,'2021-12-01 00:50:34','2021-12-01 00:50:34',2,'/image/location/58792995-c9cd-48e8-98db-e14d914db794.jpg','58792995-c9cd-48e8-98db-e14d914db794.jpg','\0',1,5,5),(19,'2021-12-01 00:50:34','2021-12-01 00:50:34',3,'/image/location/7d0c6e1b-9c78-4048-98bb-4beeb08a3e76.jpg','7d0c6e1b-9c78-4048-98bb-4beeb08a3e76.jpg','\0',1,5,5),(20,'2021-12-01 00:51:15','2021-12-01 00:51:15',0,'/image/location/2a9b4689-76a5-479e-8268-34b1cde2c909.jpg','2a9b4689-76a5-479e-8268-34b1cde2c909.jpg','\0',2,6,6),(21,'2021-12-01 00:51:15','2021-12-01 00:51:15',1,'/image/location/b1af7886-fabf-4b28-89fe-388910b7387a.jpg','b1af7886-fabf-4b28-89fe-388910b7387a.jpg','\0',2,6,6),(22,'2021-12-01 00:51:15','2021-12-01 00:51:15',2,'/image/location/bf51d5e4-f5c5-4d7e-8ade-1a8da2682914.jpg','bf51d5e4-f5c5-4d7e-8ade-1a8da2682914.jpg','\0',2,6,6),(23,'2021-12-01 02:28:25','2021-12-01 02:28:25',0,'/image/location/322c3b00-f3bc-4595-af21-1e0f5cb5dbca.jpg','322c3b00-f3bc-4595-af21-1e0f5cb5dbca.jpg','\0',5,7,7),(24,'2021-12-01 02:28:25','2021-12-01 02:28:25',1,'/image/location/7692732d-d1ff-4570-815c-22899579e3cd.jpg','7692732d-d1ff-4570-815c-22899579e3cd.jpg','\0',5,7,7),(25,'2021-12-01 02:28:25','2021-12-01 02:28:25',2,'/image/location/1dccca66-42e6-4258-a7f4-7b24e84f6fd0.jpg','1dccca66-42e6-4258-a7f4-7b24e84f6fd0.jpg','\0',5,7,7),(26,'2021-12-01 04:14:51','2021-12-01 04:14:51',0,'/image/location/821e7606-0ffa-423e-a57b-e5455941e8d6.jpg','821e7606-0ffa-423e-a57b-e5455941e8d6.jpg','\0',7,8,8),(27,'2021-12-01 04:14:51','2021-12-01 04:14:51',1,'/image/location/9ec4bb1d-eca9-4a06-abb1-8af326a0f07e.jpg','9ec4bb1d-eca9-4a06-abb1-8af326a0f07e.jpg','\0',7,8,8),(28,'2021-12-01 04:14:51','2021-12-01 04:14:51',2,'/image/location/8a035bbd-1f36-4c1d-8ee2-dd62f8df92a4.jpg','8a035bbd-1f36-4c1d-8ee2-dd62f8df92a4.jpg','\0',7,8,8),(29,'2021-12-01 04:19:27','2021-12-01 04:19:27',0,'/image/location/9ca3f84e-1b67-4e40-9b7a-3fe8b8cc729e.jpg','9ca3f84e-1b67-4e40-9b7a-3fe8b8cc729e.jpg','\0',7,9,9),(30,'2021-12-01 04:19:27','2021-12-01 04:19:27',1,'/image/location/ec9c7527-1968-4bdc-820e-57515a1e18f0.jpg','ec9c7527-1968-4bdc-820e-57515a1e18f0.jpg','\0',7,9,9),(31,'2021-12-01 04:19:27','2021-12-01 04:19:27',2,'/image/location/549d67a1-3813-421a-8090-7dfdcce6d2f6.jpg','549d67a1-3813-421a-8090-7dfdcce6d2f6.jpg','\0',7,9,9),(32,'2021-12-01 04:45:31','2021-12-01 04:45:31',0,'/image/location/9b7213fe-149f-42a7-9f3d-8cf2a6b84a51.jpg','9b7213fe-149f-42a7-9f3d-8cf2a6b84a51.jpg','\0',7,10,10),(33,'2021-12-01 04:45:31','2021-12-01 04:45:31',1,'/image/location/41464d81-3584-4da8-9fcf-6d6975cbb16f.jpg','41464d81-3584-4da8-9fcf-6d6975cbb16f.jpg','\0',7,10,10),(34,'2021-12-01 04:45:31','2021-12-01 04:45:31',2,'/image/location/8955b16c-4ea0-4a5e-a400-dcb7f2e30d74.jpg','8955b16c-4ea0-4a5e-a400-dcb7f2e30d74.jpg','\0',7,10,10),(35,'2021-12-01 04:57:06','2021-12-01 04:57:06',0,'/image/location/b83e305e-7918-4da7-a286-3d9ea6087c96.jpg','b83e305e-7918-4da7-a286-3d9ea6087c96.jpg','\0',11,11,11),(36,'2021-12-01 04:57:06','2021-12-01 04:57:06',1,'/image/location/c9d0c702-8682-40cf-8ae6-558a7464a165.jpg','c9d0c702-8682-40cf-8ae6-558a7464a165.jpg','\0',11,11,11),(37,'2021-12-01 04:57:06','2021-12-01 04:57:06',2,'/image/location/7b610fe3-706c-445b-8de4-1034b92980d9.jpg','7b610fe3-706c-445b-8de4-1034b92980d9.jpg','\0',11,11,11),(38,'2021-12-01 05:39:44','2021-12-01 05:39:44',0,'/image/location/5138ffe4-be77-4cf3-aedd-08750d9c5a33.jpg','5138ffe4-be77-4cf3-aedd-08750d9c5a33.jpg','\0',12,12,12),(39,'2021-12-01 05:39:44','2021-12-01 05:39:44',1,'/image/location/00858e77-7ccd-4c5d-9194-b7e4ffd255b5.jpg','00858e77-7ccd-4c5d-9194-b7e4ffd255b5.jpg','\0',12,12,12),(40,'2021-12-01 05:39:44','2021-12-01 05:39:44',2,'/image/location/0429dc23-a033-45d5-9f37-927ebc9f962c.jpg','0429dc23-a033-45d5-9f37-927ebc9f962c.jpg','\0',12,12,12),(41,'2021-12-01 05:53:42','2021-12-01 05:53:42',0,'/image/location/3b27e1c5-9cc9-4c98-93f7-9b1faa309453.jpg','3b27e1c5-9cc9-4c98-93f7-9b1faa309453.jpg','\0',7,13,13),(42,'2021-12-01 05:53:42','2021-12-01 05:53:42',1,'/image/location/b8cbab97-8674-4e97-bd4b-c0298106b381.jpg','b8cbab97-8674-4e97-bd4b-c0298106b381.jpg','\0',7,13,13),(43,'2021-12-01 05:53:42','2021-12-01 05:53:42',2,'/image/location/ad618c5d-7936-4081-af2a-ec4fdd844ea5.jpg','ad618c5d-7936-4081-af2a-ec4fdd844ea5.jpg','\0',7,13,13),(44,'2021-12-01 06:36:24','2021-12-01 06:36:24',0,'/image/location/a746e2b6-2ba5-4567-b7d4-d74ce313adcd.jfif','a746e2b6-2ba5-4567-b7d4-d74ce313adcd.jfif','\0',14,14,14),(45,'2021-12-01 06:36:24','2021-12-01 06:36:24',1,'/image/location/02c56463-f3b0-4c2c-91f8-3e5bcbf82afa.jfif','02c56463-f3b0-4c2c-91f8-3e5bcbf82afa.jfif','\0',14,14,14),(46,'2021-12-01 06:36:24','2021-12-01 06:36:24',2,'/image/location/86046eb9-1d20-411f-8b0b-674b5c8fda80.jfif','86046eb9-1d20-411f-8b0b-674b5c8fda80.jfif','\0',14,14,14),(47,'2021-12-01 06:59:21','2021-12-01 06:59:21',0,'/image/location/3e45b9aa-e93b-4496-8250-3da3105a5bbb.jpg','3e45b9aa-e93b-4496-8250-3da3105a5bbb.jpg','\0',16,15,15),(48,'2021-12-01 06:59:21','2021-12-01 06:59:21',1,'/image/location/b7ce689a-7994-4291-ba06-1439029b3d4a.jpg','b7ce689a-7994-4291-ba06-1439029b3d4a.jpg','\0',16,15,15),(49,'2021-12-01 06:59:21','2021-12-01 06:59:21',2,'/image/location/b0841554-665b-4ed5-a1b3-966a90c0562f.jpg','b0841554-665b-4ed5-a1b3-966a90c0562f.jpg','\0',16,15,15),(50,'2021-12-01 07:10:38','2021-12-01 07:10:38',0,'/image/location/1e0a686d-4366-413d-b838-716447621b58.jpg','1e0a686d-4366-413d-b838-716447621b58.jpg','\0',17,16,16),(51,'2021-12-01 07:10:38','2021-12-01 07:10:38',1,'/image/location/6e5e7702-d4a1-45cf-93ca-de5d8cc90bca.jpg','6e5e7702-d4a1-45cf-93ca-de5d8cc90bca.jpg','\0',17,16,16),(52,'2021-12-01 07:10:38','2021-12-01 07:10:38',2,'/image/location/9e218491-dec8-419e-84ab-da7e6a4eca2d.jpg','9e218491-dec8-419e-84ab-da7e6a4eca2d.jpg','\0',17,16,16),(53,'2021-12-01 07:28:01','2021-12-01 07:28:01',0,'/image/location/7a540795-b6c7-48fc-9cba-b9576b463d31.jpg','7a540795-b6c7-48fc-9cba-b9576b463d31.jpg','\0',18,17,17),(54,'2021-12-01 07:28:01','2021-12-01 07:28:01',1,'/image/location/299eb42f-79d6-47c7-8e94-65b65ce2a832.jpg','299eb42f-79d6-47c7-8e94-65b65ce2a832.jpg','\0',18,17,17),(55,'2021-12-01 07:28:01','2021-12-01 07:28:01',2,'/image/location/4ed0711b-fc3e-4842-9978-7fc2f62cae5e.jpg','4ed0711b-fc3e-4842-9978-7fc2f62cae5e.jpg','\0',18,17,17),(56,'2021-12-01 07:45:36','2021-12-01 07:45:36',0,'/image/location/c1f605c9-e10d-4164-b5ea-6ff732152c62.jpg','c1f605c9-e10d-4164-b5ea-6ff732152c62.jpg','\0',7,18,18),(57,'2021-12-01 07:45:36','2021-12-01 07:45:36',1,'/image/location/5ff7036c-0ab4-4569-a69b-e289a18bed79.jpg','5ff7036c-0ab4-4569-a69b-e289a18bed79.jpg','\0',7,18,18),(58,'2021-12-01 07:45:36','2021-12-01 07:45:36',2,'/image/location/3dc82158-250d-4e29-ba47-7eb57da7032a.jpg','3dc82158-250d-4e29-ba47-7eb57da7032a.jpg','\0',7,18,18),(59,'2021-12-02 01:17:48','2021-12-02 01:17:48',0,'/image/location/edb50ded-55df-44cf-a690-f2ac83721795.jpg','edb50ded-55df-44cf-a690-f2ac83721795.jpg','\0',3,19,19),(60,'2021-12-02 01:17:48','2021-12-02 01:17:48',1,'/image/location/a3613b67-3542-4223-a620-6be8695f8bc2.jpg','a3613b67-3542-4223-a620-6be8695f8bc2.jpg','\0',3,19,19),(61,'2021-12-02 01:17:48','2021-12-02 01:17:48',2,'/image/location/eedef515-56f6-443d-9f64-67ba5de2fb88.jpg','eedef515-56f6-443d-9f64-67ba5de2fb88.jpg','\0',3,19,19),(62,'2021-12-02 02:04:46','2021-12-02 02:04:46',0,'/image/location/5c52d6c1-d2c1-4bf4-8ee9-e1b7fc0a040d.jpg','5c52d6c1-d2c1-4bf4-8ee9-e1b7fc0a040d.jpg','\0',20,20,20),(63,'2021-12-02 02:04:46','2021-12-02 02:04:46',1,'/image/location/5fd69e8f-9381-46d5-8091-694da67c9a73.jpg','5fd69e8f-9381-46d5-8091-694da67c9a73.jpg','\0',20,20,20),(64,'2021-12-02 02:04:46','2021-12-02 02:04:46',2,'/image/location/19edc850-b95f-4396-bded-7c2e414e04fb.jpg','19edc850-b95f-4396-bded-7c2e414e04fb.jpg','\0',20,20,20),(65,'2021-12-02 04:26:53','2021-12-02 04:26:53',0,'/image/location/66867984-91c3-4e15-a36a-b78e52d78a5d.jpg','66867984-91c3-4e15-a36a-b78e52d78a5d.jpg','\0',21,21,21),(66,'2021-12-02 04:26:53','2021-12-02 04:26:53',1,'/image/location/616ba49e-b5f7-4ede-8c16-74df27d2ed1f.jpg','616ba49e-b5f7-4ede-8c16-74df27d2ed1f.jpg','\0',21,21,21),(67,'2021-12-02 04:26:53','2021-12-02 04:26:53',2,'/image/location/789e6222-b0fd-43a0-89fa-1046b44432df.jpg','789e6222-b0fd-43a0-89fa-1046b44432df.jpg','\0',21,21,21),(68,'2021-12-02 04:43:00','2021-12-02 04:43:00',0,'/image/location/6bf97458-a1dd-4841-9ef2-38794ecd4c0a.jpg','6bf97458-a1dd-4841-9ef2-38794ecd4c0a.jpg','\0',7,22,22),(69,'2021-12-02 04:43:00','2021-12-02 04:43:00',1,'/image/location/3c191da4-5538-41e0-9f77-79a0b57c45d8.jpg','3c191da4-5538-41e0-9f77-79a0b57c45d8.jpg','\0',7,22,22),(70,'2021-12-02 04:43:00','2021-12-02 04:43:00',2,'/image/location/48bb6333-a022-4306-b77a-50d5fb186b82.jpg','48bb6333-a022-4306-b77a-50d5fb186b82.jpg','\0',7,22,22),(71,'2021-12-02 05:53:26','2021-12-02 05:53:26',0,'/image/location/5d82262c-8b2f-45db-9f66-768cb9ff03a4.jpg','5d82262c-8b2f-45db-9f66-768cb9ff03a4.jpg','\0',7,23,23),(72,'2021-12-02 05:53:26','2021-12-02 05:53:26',1,'/image/location/9d86e0da-12bb-4464-8769-28506d07e616.jpg','9d86e0da-12bb-4464-8769-28506d07e616.jpg','\0',7,23,23),(73,'2021-12-02 05:53:26','2021-12-02 05:53:26',2,'/image/location/2465da69-b453-489b-b260-d28bff9a426b.jpg','2465da69-b453-489b-b260-d28bff9a426b.jpg','\0',7,23,23),(74,'2021-12-02 07:17:40','2021-12-02 07:17:40',0,'/image/location/06c18afa-a009-4e90-bfd7-266f823f01e8.jpg','06c18afa-a009-4e90-bfd7-266f823f01e8.jpg','\0',7,24,24),(75,'2021-12-02 07:17:40','2021-12-02 07:17:40',1,'/image/location/6c36ee86-aa02-446a-a2db-898ce538957d.jpg','6c36ee86-aa02-446a-a2db-898ce538957d.jpg','\0',7,24,24),(76,'2021-12-02 07:17:40','2021-12-02 07:17:40',2,'/image/location/6b5ae0ab-73ef-4d1d-8938-d4d71d2624ed.jpg','6b5ae0ab-73ef-4d1d-8938-d4d71d2624ed.jpg','\0',7,24,24),(77,'2021-12-02 07:51:49','2021-12-02 07:51:49',0,'/image/location/2455e598-22a2-439a-aba4-5da3ee933331.jpg','2455e598-22a2-439a-aba4-5da3ee933331.jpg','\0',7,25,25),(78,'2021-12-02 07:51:49','2021-12-02 07:51:49',1,'/image/location/e1504baa-84c5-4d30-b255-75da80668bed.jpeg','e1504baa-84c5-4d30-b255-75da80668bed.jpeg','\0',7,25,25),(79,'2021-12-02 07:51:49','2021-12-02 07:51:49',2,'/image/location/691ab183-9439-4153-9465-446a99cc20f5.jpg','691ab183-9439-4153-9465-446a99cc20f5.jpg','\0',7,25,25),(83,'2021-12-03 06:43:38','2021-12-03 06:40:42',0,'/image/location/180a7408-6380-4b9f-a733-340438862268.jpg','180a7408-6380-4b9f-a733-340438862268.jpg','',7,27,NULL),(84,'2021-12-03 06:43:38','2021-12-03 06:40:42',1,'/image/location/0ce3cc9e-ca92-4132-aadd-8976f627605e.jpg','0ce3cc9e-ca92-4132-aadd-8976f627605e.jpg','',7,27,NULL),(85,'2021-12-03 06:43:39','2021-12-03 06:40:42',2,'/image/location/3d967924-2fac-4604-8e89-3c2a4aa03b45.jpg','3d967924-2fac-4604-8e89-3c2a4aa03b45.jpg','',7,27,NULL),(86,'2021-12-03 06:43:39','2021-12-03 06:43:39',0,'/image/location/cdfa9c8e-2c22-4af6-b2cf-44a78248f0a8.png','cdfa9c8e-2c22-4af6-b2cf-44a78248f0a8.png','\0',7,27,27),(87,'2021-12-03 06:43:39','2021-12-03 06:43:39',1,'/image/location/0d21fedc-771f-4804-8f51-bb0f58d28c46.png','0d21fedc-771f-4804-8f51-bb0f58d28c46.png','\0',7,27,27),(88,'2021-12-03 06:43:39','2021-12-03 06:43:39',2,'/image/location/d9202455-3859-44b6-9a5f-1d55b82c3bd7.png','d9202455-3859-44b6-9a5f-1d55b82c3bd7.png','\0',7,27,27),(89,'2021-12-08 13:15:39','2021-12-08 13:15:39',0,'/image/location/a3c520ef-98c9-4870-a07a-04629862dcb6.jpg','a3c520ef-98c9-4870-a07a-04629862dcb6.jpg','\0',27,28,28),(90,'2021-12-08 13:15:39','2021-12-08 13:15:39',1,'/image/location/dce37fea-a5fb-4ba7-9ab7-2e43d1fe3fa5.jpg','dce37fea-a5fb-4ba7-9ab7-2e43d1fe3fa5.jpg','\0',27,28,28),(91,'2021-12-08 13:15:39','2021-12-08 13:15:39',2,'/image/location/d51992b8-d183-4dfc-99a2-1a5a068d55fc.jpg','d51992b8-d183-4dfc-99a2-1a5a068d55fc.jpg','\0',27,28,28),(92,'2021-12-08 13:29:36','2021-12-08 13:24:58',0,'/image/location/7e47c054-41c1-4026-85c8-fe083637c078.jfif','7e47c054-41c1-4026-85c8-fe083637c078.jfif','',26,29,NULL),(93,'2021-12-08 13:29:37','2021-12-08 13:24:58',1,'/image/location/2f86a8e8-b8a7-4fd8-a1a6-3fbb402a4d94.jpg','2f86a8e8-b8a7-4fd8-a1a6-3fbb402a4d94.jpg','',26,29,NULL),(94,'2021-12-08 13:29:37','2021-12-08 13:24:58',2,'/image/location/ba94ea05-23d5-4c76-889f-670ae8dc1c50.jpg','ba94ea05-23d5-4c76-889f-670ae8dc1c50.jpg','',26,29,NULL),(95,'2021-12-08 13:29:37','2021-12-08 13:29:37',0,'/image/location/1a473802-2ed7-42f0-96ed-6429c0e758ad.jpg','1a473802-2ed7-42f0-96ed-6429c0e758ad.jpg','\0',26,29,29),(96,'2021-12-08 13:29:37','2021-12-08 13:29:37',1,'/image/location/1c4ecdc2-f890-40ef-8124-a987a136748d.jpg','1c4ecdc2-f890-40ef-8124-a987a136748d.jpg','\0',26,29,29),(97,'2021-12-08 13:29:37','2021-12-08 13:29:37',2,'/image/location/7e525a8e-e014-4b57-a304-7e208d0e8ab8.jfif','7e525a8e-e014-4b57-a304-7e208d0e8ab8.jfif','\0',26,29,29),(98,'2021-12-08 13:31:14','2021-12-08 13:31:14',0,'/image/location/96c12e25-4c0b-4335-abda-e5933efeae02.jpg','96c12e25-4c0b-4335-abda-e5933efeae02.jpg','\0',25,30,30),(99,'2021-12-08 13:31:14','2021-12-08 13:31:14',1,'/image/location/7e4ca2d8-f846-412a-aa98-fe768889a11c.jpg','7e4ca2d8-f846-412a-aa98-fe768889a11c.jpg','\0',25,30,30),(100,'2021-12-08 13:31:14','2021-12-08 13:31:14',2,'/image/location/8b144817-c153-4145-81a5-1dd4c0086712.jpg','8b144817-c153-4145-81a5-1dd4c0086712.jpg','\0',25,30,30),(101,'2021-12-08 13:31:14','2021-12-08 13:31:14',3,'/image/location/296a50e6-2f18-4e2a-a480-215ab1344c10.jpg','296a50e6-2f18-4e2a-a480-215ab1344c10.jpg','\0',25,30,30);
/*!40000 ALTER TABLE `loc_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
  `loc_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `addrdetail` varchar(30) NOT NULL,
  `fullroadaddr` varchar(90) NOT NULL,
  `info` varchar(150) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `is_reported` bit(1) NOT NULL,
  `likecount` int(11) NOT NULL DEFAULT 0,
  `loc_name` varchar(40) NOT NULL,
  `loc_uuid` varchar(255) NOT NULL,
  `roadaddr` varchar(50) NOT NULL,
  `sido` varchar(15) NOT NULL,
  `sigungu` varchar(8) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `zipno` varchar(10) NOT NULL,
  PRIMARY KEY (`loc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`loc_no`, `moddate`, `regdate`, `addrdetail`, `fullroadaddr`, `info`, `is_deleted`, `is_reported`, `likecount`, `loc_name`, `loc_uuid`, `roadaddr`, `sido`, `sigungu`, `tel`, `thumbnail`, `user_no`, `viewcount`, `zipno`) VALUES (1,'2021-12-11 13:34:47','2021-12-01 00:43:23','','경기도 고양시 덕양구 동헌로 305','중부대학교는 학생성장을 학교 발전을 위한 최고의 비전으로 추구하고 있습니다.\r\n학생성장은 인공지능과 융복합 시대의 전공역량을 충분히 획득한 전문인재, 올바른 인성과 균형 잡힌 교양을 갖춘 바른 인재, 그리고 창의적인 문제해결력을 갖춘 창의인재로의 발전을 지향합니다','\0','\0',2,'중부대학교 고양캠퍼스','53ea4832-a368-4c9b-966a-e619fb971ae5','동헌로 305-0','경기도','고양시 덕양구','031-8075-1000','/image/location/c708b271-bf3b-4fdd-86ce-99f8f03f60e0.jpg',1,54,'10279'),(2,'2021-12-27 10:44:14','2021-12-01 00:44:23','장항동 906','경기도 고양시 일산동구 호수로 731','넓은 공원에서 산책도 하고 자전거 타며 가벼운 운동도 할 수 있는 공간입니다. 산책길 옆에는 큰 호수도 있습니다. 봄에는 벚꽃도 피어서 예쁘게 사진도 찍을 수 있는 공간입니다.','\0','\0',1,'일산 호수공원','7c05e278-69e7-48dd-9558-afba14637bdd','호수로 731-0','경기도','고양시 일산동구','031-909-9000','/image/location/f34a1f2f-05eb-4d82-9797-67c1a4aadc4c.jpg',7,17,'10400'),(3,'2021-12-01 00:44:41','2021-12-01 00:44:41','','서울특별시 성동구 뚝섬로 273','서울숲은 문화예술공원, 체험학습원, 생태숲, 습지생태원 네 가지의 특색 있는 공간들로 구성되어 있으며, 한강과 맞닿아 있어 다양한 문화여가공간을 제공합니다.\r\n또한 서울숲공원은 조성부터 프로그램 운영까지 시민의 참여로 이루어진 최초의 공원입니다.','\0','\0',0,'서울숲','8ec83263-830c-4918-a5b3-de1823d6ab6c','뚝섬로 273-0','서울특별시','성동구','02-460-2905','/image/location/9342ae1d-6acf-49a9-ba16-4e027d7838bc.jpg',1,0,'04770'),(4,'2021-12-03 15:24:26','2021-12-01 00:49:09','국립고궁박물관','서울특별시 종로구 효자로 12','경복궁의 동서남북을 둘러싸고 있는 4개의 대문 중 남쪽에 위치한 정문(正門)이다.\r\n1865년 고종 증건 당시의 모습과 원래 축에서 틀어졌던 각도를 원래 위치로 돌려 2010년 8월 15일 광화문 복원 공사를 마친 바 있다.','\0','\0',0,'광화문','d5243489-3f3a-4db2-9247-9d0bc5e92fbb','효자로 12-0','서울특별시','종로구','02-3700-3901','/image/location/8cdee583-55ca-450a-b633-aeae8da3c39b.jpg',1,6,'03045'),(5,'2021-12-17 01:07:37','2021-12-01 00:50:33','','서울특별시 마포구 하늘공원로 95','서울특별시 마포구 상암동에 있는 생태환경공원.','\0','\0',1,'하늘공원','f484266b-8992-4368-8ad4-b10edc25a041','하늘공원로 95-0','서울특별시','마포구','02-300-5501','/image/location/5c0bb242-5c97-491c-ada0-0cf69cc83899.jpg',1,6,'03900'),(6,'2021-12-17 12:07:05','2021-12-01 00:51:15','','경기도 파주시 문산읍 임진각로 148-40','근처 임직각 관광지를 둘러보고 캠핑을 할 수 있는 장소입니다.','\0','\0',3,'평화누리 캠핑장','f45449bc-192e-452c-b7a3-ece1c2437ca8','임진각로 148-40','경기도','파주시','1670-3856','/image/location/2a9b4689-76a5-479e-8268-34b1cde2c909.jpg',2,9,'10808'),(7,'2021-12-19 08:16:01','2021-12-01 02:28:25','','경기도 고양시 덕양구 동헌로 305','asdfads','\0','\0',0,'asdf','a46a05f9-d96e-4a7c-9d42-cf05a1056fd0','동헌로 305-0','경기도','고양시 덕양구','031-8075-1000','/image/location/322c3b00-f3bc-4595-af21-1e0f5cb5dbca.jpg',5,15,'10279'),(8,'2021-12-02 02:15:02','2021-12-01 04:14:51','','경기도 김포시 초당로 40','날씨가 좋을때 가족이나 친구, 연인과 간편히 산책할수있는 코스가 마련되어있어\r\n누구와 언제가도 충분히 만족할수있는 공원입니다','\0','\0',2,'김포 한강중앙공원','585198f1-c64d-47ed-b2b8-941533589603','초당로 40-0','경기도','김포시','','/image/location/821e7606-0ffa-423e-a57b-e5455941e8d6.jpg',7,3,'10079'),(9,'2021-12-24 12:07:19','2021-12-01 04:19:27','바람의 언덕','경상남도 거제시 남부면 거제남서로 66','산과 바다 풍경을 모두 볼 수 있고, 편의시설과 오래된 풍차가 있는 예스러운 해변 근처의 유명한 언덕입니다.','\0','\0',3,'거제 바람의 언덕','a4a991d9-6a9a-489a-8d86-b97a6de96511','거제남서로 66-0','경상남도','거제시','','/image/location/9ca3f84e-1b67-4e40-9b7a-3fe8b8cc729e.jpg',7,59,'53334'),(10,'2021-12-08 13:08:05','2021-12-01 04:45:31','월드컵공원','서울특별시 마포구 하늘공원로 86','월드컵공원은 서울의 서쪽에 위치하여 1978년부터 1993년까지 15년간 서울시민이 버린 쓰레기로 만들어진 2개의 거대한 산과 넓은 면적의 평매립지를 2002 월드컵 개최와 새 천년을 기념하기 위하여 난지도 쓰레기매립장을 안정화, 공원화하면서 270만㎡의 면적의 대규모','\0','\0',0,'월드컵공원','1f5d1f63-dc0e-4af2-a2ee-59392e1c9a36','하늘공원로 86-0','서울특별시','마포구','123412341','/image/location/9b7213fe-149f-42a7-9f3d-8cf2a6b84a51.jpg',7,3,'03900'),(11,'2021-12-03 04:26:57','2021-12-01 04:57:06','남산타워','서울특별시 용산구 남산공원길 105','올라가기는 힘들지만 올라가면 재밌습니다','\0','\0',2,'N-타워','f07fceb7-6371-4f0a-a53f-1fcceeebcdfb','남산공원길 105-0','서울특별시','용산구','','/image/location/b83e305e-7918-4da7-a286-3d9ea6087c96.jpg',11,14,'04340'),(12,'2021-12-03 15:23:53','2021-12-01 05:39:44','','경기도 고양시 덕양구 행주로15번길 89','행주산성 역사 공원이다.','\0','\0',2,'행주산성','de32f82f-7198-41e2-96e9-3d60f16a7558','행주로15번길 89-0','경기도','고양시 덕양구','','/image/location/5138ffe4-be77-4cf3-aedd-08750d9c5a33.jpg',12,27,'10440'),(13,'2021-12-08 13:08:02','2021-12-01 05:53:42','중부대학교 세종관','경기도 고양시 덕양구 동헌로 305','중부대학교 세종관입니다.','\0','\0',1,'중부대학교 고양캠퍼스','0348b1f8-946a-4641-a325-f870739788fa','동헌로 305-0','경기도','고양시 덕양구','','/image/location/3b27e1c5-9cc9-4c98-93f7-9b1faa309453.jpg',7,3,'10279'),(14,'2021-12-11 13:34:38','2021-12-01 06:36:23','레드버튼','경기도 고양시 덕양구 화신로260번길 47','여러 종류의 보드게임들이 총집합 되있는 프라이빗한 보드게임카페입니다!\r\n시간제 쿠폰으로 보드게임을 진행하시면 조금 더 저렴하게 이용하실 수 있습니다~\r\n강추합니다!','\0','\0',4,'레드버튼 화정점','b1a1832a-34b8-480a-9d26-675b2cd94453','화신로260번길 47-0','경기도','고양시 덕양구','031-970-3799','/image/location/a746e2b6-2ba5-4567-b7d4-d74ce313adcd.jfif',14,109,'10500'),(15,'2021-12-08 13:07:57','2021-12-01 06:59:21','가드너스','경기도 파주시 탄현면 헤이리마을길 59-52','빵이랑 에이드가 맛있는 데이트하기 좋은 카페 !','\0','\0',0,'가드너스','d9acd42c-dfa4-42f0-b89d-3a2c135af134','헤이리마을길 59-52','경기도','파주시','031-944-9997','/image/location/3e45b9aa-e93b-4496-8250-3da3105a5bbb.jpg',16,3,'10859'),(16,'2021-12-08 13:34:05','2021-12-01 07:10:38','','서울특별시 종로구 대학로 104','근처에서 연극을 볼 수 있다.','\0','\0',0,'마로니에 공원','aa884f15-c781-4aec-afc8-a3253cf2790d','대학로 104-0','서울특별시','종로구','01012341234','/image/location/1e0a686d-4366-413d-b838-716447621b58.jpg',17,2,'03087'),(17,'2021-12-02 06:18:19','2021-12-01 07:28:01','롯데월드','서울특별시 송파구 올림픽로 240','서울에서 가장 인기 있는 테마파크. 스릴 넘치는 놀이기구를 즐길 수 있다.','\0','\0',2,'롯데월드','13df9c47-801f-42a5-85a4-a89075183889','올림픽로 240-0','서울특별시','송파구','','/image/location/7a540795-b6c7-48fc-9cba-b9576b463d31.jpg',18,5,'05554'),(18,'2021-12-01 07:46:24','2021-12-01 07:45:36','선유도공원','서울특별시 영등포구 선유로 343','한강 내의 섬 선유도의 옛 정수장을 활용한 국내 최초의 재활용생태공원','\0','\0',1,'선유도공원','0ce6fbb0-910d-46ce-8ff8-5589ae8028cb','선유로 343-0','서울특별시','영등포구','','/image/location/c1f605c9-e10d-4164-b5ea-6ff732152c62.jpg',7,4,'07200'),(19,'2021-12-08 20:34:18','2021-12-02 01:17:48','화정역3호선','경기도 고양시 덕양구 화정로 지하60','중부대학생들의 놀이터 화정역 광장 화정역 로데오거리','\0','\0',1,'화정역 광장','df11573f-1499-4f0b-82a2-9bd17ec65cef','화정로 60-0','경기도','고양시 덕양구','','/image/location/edb50ded-55df-44cf-a690-f2ac83721795.jpg',3,6,'10500'),(20,'2021-12-02 02:05:15','2021-12-02 02:04:46','','강원도 강릉시 경포로 365','경포대 해안가 주변 맛집이 많고 풍경 맛집임','\0','\0',1,'강릉','7636be64-25cf-4f79-ae01-c07762e103b5','경포로 365-0','강원도','강릉시','010-7711-1453','/image/location/5c52d6c1-d2c1-4bf4-8ee9-e1b7fc0a040d.jpg',20,3,'25461'),(21,'2021-12-11 19:00:15','2021-12-02 04:26:53','1','경기도 남양주시 천마산로12번길 25-6','산이에용','\0','\0',3,'권현모','45036b93-b983-40fd-aac6-18fcb1863482','천마산로12번길 25-6','경기도','남양주시','01093340946','/image/location/66867984-91c3-4e15-a36a-b78e52d78a5d.jpg',21,73,'12141'),(22,'2021-12-03 04:25:48','2021-12-02 04:43:00','더현대백화점','서울특별시 영등포구 여의대로 108','매장 내 쇼핑 · 매장 밖 수령 · 배달 서비스','\0','\0',1,'더 현대 서울','71943525-447d-4391-aaa9-35449cd6fde7','여의대로 108-0','서울특별시','영등포구','02-767-2233','/image/location/6bf97458-a1dd-4841-9ef2-38794ecd4c0a.jpg',7,4,'07335'),(23,'2021-12-08 13:08:22','2021-12-02 05:53:26','공원','경기도 수원시 영통구 광교호수공원로 102','호수 공원이라 연인끼리 데이트 하러 가기 좋을듯 합니다.','\0','\0',0,'서울','87d3d17e-7caa-4af7-9665-77a045f44a9a','광교호수공원로 102-0','경기도','수원시 영통구','','/image/location/5d82262c-8b2f-45db-9f66-768cb9ff03a4.jpg',7,4,'16514'),(24,'2021-12-08 13:07:50','2021-12-02 07:17:40','홍대개미','서울특별시 마포구 동교로 217','덮밥 맛집','\0','\0',0,'홍대개미','9b834c32-4f7f-41bf-a3e2-481764822e41','동교로 217-0','서울특별시','마포구','01088389932','/image/location/06c18afa-a009-4e90-bfd7-266f823f01e8.jpg',7,3,'03993'),(25,'2021-12-02 07:53:17','2021-12-02 07:51:49','','서울특별시 종로구 삼일대로30길 48','익선동에 유명 맛집은 항상 대기시간이 있으니 주변 맛집을 검색해 가세요\r\n수플레는 비싸지만 꼭한번 먹어볼만 합니다.','\0','\0',0,'익선동','757c9b62-31ae-4336-927a-92a5b268f01b','삼일대로30길 48-0','서울특별시','종로구','010283742233','/image/location/2455e598-22a2-439a-aba4-5da3ee933331.jpg',7,4,'03133'),(27,'2021-12-08 13:32:20','2021-12-03 06:40:42','3층','경기도 고양시 덕양구 고양대로 1955','실내 스포츠를 다양하게 즐길 수 있는 데이트코스라고 생각합니다.','\0','\0',0,'고양스타필드 스포츠몬스터','d70c743d-8966-4e0b-a6c1-02f5651c1ec7','고양대로 1955-0','경기도','고양시 덕양구','010-8374-0704','/image/location/cdfa9c8e-2c22-4af6-b2cf-44a78248f0a8.png',7,5,'10595'),(28,'2021-12-17 12:44:05','2021-12-08 13:15:39','우리집','경기도 파주시 문산읍 독서울6길 5','우리 집과 강아지','\0','\0',2,'우리집','715cc691-abd9-4bb4-80e7-9957b589679a','독서울6길 5-0','경기도','파주시','','/image/location/a3c520ef-98c9-4870-a07a-04629862dcb6.jpg',27,259,'10811'),(29,'2021-12-17 12:05:34','2021-12-08 13:24:58','','경기도 파주시 광탄면 부흥로 242','경기도 파주에 소재한 수목원입니다.\r\n동서양의 정원 모습을 엿볼 수 있으며 많은 드라마의 촬영지가 되기도 했습니다.\r\n입장료는 성인 5000원, 청소년 4000원이며\r\n관람 시간은 10:00 - 18:00 연중무휴입니다.','\0','\0',1,'벽초지수목원','c6f2bdd3-bdb3-45a6-9e85-5b9375590b4a','부흥로 242-0','경기도','파주시','031-957-2004','/image/location/1a473802-2ed7-42f0-96ed-6429c0e758ad.jpg',26,47,'10831'),(30,'2021-12-24 13:43:04','2021-12-08 13:31:14','1호선 자갈치역 3번 출구에서577m','부산광역시 중구 부평1길 48','네, 안녕하세요 정상수입니다!! 제가 정말 사랑하는 부산 전통시장을 데이트 장소로 추천하고 싶습니다!! 간혹가다 음식에 파리가 앉을 수 있지만 파리가 앉았다고 해서 절대로 비위생적인게 아닙니다!!\r\n부산을 대표하는 부평깡통시장과 정상수 많이 사랑해 주십시오!!!','\0','\0',3,'부평 깡통시장 정상수','82e1e253-b410-40f8-974c-61773bc653be','부평1길 48-0','부산광역시','중구','','/image/location/96c12e25-4c0b-4335-abda-e5933efeae02.jpg',25,361,'48977');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_tag_set`
--

DROP TABLE IF EXISTS `location_tag_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location_tag_set` (
  `location_loc_no` bigint(20) NOT NULL,
  `tag_set` varchar(255) DEFAULT NULL,
  KEY `FK6ognhsdr00rsmv9g1e6d4ec95` (`location_loc_no`),
  CONSTRAINT `FK6ognhsdr00rsmv9g1e6d4ec95` FOREIGN KEY (`location_loc_no`) REFERENCES `location` (`loc_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_tag_set`
--

LOCK TABLES `location_tag_set` WRITE;
/*!40000 ALTER TABLE `location_tag_set` DISABLE KEYS */;
INSERT INTO `location_tag_set` (`location_loc_no`, `tag_set`) VALUES (1,'산'),(1,'야외'),(1,'학교'),(2,'꽃구경'),(2,'피크닉'),(2,'야외'),(2,'자전거'),(2,'호수'),(2,'공원'),(3,'숲'),(3,'야외'),(3,'공원'),(4,'박물관'),(4,'한옥'),(4,'야외'),(5,'숲'),(5,'야외'),(5,'공원'),(6,'야외'),(6,'캠핑'),(6,'자전거'),(7,'야외'),(7,'실내'),(7,'자전거'),(8,'야외'),(8,'자전거'),(8,'공원'),(9,'야외'),(9,'바다'),(9,'테마파크'),(10,'숲'),(10,'야외'),(10,'휴가'),(11,'전망대'),(11,'야외'),(11,'야경'),(12,'피크닉'),(12,'야외'),(12,'야경'),(13,'숲'),(13,'학교'),(13,'공원'),(14,'보드게임'),(14,'실내'),(14,'카페'),(15,'가을'),(15,'실내'),(15,'카페'),(16,'가을'),(16,'연극'),(16,'공원'),(17,'연극'),(17,'실내'),(17,'테마파크'),(18,'야외'),(18,'자전거'),(18,'공원'),(19,'박물관'),(19,'야외'),(19,'호캉스'),(20,'겨울'),(20,'바다'),(20,'호캉스'),(21,'야외'),(21,'실내'),(21,'기념일'),(22,'백화점'),(22,'맛집'),(22,'실내'),(23,'야외'),(23,'호수'),(23,'공원'),(24,'맛집'),(24,'휴가'),(24,'실내'),(25,'맛집'),(25,'가을'),(25,'카페'),(27,'액티비티'),(27,'실내'),(27,'체험'),(28,'동물'),(28,'실내'),(28,'집콕'),(29,'수목원'),(29,'피크닉'),(29,'야외'),(30,'맛집'),(30,'야외'),(30,'실내');
/*!40000 ALTER TABLE `location_tag_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notice` (
  `noti_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `noti_activation` bit(1) NOT NULL,
  `noti_date` varchar(255) NOT NULL,
  `noti_manager` varchar(255) NOT NULL,
  `noti_text` longtext NOT NULL,
  `noti_title` varchar(255) NOT NULL,
  `noti_view_count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`noti_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`noti_no`, `noti_activation`, `noti_date`, `noti_manager`, `noti_text`, `noti_title`, `noti_view_count`) VALUES (1,'','2021-12-01 10:56:21','GyeongNam','<p style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">안녕하세요 LOVE DATA 입니다.</span></p><p style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">LOVE DATA와 사업자 제휴 방법에 대해 안내해드립니다.</span></p><p style=\"text-align: left;\" align=\"left\">&nbsp;</p><p style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">● 제휴 절차 안내</span>&nbsp;</p><table style=\"background-color: rgb(166, 188, 209);\" class=\"__se_tbl\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\" _se2_tbl_template=\"16\"><tbody>\r\n<tr><td style=\"width: 151px; height: 127px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; background-color: rgb(201, 224, 240);\" class=\"\"><p style=\"text-align: center; \" align=\"center\"><span style=\"font-size: 10pt; color: rgb(0, 0, 0);\">&nbsp;STEP 1</span></p></td>\r\n<td style=\"width: 1110px; height: 127px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);\" class=\"\"><p style=\"text-align: left;\" align=\"left\"><strong style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif;\"><span style=\"font-size: 10pt;\">제휴 등록</span></strong></p><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">- LOVE DATA 사이트 내 문의사항을 통해 제휴 문의(ex) OOO 제휴 문의합니다.)를 등록합니다.</span></p><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif;\"></span><span style=\"color: rgb(0, 0, 0); font-size: 10pt;\">- 문의사항을 통해 제휴 문의를 등록할 시 아래와 같은 사항을 포함하여 작성해주시기 바랍니다.</span></p><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">&nbsp;1) 제휴 업체의 업종​(ex) 음식점)</span></p><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">&nbsp;2) 제휴 업체가 원하는 제휴 구분(ex) 이벤트 프로모션, 멤버십 제안, 홍보)</span></p><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">&nbsp;3) 회사명</span></p><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">&nbsp;4) 담당자명(이름)</span></p><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">&nbsp;5) 제휴 업체 주소</span></p><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">&nbsp;6) 담당자 연락처 및 이메일 주소</span></p><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\"><div style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">- 문의사항을 통해 제휴 문의를 등록 하시면 제휴 문의가 완료된것입니다.</span></div></span><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\"><div style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">- 특허 및 디자인, 저작권 등 각종 지식재산권의 공개 내지 공유가 필요한 요청의 경우 반드시 권리 등록을</span></div></span><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\"><div style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">완료하시고 당사로 제안요청을 하여 주시기 바랍니다.</span></div></span><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">- 제휴는 제안자의 영업비밀이나 기밀사항에 해당하지 않는 ‘공개 가능한 내용’만 서술하여주시기 바랍니다.</span><span style=\"font-size: 10pt;\">&nbsp;</span></p></td>\r\n</tr>\r\n<tr><td style=\"width: 151px; height: 87px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; background-color: rgb(201, 224, 240);\" class=\"\"><p style=\"text-align: center; \"><span style=\"font-size: 10pt; color: rgb(0, 0, 0);\">&nbsp;</span><span style=\"font-size: 10pt; color: rgb(0, 0, 0);\"> STEP 2</span></p><p>&nbsp;</p></td>\r\n<td style=\"width: 1110px; height: 87px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);\" class=\"\"><p style=\"text-align: left;\"><strong style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif;\"><span style=\"font-size: 10pt;\">제휴 검토</span></strong></p><p style=\"text-align: left;\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">- 문의사항을 통해 제휴 문의를 등록 하시면 담당자가 등록하신 제안 내용을 면밀히 검토합니다.</span><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">담당자가 내용을 검토 후 필요한 자료가</span></p><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\"><div style=\"text-align: left;\"><span style=\"font-size: 10pt;\">있는 경우 재문의를 드릴 수 있습니다.</span></div></span><p style=\"text-align: left;\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">- 제휴 내용 및 관련자료는 제휴 검토 목적으로만 사용됩니다.</span>&nbsp;</p></td>\r\n</tr>\r\n<tr><td style=\"width: 151px; height: 118px; padding: 3px 4px 2px; color: rgb(255, 255, 255); text-align: left; font-weight: normal; background-color: rgb(201, 224, 240);\" class=\"\"><p style=\"text-align: center;\"><span style=\"font-size: 10pt; color: rgb(0, 0, 0);\">&nbsp;</span><span style=\"text-align: left; font-size: 10pt; color: rgb(0, 0, 0);\">&nbsp;STEP 3</span><span style=\"font-size: 10pt; color: rgb(0, 0, 0);\">​</span></p><p style=\"text-align: center;\">&nbsp;</p></td>\r\n<td style=\"width: 1110px; height: 118px; padding: 3px 4px 2px; color: rgb(61, 118, 171); background-color: rgb(255, 255, 255);\" class=\"\"><p style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">&nbsp;</span><strong style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif;\"><span style=\"font-size: 10pt;\">제휴 종료</span></strong></p><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\"><div style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">- 제휴 내용의 검토 결과를 회신드립니다.</span></div></span><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\"><div style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">- 검토 후 회신은 입력하신 연락처 혹은 메일 주소로 회신드립니다.</span></div></span><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\"><div style=\"text-align: left;\" align=\"left\"><span style=\"font-size: 10pt;\">- 제휴 진행이 결정되면, 담당자가 제휴를 위한 별도 절차를 안내하고 해당 제안 건을 종료합니다.</span></div></span><p style=\"text-align: left;\" align=\"left\"><span style=\"color: rgb(85, 85, 85); font-family: dotum, sans-serif; font-size: 10pt;\">- 제휴가 받아들여지지 않는 경우 제휴 문의 내 관련자료는 즉시 파기됩니다.</span></p></td>\r\n</tr>\r\n\r\n</tbody>\r\n</table><p style=\"text-align: center;\" align=\"center\">&nbsp;</p><p>&nbsp;</p><p><span style=\"color: rgb(102, 102, 102); font-family: dotum, sans-serif; font-size: 10pt;\">LOVE DATA 내 제휴는 문의 사항 페이지에 접수된 건만 정식으로 검토됩니다.</span></p><p><span style=\"color: rgb(102, 102, 102); font-family: dotum, sans-serif; font-size: 10pt;\">LOVE DATA에 좋은 의견 주셔서 감사합니다..</span></p><p>&nbsp;</p><p>&nbsp;</p><div style=\"text-align: center;\" align=\"center\"><img src=\"/image/notice/NTC^f47711a2-f2c1-4cf0-b236-1a3818c22534.png\" title=\"ic_launcher_lovedata.png\"></div><p>&nbsp;</p>','사업자 제휴 방법',36);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noticeimg`
--

DROP TABLE IF EXISTS `noticeimg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticeimg` (
  `notiimg_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `notiimg_activation` bit(1) NOT NULL,
  `notiimg_name` varchar(255) NOT NULL,
  `notiimg_postno` varchar(255) DEFAULT NULL,
  `notiimg_user` varchar(255) NOT NULL,
  PRIMARY KEY (`notiimg_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticeimg`
--

LOCK TABLES `noticeimg` WRITE;
/*!40000 ALTER TABLE `noticeimg` DISABLE KEYS */;
INSERT INTO `noticeimg` (`notiimg_no`, `notiimg_activation`, `notiimg_name`, `notiimg_postno`, `notiimg_user`) VALUES (1,'','NTC^f47711a2-f2c1-4cf0-b236-1a3818c22534.png','1','GyeongNam');
/*!40000 ALTER TABLE `noticeimg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qu_image`
--

DROP TABLE IF EXISTS `qu_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qu_image` (
  `qu_img_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `qu_img_activation` tinyint(1) DEFAULT NULL,
  `qu_img_url` varchar(255) NOT NULL,
  `qu_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  PRIMARY KEY (`qu_img_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qu_image`
--

LOCK TABLES `qu_image` WRITE;
/*!40000 ALTER TABLE `qu_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `qu_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `qu_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `qu_activation` bit(1) NOT NULL,
  `qu_answer` bit(1) NOT NULL,
  `qu_answer_manager` varchar(255) DEFAULT NULL,
  `qu_answer_text` varchar(255) DEFAULT NULL,
  `qu_date` varchar(255) NOT NULL,
  `qu_secret` bit(1) NOT NULL,
  `qu_text` varchar(255) NOT NULL,
  `qu_title` varchar(255) NOT NULL,
  `qu_type` varchar(255) NOT NULL,
  `qu_user` varchar(255) NOT NULL,
  `qu_user_no` varchar(255) NOT NULL,
  PRIMARY KEY (`qu_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`qu_no`, `qu_activation`, `qu_answer`, `qu_answer_manager`, `qu_answer_text`, `qu_date`, `qu_secret`, `qu_text`, `qu_title`, `qu_type`, `qu_user`, `qu_user_no`) VALUES (1,'','\0',NULL,NULL,'2021-12-01 15:35:14','','카페맛집을 찾아주세요','카페맛집찾아주세요','장소','강민주','15'),(2,'','','mon0mon2','그러게요 뭘까요?','2021-12-03 15:19:56','\0','제이름이 궁금해요','내 이름이 뭔가요?','기타','구짱구짱구짱','23');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `rep_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `is_complete` bit(1) NOT NULL,
  `rc_no` bigint(20) NOT NULL,
  `rep_content` varchar(255) NOT NULL,
  `rep_type` varchar(255) NOT NULL,
  `rep_uuid` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  PRIMARY KEY (`rep_no`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
INSERT INTO `report` (`rep_no`, `moddate`, `regdate`, `is_complete`, `rc_no`, `rep_content`, `rep_type`, `rep_uuid`, `result`, `user_no`) VALUES (1,'2021-12-01 01:53:19','2021-12-01 01:53:19','\0',1,'','PORNOGRAPHY','9efc2f86-7e63-4e32-a18a-a53d57f02399','',5),(2,'2021-12-01 02:26:31','2021-12-01 02:26:31','\0',2,'','INSULT','f241c0e8-5606-425b-a5db-a6efc7ddd176','',5),(3,'2021-12-01 06:24:51','2021-12-01 06:23:11','',3,'ㅏ신고해봄','ETC','3e6b1705-154a-42bb-acdb-161fc8ff6d7b','',7),(4,'2021-12-01 06:24:51','2021-12-01 06:23:50','',3,'','ILLEGAL','2b92b03c-997a-4bd9-ad03-b080ae0fd3e8','',7),(5,'2021-12-01 06:24:51','2021-12-01 06:23:55','',3,'','ILLEGAL','9f040437-cfcc-4cd5-916f-14f10c3d8e2e','',7),(6,'2021-12-01 06:24:51','2021-12-01 06:23:58','',3,'','ILLEGAL','e5c99e26-18dc-4269-8c58-4f1c055b88b2','',7),(7,'2021-12-01 06:24:51','2021-12-01 06:24:00','',3,'','ILLEGAL','d9912a33-7d34-4595-85f8-ed711ea24b68','',7),(8,'2021-12-01 06:24:51','2021-12-01 06:24:03','',3,'','ILLEGAL','79e53b7b-2ba8-4674-85bb-dc0fcfb6a1b4','',7),(9,'2021-12-08 13:13:24','2021-12-01 06:27:16','',4,'여긴 저만 갈거에요! 아무도 오지 마세요!~!!','ETC','d7be897e-9378-461b-8bd3-a72a538566a4','True Positive',14),(10,'2021-12-01 06:37:05','2021-12-01 06:36:28','',5,'','ETC','70be60a1-687b-409b-b2d5-d66738eeb0bb','',15),(11,'2021-12-08 13:13:24','2021-12-01 07:40:24','',4,'','ADVERTISE','bf11aa63-7311-49f8-9621-f770459349bd','True Positive',7),(12,'2021-12-03 01:51:50','2021-12-03 01:51:15','',5,'','ADVERTISE','76fcd843-7f1b-4055-aadb-826bcf430ac7','',7);
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_cluster`
--

DROP TABLE IF EXISTS `report_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_cluster` (
  `rc_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `post_no` bigint(20) NOT NULL,
  `post_type` varchar(255) NOT NULL,
  `rc_complete` bit(1) NOT NULL,
  `rc_result` varchar(255) NOT NULL,
  `rc_user_no` bigint(20) DEFAULT NULL,
  `rc_uuid` varchar(255) NOT NULL,
  `rep_count` int(11) NOT NULL,
  PRIMARY KEY (`rc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_cluster`
--

LOCK TABLES `report_cluster` WRITE;
/*!40000 ALTER TABLE `report_cluster` DISABLE KEYS */;
INSERT INTO `report_cluster` (`rc_no`, `moddate`, `regdate`, `post_no`, `post_type`, `rc_complete`, `rc_result`, `rc_user_no`, `rc_uuid`, `rep_count`) VALUES (1,'2021-12-01 01:53:19','2021-12-01 01:53:19',1,'LOC','\0','',1,'18f9ff3e-5cee-45ec-93bb-591876056926',1),(2,'2021-12-01 02:26:31','2021-12-01 02:26:31',1,'COM','\0','',7,'b279fd72-236a-4750-a5d8-fc73137ec652',1),(3,'2021-12-01 06:24:52','2021-12-01 06:23:10',2,'COM','','\r\n언블라인드시간 (2021-12-01T15:24:52.023750)',13,'91f0038f-f720-4273-90cc-38363f922295',0),(4,'2021-12-08 13:13:24','2021-12-01 06:27:16',9,'LOC','','\r\n언블라인드시간 (2021-12-08T22:13:24.551654)',7,'3a0ef961-7c35-4b26-86e5-2852e13da964',0),(5,'2021-12-03 01:51:50','2021-12-01 06:36:28',1,'COR','','\r\n언블라인드시간 (2021-12-01T15:37:05.466463)\r\n영구삭제시간 (2021-12-03T10:51:50.348421)',1,'643717e2-5554-4978-9443-409c375072ed',0);
/*!40000 ALTER TABLE `report_cluster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rev_image`
--

DROP TABLE IF EXISTS `rev_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rev_image` (
  `img_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `cor_no` bigint(20) NOT NULL,
  `img_idx` bigint(20) NOT NULL,
  `img_url` varchar(200) NOT NULL,
  `img_uuid` varchar(45) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `rev_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  PRIMARY KEY (`img_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rev_image`
--

LOCK TABLES `rev_image` WRITE;
/*!40000 ALTER TABLE `rev_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `rev_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `review` (
  `rev_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `cor_no` bigint(20) NOT NULL,
  `is_deleted` bit(1) NOT NULL,
  `is_modified` bit(1) DEFAULT NULL,
  `is_reported` bit(1) NOT NULL,
  `rev_content` varchar(300) NOT NULL,
  `rev_idx` bigint(20) NOT NULL,
  `rev_uuid` varchar(60) NOT NULL,
  `rev_dislike` int(11) NOT NULL,
  `rev_like` int(11) NOT NULL,
  `sc_loc` int(11) DEFAULT NULL,
  `sc_move` int(11) DEFAULT NULL,
  `sc_revisit` int(11) DEFAULT NULL,
  `sc_time` int(11) DEFAULT NULL,
  `sc_total` float NOT NULL,
  `user_nickname` varchar(255) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  PRIMARY KEY (`rev_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`rev_no`, `moddate`, `regdate`, `cor_no`, `is_deleted`, `is_modified`, `is_reported`, `rev_content`, `rev_idx`, `rev_uuid`, `rev_dislike`, `rev_like`, `sc_loc`, `sc_move`, `sc_revisit`, `sc_time`, `sc_total`, `user_nickname`, `user_no`) VALUES (1,'2021-12-03 06:27:43','2021-12-02 04:33:25',5,'\0','\0','\0','꼭 추천하는 데이트코스입니다\r\n즐겨주세용',0,'b8d7b8bd-3b06-44f5-b3c2-02f761c471d7',0,2,5,5,5,5,5,'hyunmo',21),(2,'2021-12-03 01:50:57','2021-12-03 01:50:48',1,'\0','\0','\0','좋아요',0,'130fab0a-4610-4b5c-b21c-1c7d8f4ec373',0,1,5,5,5,5,5,'GyeongNam',7);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `is_deleted` bit(1) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `social_id` int(11) DEFAULT NULL,
  `social_info` varchar(20) DEFAULT NULL,
  `user_activation` tinyint(1) DEFAULT NULL,
  `user_birth` varchar(30) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_email_re` tinyint(1) DEFAULT NULL,
  `user_name` varchar(15) NOT NULL,
  `user_nic` varchar(20) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_pw` varchar(60) NOT NULL,
  `user_sex` tinyint(1) DEFAULT NULL,
  `user_social` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`user_no`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_no`, `moddate`, `regdate`, `is_deleted`, `profile_pic`, `social_id`, `social_info`, `user_activation`, `user_birth`, `user_email`, `user_email_re`, `user_name`, `user_nic`, `user_phone`, `user_pw`, `user_sex`, `user_social`) VALUES (1,'2021-11-24 09:09:47','2021-11-24 09:09:47','\0','https://k.kakaocdn.net/dn/bc4dyG/btrlr52cAKI/y4BrYmEmjeXOYvWIadfTu1/img_640x640.jpg',0,'kakao',1,'2000-01-01','tpye97@gmail.com ',0,'이민기','mon0mon','01049268100','$2a$10$lAHJLSFXtkFYZcn72.Q.v.YfeTlTdR9zsl5YiYk5.SDY51dHuJslG',1,1),(2,'2021-11-26 15:11:14','2021-11-26 11:59:48','\0','/image/icon/user/user.png',0,'웹페이지',1,'1995-03-06','juytseh@naver.com',1,'송은호','juyt','01063371089','$2a$10$eYZ7Uhh//kXX8qbUEe6mMexZWaF8R4cfxma3Jtc8sM9CWmuJpwJeK',1,0),(3,'2021-12-03 02:02:24','2021-11-26 12:52:07','\0','/image/user_pic/13fe358c-6bb1-4e15-ac35-4c9b0100af99.jpg',0,'웹페이지',1,'1999-12-28','qw272518@naver.com',0,'최진웅','응애','01092850290','$2a$10$OqlrG5k1DPj15y7aKvWaj.99d.iiXoBGt3eHwioFI4g/a.R/JALBm',1,0),(4,'2021-11-26 13:03:10','2021-11-26 13:03:10','\0','/image/icon/user/user.png',0,'웹페이지',1,'1995-03-06','juytsyh@naver.com',1,'송은호','juytsyh','01063371089','$2a$10$mBOL.OF4bN6tc5t1COk/6eUsQEzyXQ65/S4Ks7HUZA1tQcie8O90.',1,0),(5,'2021-11-26 15:20:51','2021-11-26 15:20:51','\0','https://phinf.pstatic.net/contact/70/2015/3/22/mon0mon_1427006964934.png',0,'naver',1,'2000-01-01','mon0mon@naver.com ',0,'이민기','mon0mon2','01049268100','$2a$10$b2c3OeY7AjHlj8XAxfCnaOkQ7He1jJ/bY/CZXja8kO6STPu8zPnD.',1,1),(6,'2021-11-28 13:39:33','2021-11-28 13:39:33','\0','https://k.kakaocdn.net/dn/hZsEn/btrgbyPC9wx/UQgrt0OJVhJYmAF9ankQKk/img_640x640.jpg',0,'kakao',1,'1999-02-18','viu310@daum.net ',0,'심효진','심효진','01058006209','$2a$10$O1KC1BZkCmoT35zfSRCcIecY5sDyrXc9Al5P4RrJgsXNMd4aIqah2',0,1),(7,'2021-11-29 14:10:18','2021-11-29 07:39:24','\0','https://k.kakaocdn.net/dn/LiukT/btrfFEXkA2v/2U2mSFKbYt560igBKGwQGk/img_640x640.jpg',0,'kakao',1,'1997-09-21','knightanne@naver.com ',0,'조경남','GyeongNam','01030141437','$2a$10$dQuQrDp68ga9Z/oF0tJEYuimpC.ds/CNfB3Ty8fBr1Zyb6MLHKn3u',1,1),(8,'2021-11-29 09:22:18','2021-11-29 09:22:18','\0','https://k.kakaocdn.net/dn/egNoON/btrgcAz5eNX/npiSrrT6OJjmkbZVHk8CIk/img_640x640.jpg',0,'kakao',1,'2000-01-01','272518@naver.com ',0,'최진웅','진웅','01092850290','$2a$10$4ELIWRu4iTg6NhPBKNN70.2tpdGlAKeojYDHSb71LCJq4HLVldUOS',1,1),(9,'2021-11-29 11:50:58','2021-11-29 11:50:58','\0','https://k.kakaocdn.net/dn/hZsEn/btrgbyPC9wx/UQgrt0OJVhJYmAF9ankQKk/img_640x640.jpg',0,'kakao',1,'1999-02-18','99gywls@naver.com ',0,'심효진','심효진','01058006209','$2a$10$Zr5Ede5rQ3zoix693buOIeP4TBpZ8SB01RvkmKzan6Fj7GBkITnZW',0,1),(10,'2021-11-29 15:46:27','2021-11-29 15:44:04','\0','/image/icon/user/user.png',0,'웹페이지',1,'2000-01-01','mon0mon2@naver.com',0,'이민기','ARA2','01049268100','$2a$10$haL7kYHDKqlWxpYlMwTNqeHQ4Ee9a4TAX1WHI2i3th19RXAFjnNa2',1,0),(11,'2021-12-01 04:50:59','2021-12-01 04:50:59','\0','/image/icon/user/user.png',0,'웹페이지',1,'2000-01-01','ghfkd1235@naver.com',1,'김현식','김현식짱','01033189876','$2a$10$lSq2Ua7EcbIB4zqqCj7dXOBgXTL/jgrSiFyR767cIYbdiY4BMtxVq',1,0),(12,'2021-12-03 15:00:00','2021-12-01 05:29:58','\0','/image/icon/user/user.png',0,'웹페이지',1,'2000-02-03','jn000203@naver.com',0,'정나은','naeun','01089341643','$2a$10$lMKIjCUx2oyeN4bMQ3xSROd683N5IFGx8N7ILdyNjA8URKfj6O4Vq',0,0),(13,'2021-12-01 06:18:37','2021-12-01 06:18:37','\0','/image/icon/user/user.png',0,'웹페이지',1,'2000-01-01','joljjaktest@gmail.com',0,'sol','1232sdd','01042767935','$2a$10$vw1qSjTUaAt1.WlW.aSi0eDZYOtiEPjGQINxZhMs8qfSex/a2FtLi',1,0),(14,'2021-12-01 06:24:56','2021-12-01 06:24:56','\0','/image/icon/user/user.png',0,'웹페이지',1,'1999-03-02','cat990302@naver.com',1,'박소영','cow0','01072336944','$2a$10$pnWeBTmzaaCXseK82aYJBehNeaOWlLfnJgx67WA09HWOv75H2JQLe',0,0),(15,'2021-12-01 06:33:01','2021-12-01 06:33:01','\0','/image/icon/user/user.png',0,'웹페이지',1,'1998-10-12','alswn123@naver.com',1,'강민주','강민주','01028764065','$2a$10$5Ipn4xuVg6/5PeJE73S0KORIOE85x096dleW.H73RDk/FYnX61/Rm',0,0),(16,'2021-12-01 06:54:11','2021-12-01 06:54:11','\0','/image/icon/user/user.png',0,'웹페이지',1,'2002-09-07','sooah0907@naver.com',1,'김수아','sua97','01037389963','$2a$10$KB2Yx3gWSkrZ2nlJxqZuTOv2UZh6fTZ.5YoLm.3KXowLrcUH0KWMq',0,0),(17,'2021-12-01 07:06:40','2021-12-01 07:06:40','\0','/image/icon/user/user.png',0,'웹페이지',1,'2002-06-07','little_ko@naver.com',1,'고성민','koseongmin','01029793423','$2a$10$/.k4BCW4Pk37Hwvz25453OzL5M1lFPlz/8bjISK1Du8paPncw2u32',1,0),(18,'2021-12-01 07:22:21','2021-12-01 07:20:08','\0','/image/icon/user/user.png',0,'웹페이지',1,'2002-11-20','shvv3129@naver.com',0,'신서현','우와아','01099703129','$2a$10$mbDsrwt0o46cMMfw0BlDye1hqti.DSmK4xIt6v3PgnYZ9Hiqqom/6',0,0),(19,'2021-12-01 08:02:06','2021-12-01 08:02:06','\0','/image/icon/user/user.png',0,'웹페이지',1,'1998-05-14','chlwlsdnd@naver.com',0,'미스터최','최진웅','01091355434','$2a$10$dBCpwOE5zmu7dT9Urb91LO5y3PfV7ka7A0cbarfdyemCwOVJDXHq.',1,0),(20,'2021-12-02 02:02:07','2021-12-02 02:02:07','\0','/image/icon/user/user.png',0,'웹페이지',1,'2000-12-17','0121728@naver.com',0,'임시현','시현림','01077111453','$2a$10$/STBEFxo3gVBuZ6kRWm5COXC9RdVLOKPNZR41uaWMwqgs6PbdoDda',0,0),(21,'2021-12-02 04:24:20','2021-12-02 04:24:20','\0','/image/icon/user/user.png',0,'웹페이지',1,'1998-03-15','tulapinky69@gmail.com',0,'권현모','hyunmo','01093340946','$2a$10$gvido5a95ZcrVBw.BBNqzea0QsnYtuV4NAuXuHatC6oCBzT3ugWmW',1,0),(22,'2021-12-02 06:10:09','2021-12-02 06:10:09','\0','/image/icon/user/user.png',0,'웹페이지',1,'2001-11-04','qrkdbtls@naver.com',1,'박유신','박유신','01044006037','$2a$10$ibcP9djJib9KQY5JN/3veedjV4vrP6a0ejHyKcaik2PE4T8ANTauq',0,0),(23,'2021-12-03 06:18:34','2021-12-03 06:18:05','\0','/image/user_pic/abd0637b-3edc-4bb9-b054-8e7c06507f93.jpg',0,'웹페이지',1,'1997-12-07','haeun@mmm.mmm',0,'구하은','구짱구짱구짱','01045304738','$2a$10$YbX4I3S5kj8gwNZPwqIm8uYyjTXrFd1YVAD2KzscPx6FPEjxqK/2C',0,0),(24,'2021-12-03 06:30:14','2021-12-03 06:30:14','\0','/image/icon/user/user.png',0,'웹페이지',1,'1999-12-23','rudwls512@naver.com',1,'정경진','경남찡','01033716542','$2a$10$6xw8PxMBp8pm4eVkx8MyCesKLxNwhMvZyRSOfePcuM/KcUIZmJwQ.',1,0),(25,'2021-12-08 13:11:06','2021-12-08 12:56:35','\0','/image/user_pic/047c8f41-52b1-4542-bd75-697cd860b058.jpg',0,'웹페이지',1,'1999-12-24','x1318v@naver.com',0,'김한기','정상수','01042884769','$2a$10$X3VNKIO9qcB3tng8bNJ1OuyVWy42n5W7OiVW5NYfRuG0JWvaA/QN6',1,0),(26,'2021-12-08 12:59:22','2021-12-08 12:59:22','\0','https://k.kakaocdn.net/dn/sKXCD/btq7XsXaxEJ/rwW2V5KsvKocVnyzpNql7K/img_640x640.jpg',0,'kakao',1,'1999-04-23','gosjorb@naver.com ',0,'양유경','양갱99','01041954298','$2a$10$6/nHzva67SXWp8PopxH2puDdSs33hE0zw2kFFH27tkYIS.6CV6PRW',0,1),(27,'2021-12-08 13:06:54','2021-12-08 13:06:54','\0','/image/icon/user/user.png',0,'웹페이지',1,'2000-01-16','songchaewon9@naver.com',1,'송채원','채원님','01071513597','$2a$10$eLQbPHk6UFu3HTOawy5OaexqFfvfiAoO6krBIbZ2vcNSjLO8rdqS2',0,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_dislike_cmt`
--

DROP TABLE IF EXISTS `user_dislike_cmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_dislike_cmt` (
  `user_dislike_cmt_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `cmt_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  PRIMARY KEY (`user_dislike_cmt_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_dislike_cmt`
--

LOCK TABLES `user_dislike_cmt` WRITE;
/*!40000 ALTER TABLE `user_dislike_cmt` DISABLE KEYS */;
INSERT INTO `user_dislike_cmt` (`user_dislike_cmt_no`, `moddate`, `regdate`, `cmt_no`, `user_no`, `uuid`) VALUES (1,'2021-12-03 01:32:16','2021-12-03 01:32:16',7,7,'0879f76e-04ae-47c8-abc4-6e0259b94324');
/*!40000 ALTER TABLE `user_dislike_cmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_dislike_rev`
--

DROP TABLE IF EXISTS `user_dislike_rev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_dislike_rev` (
  `user_dislike_rev_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `rev_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  PRIMARY KEY (`user_dislike_rev_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_dislike_rev`
--

LOCK TABLES `user_dislike_rev` WRITE;
/*!40000 ALTER TABLE `user_dislike_rev` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_dislike_rev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_like_cmt`
--

DROP TABLE IF EXISTS `user_like_cmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_like_cmt` (
  `user_like_cmt_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `cmt_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  PRIMARY KEY (`user_like_cmt_no`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_like_cmt`
--

LOCK TABLES `user_like_cmt` WRITE;
/*!40000 ALTER TABLE `user_like_cmt` DISABLE KEYS */;
INSERT INTO `user_like_cmt` (`user_like_cmt_no`, `moddate`, `regdate`, `cmt_no`, `user_no`, `uuid`) VALUES (1,'2021-12-01 13:16:38','2021-12-01 13:16:38',1,5,'0ade895d-a0c1-4185-a84a-6c6210682222'),(3,'2021-12-03 01:48:08','2021-12-03 01:48:08',15,7,'0c6a4d06-7537-4ff2-958c-197767079108'),(4,'2021-12-03 05:45:11','2021-12-03 05:45:11',8,5,'62ba9517-64a8-40ce-8b03-87340bd839ae'),(11,'2021-12-03 07:04:31','2021-12-03 07:04:31',9,7,'8edcb030-140f-4f44-a052-a5173e406aad'),(12,'2021-12-08 13:32:39','2021-12-08 13:32:39',17,25,'78d38eba-407d-4c67-9a00-f7869ac5a545'),(13,'2021-12-08 13:35:55','2021-12-08 13:35:55',18,25,'dcd8fc6d-dfbb-46c1-85ad-80abcf8a3693'),(14,'2021-12-08 13:36:18','2021-12-08 13:36:18',19,25,'49421f62-4c89-44bb-b8f4-c61e37ed8a21'),(16,'2021-12-08 13:37:02','2021-12-08 13:37:02',20,26,'1ad0edc7-5d10-4b66-a9d5-4959d4bcfb6d'),(17,'2021-12-08 13:40:04','2021-12-08 13:40:04',19,27,'c72b235e-aebd-4a2f-8302-3adeea6247f0');
/*!40000 ALTER TABLE `user_like_cmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_like_cor`
--

DROP TABLE IF EXISTS `user_like_cor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_like_cor` (
  `user_like_cor_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `cor_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  PRIMARY KEY (`user_like_cor_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_like_cor`
--

LOCK TABLES `user_like_cor` WRITE;
/*!40000 ALTER TABLE `user_like_cor` DISABLE KEYS */;
INSERT INTO `user_like_cor` (`user_like_cor_no`, `moddate`, `regdate`, `cor_no`, `user_no`, `uuid`) VALUES (2,'2021-12-01 05:30:52','2021-12-01 05:30:52',1,12,'0ff27b7b-691c-4d73-82a4-ad17bb2b3514'),(5,'2021-12-03 01:42:29','2021-12-03 01:42:29',3,5,'64097f6a-0c89-4d96-afa2-7ea966df4325'),(7,'2021-12-03 06:57:32','2021-12-03 06:57:32',2,7,'4dd7f5ea-35f0-4083-a6cc-4055dd75dfc8'),(9,'2021-12-03 07:06:21','2021-12-03 07:06:21',5,7,'d2655219-fe0c-4fe1-bba6-814c29f50e85'),(10,'2021-12-08 13:43:48','2021-12-08 13:43:48',4,9,'7eecafba-4793-4ae9-b553-231abe5afc3b');
/*!40000 ALTER TABLE `user_like_cor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_like_loc`
--

DROP TABLE IF EXISTS `user_like_loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_like_loc` (
  `user_like_loc_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `loc_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  PRIMARY KEY (`user_like_loc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_like_loc`
--

LOCK TABLES `user_like_loc` WRITE;
/*!40000 ALTER TABLE `user_like_loc` DISABLE KEYS */;
INSERT INTO `user_like_loc` (`user_like_loc_no`, `moddate`, `regdate`, `loc_no`, `user_no`, `uuid`) VALUES (1,'2021-12-01 01:46:32','2021-12-01 01:46:32',1,7,'38742ebc-757a-4d83-ab9e-40799ca27d01'),(2,'2021-12-01 04:15:07','2021-12-01 04:15:07',8,7,'423b2e1a-a177-4573-889b-8aca5b13b7e0'),(5,'2021-12-01 05:30:37','2021-12-01 05:30:37',9,12,'dd3a9400-e237-4fd4-9568-6eedf66a04ae'),(6,'2021-12-01 05:40:10','2021-12-01 05:40:10',12,7,'70d12c92-6294-4648-ab9c-5c7b8cf3562a'),(8,'2021-12-01 05:54:13','2021-12-01 05:54:13',13,7,'f7390448-e241-46ec-8f36-7c714012ec9f'),(10,'2021-12-01 06:19:05','2021-12-01 06:19:05',9,13,'2c1767ec-2e68-471f-95d6-c504a1014282'),(11,'2021-12-01 06:26:07','2021-12-01 06:26:07',9,14,'7462105f-96d9-44d8-8823-44b527b44b38'),(14,'2021-12-01 06:36:45','2021-12-01 06:36:45',14,14,'256ae29f-6837-439e-aec0-7c31bebd7e78'),(16,'2021-12-01 07:28:19','2021-12-01 07:28:19',17,18,'d4e9768e-1302-4d15-a9be-9a4e61063c76'),(17,'2021-12-01 07:46:02','2021-12-01 07:46:02',18,7,'9c3bd185-b54a-4ebe-a4f7-a39fc6c331a6'),(19,'2021-12-01 08:03:26','2021-12-01 08:03:26',11,19,'88a6fb35-d798-4151-95d7-296d38360481'),(20,'2021-12-02 02:05:05','2021-12-02 02:05:05',20,20,'61c4476b-ed33-452e-a827-c6bf614afdc8'),(21,'2021-12-02 02:10:03','2021-12-02 02:10:03',11,14,'3596e620-c9d8-423e-8f5c-4a302c92c7b7'),(22,'2021-12-02 02:10:15','2021-12-02 02:10:15',2,14,'f297b963-b65b-4382-8934-1799d74668b1'),(23,'2021-12-02 02:13:36','2021-12-02 02:13:36',19,14,'384ab905-5a2d-487d-a377-88ac99171b2c'),(24,'2021-12-02 02:15:02','2021-12-02 02:15:02',8,14,'d3926b89-92b8-445d-8782-11aeac808b9f'),(25,'2021-12-02 04:26:57','2021-12-02 04:26:57',21,21,'2b0f63f5-ca2e-471f-b2f6-1e90a8795e70'),(26,'2021-12-02 06:11:06','2021-12-02 06:11:06',14,22,'e08b2cb3-fce3-40f7-b962-970adab42ce2'),(27,'2021-12-02 06:16:33','2021-12-02 06:16:33',21,14,'e7b1b5bf-f519-4e57-921e-66d7f3044b41'),(28,'2021-12-02 06:18:02','2021-12-02 06:18:02',17,14,'6601fc4a-0429-4cc2-b8b4-9d3909cd7c8b'),(29,'2021-12-02 06:18:34','2021-12-02 06:18:34',22,14,'e2d9890b-0a85-4861-adf6-7bd138df2c4a'),(30,'2021-12-02 06:19:30','2021-12-02 06:19:30',5,14,'fa277834-ff16-4a98-97f2-e16fbb638238'),(31,'2021-12-02 06:20:26','2021-12-02 06:20:26',6,14,'61120ce2-c223-41f4-a083-ec4df67f23ba'),(32,'2021-12-02 06:21:27','2021-12-02 06:21:27',12,14,'86b7f61a-8587-4ad7-b50b-f3c5394094d8'),(35,'2021-12-03 01:41:55','2021-12-03 01:41:55',14,5,'513b4ca7-c15e-44b6-a272-6fa947dc5648'),(36,'2021-12-03 01:41:57','2021-12-03 01:41:57',21,5,'1c6caa70-cda0-4a07-9020-9e10bd5242ea'),(38,'2021-12-03 04:26:42','2021-12-03 04:26:42',6,7,'cbf261e0-eab2-4bda-90d1-1117b0d70855'),(39,'2021-12-03 05:44:22','2021-12-03 05:44:22',1,5,'525f9aca-e582-4f0b-a157-1a304b55ae39'),(40,'2021-12-03 06:57:51','2021-12-03 06:57:51',26,7,'6967711e-6202-4cad-a48d-921a336a1f52'),(42,'2021-12-08 13:36:35','2021-12-08 13:36:35',30,25,'f152b885-3825-44ff-9551-7b3319c5de4f'),(43,'2021-12-08 13:36:43','2021-12-08 13:36:43',30,27,'eaae3ed5-4ed8-43c7-bdfe-41201c939e70'),(44,'2021-12-08 13:38:37','2021-12-08 13:38:37',30,9,'6d149445-8a84-4097-8265-016a4f58e7b3'),(45,'2021-12-08 13:38:46','2021-12-08 13:38:46',28,27,'da038ff1-0838-404f-853f-478ce6676e8f'),(46,'2021-12-08 13:38:50','2021-12-08 13:38:50',28,9,'bd391ef1-0474-488e-a73b-c45dd5904756'),(47,'2021-12-08 13:38:52','2021-12-08 13:38:52',14,9,'256b0743-7c06-4aa6-8ea2-b3fdc5e5328c'),(48,'2021-12-08 13:38:57','2021-12-08 13:38:57',29,9,'6e9e2c8b-a12b-4ee8-86f9-6c6946669e54'),(50,'2021-12-17 12:07:01','2021-12-17 12:07:01',6,2,'6a971138-0436-410f-aedc-a6fe75ea4044');
/*!40000 ALTER TABLE `user_like_loc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_like_rev`
--

DROP TABLE IF EXISTS `user_like_rev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_like_rev` (
  `user_like_rev_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `rev_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  PRIMARY KEY (`user_like_rev_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_like_rev`
--

LOCK TABLES `user_like_rev` WRITE;
/*!40000 ALTER TABLE `user_like_rev` DISABLE KEYS */;
INSERT INTO `user_like_rev` (`user_like_rev_no`, `moddate`, `regdate`, `rev_no`, `user_no`, `uuid`) VALUES (2,'2021-12-02 04:33:30','2021-12-02 04:33:30',1,21,'c0f09939-126c-4cc4-b37e-c7a78251f472'),(3,'2021-12-03 01:50:57','2021-12-03 01:50:57',2,7,'f2ad3f67-917d-448f-ac25-a4da8f9df4cf'),(4,'2021-12-03 06:27:43','2021-12-03 06:27:43',1,7,'b0fd56fe-996a-43e2-84bb-609f573c49d4');
/*!40000 ALTER TABLE `user_like_rev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_recent_cor`
--

DROP TABLE IF EXISTS `user_recent_cor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_recent_cor` (
  `user_recent_cor_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `cor_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  PRIMARY KEY (`user_recent_cor_no`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_recent_cor`
--

LOCK TABLES `user_recent_cor` WRITE;
/*!40000 ALTER TABLE `user_recent_cor` DISABLE KEYS */;
INSERT INTO `user_recent_cor` (`user_recent_cor_no`, `moddate`, `regdate`, `cor_no`, `user_no`, `uuid`) VALUES (1,'2021-12-01 00:52:52','2021-12-01 00:52:52',1,1,'b4bc7d2d-84a2-46e2-88f9-84a01258a5b8'),(7,'2021-12-01 02:32:00','2021-12-01 02:32:00',2,5,'bfbea7e2-13c3-4c9d-9049-acf5964e22cc'),(9,'2021-12-01 05:30:50','2021-12-01 05:30:50',1,12,'1961f46b-f353-471e-a396-08c309964d7f'),(10,'2021-12-01 05:34:23','2021-12-01 05:34:23',3,12,'b67b9a42-d1c5-4c34-95fd-3e9508f827e0'),(11,'2021-12-01 06:36:19','2021-12-01 06:36:19',1,15,'97af0352-954c-4dd6-8752-5ffd9de7467c'),(15,'2021-12-01 08:03:49','2021-12-01 08:03:49',2,19,'8670b75f-4049-40bb-b81f-3e67564425e6'),(17,'2021-12-01 13:18:15','2021-12-01 13:18:15',1,5,'c4d81405-b6fa-4e19-89e9-69460d3753c9'),(19,'2021-12-02 02:05:39','2021-12-02 02:05:39',3,20,'434256eb-63c5-4fe2-a11c-42c17f0388ed'),(20,'2021-12-02 02:05:45','2021-12-02 02:05:45',1,20,'b7650a0c-3661-4a3c-b771-bbf370b841dd'),(21,'2021-12-02 02:05:54','2021-12-02 02:05:54',2,20,'21fb6ef1-d791-4ef9-934f-239fa59164f0'),(29,'2021-12-02 04:33:25','2021-12-02 04:33:25',5,21,'59022d5c-1738-4099-8ec2-e39f789c0cda'),(30,'2021-12-02 06:12:10','2021-12-02 06:12:10',2,22,'7c6d69de-4bf9-49de-8123-dbe3053a5d84'),(37,'2021-12-03 01:50:48','2021-12-03 01:50:48',1,7,'42bcb507-bb31-4be8-a483-6ffb46f99a07'),(46,'2021-12-03 06:09:39','2021-12-03 06:09:39',6,7,'251be872-2a39-4f4d-9602-a7f45548b452'),(47,'2021-12-03 06:16:22','2021-12-03 06:16:22',3,7,'37336972-bb34-4fab-bffc-abab864ddd5f'),(48,'2021-12-03 06:21:25','2021-12-03 06:21:25',3,23,'6ea59fdf-3dc3-4a25-91ff-a4c9a0135e3d'),(49,'2021-12-03 06:21:47','2021-12-03 06:21:47',5,23,'f94fda84-09dd-428a-9ba6-29492f49fad4'),(62,'2021-12-03 07:40:31','2021-12-03 07:40:31',2,7,'aed8ca70-2288-4bd6-85db-6c0318adc1f7'),(65,'2021-12-03 07:47:14','2021-12-03 07:47:14',4,7,'2f148af3-c8d7-40b1-ad79-60edb074619f'),(67,'2021-12-03 15:25:57','2021-12-03 15:25:57',4,5,'1720de0b-944e-4fb9-a364-2ed9f8b0c4e2'),(68,'2021-12-08 12:57:59','2021-12-08 12:57:59',5,25,'377bb5e6-c223-4597-9b3c-36e62de199cf'),(69,'2021-12-08 12:58:32','2021-12-08 12:58:32',2,25,'106f9bfd-f111-46b3-89af-27cb590e035a'),(73,'2021-12-08 13:11:15','2021-12-08 13:11:15',6,9,'a5dcb552-7ac3-437a-a725-4cf687f6b6a3'),(76,'2021-12-08 13:25:20','2021-12-08 13:25:20',5,27,'eb1881e3-4000-4083-bd16-cb7bcfe404b0'),(78,'2021-12-08 13:31:48','2021-12-08 13:31:48',2,26,'cd0a8270-6f4b-4a91-9ea9-4b88927939db'),(82,'2021-12-08 13:43:33','2021-12-08 13:43:33',5,9,'8344057d-5888-4f83-b64c-33da967f95c5'),(84,'2021-12-11 13:14:34','2021-12-11 13:14:34',6,5,'20d76a98-7e27-410c-9c90-3cdd760262f6'),(86,'2021-12-11 15:59:31','2021-12-11 15:59:31',5,7,'37d0b1a4-525e-4a80-8d4d-6e1a6ed36748'),(92,'2021-12-24 13:35:31','2021-12-24 13:35:31',5,5,'f36c4785-2ee6-4f94-b13d-9c63a001b79a');
/*!40000 ALTER TABLE `user_recent_cor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_recent_loc`
--

DROP TABLE IF EXISTS `user_recent_loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_recent_loc` (
  `user_recent_loc_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `loc_no` bigint(20) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  PRIMARY KEY (`user_recent_loc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=883 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_recent_loc`
--

LOCK TABLES `user_recent_loc` WRITE;
/*!40000 ALTER TABLE `user_recent_loc` DISABLE KEYS */;
INSERT INTO `user_recent_loc` (`user_recent_loc_no`, `moddate`, `regdate`, `loc_no`, `user_no`, `uuid`) VALUES (11,'2021-12-01 04:51:48','2021-12-01 04:51:48',9,11,'7acc24bf-00e5-4a88-a2a1-c997c22e149f'),(12,'2021-12-01 05:30:32','2021-12-01 05:30:32',9,12,'5cc24203-c004-4410-a2a1-426f2b65b4b9'),(21,'2021-12-01 06:19:48','2021-12-01 06:19:48',9,13,'c750b49c-419e-4ed9-a9ef-129300eded13'),(31,'2021-12-01 06:22:02','2021-12-01 06:22:02',12,13,'62000b0d-be29-4204-ac10-271ede03abe3'),(53,'2021-12-01 07:23:10','2021-12-01 07:23:10',12,18,'cd245adc-c023-49fd-afe1-8b2b1fa172d9'),(55,'2021-12-01 07:28:27','2021-12-01 07:28:27',17,18,'97ad4d6a-156d-41d4-b3da-33c2eb466a73'),(63,'2021-12-01 08:03:38','2021-12-01 08:03:38',11,19,'dc47e471-32ce-46d3-8f61-da0a3fbdf48d'),(79,'2021-12-02 02:05:15','2021-12-02 02:05:15',20,20,'db12044e-2428-41c7-877f-625361ee7ac7'),(88,'2021-12-02 02:13:19','2021-12-02 02:13:19',8,14,'6db9a275-8c47-48de-a288-4455382654de'),(91,'2021-12-02 02:14:26','2021-12-02 02:14:26',19,14,'ba6145cd-1092-4cd9-80bd-fb3ac7c53e92'),(101,'2021-12-02 04:27:50','2021-12-02 04:27:50',21,21,'dd9e8d3d-3403-41ed-a2bf-4bd3208a7d34'),(102,'2021-12-02 04:27:50','2021-12-02 04:27:50',21,21,'89871f2f-8e74-4909-8663-67342860eabb'),(108,'2021-12-02 04:29:51','2021-12-02 04:29:51',14,21,'23e79054-f5b1-4b0e-910d-48bb2d6f7ee5'),(112,'2021-12-02 06:12:49','2021-12-02 06:12:49',1,22,'d2d1e0f8-be01-41ef-b19b-19959eefdb42'),(115,'2021-12-02 06:17:06','2021-12-02 06:17:06',21,14,'0b8ea6d3-d980-4340-8214-c64a587bb82c'),(118,'2021-12-02 06:17:30','2021-12-02 06:17:30',14,14,'4b2fae57-f2b6-4452-a2d1-df2aa2387da7'),(121,'2021-12-02 06:18:19','2021-12-02 06:18:19',17,14,'e3b45b8a-042e-4eba-9bd5-b8750f3c94aa'),(124,'2021-12-02 06:19:06','2021-12-02 06:19:06',22,14,'a98ff1a8-f6c7-4396-9a0c-f2bd207fb3f3'),(127,'2021-12-02 06:20:18','2021-12-02 06:20:18',5,14,'2040dc58-d5c6-43d0-9504-b8f4f9bfb5ad'),(130,'2021-12-02 06:20:59','2021-12-02 06:20:59',6,14,'c80ac785-0412-499f-bb0c-41c086139be4'),(133,'2021-12-02 06:22:12','2021-12-02 06:22:12',12,14,'ccca82a0-1278-4349-900c-170d517e6fca'),(134,'2021-12-02 06:31:51','2021-12-02 06:31:51',4,14,'e6bb6e73-36a6-437b-a9f7-47a0db9656b9'),(154,'2021-12-03 02:02:44','2021-12-03 02:02:44',14,3,'ab7e92cc-1e39-42f7-8fc7-7300a9392cfa'),(155,'2021-12-03 04:25:48','2021-12-03 04:25:48',22,7,'c50faa9e-51b9-45f2-85f6-c8bd735f7b83'),(162,'2021-12-03 04:26:26','2021-12-03 04:26:26',2,7,'3ac425ec-1239-47b3-91bb-4e8e1d12b293'),(170,'2021-12-03 06:01:50','2021-12-03 06:01:50',1,7,'52562a67-7bfc-4265-8172-0935c22ff1b7'),(172,'2021-12-03 06:18:50','2021-12-03 06:18:50',21,23,'d517bcbc-f06d-4376-ac36-218d366742fa'),(174,'2021-12-03 06:21:29','2021-12-03 06:21:29',1,23,'133d7f34-d971-4dcd-865b-fb8c7fe15f56'),(175,'2021-12-03 06:43:53','2021-12-03 06:43:53',27,7,'dd8cea37-3ef4-42f8-ac62-a24f9711cde3'),(183,'2021-12-03 07:04:59','2021-12-03 07:04:59',21,7,'916f5cf3-dd6b-4c7f-ad1f-19caf462d2d7'),(187,'2021-12-03 07:46:42','2021-12-03 07:46:42',14,7,'65ce876a-14a8-40f0-8194-9a1c08fe70ca'),(189,'2021-12-03 07:47:05','2021-12-03 07:47:05',9,7,'e1fe54de-7229-4984-9e9e-23ed9a977e63'),(200,'2021-12-03 15:25:06','2021-12-03 15:25:06',21,5,'18c7b56a-4e6f-4df4-b984-e2efe35067d2'),(210,'2021-12-08 13:06:50','2021-12-08 13:06:50',26,9,'0bfb73c5-e39d-4e9a-848e-e39b9771cdee'),(219,'2021-12-08 13:08:05','2021-12-08 13:08:05',10,25,'0a7119fd-f786-4bc5-97b5-e9e31a6cb02d'),(220,'2021-12-08 13:08:12','2021-12-08 13:08:12',7,25,'2a9a0bfd-29a2-49d2-8df8-72ad0e1e8398'),(221,'2021-12-08 13:08:22','2021-12-08 13:08:22',23,25,'02b15908-aaf1-4235-a029-77f7c95e83a4'),(222,'2021-12-08 13:08:33','2021-12-08 13:08:33',19,25,'56c0ae69-a262-49c5-9e7d-edc317b89d0f'),(225,'2021-12-08 13:09:15','2021-12-08 13:09:15',21,25,'0f2ec97b-0692-4448-ad11-a0bec74ffccc'),(227,'2021-12-08 13:09:26','2021-12-08 13:09:26',14,25,'b0267120-6033-4dd4-998d-6f63627e570a'),(229,'2021-12-08 13:09:40','2021-12-08 13:09:40',9,25,'7f61d864-1d62-4e05-897d-74df62b15c26'),(275,'2021-12-08 13:19:09','2021-12-08 13:19:09',1,9,'ba4b3529-805d-4ebb-83ee-957e417a7a7e'),(291,'2021-12-08 13:19:41','2021-12-08 13:19:41',28,9,'1870b772-e2f7-4b87-bd7e-d579af444483'),(298,'2021-12-08 13:19:53','2021-12-08 13:19:53',21,27,'7944e879-2677-419b-9a21-7cb71c5405a6'),(322,'2021-12-08 13:20:38','2021-12-08 13:20:38',14,9,'e6bfe40a-088d-45f3-8908-48019261a1a8'),(463,'2021-12-08 13:25:50','2021-12-08 13:25:50',14,27,'2731b3c9-6dbe-43af-a262-d52931495895'),(466,'2021-12-08 13:26:30','2021-12-08 13:26:30',9,27,'822d5a0c-03f7-4efd-9d3c-0b36fcde9962'),(468,'2021-12-08 13:28:27','2021-12-08 13:28:27',1,27,'d9899e7c-a73b-49fc-839e-fcad02d457ea'),(470,'2021-12-08 13:29:27','2021-12-08 13:29:27',27,9,'aeda36f3-0ebe-43a7-949c-fd8085f66a6c'),(477,'2021-12-08 13:32:20','2021-12-08 13:32:20',27,26,'e5c52fef-a0c7-4c66-bce9-5d2c00f51aef'),(483,'2021-12-08 13:34:03','2021-12-08 13:34:03',6,26,'d0d05a28-9e7f-41b4-a331-96a2b5cc430d'),(484,'2021-12-08 13:34:05','2021-12-08 13:34:05',16,27,'56c5b6d2-3ca0-4eb8-b1d5-994fe5ce422b'),(604,'2021-12-08 13:37:11','2021-12-08 13:37:11',30,25,'ec2a8a7b-bf9c-4433-a271-582b65ccd43b'),(605,'2021-12-08 13:37:11','2021-12-08 13:37:11',30,25,'b341ce81-ca7d-46f4-9b5f-a3fbff92e8a3'),(647,'2021-12-08 13:38:07','2021-12-08 13:38:07',29,25,'571e4409-c26a-4e61-beb3-1c6fdb03c5e0'),(760,'2021-12-08 13:39:11','2021-12-08 13:39:11',29,9,'4b297803-cb54-4593-8b87-ffebd666e474'),(796,'2021-12-08 13:39:41','2021-12-08 13:39:41',28,25,'f401e33c-c5c3-4055-85eb-1b485c9196d4'),(804,'2021-12-08 13:39:52','2021-12-08 13:39:52',28,27,'27bb9697-f093-4c9c-87da-6a714cb5285e'),(810,'2021-12-08 13:40:39','2021-12-08 13:40:39',29,26,'767c3620-255e-4eb5-b1a2-1808a6942e6c'),(811,'2021-12-08 13:40:58','2021-12-08 13:40:58',9,26,'9ff44721-0ee6-492c-8253-0d430ef019bd'),(813,'2021-12-08 13:41:36','2021-12-08 13:41:36',21,9,'4a8783fe-a9b4-4da1-8862-609b54dbfc7d'),(821,'2021-12-08 13:43:47','2021-12-08 13:43:47',30,27,'3011df90-777a-4638-9f44-eb88b64440d6'),(823,'2021-12-08 14:28:27','2021-12-08 14:28:27',2,26,'3c371926-3d7b-4801-826b-236083ac9157'),(824,'2021-12-08 17:24:39','2021-12-08 17:24:39',19,9,'530c0ac1-2f04-472a-9ce6-baf2270bbb2e'),(825,'2021-12-08 17:25:14','2021-12-08 17:25:14',30,9,'9c702959-0ea5-4673-8c40-bef8b6c68e59'),(830,'2021-12-11 13:13:35','2021-12-11 13:13:35',26,7,'0e7b6ab4-f2a8-4fb2-9453-c9c256eefd51'),(835,'2021-12-11 13:19:34','2021-12-11 13:19:34',29,5,'04dcf477-4bf2-4933-ac7b-c57db9fd3610'),(839,'2021-12-11 13:19:51','2021-12-11 13:19:51',28,5,'ca72c830-7436-42c5-a396-e183432ee6b2'),(846,'2021-12-11 13:34:38','2021-12-11 13:34:38',14,5,'1a30318d-a750-4236-b53f-1b4fbfc02874'),(848,'2021-12-11 13:34:47','2021-12-11 13:34:47',1,5,'488a6836-69dd-4272-979b-ad38bfe2a793'),(853,'2021-12-11 14:05:30','2021-12-11 14:05:30',28,7,'aa3f4122-3c89-4eb4-8984-d6669deaf9b2'),(858,'2021-12-11 15:59:03','2021-12-11 15:59:03',30,7,'98ba6268-c2aa-4681-82b7-f12f46159c60'),(861,'2021-12-16 07:16:46','2021-12-16 07:16:46',26,5,'69df3be7-89a1-498b-94f9-f8ffb56c0021'),(863,'2021-12-16 07:20:56','2021-12-16 07:20:56',31,5,'42f1d862-2e32-4fc8-97a5-cbab48fcf43b'),(867,'2021-12-17 12:05:34','2021-12-17 12:05:34',29,2,'21ef7901-b052-4410-9b50-ed2bb0845516'),(870,'2021-12-17 12:07:05','2021-12-17 12:07:05',6,2,'9932a8dd-0a04-44ac-b2e9-81c27a6101d1'),(871,'2021-12-17 12:09:18','2021-12-17 12:09:18',9,2,'e5bfb9aa-d2b7-45cf-91b0-50ba195ffc71'),(872,'2021-12-17 12:42:30','2021-12-17 12:42:30',7,9,'eb947b5e-0c7a-4d46-a32d-968a00582c17'),(874,'2021-12-19 08:16:01','2021-12-19 08:16:01',7,5,'668d7033-45ac-434f-8c1e-66d238a8fb4a'),(875,'2021-12-24 12:07:19','2021-12-24 12:07:19',9,5,'4d8367cb-1d6d-48d4-b789-758ac97ce4dc'),(882,'2021-12-24 13:43:04','2021-12-24 13:43:04',30,5,'132622ba-8bda-4dc0-a248-89818fd6e697');
/*!40000 ALTER TABLE `user_recent_loc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_set`
--

DROP TABLE IF EXISTS `user_role_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role_set` (
  `user_user_no` bigint(20) NOT NULL,
  `role_set` varchar(255) DEFAULT NULL,
  KEY `FKr9gbvf29req6g5b79kcwj7oqm` (`user_user_no`),
  CONSTRAINT `FKr9gbvf29req6g5b79kcwj7oqm` FOREIGN KEY (`user_user_no`) REFERENCES `user` (`user_no`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_set`
--

LOCK TABLES `user_role_set` WRITE;
/*!40000 ALTER TABLE `user_role_set` DISABLE KEYS */;
INSERT INTO `user_role_set` (`user_user_no`, `role_set`) VALUES (1,'USER'),(1,'ADMIN'),(2,'USER'),(3,'USER'),(4,'USER'),(2,'ADMIN'),(3,'ADMIN'),(4,'ADMIN'),(5,'USER'),(5,'ADMIN'),(6,'USER'),(7,'USER'),(8,'USER'),(9,'USER'),(7,'ADMIN'),(10,'USER'),(10,'ADMIN'),(11,'USER'),(12,'USER'),(13,'USER'),(14,'USER'),(15,'USER'),(16,'USER'),(17,'USER'),(18,'USER'),(19,'USER'),(20,'USER'),(21,'USER'),(22,'USER'),(23,'USER'),(24,'USER'),(25,'USER'),(9,'ADMIN'),(26,'USER'),(27,'USER'),(9,'BIZ');
/*!40000 ALTER TABLE `user_role_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_suspension`
--

DROP TABLE IF EXISTS `user_suspension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_suspension` (
  `user_suspension_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `moddate` datetime DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `end_day` varchar(255) NOT NULL,
  `progress` varchar(255) NOT NULL,
  `rc_no` bigint(20) DEFAULT NULL,
  `re_content` varchar(255) NOT NULL,
  `start_day` varchar(255) NOT NULL,
  `stop_day` varchar(255) NOT NULL,
  `user_no` bigint(20) NOT NULL,
  PRIMARY KEY (`user_suspension_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_suspension`
--

LOCK TABLES `user_suspension` WRITE;
/*!40000 ALTER TABLE `user_suspension` DISABLE KEYS */;
INSERT INTO `user_suspension` (`user_suspension_no`, `moddate`, `regdate`, `end_day`, `progress`, `rc_no`, `re_content`, `start_day`, `stop_day`, `user_no`) VALUES (1,'2021-12-03 15:00:00','2021-12-01 05:41:17','2021-12-04','0',0,'정지 ㅅㄱ','2021-12-01','3',12);
/*!40000 ALTER TABLE `user_suspension` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-27 21:42:22