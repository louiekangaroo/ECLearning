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

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `topicid` int(11) NOT NULL COMMENT 'for reviewtopic foreign key',
  `subjid` int(11) NOT NULL COMMENT 'for studyunits foreign key',
  `level` varchar(50) NOT NULL COMMENT 'level of difficulty (easy,medium,difficult)',
  `question` varchar(500) NOT NULL COMMENT 'actual question',
  `a` varchar(100) NOT NULL COMMENT 'A choice',
  `b` varchar(100) NOT NULL COMMENT 'B choice',
  `c` varchar(100) NOT NULL COMMENT 'C choice',
  `d` varchar(100) NOT NULL COMMENT 'D choice',
  `a_rational` varchar(500) NOT NULL COMMENT 'rationale for choice A',
  `b_rational` varchar(500) NOT NULL COMMENT 'rationale for choice B',
  `c_rational` varchar(500) NOT NULL COMMENT 'rationale for choice C',
  `d_rational` varchar(500) NOT NULL COMMENT 'rationale for choice D',
  `correct_ans` varchar(100) NOT NULL COMMENT 'correct answer for the question',
  `minutes` int(10) unsigned NOT NULL COMMENT 'minutes for question',
  `point` int(11) NOT NULL COMMENT 'point for question',
  `type` int(100) NOT NULL COMMENT 'test type of question (1-pre test 2-post test 3-short quiz 4-long quiz 5-major exam 6-all)',
  PRIMARY KEY (`id`),
  KEY `topicid` (`topicid`),
  KEY `subjid` (`subjid`),
  CONSTRAINT `examquestion_ibfk_1` FOREIGN KEY (`topicid`) REFERENCES `reviewtopic` (`id`),
  CONSTRAINT `examquestion_ibfk_2` FOREIGN KEY (`subjid`) REFERENCES `studyunits` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`topicid`,`subjid`,`level`,`question`,`a`,`b`,`c`,`d`,`a_rational`,`b_rational`,`c_rational`,`d_rational`,`correct_ans`,`minutes`,`point`,`type`) values (1,1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c',2,1,1),(2,1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c',1,1,1),(3,1,3,'EASY','father of computer','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a',1,1,1),(4,1,3,'EASY','father of computer science','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','b',1,1,1),(5,1,4,'EASY','he developed colossus.','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','d',2,1,1),(6,1,4,'EASY','dr. artificial intelligent / robotics, that got a microhip implant, w/c intends to remotely control a robotic arm','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','c',2,1,1),(7,1,5,'EASY','would be use to destroy computer/AI','a.) Electro-Magnetic-Interference','b.) Electro-Magnetic-Pulse','c.) Nuclear bom','d.) both A & B','a.) Electro-Magnetic-Interference','b.) Electro-Magnetic-Pulse','c.) Nuclear bom','d.) both A & B','d',2,1,1),(8,1,5,'EASY','composed of electronic valves and wires (a machine that is as big enough to occupy the entire building floor)','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','c',2,1,1),(9,1,5,'EASY','miniturized electronic component (a complex electronic part composed of several thousand of colossus circuits)','a.) integrated circuits','b.) silicon chips','c.) microchips','d.) all of the above','a.) integrated circuits','b.) silicon chips','c.) microchips','d.) all of the above','d',1,1,1),(10,1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d',1,1,1),(11,1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c',1,1,1),(12,1,3,'MEDIUM','refers to the programs/system/machine instructions that is made by programmers.','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','b',1,1,1),(13,1,3,'MEDIUM','refers to user/coders/programmers/computer operators (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','a',1,1,1),(14,1,4,'MEDIUM','smallest unit of measurement use to measure; capacity to hold information or data, capacity to process, and etc.','a.) byte','b.) bit','c.) kilobyte','d. all of the above','a.) byte','b.) bit','c.) kilobyte','d. all of the above','b',3,1,1),(15,1,4,'MEDIUM','if I have 3bytes how many characters do I have?','a.) 18','b.) 24','c.) 36','d.) none of the above','a.) 18','b.) 24','c.) 36','d.) none of the above','d',3,1,1),(16,1,5,'MEDIUM','volatile memory of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a',3,1,1),(17,1,5,'MEDIUM','a memory type used to hold the configuration/settings of the computer (including system date & time)','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','b',4,1,1),(18,1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a',4,1,1),(19,1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','b',1,1,1),(20,1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c',1,1,1),(21,1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a',1,1,1),(22,1,3,'DIFFICULT','mouse is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a',1,1,1),(23,1,3,'DIFFICULT','speaker is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','b',2,1,1),(24,2,4,'DIFFICULT','RFID tag reader is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a',2,1,2),(25,2,4,'DIFFICULT','printer is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','b',2,1,2),(26,2,5,'DIFFICULT','momentary storage of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a',2,1,2),(27,1,5,'DIFFICULT','the particular computer memory which contains the configuration/settings of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) both b & c','a.) RAM','b.) ROM','c.) BIOS','d.) both b & c','d',1,1,1),(28,1,3,'DIFFICULT','if i have 24bits how many characters do i have.','a.) 24','b.) 12','c.) 3','d.) none of the above','a.) 24','b.) 12','c.) 3','d.) none of the above','c',1,1,1),(29,1,3,'DIFFICULT','this controls the basic i/o processing of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','c',1,1,1),(30,2,7,'DIFFICULT','raw facts, events or happening. this is processed in order to provide an information','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','a',1,1,2),(31,2,7,'DIFFICULT','a collection of facts organized in such a way that they have additional value beyond the facts themselves.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','b',1,1,2),(32,2,7,'DIFFICULT','typically considered to be a set of interrelated elements or components that collect (input), manipulate(processes), and dissiminate(output) and information and provide a feedback mechanism to meet an objective.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','c',3,1,2),(33,2,7,'DIFFICULT','provides information and supports needed for effective decision making by managers','a.) MIS','b.) DSS','c.) ES','d.) none of the above','a.) MIS','b.) DSS','c.) ES','d.) none of the above','d',3,1,2),(34,2,8,'DIFFICULT','automate office procedures and enhance office communications and productivity','a.) MIS','b.) DSS','c.) ES','d.) none of the above','a.) MIS','b.) DSS','c.) ES','d.) none of the above','d',3,1,2),(35,2,8,'DIFFICULT','Provide critical information tailored to the information needs of executives.','a.) MIS','b.) DSS','c.) ESS','d.) none of the above','a.) MIS','b.) DSS','c.) ESS','d.) none of the above','c',4,1,2),(36,2,8,'DIFFICULT','a SAD model of development that is linear and sequential.','a.) SCRUM','b.) AGILE','c.) WaterFall','d.) none of the above','a.) SCRUM','b.) AGILE','c.) WaterFall','d.) none of the above','c',4,1,2),(37,2,8,'EASY','is a time boxed, iteractive approach to software development that builds software incrementally from the start of the project, instead of trying to deliver it all at once near the end.','a.) SCRUM','b.) AGILE','c.) WaterFall','d.) none of the above','a.) SCRUM','b.) AGILE','c.) WaterFall','d.) none of the above','b',1,1,2),(38,2,8,'EASY','A shared collection of logically related data designed to meet the information needs of multiple users in organization.','a.) database','b.) document','c.) information','d.) none of the above','a.) database','b.) document','c.) information','d.) none of the above','a',1,1,2),(39,2,7,'EASY','are computerized information systems that were developed to process large amounts of data for routine business transaction.','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','b',1,1,2),(40,2,7,'EASY','the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','c',1,1,2),(41,2,7,'EASY','Organized collection of people, procedures, software, databases, and devices used to record completed business transactions','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','d',2,1,2),(42,2,7,'EASY','Computer system takes on characteristics of human intelligence','a.) DSS','b.) MIS','c.) TPS','d.) all of the above','a.) DSS','b.) MIS','c.) TPS','d.) all of the above','d',2,1,2),(43,2,7,'EASY','a graphical representation of the \"flow\" of data through an information system, modelling its process aspects.','a.) System Flow','b.) Data Flow Diagram','c.) System Flowchart','d.) none of the above','a.) System Flow','b.) Data Flow Diagram','c.) System Flowchart','d.) none of the above','b',2,1,2),(44,2,7,'EASY','symbol used to represent data that the system stores.','a.) Process','b.) External Entity','c.) Data Flow','d.) None of the above','a.) Process','b.) External Entity','c.) Data Flow','d.) None of the above','d',2,1,2),(45,2,8,'EASY','performs some action on data, such as creates, modifies, stores, delete, etc. (either manual or supported by a computer)','a.) Process','b.) External Entity','c.) Data Flow','d.) None of the above','a.) Process','b.) External Entity','c.) Data Flow','d.) None of the above','b',1,1,2),(46,2,8,'EASY','a type of computer network which intends to connect one town to another town of a different region.','a.) LAN','b.) MAN','c.) WAN','d.) none of the above','a.) LAN','b.) MAN','c.) WAN','d.) none of the above','c',1,1,2),(47,2,8,'MEDIUM','a computer program created intentionally to disrupt the normal operation of a computer','a.) System','b.) information System','c.) Virus','d.) none of the above','a.) System','b.) information System','c.) Virus','d.) none of the above','c',1,1,2),(48,2,8,'MEDIUM','a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.','a.) system programming','b.) system designing','c.) system planning','d.) system analysis','a.) system programming','b.) system designing','c.) system planning','d.) system analysis','d',1,1,2),(49,2,7,'MEDIUM','a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a',1,1,2),(50,2,7,'MEDIUM','a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','b',3,1,2),(51,2,7,'MEDIUM','which is none element of a complete computer system','a.) people ware','b.) Hardware','c.) Anti Virus','d.) none of the above','a.) people ware','b.) Hardware','c.) Anti Virus','d.) none of the above','c',3,1,2),(52,2,7,'MEDIUM','none basic hardware element','a.) external hard drive or flash drive','b.) Monitor/Display','c.) CPU / Central Processing Unit','d.) none of the above','a.) external hard drive or flash drive','b.) Monitor/Display','c.) CPU / Central Processing Unit','d.) none of the above','a',3,1,2),(53,2,7,'MEDIUM','it is an electronic device that uses stored data and instruction to generate information','a.) calculator','b.) smartphone','c.) computer','d.) all of the above','a.) calculator','b.) smartphone','c.) computer','d.) all of the above','c',4,1,2),(54,2,7,'MEDIUM','it refers to processed data','a.) input','b.) output','c.) data','d.) none of the above','a.) input','b.) output','c.) data','d.) none of the above','d',4,1,2),(55,2,7,'MEDIUM','it is the unprocessed facts','a.) input','b.) output','c.) data','d.) none of the above','a.) input','b.) output','c.) data','d.) none of the above','c',1,1,2),(56,2,8,'MEDIUM','an electronic machine that has memory and can manipulate data and it has arithmetic and logic function','a.) calculator','b.) smartphone','c.) computer ','d.) all of the above','a.) calculator','b.) smartphone','c.) computer ','d.) all of the above','c',1,1,2),(57,2,8,'MEDIUM','a computing device popularized by chinese as their early calculator','a.) abacus','b.) smartphone','c.) napiers bone','d.) none of the above','a.) abacus','b.) smartphone','c.) napiers bone','d.) none of the above','a',1,1,2),(58,2,8,'EASY','basic components of computer system','a.) monitor / keyboard / cpu','b.) monitor / keyboard / cpu / mouse / avr','c.) monitor / keyboard / cpu / webcam / speaker / avr','d.) none of the above','a.) monitor / keyboard / cpu','b.) monitor / keyboard / cpu / mouse / avr','c.) monitor / keyboard / cpu / webcam / speaker / avr','d.) none of the above','d',1,1,2),(59,2,8,'EASY','basic computer hardware components','a.) monitor / keyboard / cpu','b.) monitor / keyboard / cpu / mouse / avr','c.) monitor / keyboard / cpu / webcam / speakers','d.) none of the above','a.) monitor / keyboard / cpu','b.) monitor / keyboard / cpu / mouse / avr','c.) monitor / keyboard / cpu / webcam / speakers','d.) none of the above','a',2,1,2),(60,2,8,'EASY','this refers to the physical components of the computer','a.) people ware','b.) software','c.) hardware','d.) none of the above','a.) people ware','b.) software','c.) hardware','d.) none of the above','c',2,1,2),(61,2,8,'MEDIUM','this is considered to be the brain of a computer','a.) input/output device','b.) internal storage','c.) processor','d.) none of the above','a.) input/output device','b.) internal storage','c.) processor','d.) none of the above','c',2,1,2),(62,2,8,'MEDIUM','nonvolatile memory of a computer','a.) Read Only Memory (ROM)','b.) Random Access Memory (RAM)','c.) both A & B','d.) none of the above','a.) Read Only Memory (ROM)','b.) Random Access Memory (RAM)','c.) both A & B','d.) none of the above','a',2,1,2),(63,2,8,'MEDIUM','this is known to be the device which can accept instructions from computer user','a.) input device','b.) output device','c.) both A & B','d.) none of the above','a.) input device','b.) output device','c.) both A & B','d.) none of the above','a',1,1,2),(64,2,7,'MEDIUM','this is known to return data, that is, information back to the user','a.) input device','b.) output device','c.) both A & B','d.) none of the above','a.) input device','b.) output device','c.) both A & B','d.) none of the above','b',1,1,2),(65,1,4,'5','this is known to be an optical storage which can hold 600MB to 720MB of data','a.) CD Disc','b.) DVD Disc','c.) Bluray','d.) none of the above','a.) CD Disc','b.) DVD Disc','c.) Bluray','d.) none of the above','a',1,1,1),(66,1,5,'1','this refers to the set of instructions written in code that computers can understand and executed','a.) System','b.) software','c.) programs','d.) none / all of the above','a.) System','b.) software','c.) programs','d.) none / all of the above','b',1,1,1),(67,1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a',1,1,1),(68,1,2,'EASY','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a',3,1,1),(69,1,3,'4','refers to any person involve in the software development and maintenance of the hardware','a.) hardware','b.) software','c.) peopleware','d.) none / all of the above','a.) hardware','b.) software','c.) peopleware','d.) none / all of the above','c',3,1,2),(70,1,3,'5','is an interrelated set of components that function together to achieve an outcome','a.) program','b.) system','c.) module','d.) none of the above','a.) program','b.) system','c.) module','d.) none of the above','b',3,1,2);

