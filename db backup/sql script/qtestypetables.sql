/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.13-MariaDB : Database - excelcia
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`excelcia` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `excelcia`;

/*Table structure for table `qlongquiz` */

DROP TABLE IF EXISTS `qlongquiz`;

CREATE TABLE `qlongquiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionid` int(11) DEFAULT NULL,
  `topicid` int(11) DEFAULT NULL,
  `subjid` int(11) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `a` varchar(200) DEFAULT NULL,
  `b` varchar(200) DEFAULT NULL,
  `c` varchar(200) DEFAULT NULL,
  `d` varchar(200) DEFAULT NULL,
  `a_rational` varchar(200) DEFAULT NULL,
  `b_rational` varchar(200) DEFAULT NULL,
  `c_rational` varchar(200) DEFAULT NULL,
  `d_rational` varchar(200) DEFAULT NULL,
  `correct_ans` varchar(5) DEFAULT NULL,
  `minutes` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `qlongquiz` */

/*Table structure for table `qmajorexam` */

DROP TABLE IF EXISTS `qmajorexam`;

CREATE TABLE `qmajorexam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionid` int(11) DEFAULT NULL,
  `topicid` int(11) DEFAULT NULL,
  `subjid` int(11) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `a` varchar(200) DEFAULT NULL,
  `b` varchar(200) DEFAULT NULL,
  `c` varchar(200) DEFAULT NULL,
  `d` varchar(200) DEFAULT NULL,
  `a_rational` varchar(200) DEFAULT NULL,
  `b_rational` varchar(200) DEFAULT NULL,
  `c_rational` varchar(200) DEFAULT NULL,
  `d_rational` varchar(200) DEFAULT NULL,
  `correct_ans` varchar(5) DEFAULT NULL,
  `minutes` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `qmajorexam` */

/*Table structure for table `qposttest` */

DROP TABLE IF EXISTS `qposttest`;

CREATE TABLE `qposttest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionid` int(11) DEFAULT NULL,
  `topicid` int(11) DEFAULT NULL,
  `subjid` int(11) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `a` varchar(200) DEFAULT NULL,
  `b` varchar(200) DEFAULT NULL,
  `c` varchar(200) DEFAULT NULL,
  `d` varchar(200) DEFAULT NULL,
  `a_rational` varchar(200) DEFAULT NULL,
  `b_rational` varchar(200) DEFAULT NULL,
  `c_rational` varchar(200) DEFAULT NULL,
  `d_rational` varchar(200) DEFAULT NULL,
  `correct_ans` varchar(5) DEFAULT NULL,
  `minutes` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `qposttest` */

insert  into `qposttest`(`id`,`questionid`,`topicid`,`subjid`,`level`,`question`,`a`,`b`,`c`,`d`,`a_rational`,`b_rational`,`c_rational`,`d_rational`,`correct_ans`,`minutes`,`point`,`type`) values (1,24,2,4,'DIFFICULT','RFID tag reader is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','c.) input & output','a',2,1,'2'),(2,25,2,4,'DIFFICULT','printer is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','c.) input & output','b',2,1,'2'),(3,26,2,5,'DIFFICULT','momentary storage of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a.) RAM','b.) ROM','c.) BIOS','c.) BIOS','a',2,1,'2'),(4,30,2,7,'DIFFICULT','raw facts, events or happening. this is processed in order to provide an information','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','c.) IS','a',1,1,'2'),(5,37,2,8,'EASY','is a time boxed, iteractive approach to software development that builds software incrementally from the start of the project, instead of trying to deliver it all at once near the end.','a.) SCRUM','b.) AGILE','c.) WaterFall','d.) none of the above','a.) SCRUM','b.) AGILE','c.) WaterFall','c.) WaterFall','b',1,1,'2'),(6,38,2,8,'EASY','A shared collection of logically related data designed to meet the information needs of multiple users in organization.','a.) database','b.) document','c.) information','d.) none of the above','a.) database','b.) document','c.) information','c.) information','a',1,1,'2'),(7,39,2,7,'EASY','are computerized information systems that were developed to process large amounts of data for routine business transaction.','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','a.) ESS','b.) TPS','c.) MIS','c.) MIS','b',1,1,'2'),(8,40,2,7,'EASY','the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','a.) programmer','b.) encoder','c.) system analyst','c.) system analyst','c',1,1,'2'),(9,41,2,7,'EASY','Organized collection of people, procedures, software, databases, and devices used to record completed business transactions','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','a.) ESS','b.) MIS','c.) TPS','c.) TPS','d',2,1,'2'),(10,47,2,8,'MEDIUM','a computer program created intentionally to disrupt the normal operation of a computer','a.) System','b.) information System','c.) Virus','d.) none of the above','a.) System','b.) information System','c.) Virus','c.) Virus','c',1,1,'2'),(11,48,2,8,'MEDIUM','a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.','a.) system programming','b.) system designing','c.) system planning','d.) system analysis','a.) system programming','b.) system designing','c.) system planning','c.) system planning','d',1,1,'2'),(12,49,2,7,'MEDIUM','a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a.) SDLC','b.) Waterfall','c.) Agile','c.) Agile','a',1,1,'2'),(13,50,2,7,'MEDIUM','a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','a.) Information','b.) Data dictionary','c.) Data Processing','c.) Data Processing','b',3,1,'2');

/*Table structure for table `qpretest` */

DROP TABLE IF EXISTS `qpretest`;

CREATE TABLE `qpretest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionid` int(11) DEFAULT NULL,
  `topicid` int(11) DEFAULT NULL,
  `subjid` int(11) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `a` varchar(200) DEFAULT NULL,
  `b` varchar(200) DEFAULT NULL,
  `c` varchar(200) DEFAULT NULL,
  `d` varchar(200) DEFAULT NULL,
  `a_rational` varchar(200) DEFAULT NULL,
  `b_rational` varchar(200) DEFAULT NULL,
  `c_rational` varchar(200) DEFAULT NULL,
  `d_rational` varchar(200) DEFAULT NULL,
  `correct_ans` varchar(5) DEFAULT NULL,
  `minutes` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `qpretest` */

/*Table structure for table `qshortquiz` */

DROP TABLE IF EXISTS `qshortquiz`;

CREATE TABLE `qshortquiz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questionid` int(11) DEFAULT NULL,
  `topicid` int(11) DEFAULT NULL,
  `subjid` int(11) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `question` varchar(500) DEFAULT NULL,
  `a` varchar(200) DEFAULT NULL,
  `b` varchar(200) DEFAULT NULL,
  `c` varchar(200) DEFAULT NULL,
  `d` varchar(200) DEFAULT NULL,
  `a_rational` varchar(200) DEFAULT NULL,
  `b_rational` varchar(200) DEFAULT NULL,
  `c_rational` varchar(200) DEFAULT NULL,
  `d_rational` varchar(200) DEFAULT NULL,
  `correct_ans` varchar(5) DEFAULT NULL,
  `minutes` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `qshortquiz` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