/*Table structure for table `examresulthistory` */

DROP TABLE IF EXISTS `examresulthistory`;

CREATE TABLE `examresulthistory` (
  `id` int(11) DEFAULT NULL COMMENT 'main id',
  `studentid` int(11) DEFAULT NULL COMMENT 'personalinfo foreign key',
  `examid` int(11) DEFAULT NULL COMMENT 'summary foreign key',
  `studyid` int(11) DEFAULT NULL COMMENT 'studyunit foreign key',
  `answer` varchar(5) DEFAULT NULL COMMENT 'answer of student',
  `remark` varchar(50) DEFAULT NULL COMMENT 'remarks',
  `pt` tinyint(4) DEFAULT NULL COMMENT 'point per question',
  `status` tinyint(4) DEFAULT NULL COMMENT 'status if complete/incomplete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `examresulthistory` */

/*Table structure for table `personalinfo` */

DROP TABLE IF EXISTS `personalinfo`;

CREATE TABLE `personalinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `emailadd` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `IPAddress` varchar(75) NOT NULL COMMENT 'Physical Machine Address / MacAddress',
  `DateTimeActive` datetime NOT NULL COMMENT 'Date Time Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `personalinfo` */

insert  into `personalinfo`(`id`,`lname`,`mname`,`fname`,`address`,`contactno`,`emailadd`,`username`,`password`,`usertype`,`status`,`IPAddress`,`DateTimeActive`) values (1,'dean','salangsang','alan','taytay','123','email@ko.com','alan','alan','student','1','::1','2016-07-17 10:03:04'),(2,'manalastas','edd','edd','angono','321','email@edd.com','edd','edd','admin','0','::1','2016-07-17 10:03:01'),(3,'pep','pep','pep','pep','pep','pep@pep.com','pep','pep','student','0','6.6.6.6','2016-07-13 01:07:36'),(4,'llagas','gatela','louie','binangonan','1234','louie@lou.com','louie','louie','student','0','::1','2016-07-13 01:11:59'),(6,'zzz','zzz','zzz','zzz','13','123','zzz','zzz','teacher','0','6.6.6.6','2016-07-13 01:47:00'),(7,'1','1','1','aaa','22','33','aa','aa','admin','0','::1','2016-07-13 01:12:03'),(8,'g','e','d','h','h','1','a','b','','0','','0000-00-00 00:00:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

/*Data for the table `qposttest` */

insert  into `qposttest`(`id`,`questionid`,`topicid`,`subjid`,`level`,`question`,`a`,`b`,`c`,`d`,`a_rational`,`b_rational`,`c_rational`,`d_rational`,`correct_ans`,`minutes`,`point`,`type`) values (21,30,2,7,'DIFFICULT','raw facts, events or happening. this is processed in order to provide an information','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','c.) IS','a',1,1,'2'),(22,31,2,7,'DIFFICULT','a collection of facts organized in such a way that they have additional value beyond the facts themselves.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','c.) IS','b',1,1,'2'),(23,32,2,7,'DIFFICULT','typically considered to be a set of interrelated elements or components that collect (input), manipulate(processes), and dissiminate(output) and information and provide a feedback mechanism to meet an objective.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','c.) IS','c',3,1,'2'),(24,33,2,7,'DIFFICULT','provides information and supports needed for effective decision making by managers','a.) MIS','b.) DSS','c.) ES','d.) none of the above','a.) MIS','b.) DSS','c.) ES','c.) ES','d',3,1,'2'),(25,39,2,7,'EASY','are computerized information systems that were developed to process large amounts of data for routine business transaction.','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','a.) ESS','b.) TPS','c.) MIS','c.) MIS','b',1,1,'2'),(26,40,2,7,'EASY','the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','a.) programmer','b.) encoder','c.) system analyst','c.) system analyst','c',1,1,'2'),(27,41,2,7,'EASY','Organized collection of people, procedures, software, databases, and devices used to record completed business transactions','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','a.) ESS','b.) MIS','c.) TPS','c.) TPS','d',2,1,'2'),(28,42,2,7,'EASY','Computer system takes on characteristics of human intelligence','a.) DSS','b.) MIS','c.) TPS','d.) all of the above','a.) DSS','b.) MIS','c.) TPS','c.) TPS','d',2,1,'2'),(29,43,2,7,'EASY','a graphical representation of the \"flow\" of data through an information system, modelling its process aspects.','a.) System Flow','b.) Data Flow Diagram','c.) System Flowchart','d.) none of the above','a.) System Flow','b.) Data Flow Diagram','c.) System Flowchart','c.) System Flowchart','b',2,1,'2'),(30,44,2,7,'EASY','symbol used to represent data that the system stores.','a.) Process','b.) External Entity','c.) Data Flow','d.) None of the above','a.) Process','b.) External Entity','c.) Data Flow','c.) Data Flow','d',2,1,'2'),(31,49,2,7,'MEDIUM','a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a.) SDLC','b.) Waterfall','c.) Agile','c.) Agile','a',1,1,'2'),(32,50,2,7,'MEDIUM','a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','a.) Information','b.) Data dictionary','c.) Data Processing','c.) Data Processing','b',3,1,'2'),(33,51,2,7,'MEDIUM','which is none element of a complete computer system','a.) people ware','b.) Hardware','c.) Anti Virus','d.) none of the above','a.) people ware','b.) Hardware','c.) Anti Virus','c.) Anti Virus','c',3,1,'2'),(34,52,2,7,'MEDIUM','none basic hardware element','a.) external hard drive or flash drive','b.) Monitor/Display','c.) CPU / Central Processing Unit','d.) none of the above','a.) external hard drive or flash drive','b.) Monitor/Display','c.) CPU / Central Processing Unit','c.) CPU / Central Processing Unit','a',3,1,'2'),(35,53,2,7,'MEDIUM','it is an electronic device that uses stored data and instruction to generate information','a.) calculator','b.) smartphone','c.) computer','d.) all of the above','a.) calculator','b.) smartphone','c.) computer','c.) computer','c',4,1,'2'),(36,54,2,7,'MEDIUM','it refers to processed data','a.) input','b.) output','c.) data','d.) none of the above','a.) input','b.) output','c.) data','c.) data','d',4,1,'2'),(37,55,2,7,'MEDIUM','it is the unprocessed facts','a.) input','b.) output','c.) data','d.) none of the above','a.) input','b.) output','c.) data','c.) data','c',1,1,'2'),(38,64,2,7,'MEDIUM','this is known to return data, that is, information back to the user','a.) input device','b.) output device','c.) both A & B','d.) none of the above','a.) input device','b.) output device','c.) both A & B','c.) both A & B','b',1,1,'2');

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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;

/*Data for the table `qpretest` */

insert  into `qpretest`(`id`,`questionid`,`topicid`,`subjid`,`level`,`question`,`a`,`b`,`c`,`d`,`a_rational`,`b_rational`,`c_rational`,`d_rational`,`correct_ans`,`minutes`,`point`,`type`) values (113,1,1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','c.) Computer','c',2,1,'1'),(114,10,1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','c.) Colossus','d',1,1,'1'),(115,18,1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','c.) machine instructions','a',4,1,'1'),(116,19,1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','c.) machine instructions','b',1,1,'1'),(117,21,1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','c.) input & output','a',1,1,'1'),(118,67,1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','c.) IOS','a',1,1,'1'),(123,3,1,3,'EASY','father of computer','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','c.) Kevin Warwick','a',1,1,'1'),(124,12,1,3,'MEDIUM','refers to the programs/system/machine instructions that is made by programmers.','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','c.) hardware','b',1,1,'1'),(125,22,1,3,'DIFFICULT','mouse is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','c.) input & output','a',1,1,'1'),(126,23,1,3,'DIFFICULT','speaker is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','c.) input & output','b',2,1,'1'),(127,29,1,3,'DIFFICULT','this controls the basic i/o processing of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','a.) RAM','b.) ROM','c.) BIOS','c.) BIOS','c',1,1,'1');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `qshortquiz` */

insert  into `qshortquiz`(`id`,`questionid`,`topicid`,`subjid`,`level`,`question`,`a`,`b`,`c`,`d`,`a_rational`,`b_rational`,`c_rational`,`d_rational`,`correct_ans`,`minutes`,`point`,`type`) values (1,1,1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','c.) Computer','c',2,1,'1'),(2,2,1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','c',1,1,'1'),(3,10,1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','c.) Colossus','d',1,1,'1'),(4,11,1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','c.) hardware','c',1,1,'1'),(5,18,1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','c.) machine instructions','a',4,1,'1'),(6,19,1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','c.) machine instructions','b',1,1,'1'),(7,20,1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','c.) 2','c',1,1,'1'),(8,21,1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','c.) input & output','a',1,1,'1'),(9,67,1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','c.) IOS','a',1,1,'1'),(10,68,1,2,'EASY','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','c.) IOS','a',3,1,'1');

/*Table structure for table `reviewmaterials` */

DROP TABLE IF EXISTS `reviewmaterials`;

CREATE TABLE `reviewmaterials` (
  `id` int(11) NOT NULL,
  `studyid` int(11) NOT NULL,
  `reviewid` int(11) NOT NULL,
  `attachment` varchar(500) NOT NULL,
  `filetype` varchar(100) NOT NULL,
  `extname` varchar(100) NOT NULL,
  `dateupload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reviewmaterials` */

/*Table structure for table `reviewresult` */

DROP TABLE IF EXISTS `reviewresult`;

CREATE TABLE `reviewresult` (
  `id` int(11) DEFAULT NULL,
  `reviewid` int(11) DEFAULT NULL,
  `rating` decimal(18,2) DEFAULT NULL,
  `datetimestarted` datetime DEFAULT NULL,
  `datetimeend` datetime DEFAULT NULL,
  `examresultlogid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reviewresult` */

/*Table structure for table `reviewsession` */

DROP TABLE IF EXISTS `reviewsession`;

CREATE TABLE `reviewsession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionName` varchar(200) NOT NULL,
  `decription` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reviewsession` */

/*Table structure for table `reviewtopic` */

DROP TABLE IF EXISTS `reviewtopic`;

CREATE TABLE `reviewtopic` (
  `id` int(11) NOT NULL,
  `topicname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reviewtopic` */

insert  into `reviewtopic`(`id`,`topicname`,`description`) values (1,'Pre-Test',''),(2,'Post-Test',''),(3,'Short-Quiz','');

/*Table structure for table `studentsession` */

DROP TABLE IF EXISTS `studentsession`;

CREATE TABLE `studentsession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(11) NOT NULL,
  `questionid` int(11) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `datetimecreated` datetime NOT NULL,
  `datetimeanswered` datetime NOT NULL,
  `sessiontype` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0-study 1-exam',
  `testsessionid` int(11) DEFAULT NULL,
  `testtypeid` int(11) DEFAULT NULL COMMENT '1-pre test 2-post test 3-short quiz 4-long quiz 5 major exam',
  PRIMARY KEY (`id`),
  KEY `questionid` (`questionid`),
  KEY `studentid` (`studentid`),
  CONSTRAINT `studentsession_ibfk_1` FOREIGN KEY (`questionid`) REFERENCES `examquestion` (`id`),
  CONSTRAINT `studentsession_ibfk_2` FOREIGN KEY (`studentid`) REFERENCES `personalinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;

/*Data for the table `studentsession` */

insert  into `studentsession`(`id`,`studentid`,`questionid`,`answer`,`datetimecreated`,`datetimeanswered`,`sessiontype`,`testsessionid`,`testtypeid`) values (168,1,39,'','2016-07-17 10:12:26','0000-00-00 00:00:00',0,2,2),(169,1,40,'','2016-07-17 10:12:26','0000-00-00 00:00:00',0,2,2),(170,1,41,'','2016-07-17 10:12:26','0000-00-00 00:00:00',0,2,2),(171,1,49,'','2016-07-17 10:12:26','0000-00-00 00:00:00',0,2,2),(172,1,50,'','2016-07-17 10:12:26','0000-00-00 00:00:00',0,2,2),(173,1,51,'','2016-07-17 10:12:26','0000-00-00 00:00:00',0,2,2),(174,1,30,'','2016-07-17 10:12:26','0000-00-00 00:00:00',0,2,2),(175,1,31,'','2016-07-17 10:12:26','0000-00-00 00:00:00',0,2,2),(176,1,32,'','2016-07-17 10:12:26','0000-00-00 00:00:00',0,2,2);

/*Table structure for table `studentsessionsummary` */

DROP TABLE IF EXISTS `studentsessionsummary`;

CREATE TABLE `studentsessionsummary` (
  `id` int(11) NOT NULL,
  `testsessionid` int(50) NOT NULL,
  `studentid` int(11) NOT NULL,
  `topicid` int(11) NOT NULL,
  `unitid` int(11) NOT NULL,
  `totalpoints` int(11) NOT NULL,
  `studentpoints` int(11) NOT NULL,
  `totaltime` time NOT NULL,
  `studenttime` time NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `testsessionid` (`testsessionid`),
  CONSTRAINT `studentsessionsummary_ibfk_1` FOREIGN KEY (`testsessionid`) REFERENCES `studentsession` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `studentsessionsummary` */

/*Table structure for table `studyunits` */

DROP TABLE IF EXISTS `studyunits`;

CREATE TABLE `studyunits` (
  `id` int(11) NOT NULL,
  `topicid` int(11) NOT NULL,
  `studyname` varchar(100) NOT NULL,
  `isparent` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topicid` (`topicid`),
  CONSTRAINT `studyunits_ibfk_1` FOREIGN KEY (`topicid`) REFERENCES `reviewtopic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `studyunits` */

insert  into `studyunits`(`id`,`topicid`,`studyname`,`isparent`,`parentid`) values (1,1,'Introduction to Accounting',1,0),(2,1,'Day 1 Online Accounting',0,1),(3,1,'Day 2 Describe the nature of Accounting',0,1),(4,1,'Day 3 Explains the fucntion of accounting in business',0,1),(5,1,'Day 4 Narrate the history/Origin of Accounting',0,1),(6,2,'Branches of Accounting',1,0),(7,2,'Day 5 Differentiate the branches of Accounting',0,6),(8,2,'Day 6 Explain the kind/Type of service rendered in each of these branches',0,6);

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'just a record id',
  `testsessionid` int(50) NOT NULL COMMENT 'this is the student id ',
  `datetimecreated` datetime NOT NULL,
  `testtype` varchar(15) NOT NULL COMMENT 'pre-test | post-test | short-quiz | long-quiz | major-exam',
  `topicid` int(11) NOT NULL COMMENT 'topic id as defined on examquestion',
  `subjid` int(11) NOT NULL COMMENT 'subject id as defined on examquestion',
  `level` varchar(50) NOT NULL COMMENT 'day or sub topic as defined on examquestion and as shown on student grade report',
  `question` varchar(500) NOT NULL COMMENT 'the actual question from examquestion table',
  `a` varchar(100) NOT NULL COMMENT 'choice a',
  `b` varchar(100) NOT NULL COMMENT 'choice b',
  `c` varchar(100) NOT NULL COMMENT 'choice c',
  `d` varchar(100) NOT NULL COMMENT 'choice d',
  `a_rational` varchar(500) NOT NULL COMMENT 'rationale for choice a',
  `b_rational` varchar(500) NOT NULL COMMENT 'rationale for choice b',
  `c_rational` varchar(500) NOT NULL COMMENT 'rationale for choice c',
  `d_rational` varchar(500) NOT NULL COMMENT 'rationale for choice d',
  `correct_ans` varchar(100) NOT NULL COMMENT 'correct answer as defined on examquestion',
  `ansreceived` varchar(1) NOT NULL COMMENT 'received answer submitted by exam taker',
  `minutes` int(10) unsigned NOT NULL COMMENT 'time duration for this question',
  `point` int(11) NOT NULL COMMENT 'points to be given for this question',
  `type` varchar(100) NOT NULL COMMENT 'easy | moderate | difficult'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

insert  into `temp`(`id`,`testsessionid`,`datetimecreated`,`testtype`,`topicid`,`subjid`,`level`,`question`,`a`,`b`,`c`,`d`,`a_rational`,`b_rational`,`c_rational`,`d_rational`,`correct_ans`,`ansreceived`,`minutes`,`point`,`type`) values (2,1,'2016-06-17 09:39:14','0',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','d',1,1,'EASY'),(3,1,'2016-06-17 09:39:14','0',1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c','d',1,1,'EASY'),(4,1,'2016-06-17 09:39:14','0',1,3,'EASY','father of computer','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a','d',1,1,'EASY'),(5,1,'2016-06-17 09:39:14','0',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','d',1,1,'MEDIUM'),(6,1,'2016-06-17 09:39:14','0',1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c','d',1,1,'MEDIUM'),(7,1,'2016-06-17 09:39:14','0',1,3,'MEDIUM','refers to the programs/system/machine instructions that is made by programmers.','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','b','d',1,1,'MEDIUM'),(8,1,'2016-06-17 09:39:14','0',1,3,'MEDIUM','refers to user/coders/programmers/computer operators (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','a','d',1,1,'MEDIUM'),(9,1,'2016-06-17 09:39:14','0',1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c','d',1,1,'DIFFICULT'),(10,1,'2016-06-17 09:39:14','0',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','d',1,1,'DIFFICULT'),(11,1,'2016-06-17 09:39:14','0',1,3,'DIFFICULT','mouse is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','d',1,1,'DIFFICULT');

/*Table structure for table `testbuffer` */

DROP TABLE IF EXISTS `testbuffer`;

CREATE TABLE `testbuffer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'just a record id',
  `testsessionid` int(50) NOT NULL,
  `datetimecreated` datetime NOT NULL,
  `testtype` varchar(15) NOT NULL COMMENT 'pre-test | post-test | short-quiz | long-quiz | major-exam',
  `topicid` int(11) NOT NULL COMMENT 'topic id as defined on examquestion',
  `subjid` int(11) NOT NULL COMMENT 'subject id as defined on examquestion',
  `level` varchar(50) NOT NULL COMMENT 'day or sub topic as defined on examquestion and as shown on student grade report',
  `question` varchar(500) NOT NULL COMMENT 'the actual question from examquestion table',
  `a` varchar(100) NOT NULL COMMENT 'choice a',
  `b` varchar(100) NOT NULL COMMENT 'choice b',
  `c` varchar(100) NOT NULL COMMENT 'choice c',
  `d` varchar(100) NOT NULL COMMENT 'choice d',
  `a_rational` varchar(500) NOT NULL COMMENT 'rationale for choice a',
  `b_rational` varchar(500) NOT NULL COMMENT 'rationale for choice b',
  `c_rational` varchar(500) NOT NULL COMMENT 'rationale for choice c',
  `d_rational` varchar(500) NOT NULL COMMENT 'rationale for choice d',
  `correct_ans` varchar(100) NOT NULL COMMENT 'correct answer as defined on examquestion',
  `ansreceived` varchar(1) NOT NULL COMMENT 'received answer submitted by exam taker',
  `minutes` int(10) unsigned NOT NULL COMMENT 'time duration for this question',
  `point` int(11) NOT NULL COMMENT 'points to be given for this question',
  `type` varchar(100) NOT NULL COMMENT 'easy | moderate | difficult',
  PRIMARY KEY (`id`),
  KEY `testsessionid` (`testsessionid`),
  CONSTRAINT `testbuffer_ibfk_1` FOREIGN KEY (`testsessionid`) REFERENCES `studentsession` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `testbuffer` */

/*Table structure for table `testhistory` */

DROP TABLE IF EXISTS `testhistory`;

CREATE TABLE `testhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'just a record id',
  `testsessionid` int(50) NOT NULL COMMENT 'this is the student id ',
  `studentid` int(11) DEFAULT NULL COMMENT 'studentID',
  `datetimecreated` datetime NOT NULL,
  `testtype` varchar(15) NOT NULL COMMENT 'pre-test | post-test | short-quiz | long-quiz | major-exam',
  `topicid` int(11) NOT NULL COMMENT 'topic id as defined on examquestion',
  `subjid` int(11) NOT NULL COMMENT 'subject id as defined on examquestion',
  `level` varchar(50) NOT NULL COMMENT 'day or sub topic as defined on examquestion and as shown on student grade report',
  `question` varchar(500) NOT NULL COMMENT 'the actual question from examquestion table',
  `a` varchar(100) NOT NULL COMMENT 'choice a',
  `b` varchar(100) NOT NULL COMMENT 'choice b',
  `c` varchar(100) NOT NULL COMMENT 'choice c',
  `d` varchar(100) NOT NULL COMMENT 'choice d',
  `a_rational` varchar(500) NOT NULL COMMENT 'rationale for choice a',
  `b_rational` varchar(500) NOT NULL COMMENT 'rationale for choice b',
  `c_rational` varchar(500) NOT NULL COMMENT 'rationale for choice c',
  `d_rational` varchar(500) NOT NULL COMMENT 'rationale for choice d',
  `correct_ans` varchar(100) NOT NULL COMMENT 'correct answer as defined on examquestion',
  `ansreceived` varchar(1) NOT NULL COMMENT 'received answer submitted by exam taker',
  `minutes` int(10) unsigned NOT NULL COMMENT 'time duration for this question',
  `point` int(11) NOT NULL COMMENT 'points to be given for this question',
  `type` varchar(100) NOT NULL COMMENT 'easy | moderate | difficult',
  PRIMARY KEY (`id`),
  KEY `testsessionid` (`testsessionid`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

/*Data for the table `testhistory` */

insert  into `testhistory`(`id`,`testsessionid`,`studentid`,`datetimecreated`,`testtype`,`topicid`,`subjid`,`level`,`question`,`a`,`b`,`c`,`d`,`a_rational`,`b_rational`,`c_rational`,`d_rational`,`correct_ans`,`ansreceived`,`minutes`,`point`,`type`) values (1,1,1,'2016-07-10 02:27:58','2',2,7,'EASY','Organized collection of people, procedures, software, databases, and devices used to record completed business transactions','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','d','a',2,1,'EASY'),(2,1,1,'2016-07-10 02:27:58','2',2,7,'EASY','are computerized information systems that were developed to process large amounts of data for routine business transaction.','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','b','a',1,1,'EASY'),(3,1,1,'2016-07-10 02:27:58','2',2,7,'EASY','the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','c','b',1,1,'EASY'),(4,1,1,'2016-07-10 02:27:58','2',2,7,'MEDIUM','a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','b','a',3,1,'MEDIUM'),(5,1,1,'2016-07-10 02:27:58','2',2,7,'MEDIUM','a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a','b',1,1,'MEDIUM'),(6,1,1,'2016-07-10 02:27:58','2',2,8,'MEDIUM','a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.','a.) system programming','b.) system designing','c.) system planning','d.) system analysis','a.) system programming','b.) system designing','c.) system planning','d.) system analysis','d','',1,1,'MEDIUM'),(7,1,1,'2016-07-10 02:27:58','2',2,4,'DIFFICULT','printer is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','b','',2,1,'DIFFICULT'),(8,1,1,'2016-07-10 02:27:58','2',2,5,'DIFFICULT','momentary storage of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a.) RAM','b.) ROM','c.) BIOS','d.) CMOS','a','',2,1,'DIFFICULT'),(9,1,1,'2016-07-10 02:27:58','2',2,4,'DIFFICULT','RFID tag reader is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',2,1,'DIFFICULT'),(10,1,1,'2016-07-16 20:40:18','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(11,1,1,'2016-07-16 20:40:18','1',1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','b','',1,1,'MEDIUM'),(12,1,1,'2016-07-16 20:40:18','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(13,1,1,'2016-07-16 20:40:18','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(14,1,1,'2016-07-16 20:40:18','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(17,1,1,'2016-07-16 20:50:20','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(18,1,1,'2016-07-16 20:50:20','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','c',4,1,'MEDIUM'),(19,1,1,'2016-07-16 20:50:20','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','d',1,1,'MEDIUM'),(20,1,1,'2016-07-16 20:50:20','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','c',1,1,'DIFFICULT'),(21,1,1,'2016-07-16 20:50:20','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','b',1,1,'DIFFICULT'),(24,1,1,'2016-07-16 20:54:53','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(25,1,1,'2016-07-16 20:54:53','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(26,1,1,'2016-07-16 20:54:53','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(27,1,1,'2016-07-16 20:54:53','1',1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','b','',1,1,'MEDIUM'),(28,1,1,'2016-07-16 20:54:53','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','c',1,1,'DIFFICULT'),(29,1,1,'2016-07-16 20:54:53','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','b',1,1,'DIFFICULT'),(31,1,1,'2016-07-16 20:54:53','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(32,1,1,'2016-07-16 20:54:53','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(33,1,1,'2016-07-16 20:54:53','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(34,1,1,'2016-07-16 20:54:53','1',1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','b','',1,1,'MEDIUM'),(35,1,1,'2016-07-16 20:54:53','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','c',1,1,'DIFFICULT'),(36,1,1,'2016-07-16 20:54:53','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','b',1,1,'DIFFICULT'),(37,1,1,'2016-07-17 07:59:45','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(38,1,1,'2016-07-17 07:59:45','1',1,3,'EASY','father of computer','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a','',1,1,'EASY'),(39,1,1,'2016-07-17 07:59:45','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(40,1,1,'2016-07-17 07:59:45','1',1,3,'MEDIUM','refers to the programs/system/machine instructions that is made by programmers.','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','b','',1,1,'MEDIUM'),(41,1,1,'2016-07-17 07:59:45','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(42,1,1,'2016-07-17 07:59:45','1',1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','b','',1,1,'MEDIUM'),(43,1,1,'2016-07-17 07:59:45','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(44,1,1,'2016-07-17 07:59:45','1',1,3,'DIFFICULT','mouse is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(45,1,1,'2016-07-17 07:59:45','1',1,3,'DIFFICULT','speaker is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','b','',2,1,'DIFFICULT'),(46,1,1,'2016-07-17 07:59:45','1',1,3,'DIFFICULT','this controls the basic i/o processing of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','c','',1,1,'DIFFICULT'),(47,1,1,'2016-07-17 07:59:45','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(52,1,1,'2016-07-17 07:59:45','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(53,1,1,'2016-07-17 07:59:45','1',1,3,'EASY','father of computer','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a','',1,1,'EASY'),(54,1,1,'2016-07-17 07:59:45','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(55,1,1,'2016-07-17 07:59:45','1',1,3,'MEDIUM','refers to the programs/system/machine instructions that is made by programmers.','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','b','',1,1,'MEDIUM'),(56,1,1,'2016-07-17 07:59:45','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(57,1,1,'2016-07-17 07:59:45','1',1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','b','',1,1,'MEDIUM'),(58,1,1,'2016-07-17 07:59:45','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(59,1,1,'2016-07-17 07:59:45','1',1,3,'DIFFICULT','mouse is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(60,1,1,'2016-07-17 07:59:45','1',1,3,'DIFFICULT','speaker is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','b','',2,1,'DIFFICULT'),(61,1,1,'2016-07-17 07:59:45','1',1,3,'DIFFICULT','this controls the basic i/o processing of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','c','',1,1,'DIFFICULT'),(62,1,1,'2016-07-17 07:59:45','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(67,1,1,'2016-07-17 08:23:47','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(68,1,1,'2016-07-17 08:23:47','1',1,3,'EASY','father of computer','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a','',1,1,'EASY'),(69,1,1,'2016-07-17 08:23:47','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(70,1,1,'2016-07-17 08:23:47','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(71,1,1,'2016-07-17 08:23:47','1',1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','b','',1,1,'MEDIUM'),(72,1,1,'2016-07-17 08:23:47','1',1,3,'MEDIUM','refers to the programs/system/machine instructions that is made by programmers.','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','b','',1,1,'MEDIUM'),(73,1,1,'2016-07-17 08:23:47','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(74,1,1,'2016-07-17 08:23:47','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(75,1,1,'2016-07-17 08:23:47','1',1,3,'DIFFICULT','mouse is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(76,1,1,'2016-07-17 08:23:47','1',1,3,'DIFFICULT','speaker is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','b','',2,1,'DIFFICULT'),(77,1,1,'2016-07-17 08:23:47','1',1,3,'DIFFICULT','this controls the basic i/o processing of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','c','',1,1,'DIFFICULT'),(82,1,1,'2016-07-17 08:23:47','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(83,1,1,'2016-07-17 08:23:47','1',1,3,'EASY','father of computer','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a.) Charles Babbage','b.) Alan Turing','c.) Kevin Warwick','d.) none of the above','a','',1,1,'EASY'),(84,1,1,'2016-07-17 08:23:47','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(85,1,1,'2016-07-17 08:23:47','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(86,1,1,'2016-07-17 08:23:47','1',1,2,'MEDIUM','a collection of commands written by a programmer to accomplish specific task','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','b','',1,1,'MEDIUM'),(87,1,1,'2016-07-17 08:23:47','1',1,3,'MEDIUM','refers to the programs/system/machine instructions that is made by programmers.','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','b','',1,1,'MEDIUM'),(88,1,1,'2016-07-17 08:23:47','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(89,1,1,'2016-07-17 08:23:47','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(90,1,1,'2016-07-17 08:23:47','1',1,3,'DIFFICULT','mouse is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(91,1,1,'2016-07-17 08:23:47','1',1,3,'DIFFICULT','speaker is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','b','',2,1,'DIFFICULT'),(92,1,1,'2016-07-17 08:23:47','1',1,3,'DIFFICULT','this controls the basic i/o processing of a computer','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','a.) RAM','b.) ROM','c.) BIOS','d.) none of the above','c','',1,1,'DIFFICULT'),(97,1,1,'2016-07-17 09:23:48','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(98,1,1,'2016-07-17 09:23:48','1',1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c','',1,1,'EASY'),(99,1,1,'2016-07-17 09:23:48','1',1,2,'EASY','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',3,1,'EASY'),(100,1,1,'2016-07-17 09:23:48','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(101,1,1,'2016-07-17 09:23:48','1',1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c','',1,1,'MEDIUM'),(102,1,1,'2016-07-17 09:23:48','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(103,1,1,'2016-07-17 09:23:48','1',1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c','',1,1,'DIFFICULT'),(104,1,1,'2016-07-17 09:23:48','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(105,1,1,'2016-07-17 09:23:48','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(112,1,1,'2016-07-17 09:23:48','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(113,1,1,'2016-07-17 09:23:48','1',1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c','',1,1,'EASY'),(114,1,1,'2016-07-17 09:23:48','1',1,2,'EASY','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',3,1,'EASY'),(115,1,1,'2016-07-17 09:23:48','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(116,1,1,'2016-07-17 09:23:48','1',1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c','',1,1,'MEDIUM'),(117,1,1,'2016-07-17 09:23:48','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(118,1,1,'2016-07-17 09:23:48','1',1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c','',1,1,'DIFFICULT'),(119,1,1,'2016-07-17 09:23:48','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(120,1,1,'2016-07-17 09:23:48','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(127,1,1,'2016-07-17 09:54:12','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(128,1,1,'2016-07-17 09:54:12','1',1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c','',1,1,'EASY'),(129,1,1,'2016-07-17 09:54:12','1',1,2,'EASY','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',3,1,'EASY'),(130,1,1,'2016-07-17 09:54:12','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(131,1,1,'2016-07-17 09:54:12','1',1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c','',1,1,'MEDIUM'),(132,1,1,'2016-07-17 09:54:12','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(133,1,1,'2016-07-17 09:54:12','1',1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c','',1,1,'DIFFICULT'),(134,1,1,'2016-07-17 09:54:12','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(135,1,1,'2016-07-17 09:54:12','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(142,1,1,'2016-07-17 09:54:12','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(143,1,1,'2016-07-17 09:54:12','1',1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c','',1,1,'EASY'),(144,1,1,'2016-07-17 09:54:12','1',1,2,'EASY','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',3,1,'EASY'),(145,1,1,'2016-07-17 09:54:12','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(146,1,1,'2016-07-17 09:54:12','1',1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c','',1,1,'MEDIUM'),(147,1,1,'2016-07-17 09:54:12','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(148,1,1,'2016-07-17 09:54:12','1',1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c','',1,1,'DIFFICULT'),(149,1,1,'2016-07-17 09:54:12','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(150,1,1,'2016-07-17 09:54:12','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(157,1,1,'2016-07-17 09:55:57','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(158,1,1,'2016-07-17 09:55:57','1',1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c','',1,1,'EASY'),(159,1,1,'2016-07-17 09:55:57','1',1,2,'EASY','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',3,1,'EASY'),(160,1,1,'2016-07-17 09:55:57','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(161,1,1,'2016-07-17 09:55:57','1',1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c','',1,1,'MEDIUM'),(162,1,1,'2016-07-17 09:55:57','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(163,1,1,'2016-07-17 09:55:57','1',1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c','',1,1,'DIFFICULT'),(164,1,1,'2016-07-17 09:55:57','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(165,1,1,'2016-07-17 09:55:57','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(172,1,1,'2016-07-17 09:55:57','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(173,1,1,'2016-07-17 09:55:57','1',1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c','',1,1,'EASY'),(174,1,1,'2016-07-17 09:55:57','1',1,2,'EASY','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',3,1,'EASY'),(175,1,1,'2016-07-17 09:55:57','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','',1,1,'MEDIUM'),(176,1,1,'2016-07-17 09:55:57','1',1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c','',1,1,'MEDIUM'),(177,1,1,'2016-07-17 09:55:57','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','',4,1,'MEDIUM'),(178,1,1,'2016-07-17 09:55:57','1',1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c','',1,1,'DIFFICULT'),(179,1,1,'2016-07-17 09:55:57','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','',1,1,'DIFFICULT'),(180,1,1,'2016-07-17 09:55:57','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','',1,1,'DIFFICULT'),(187,1,1,'2016-07-17 10:03:27','2',2,7,'EASY','are computerized information systems that were developed to process large amounts of data for routine business transaction.','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','b','',1,1,'EASY'),(188,1,1,'2016-07-17 10:03:27','2',2,7,'EASY','the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','c','',1,1,'EASY'),(189,1,1,'2016-07-17 10:03:27','2',2,7,'EASY','Organized collection of people, procedures, software, databases, and devices used to record completed business transactions','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','d','',2,1,'EASY'),(190,1,1,'2016-07-17 10:03:27','2',2,7,'MEDIUM','a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a','',1,1,'MEDIUM'),(191,1,1,'2016-07-17 10:03:27','2',2,7,'MEDIUM','a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','b','',3,1,'MEDIUM'),(192,1,1,'2016-07-17 10:03:27','2',2,7,'MEDIUM','which is none element of a complete computer system','a.) people ware','b.) Hardware','c.) Anti Virus','d.) none of the above','a.) people ware','b.) Hardware','c.) Anti Virus','d.) none of the above','c','',3,1,'MEDIUM'),(193,1,1,'2016-07-17 10:03:27','2',2,7,'DIFFICULT','raw facts, events or happening. this is processed in order to provide an information','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','a','',1,1,'DIFFICULT'),(194,1,1,'2016-07-17 10:03:27','2',2,7,'DIFFICULT','a collection of facts organized in such a way that they have additional value beyond the facts themselves.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','b','',1,1,'DIFFICULT'),(195,1,1,'2016-07-17 10:03:27','2',2,7,'DIFFICULT','typically considered to be a set of interrelated elements or components that collect (input), manipulate(processes), and dissiminate(output) and information and provide a feedback mechanism to meet an objective.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','c','',3,1,'DIFFICULT'),(202,1,1,'2016-07-17 10:03:27','2',2,7,'EASY','are computerized information systems that were developed to process large amounts of data for routine business transaction.','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','a.) ESS','b.) TPS','c.) MIS','d.) none of the above','b','',1,1,'EASY'),(203,1,1,'2016-07-17 10:03:27','2',2,7,'EASY','the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','a.) programmer','b.) encoder','c.) system analyst','d.) none of the above','c','',1,1,'EASY'),(204,1,1,'2016-07-17 10:03:27','2',2,7,'EASY','Organized collection of people, procedures, software, databases, and devices used to record completed business transactions','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','a.) ESS','b.) MIS','c.) TPS','d.) none of the above','d','',2,1,'EASY'),(205,1,1,'2016-07-17 10:03:27','2',2,7,'MEDIUM','a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a.) SDLC','b.) Waterfall','c.) Agile','d.) SCRUM','a','',1,1,'MEDIUM'),(206,1,1,'2016-07-17 10:03:27','2',2,7,'MEDIUM','a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','a.) Information','b.) Data dictionary','c.) Data Processing','d.) none of the above','b','',3,1,'MEDIUM'),(207,1,1,'2016-07-17 10:03:27','2',2,7,'MEDIUM','which is none element of a complete computer system','a.) people ware','b.) Hardware','c.) Anti Virus','d.) none of the above','a.) people ware','b.) Hardware','c.) Anti Virus','d.) none of the above','c','',3,1,'MEDIUM'),(208,1,1,'2016-07-17 10:03:27','2',2,7,'DIFFICULT','raw facts, events or happening. this is processed in order to provide an information','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','a','',1,1,'DIFFICULT'),(209,1,1,'2016-07-17 10:03:27','2',2,7,'DIFFICULT','a collection of facts organized in such a way that they have additional value beyond the facts themselves.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','b','',1,1,'DIFFICULT'),(210,1,1,'2016-07-17 10:03:27','2',2,7,'DIFFICULT','typically considered to be a set of interrelated elements or components that collect (input), manipulate(processes), and dissiminate(output) and information and provide a feedback mechanism to meet an objective.','a.) data','b.) information','c.) IS','d.) none of the above','a.) data','b.) information','c.) IS','d.) none of the above','c','',3,1,'DIFFICULT'),(217,1,1,'2016-07-17 10:04:01','1',1,2,'EASY','the machine that changed the world','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','a.) Colossus','b.) SmartPhone','c.) Computer','d.) All the above','c','',2,1,'EASY'),(218,1,1,'2016-07-17 10:04:01','1',1,2,'EASY','names whom contributed for the development of computers','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','a.) C.Babbage / T.Flowers / K. Warwick / Jeremy','b.) A. Turing / C.Babbage / Jeremy','c.) T.Flowers / A.Turing / K. Warwick / C. Babbage','d.) all of the above.','c','',1,1,'EASY'),(219,1,1,'2016-07-17 10:04:01','1',1,2,'EASY','a software that is used to govern the proper operation of a computer','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','b',3,1,'EASY'),(220,1,1,'2016-07-17 10:04:01','1',1,2,'MEDIUM','a man made machine capable to automate human task','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','a.) desktop computer','b.) mainframe computer','c.) Colossus','d.) all of the above','d','c',1,1,'MEDIUM'),(221,1,1,'2016-07-17 10:04:01','1',1,2,'MEDIUM','refers to the physical tangible computer itself (an element of a complete computer system)','a.) people ware','b.) software','c.) hardware','d.) all of the above','a.) people ware','b.) software','c.) hardware','d.) all of the above','c','b',1,1,'MEDIUM'),(222,1,1,'2016-07-17 10:04:01','1',1,2,'MEDIUM','a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks','a.) system','b.) program','c.) machine instructions','d.) all of the above','a.) system','b.) program','c.) machine instructions','d.) all of the above','a','b',4,1,'MEDIUM'),(223,1,1,'2016-07-17 10:04:01','1',1,2,'DIFFICULT','if i have 2 characters how many bytes do i have','a.) 8','b.) 16','c.) 2','d.) none of the above','a.) 8','b.) 16','c.) 2','d.) none of the above','c','c',1,1,'DIFFICULT'),(224,1,1,'2016-07-17 10:04:01','1',1,2,'DIFFICULT','keyboard is what type of device?','a.) input','b.) output','c.) input & output','d.) unknown','a.) input','b.) output','c.) input & output','d.) unknown','a','d',1,1,'DIFFICULT'),(225,1,1,'2016-07-17 10:04:01','1',1,2,'DIFFICULT','a software which contains programs that perform task needed for computer hardware to function efficiently. ','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a.) system software / operating system','b.) microsoft windows','c.) IOS','d.) none / all of the above','a','b',1,1,'DIFFICULT');

/*Table structure for table `topic_config` */

DROP TABLE IF EXISTS `topic_config`;

CREATE TABLE `topic_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subjid` int(10) DEFAULT NULL,
  `testtype` int(10) NOT NULL,
  `itemseasy` int(10) NOT NULL,
  `itemsmoderate` int(10) NOT NULL,
  `itemsdifficult` int(10) NOT NULL,
  `israndom` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='topic configuration to be defined by the teacher or admin';

/*Data for the table `topic_config` */

insert  into `topic_config`(`id`,`subjid`,`testtype`,`itemseasy`,`itemsmoderate`,`itemsdifficult`,`israndom`) values (1,2,1,3,4,3,0),(2,2,2,3,3,3,0),(6,4,1,3,3,3,0),(7,3,1,1,2,2,0),(8,2,3,3,3,3,0),(9,7,2,3,3,3,0);

/*Table structure for table `userlogs` */

DROP TABLE IF EXISTS `userlogs`;

CREATE TABLE `userlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loguserid` int(11) NOT NULL,
  `logdate` date NOT NULL,
  `logdesc` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=latin1;

/*Data for the table `userlogs` */

insert  into `userlogs`(`id`,`loguserid`,`logdate`,`logdesc`) values (1,0,'2016-05-28','Good Login'),(2,0,'2016-05-28','Good Login'),(3,0,'2016-05-28','Good Login'),(4,2,'2016-05-29','Good Login'),(5,2,'2016-05-29','Good Login'),(6,0,'2016-06-01','Good Login'),(7,0,'2016-06-11','Good Login'),(8,0,'2016-06-11','Good Login'),(9,0,'2016-06-17','Good Login'),(10,0,'2016-06-17','Good Login'),(11,0,'2016-06-17','Good Login'),(12,0,'2016-06-19','Good Login'),(13,0,'2016-06-19','Good Login'),(14,0,'2016-06-19','Good Login'),(15,0,'2016-06-19','Good Login'),(16,0,'2016-06-20','Good Login'),(17,0,'2016-06-20','Good Login'),(18,0,'2016-06-21','Good Login'),(19,0,'2016-06-21','Good Login'),(20,0,'2016-06-21','Good Login'),(21,0,'2016-06-21','Good Login'),(22,0,'2016-06-21','Good Login'),(23,0,'2016-06-21','Good Login'),(24,0,'2016-06-21','Good Login'),(25,0,'2016-06-21','Good Login'),(26,0,'2016-06-21','Good Login'),(27,0,'2016-06-21','Good Login'),(28,0,'2016-06-21','Good Login'),(29,0,'2016-06-21','Good Login'),(30,0,'2016-06-21','Good Login'),(31,0,'2016-06-21','Good Login'),(32,0,'2016-06-21','Good Login'),(33,0,'2016-06-21','Good Login'),(34,0,'2016-06-21','Good Login'),(35,0,'2016-06-21','Good Login'),(36,0,'2016-06-21','Good Login'),(37,0,'2016-06-21','Good Login'),(38,0,'2016-06-21','Good Login'),(39,0,'2016-06-21','Good Login'),(40,0,'2016-06-21','Good Login'),(41,0,'2016-06-21','Good Login'),(42,0,'2016-06-21','Good Login'),(43,0,'2016-06-22','Good Login'),(44,0,'2016-06-22','Good Login'),(45,0,'2016-06-22','Good Login'),(46,0,'2016-06-22','Good Login'),(47,0,'2016-06-22','Good Login'),(48,0,'2016-06-22','Good Login'),(49,0,'2016-06-22','Good Login'),(50,0,'2016-06-22','Good Login'),(51,0,'2016-06-22','Good Login'),(52,0,'2016-06-22','Good Login'),(53,0,'2016-06-22','Good Login'),(54,0,'2016-06-22','Good Login'),(55,0,'2016-06-22','Good Login'),(56,0,'2016-06-22','Good Login'),(57,0,'2016-06-22','Good Login'),(58,0,'2016-06-22','Good Login'),(59,0,'2016-06-22','Good Login'),(60,0,'2016-06-22','Good Login'),(61,0,'2016-06-22','Good Login'),(62,0,'2016-06-22','Good Login'),(63,0,'2016-06-22','Good Login'),(64,0,'2016-06-22','Good Login'),(65,0,'2016-06-22','Good Login'),(66,0,'2016-06-22','Good Login'),(67,0,'2016-06-22','Good Login'),(68,0,'2016-06-22','Good Login'),(69,0,'2016-06-22','Good Login'),(70,0,'2016-06-22','Good Login'),(71,0,'2016-06-22','Good Login'),(72,0,'2016-06-22','Good Login'),(73,0,'2016-06-22','Good Login'),(74,0,'2016-06-22','Good Login'),(75,0,'2016-06-22','Good Login'),(76,0,'2016-06-22','Good Login'),(77,0,'2016-06-22','Good Login'),(78,0,'2016-06-22','Good Login'),(79,0,'2016-06-22','Good Login'),(80,0,'2016-06-22','Good Login'),(81,0,'2016-06-23','Good Login'),(82,0,'2016-06-23','Good Login'),(83,0,'2016-06-23','Good Login'),(84,0,'2016-06-23','Good Login'),(85,0,'2016-06-23','Good Login'),(86,0,'2016-06-24','Good Login'),(87,0,'2016-06-25','Good Login'),(88,0,'2016-06-25','Good Login'),(89,0,'2016-06-25','Good Login'),(90,0,'2016-06-25','Good Login'),(91,0,'2016-06-26','Good Login'),(92,0,'2016-06-26','Good Login'),(93,0,'2016-06-27','Good Login'),(94,0,'2016-06-28','Good Login'),(95,0,'2016-06-28','Good Login'),(96,0,'2016-06-28','Good Login'),(97,0,'2016-07-02','Good Login'),(98,0,'2016-07-02','Good Login'),(99,0,'2016-07-02','Good Login'),(100,0,'2016-07-02','Good Login'),(101,0,'2016-07-02','Good Login'),(102,0,'2016-07-02','Good Login'),(103,0,'2016-07-03','Good Login'),(104,0,'2016-07-03','Good Login'),(105,0,'2016-07-03','Good Login'),(106,0,'2016-07-09','Good Login'),(107,0,'2016-07-09','Good Login'),(108,0,'2016-07-09','Good Login'),(109,0,'2016-07-10','Good Login'),(110,0,'2016-07-10','Good Login'),(111,0,'2016-07-10','Good Login'),(112,0,'2016-07-10','Good Login'),(113,0,'2016-07-10','Good Login'),(114,0,'2016-07-10','Good Login'),(115,0,'2016-07-10','Good Login'),(116,0,'2016-07-10','Good Login'),(117,0,'2016-07-13','Good Login'),(118,0,'2016-07-13','Good Login'),(119,0,'2016-07-13','Good Login'),(120,0,'2016-07-13','Good Login'),(121,0,'2016-07-13','Good Login'),(122,0,'2016-07-13','Good Login'),(123,0,'2016-07-16','Good Login'),(124,0,'2016-07-16','Good Login'),(125,0,'2016-07-16','Good Login'),(126,0,'2016-07-17','Good Login'),(127,0,'2016-07-17','Good Login'),(128,0,'2016-07-17','Good Login'),(129,0,'2016-07-17','Good Login'),(130,0,'2016-07-17','Good Login'),(131,0,'2016-07-17','Good Login'),(132,0,'2016-07-17','Good Login'),(133,0,'2016-07-17','Good Login'),(134,0,'2016-07-17','Good Login'),(135,0,'2016-07-17','Good Login'),(136,0,'2016-07-17','Good Login'),(137,0,'2016-07-17','Good Login'),(138,0,'2016-07-17','Good Login');

/* Procedure structure for procedure `1` */

/*!50003 DROP PROCEDURE IF EXISTS  `1` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `1`(IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50), IN `_type` VARCHAR(50), IN `toteasy` INT, IN `totmed` INT, IN `totdiff` INT)
BEGIN
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered)
SELECT studid,U.id,NULL,NOW(),NULL FROM ((SELECT id FROM EXAMQUESTION WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type LIMIT toteasy) 
UNION
(SELECT id FROM EXAMQUESTION WHERE TOPICID = topid AND  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type LIMIT totmed )
UNION
(SELECT id FROM EXAMQUESTION WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type LIMIT totdiff ))
AS U;
 
INSERT  INTO `excelcia`.`testbuffer`
            (`testsessionid`,
             `datetimecreated`,
             `testtype`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `ansreceived`,
             `minutes`,
             `point`,
             `type`)
             
SELECT ss.id,NOW(),eq.`type`,eq.`topicid`,eq.`subjid`,eq.`level`,eq.`question`,eq.a,eq.b,eq.c,eq.d,eq.`a_rational`,eq.`b_rational`,eq.`c_rational`,
   eq.`d_rational`,eq.`correct_ans`,ss.`answer`,eq.`minutes`,eq.point, eq.`type` FROM studentsession ss
 INNER JOIN examquestion eq ON eq.id = ss.questionid;
 
 select * from testbuffer where studentid = studid and testsessionid = sessionid;
 
 END */$$
DELIMITER ;

/* Procedure structure for procedure `generateNewQuestions` */

/*!50003 DROP PROCEDURE IF EXISTS  `generateNewQuestions` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `generateNewQuestions`(IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50), IN `_type` INT, IN `toteasy` INT, IN `totmed` INT, IN `totdiff` INT, IN `sessiontype` INT, IN `testtypeid` INT, IN `totitems` INT)
BEGIN
   SELECT @testsessionid := IFNULL(MAX(testsessionid) + 1,1) FROM testhistory WHERE studentid = studid;
   IF (_type = 1) THEN 
   --  SELECT @ttesttypetbl := 'qposttest' FROM testhistory;  
    INSERT  INTO `excelcia`.`testbuffer`
            (`testsessionid`,
             `datetimecreated`,
             `testtype`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `ansreceived`,
             `minutes`,
             `point`,
             `type`,
             `datetimeanswered`)
             
 SELECT studid,@testsessionid,NOW(),_type,qt.topicid,qt.subjid,qt.level,qt.question,qt.a,qt.b,qt.c,qt.d,qt.a_rational,qt.b_rational,qt.c_rational,qt.c_rational,qt.correct_ans,
 NULL,qt.minutes,qt.point,qt.type,NULL FROM qposttest qt;
  
    ELSEIF (_type = 2) THEN
   --  SELECT @ttesttypetbl := 'qpretest' FROM testhistory;    
     INSERT  INTO `excelcia`.`testbuffer`
            (`testsessionid`,
             `datetimecreated`,
             `testtype`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `ansreceived`,
             `minutes`,
             `point`,
             `type`,
             `datetimeanswered`)
             
 SELECT studid,@testsessionid,NOW(),_type,qt.topicid,qt.subjid,qt.level,qt.question,qt.a,qt.b,qt.c,qt.d,qt.a_rational,qt.b_rational,qt.c_rational,qt.c_rational,qt.correct_ans,
 NULL,qt.minutes,qt.point,qt.type,NULL FROM qpretest qt;
    ELSEIF (_type = 3) THEN
   --  SELECT @ttesttypetbl := 'qshortquiz' FROM testhistory;
    INSERT  INTO `excelcia`.`testbuffer`
            (`testsessionid`,
             `datetimecreated`,
             `testtype`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `ansreceived`,
             `minutes`,
             `point`,
             `type`,
             `datetimeanswered`)
             
 SELECT studid,@testsessionid,NOW(),_type,qt.topicid,qt.subjid,qt.level,qt.question,qt.a,qt.b,qt.c,qt.d,qt.a_rational,qt.b_rational,qt.c_rational,qt.c_rational,qt.correct_ans,
 NULL,qt.minutes,qt.point,qt.type,NULL FROM qshortquiz qt;
    ELSEIF (_type = 4) THEN
   --  SELECT @ttesttypetbl := 'qlongquiz' FROM testhistory;
     INSERT  INTO `excelcia`.`testbuffer`
            (`testsessionid`,
             `datetimecreated`,
             `testtype`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `ansreceived`,
             `minutes`,
             `point`,
             `type`,
             `datetimeanswered`)
             
 SELECT studid,@testsessionid,NOW(),_type,qt.topicid,qt.subjid,qt.level,qt.question,qt.a,qt.b,qt.c,qt.d,qt.a_rational,qt.b_rational,qt.c_rational,qt.c_rational,qt.correct_ans,
 NULL,qt.minutes,qt.point,qt.type,NULL FROM qlongquiz qt;
   ELSE
  --   SELECT @ttesttypetbl := 'qmajorexam' FROM testhistory;
     INSERT  INTO `excelcia`.`testbuffer`
            (`testsessionid`,
             `datetimecreated`,
             `testtype`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `ansreceived`,
             `minutes`,
             `point`,
             `type`,
             `datetimeanswered`)
             
 SELECT studid,@testsessionid,NOW(),_type,qt.topicid,qt.subjid,qt.level,qt.question,qt.a,qt.b,qt.c,qt.d,qt.a_rational,qt.b_rational,qt.c_rational,qt.c_rational,qt.correct_ans,
 NULL,qt.minutes,qt.point,qt.type,NULL FROM qmajorexam qt;
   END IF;
/*if (testsessionid = 0) then
else
select @testsessionid := testsessionid;
end if;*/
 
 
 END */$$
DELIMITER ;

/* Procedure structure for procedure `getLogin` */

/*!50003 DROP PROCEDURE IF EXISTS  `getLogin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getLogin`(IN `username` VARCHAR(200), IN `pswrd` VARCHAR(200))
BEGIN
select * from personalinfo where username = lcase(username) and password = lcase(pswrd);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getReviewtopic` */

/*!50003 DROP PROCEDURE IF EXISTS  `getReviewtopic` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getReviewtopic`()
BEGIN
select id,topicname,description from reviewtopic ORDER BY id ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getStudyunits` */

/*!50003 DROP PROCEDURE IF EXISTS  `getStudyunits` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudyunits`()
BEGIN
select id,topicid,studyname,isparent,parentid from studyunits ;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `generateQuestions` */

/*!50003 DROP PROCEDURE IF EXISTS  `generateQuestions` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `generateQuestions`(IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50), IN `_type` INT, IN `toteasy` INT, IN `totmed` INT, IN `totdiff` INT, IN `sessiontype` INT, IN `testtypeid` INT, IN `totitems` INT)
BEGIN
SELECT @testsessionid := IFNULL(MAX(testsessionid) + 1,1) FROM testhistory WHERE studentid = studid;
SELECT @totalcount :=  count(id) FROM studentsession WHERE studentid = studid and testsessionid = @testsessionid;
if (@totalcount = totitems) then
select true from studentsession;
else
IF (_type = 1) THEN -- for pre-test questions
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qpretest WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qpretest WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qpretest WHERE  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSEIF (_type = 2) THEN -- for postt-test questions
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qposttest WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qposttest WHERE  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qposttest WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSEIF (_type = 3) THEN -- for shortquiz questions
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qshortquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qshortquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qshortquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSEIF (_type = 4) THEN
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qlongquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qlongquiz WHERE  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qlongquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSE
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qmajorexam WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qmajorexam WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM'  ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qmajorexam WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT'  ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
END IF;
end if;
/*if (testsessionid = 0) then
else
select @testsessionid := testsessionid;
end if;*/
 /*
INSERT  INTO `excelcia`.`testbuffer`
            (`testsessionid`,
             `datetimecreated`,
             `testtype`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `ansreceived`,
             `minutes`,
             `point`,
             `type`)
             
SELECT ss.id,NOW(),eq.`type`,eq.`topicid`,eq.`subjid`,eq.`level`,eq.`question`,eq.a,eq.b,eq.c,eq.d,eq.`a_rational`,eq.`b_rational`,eq.`c_rational`,
   eq.`d_rational`,eq.`correct_ans`,ss.`answer`,eq.`minutes`,eq.point, eq.`type` FROM studentsession ss
 INNER JOIN examquestion eq ON eq.id = ss.questionid
 where ss.studentid = studid; */
 
 
 END */$$
DELIMITER ;

/* Procedure structure for procedure `getSubStudyunits` */

/*!50003 DROP PROCEDURE IF EXISTS  `getSubStudyunits` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`pela`@`%` PROCEDURE `getSubStudyunits`(IN `pid` INT)
BEGIN
select id,reviewid,studyname,description,isparent,parentid from studyunits where parentid = pid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getTeachConfig` */

/*!50003 DROP PROCEDURE IF EXISTS  `getTeachConfig` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getTeachConfig`()
BEGIN
  
SELECT tc.id,tc.testtype,tc.subjid,su.studyname,rt.`topicname`,tc.`itemseasy`,tc.`itemsmoderate`,tc.`itemsdifficult`,tc.`israndom` FROM topic_config tc
INNER JOIN studyunits su ON su.id = tc.subjid
INNER JOIN reviewtopic rt ON rt.id = tc.`testtype` order by tc.testtype,tc.subjid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `generateQuestionsNonRandom` */

/*!50003 DROP PROCEDURE IF EXISTS  `generateQuestionsNonRandom` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `generateQuestionsNonRandom`(IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50), IN `_type` INT, IN `toteasy` INT, IN `totmed` INT, IN `totdiff` INT, IN `sessiontype` INT, IN `testtypeid` INT, IN `totitems` INT)
BEGIN
SELECT @testsessionid := IFNULL(MAX(testsessionid) + 1,1) FROM testhistory WHERE studentid = studid;
SELECT @totalcount :=  count(id) FROM studentsession WHERE studentid = studid and testsessionid = @testsessionid;
if (@totalcount = totitems) then
select true from studentsession;
else
IF (_type = 1) THEN -- for pre-test questions
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qpretest WHERE  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY id LIMIT toteasy) 
UNION
(SELECT questionid FROM qpretest WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY id LIMIT totmed )
UNION
(SELECT questionid FROM qpretest WHERE  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY id LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSEIF (_type = 2) THEN -- for postt-test questions
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qposttest WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY id LIMIT toteasy) 
UNION
(SELECT questionid FROM qposttest WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY id LIMIT totmed )
UNION
(SELECT questionid FROM qposttest WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY id LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSEIF (_type = 3) THEN -- for shortquiz questions
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qshortquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' ORDER BY id LIMIT toteasy) 
UNION
(SELECT questionid FROM qshortquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' ORDER BY id LIMIT totmed )
UNION
(SELECT questionid FROM qshortquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' ORDER BY id LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSEIF (_type = 4) THEN
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qlongquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' ORDER BY id LIMIT toteasy) 
UNION
(SELECT questionid FROM qlongquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' ORDER BY id LIMIT totmed )
UNION
(SELECT questionid FROM qlongquiz WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' ORDER BY id LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSE
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qmajorexam WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' ORDER BY id LIMIT toteasy) 
UNION
(SELECT questionid FROM qmajorexam WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' ORDER BY id LIMIT totmed )
UNION
(SELECT questionid FROM qmajorexam WHERE FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' ORDER BY id LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
END IF;
end if;
/*if (testsessionid = 0) then
else
select @testsessionid := testsessionid;
end if;*/
 /*
INSERT  INTO `excelcia`.`testbuffer`
            (`testsessionid`,
             `datetimecreated`,
             `testtype`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `ansreceived`,
             `minutes`,
             `point`,
             `type`)
             
SELECT ss.id,NOW(),eq.`type`,eq.`topicid`,eq.`subjid`,eq.`level`,eq.`question`,eq.a,eq.b,eq.c,eq.d,eq.`a_rational`,eq.`b_rational`,eq.`c_rational`,
   eq.`d_rational`,eq.`correct_ans`,ss.`answer`,eq.`minutes`,eq.point, eq.`type` FROM studentsession ss
 INNER JOIN examquestion eq ON eq.id = ss.questionid
 where ss.studentid = studid; */
 
 
 END */$$
DELIMITER ;

/* Procedure structure for procedure `getQuestion` */

/*!50003 DROP PROCEDURE IF EXISTS  `getQuestion` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getQuestion`(IN `sesid` INT, IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50))
BEGIN
  
  IF (topid = 1) THEN 
  SELECT * FROM qpretest eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
  ELSEIF (topid = 2) THEN
   SELECT * FROM qposttest eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
ELSEIF (topid = 3) THEN
 SELECT * FROM qshortquiz eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
ELSEIF (topid = 4) THEN
 SELECT * FROM qlongquiz eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
ELSE
 SELECT * FROM qmajorexam eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
  END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `insertIntoTestHistory` */

/*!50003 DROP PROCEDURE IF EXISTS  `insertIntoTestHistory` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `insertIntoTestHistory`(IN `studid` INT)
BEGIN
SELECT @testsessionid := IFNULL(MAX(testsessionid) + 1,1) FROM testhistory WHERE studentid = studid;
INSERT INTO testhistory
	(studentid,
	testsessionid,
	datetimecreated,
	testtype,
	topicid,
	subjid,
	LEVEL,
	question,
	a,
	b,
	c,
	d,
	a_rational,
	b_rational,
	c_rational,
	d_rational,
	correct_ans,
	ansreceived,
	minutes,
	POINT,
	TYPE)
SELECT
s.studentid,
s.`studentid`,
s.datetimecreated,
e.topicid,
e.topicid,
e.subjid,
e.level,
e.question,
e.a,
e.b,
e.c,
e.d,
e.a_rational,
e.b_rational,
e.c_rational,
e.d_rational,
e.correct_ans,
s.answer,
e.minutes,
e.point,
e.level
FROM
studentsession s, examquestion e
WHERE s.questionid =  e.id AND s.studentid = studid AND s.`testsessionid` = @testsessionid;
DELETE FROM studentsession WHERE studentid= studid AND testsessionid = @testsessionid;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `inserttoTable` */

/*!50003 DROP PROCEDURE IF EXISTS  `inserttoTable` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttoTable`(IN `id` VARCHAR(200), IN `testtypeid` INT,in subjectid int)
BEGIN
  
IF (testtypeid = 2) THEN 
   --  SELECT @ttesttypetbl := 'qposttest' FROM testhistory;  
   
  if not exists (select * FROM qposttest WHERE  subjid = subjectid) then
   select true from qposttest;
   else
    DELETE FROM qposttest WHERE subjid = subjectid;
   END IF;
   
    INSERT  INTO `excelcia`.`qposttest`
            (`questionid`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `minutes`,
             `point`,
             `type`)
             
 SELECT eq.id,eq.topicid,eq.subjid,eq.level,eq.question,eq.a,eq.b,eq.c,eq.d,eq.a_rational,eq.b_rational,eq.c_rational,eq.c_rational,eq.correct_ans,
 eq.minutes,eq.point,eq.type FROM examquestion eq WHERE FIND_IN_SET(eq.ID, id);
  
    ELSEIF (testtypeid = 1) THEN
      --  SELECT @ttesttypetbl := 'qpretest' FROM testhistory;    
     
  IF NOT EXISTS (SELECT * FROM qpretest WHERE  subjid = subjectid) THEN
  SELECT TRUE FROM qpretest;
   ELSE
   DELETE FROM qpretest WHERE subjid = subjectid;
   END IF;   
     INSERT  INTO `excelcia`.`qpretest`
            (`questionid`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `minutes`,
             `point`,
             `type`)
             
 SELECT eq.id,eq.topicid,eq.subjid,eq.level,eq.question,eq.a,eq.b,eq.c,eq.d,eq.a_rational,eq.b_rational,eq.c_rational,eq.c_rational,eq.correct_ans,
 eq.minutes,eq.point,eq.type FROM examquestion eq WHERE FIND_IN_SET(eq.ID, id);
    ELSEIF (testtypeid = 3) THEN
   --  SELECT @ttesttypetbl := 'qshortquiz' FROM testhistory;
  
 IF NOT EXISTS (SELECT * FROM qshortquiz WHERE  subjid = subjectid) THEN
  SELECT TRUE FROM qshortquiz;
   ELSE
   DELETE FROM qshortquiz WHERE subjid = subjectid;
   END IF;  
    INSERT  INTO `excelcia`.`qshortquiz`
            (`questionid`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `minutes`,
             `point`,
             `type`)
             
 SELECT eq.id,eq.topicid,eq.subjid,eq.level,eq.question,eq.a,eq.b,eq.c,eq.d,eq.a_rational,eq.b_rational,eq.c_rational,eq.c_rational,eq.correct_ans,
 eq.minutes,eq.point,eq.type FROM examquestion eq WHERE FIND_IN_SET(eq.ID, id);
    ELSEIF (testtypeid = 4) THEN
   --  SELECT @ttesttypetbl := 'qlongquiz' FROM testhistory;
 IF NOT EXISTS (SELECT * FROM qlongquiz WHERE  subjid = subjectid) THEN
  SELECT TRUE FROM qlongquiz;
   ELSE
   DELETE FROM qlongquiz WHERE subjid = subjectid;
   END IF; 
     INSERT  INTO `excelcia`.`qlongquiz`
            (`questionid`,
             `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `minutes`,
             `point`,
             `type`)
             
 SELECT eq.id,eq.topicid,eq.subjid,eq.level,eq.question,eq.a,eq.b,eq.c,eq.d,eq.a_rational,eq.b_rational,eq.c_rational,eq.c_rational,eq.correct_ans,
 eq.minutes,eq.point,eq.type FROM examquestion eq WHERE FIND_IN_SET(eq.ID, id);
   ELSE
  --   SELECT @ttesttypetbl := 'qmajorexam' FROM testhistory;
    IF NOT EXISTS (SELECT COUNT(id) FROM qmajorexam WHERE  subjid = subjectid) THEN
  SELECT TRUE FROM qmajorexam;
   ELSE
   DELETE FROM qmajorexam WHERE subjid = subjectid;
   END IF; 
     INSERT  INTO `excelcia`.`qmajorexam`
            (`questionid`,
            `topicid`,
             `subjid`,
             `level`,
             `question`,
             `a`,
             `b`,
             `c`,
             `d`,
             `a_rational`,
             `b_rational`,
             `c_rational`,
             `d_rational`,
             `correct_ans`,
             `minutes`,
             `point`,
             `type`)
             
 SELECT eq.id,eq.topicid,eq.subjid,eq.level,eq.question,eq.a,eq.b,eq.c,eq.d,eq.a_rational,eq.b_rational,eq.c_rational,eq.c_rational,eq.correct_ans,
 eq.minutes,eq.point,eq.type FROM examquestion eq WHERE FIND_IN_SET(eq.ID, id);
   END IF;
   
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
