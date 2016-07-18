/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : excelcia

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-07-16 23:43:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `examquestion`
-- ----------------------------
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
  CONSTRAINT `examquestion_ibfk_1` FOREIGN KEY (`topicid`) REFERENCES `reviewtopic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of examquestion
-- ----------------------------
INSERT INTO `examquestion` VALUES ('1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', '2', '1', '1');
INSERT INTO `examquestion` VALUES ('2', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('3', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('4', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('5', '1', '4', 'EASY', 'he developed colossus.', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'd', '2', '1', '1');
INSERT INTO `examquestion` VALUES ('6', '1', '4', 'EASY', 'dr. artificial intelligent / robotics, that got a microhip implant, w/c intends to remotely control a robotic arm', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'c', '2', '1', '1');
INSERT INTO `examquestion` VALUES ('7', '1', '5', 'EASY', 'would be use to destroy computer/AI', 'a.) Electro-Magnetic-Interference', 'b.) Electro-Magnetic-Pulse', 'c.) Nuclear bom', 'd.) both A & B', 'a.) Electro-Magnetic-Interference', 'b.) Electro-Magnetic-Pulse', 'c.) Nuclear bom', 'd.) both A & B', 'd', '2', '1', '1');
INSERT INTO `examquestion` VALUES ('8', '1', '5', 'EASY', 'composed of electronic valves and wires (a machine that is as big enough to occupy the entire building floor)', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'c', '2', '1', '1');
INSERT INTO `examquestion` VALUES ('9', '1', '5', 'EASY', 'miniturized electronic component (a complex electronic part composed of several thousand of colossus circuits)', 'a.) integrated circuits', 'b.) silicon chips', 'c.) microchips', 'd.) all of the above', 'a.) integrated circuits', 'b.) silicon chips', 'c.) microchips', 'd.) all of the above', 'd', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('10', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('11', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('12', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('13', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('14', '1', '4', 'MEDIUM', 'smallest unit of measurement use to measure; capacity to hold information or data, capacity to process, and etc.', 'a.) byte', 'b.) bit', 'c.) kilobyte', 'd. all of the above', 'a.) byte', 'b.) bit', 'c.) kilobyte', 'd. all of the above', 'b', '3', '1', '1');
INSERT INTO `examquestion` VALUES ('15', '1', '4', 'MEDIUM', 'if I have 3bytes how many characters do I have?', 'a.) 18', 'b.) 24', 'c.) 36', 'd.) none of the above', 'a.) 18', 'b.) 24', 'c.) 36', 'd.) none of the above', 'd', '3', '1', '1');
INSERT INTO `examquestion` VALUES ('16', '1', '5', 'MEDIUM', 'volatile memory of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'a', '3', '1', '1');
INSERT INTO `examquestion` VALUES ('17', '1', '5', 'MEDIUM', 'a memory type used to hold the configuration/settings of the computer (including system date & time)', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'b', '4', '1', '1');
INSERT INTO `examquestion` VALUES ('18', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', '4', '1', '1');
INSERT INTO `examquestion` VALUES ('19', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('20', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('21', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('22', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('23', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '2', '1', '1');
INSERT INTO `examquestion` VALUES ('24', '2', '4', 'DIFFICULT', 'RFID tag reader is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('25', '2', '4', 'DIFFICULT', 'printer is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('26', '2', '5', 'DIFFICULT', 'momentary storage of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'a', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('27', '1', '5', 'DIFFICULT', 'the particular computer memory which contains the configuration/settings of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) both b & c', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) both b & c', 'd', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('28', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('29', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('30', '2', '7', 'DIFFICULT', 'raw facts, events or happening. this is processed in order to provide an information', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('31', '2', '7', 'DIFFICULT', 'a collection of facts organized in such a way that they have additional value beyond the facts themselves.', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('32', '2', '7', 'DIFFICULT', 'typically considered to be a set of interrelated elements or components that collect (input), manipulate(processes), and dissiminate(output) and information and provide a feedback mechanism to meet an objective.', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'c', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('33', '2', '7', 'DIFFICULT', 'provides information and supports needed for effective decision making by managers', 'a.) MIS', 'b.) DSS', 'c.) ES', 'd.) none of the above', 'a.) MIS', 'b.) DSS', 'c.) ES', 'd.) none of the above', 'd', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('34', '2', '8', 'DIFFICULT', 'automate office procedures and enhance office communications and productivity', 'a.) MIS', 'b.) DSS', 'c.) ES', 'd.) none of the above', 'a.) MIS', 'b.) DSS', 'c.) ES', 'd.) none of the above', 'd', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('35', '2', '8', 'DIFFICULT', 'Provide critical information tailored to the information needs of executives.', 'a.) MIS', 'b.) DSS', 'c.) ESS', 'd.) none of the above', 'a.) MIS', 'b.) DSS', 'c.) ESS', 'd.) none of the above', 'c', '4', '1', '2');
INSERT INTO `examquestion` VALUES ('36', '2', '8', 'DIFFICULT', 'a SAD model of development that is linear and sequential.', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'd.) none of the above', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'd.) none of the above', 'c', '4', '1', '2');
INSERT INTO `examquestion` VALUES ('37', '2', '8', 'EASY', 'is a time boxed, iteractive approach to software development that builds software incrementally from the start of the project, instead of trying to deliver it all at once near the end.', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'd.) none of the above', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'd.) none of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('38', '2', '8', 'EASY', 'A shared collection of logically related data designed to meet the information needs of multiple users in organization.', 'a.) database', 'b.) document', 'c.) information', 'd.) none of the above', 'a.) database', 'b.) document', 'c.) information', 'd.) none of the above', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('39', '2', '7', 'EASY', 'are computerized information systems that were developed to process large amounts of data for routine business transaction.', 'a.) ESS', 'b.) TPS', 'c.) MIS', 'd.) none of the above', 'a.) ESS', 'b.) TPS', 'c.) MIS', 'd.) none of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('40', '2', '7', 'EASY', 'the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.', 'a.) programmer', 'b.) encoder', 'c.) system analyst', 'd.) none of the above', 'a.) programmer', 'b.) encoder', 'c.) system analyst', 'd.) none of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('41', '2', '7', 'EASY', 'Organized collection of people, procedures, software, databases, and devices used to record completed business transactions', 'a.) ESS', 'b.) MIS', 'c.) TPS', 'd.) none of the above', 'a.) ESS', 'b.) MIS', 'c.) TPS', 'd.) none of the above', 'd', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('42', '2', '7', 'EASY', 'Computer system takes on characteristics of human intelligence', 'a.) DSS', 'b.) MIS', 'c.) TPS', 'd.) all of the above', 'a.) DSS', 'b.) MIS', 'c.) TPS', 'd.) all of the above', 'd', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('43', '2', '7', 'EASY', 'a graphical representation of the \"flow\" of data through an information system, modelling its process aspects.', 'a.) System Flow', 'b.) Data Flow Diagram', 'c.) System Flowchart', 'd.) none of the above', 'a.) System Flow', 'b.) Data Flow Diagram', 'c.) System Flowchart', 'd.) none of the above', 'b', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('44', '2', '7', 'EASY', 'symbol used to represent data that the system stores.', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'd.) None of the above', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'd.) None of the above', 'd', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('45', '2', '8', 'EASY', 'performs some action on data, such as creates, modifies, stores, delete, etc. (either manual or supported by a computer)', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'd.) None of the above', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'd.) None of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('46', '2', '8', 'EASY', 'a type of computer network which intends to connect one town to another town of a different region.', 'a.) LAN', 'b.) MAN', 'c.) WAN', 'd.) none of the above', 'a.) LAN', 'b.) MAN', 'c.) WAN', 'd.) none of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('47', '2', '8', 'MEDIUM', 'a computer program created intentionally to disrupt the normal operation of a computer', 'a.) System', 'b.) information System', 'c.) Virus', 'd.) none of the above', 'a.) System', 'b.) information System', 'c.) Virus', 'd.) none of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('48', '2', '8', 'MEDIUM', 'a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.', 'a.) system programming', 'b.) system designing', 'c.) system planning', 'd.) system analysis', 'a.) system programming', 'b.) system designing', 'c.) system planning', 'd.) system analysis', 'd', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('49', '2', '7', 'MEDIUM', 'a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.', 'a.) SDLC', 'b.) Waterfall', 'c.) Agile', 'd.) SCRUM', 'a.) SDLC', 'b.) Waterfall', 'c.) Agile', 'd.) SCRUM', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('50', '2', '7', 'MEDIUM', 'a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them', 'a.) Information', 'b.) Data dictionary', 'c.) Data Processing', 'd.) none of the above', 'a.) Information', 'b.) Data dictionary', 'c.) Data Processing', 'd.) none of the above', 'b', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('51', '2', '7', 'MEDIUM', 'which is none element of a complete computer system', 'a.) people ware', 'b.) Hardware', 'c.) Anti Virus', 'd.) none of the above', 'a.) people ware', 'b.) Hardware', 'c.) Anti Virus', 'd.) none of the above', 'c', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('52', '2', '7', 'MEDIUM', 'none basic hardware element', 'a.) external hard drive or flash drive', 'b.) Monitor/Display', 'c.) CPU / Central Processing Unit', 'd.) none of the above', 'a.) external hard drive or flash drive', 'b.) Monitor/Display', 'c.) CPU / Central Processing Unit', 'd.) none of the above', 'a', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('53', '2', '7', 'MEDIUM', 'it is an electronic device that uses stored data and instruction to generate information', 'a.) calculator', 'b.) smartphone', 'c.) computer', 'd.) all of the above', 'a.) calculator', 'b.) smartphone', 'c.) computer', 'd.) all of the above', 'c', '4', '1', '2');
INSERT INTO `examquestion` VALUES ('54', '2', '7', 'MEDIUM', 'it refers to processed data', 'a.) input', 'b.) output', 'c.) data', 'd.) none of the above', 'a.) input', 'b.) output', 'c.) data', 'd.) none of the above', 'd', '4', '1', '2');
INSERT INTO `examquestion` VALUES ('55', '2', '7', 'MEDIUM', 'it is the unprocessed facts', 'a.) input', 'b.) output', 'c.) data', 'd.) none of the above', 'a.) input', 'b.) output', 'c.) data', 'd.) none of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('56', '2', '8', 'MEDIUM', 'an electronic machine that has memory and can manipulate data and it has arithmetic and logic function', 'a.) calculator', 'b.) smartphone', 'c.) computer ', 'd.) all of the above', 'a.) calculator', 'b.) smartphone', 'c.) computer ', 'd.) all of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('57', '2', '8', 'MEDIUM', 'a computing device popularized by chinese as their early calculator', 'a.) abacus', 'b.) smartphone', 'c.) napiers bone', 'd.) none of the above', 'a.) abacus', 'b.) smartphone', 'c.) napiers bone', 'd.) none of the above', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('58', '2', '8', 'EASY', 'basic components of computer system', 'a.) monitor / keyboard / cpu', 'b.) monitor / keyboard / cpu / mouse / avr', 'c.) monitor / keyboard / cpu / webcam / speaker / avr', 'd.) none of the above', 'a.) monitor / keyboard / cpu', 'b.) monitor / keyboard / cpu / mouse / avr', 'c.) monitor / keyboard / cpu / webcam / speaker / avr', 'd.) none of the above', 'd', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('59', '2', '8', 'EASY', 'basic computer hardware components', 'a.) monitor / keyboard / cpu', 'b.) monitor / keyboard / cpu / mouse / avr', 'c.) monitor / keyboard / cpu / webcam / speakers', 'd.) none of the above', 'a.) monitor / keyboard / cpu', 'b.) monitor / keyboard / cpu / mouse / avr', 'c.) monitor / keyboard / cpu / webcam / speakers', 'd.) none of the above', 'a', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('60', '2', '8', 'EASY', 'this refers to the physical components of the computer', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) none of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) none of the above', 'c', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('61', '2', '8', 'MEDIUM', 'this is considered to be the brain of a computer', 'a.) input/output device', 'b.) internal storage', 'c.) processor', 'd.) none of the above', 'a.) input/output device', 'b.) internal storage', 'c.) processor', 'd.) none of the above', 'c', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('62', '2', '8', 'MEDIUM', 'nonvolatile memory of a computer', 'a.) Read Only Memory (ROM)', 'b.) Random Access Memory (RAM)', 'c.) both A & B', 'd.) none of the above', 'a.) Read Only Memory (ROM)', 'b.) Random Access Memory (RAM)', 'c.) both A & B', 'd.) none of the above', 'a', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('63', '2', '8', 'MEDIUM', 'this is known to be the device which can accept instructions from computer user', 'a.) input device', 'b.) output device', 'c.) both A & B', 'd.) none of the above', 'a.) input device', 'b.) output device', 'c.) both A & B', 'd.) none of the above', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('64', '2', '7', 'MEDIUM', 'this is known to return data, that is, information back to the user', 'a.) input device', 'b.) output device', 'c.) both A & B', 'd.) none of the above', 'a.) input device', 'b.) output device', 'c.) both A & B', 'd.) none of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('65', '1', '4', '5', 'this is known to be an optical storage which can hold 600MB to 720MB of data', 'a.) CD Disc', 'b.) DVD Disc', 'c.) Bluray', 'd.) none of the above', 'a.) CD Disc', 'b.) DVD Disc', 'c.) Bluray', 'd.) none of the above', 'a', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('66', '1', '5', '1', 'this refers to the set of instructions written in code that computers can understand and executed', 'a.) System', 'b.) software', 'c.) programs', 'd.) none / all of the above', 'a.) System', 'b.) software', 'c.) programs', 'd.) none / all of the above', 'b', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('67', '1', '2', 'DIFFICULT', 'a software which contains programs that perform task needed for computer hardware to function efficiently. ', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('68', '1', '2', 'EASY', 'a software that is used to govern the proper operation of a computer', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', '3', '1', '1');
INSERT INTO `examquestion` VALUES ('69', '1', '3', '4', 'refers to any person involve in the software development and maintenance of the hardware', 'a.) hardware', 'b.) software', 'c.) peopleware', 'd.) none / all of the above', 'a.) hardware', 'b.) software', 'c.) peopleware', 'd.) none / all of the above', 'c', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('70', '1', '3', '5', 'is an interrelated set of components that function together to achieve an outcome', 'a.) program', 'b.) system', 'c.) module', 'd.) none of the above', 'a.) program', 'b.) system', 'c.) module', 'd.) none of the above', 'b', '3', '1', '2');

-- ----------------------------
-- Table structure for `examresulthistory`
-- ----------------------------
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

-- ----------------------------
-- Records of examresulthistory
-- ----------------------------

-- ----------------------------
-- Table structure for `personalinfo`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personalinfo
-- ----------------------------
INSERT INTO `personalinfo` VALUES ('1', 'dean', 'salangsang', 'alan', 'taytay', '123', 'email@ko.com', 'alan', 'alan', 'student', '0', '::1', '2016-07-16 20:04:30');
INSERT INTO `personalinfo` VALUES ('2', 'manalastas', 'edd', 'edd', 'angono', '321', 'email@edd.com', 'edd', 'edd', 'admin', '1', '::1', '2016-07-16 23:07:42');
INSERT INTO `personalinfo` VALUES ('3', 'pep', 'pep', 'pep', 'pep', 'pep', 'pep@pep.com', 'pep', 'pep', 'student', '0', '::1', '2016-07-16 23:07:38');
INSERT INTO `personalinfo` VALUES ('4', 'llagas', 'gatela', 'louie', 'binangonan', '1234', 'louie@lou.com', 'louie', 'louie', 'student', '0', '::1', '2016-07-13 01:11:59');

-- ----------------------------
-- Table structure for `qlongquiz`
-- ----------------------------
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

-- ----------------------------
-- Records of qlongquiz
-- ----------------------------

-- ----------------------------
-- Table structure for `qmajorexam`
-- ----------------------------
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

-- ----------------------------
-- Records of qmajorexam
-- ----------------------------

-- ----------------------------
-- Table structure for `qposttest`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of qposttest
-- ----------------------------
INSERT INTO `qposttest` VALUES ('1', '24', '2', '4', 'DIFFICULT', 'RFID tag reader is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'c.) input & output', 'a', '2', '1', '2');
INSERT INTO `qposttest` VALUES ('2', '25', '2', '4', 'DIFFICULT', 'printer is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'c.) input & output', 'b', '2', '1', '2');
INSERT INTO `qposttest` VALUES ('3', '26', '2', '5', 'DIFFICULT', 'momentary storage of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'c.) BIOS', 'a', '2', '1', '2');
INSERT INTO `qposttest` VALUES ('4', '30', '2', '7', 'DIFFICULT', 'raw facts, events or happening. this is processed in order to provide an information', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a.) data', 'b.) information', 'c.) IS', 'c.) IS', 'a', '1', '1', '2');
INSERT INTO `qposttest` VALUES ('5', '31', '2', '7', 'DIFFICULT', 'a collection of facts organized in such a way that they have additional value beyond the facts themselves.', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a.) data', 'b.) information', 'c.) IS', 'c.) IS', 'b', '1', '1', '2');
INSERT INTO `qposttest` VALUES ('6', '32', '2', '7', 'DIFFICULT', 'typically considered to be a set of interrelated elements or components that collect (input), manipulate(processes), and dissiminate(output) and information and provide a feedback mechanism to meet an objective.', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a.) data', 'b.) information', 'c.) IS', 'c.) IS', 'c', '3', '1', '2');
INSERT INTO `qposttest` VALUES ('7', '37', '2', '8', 'EASY', 'is a time boxed, iteractive approach to software development that builds software incrementally from the start of the project, instead of trying to deliver it all at once near the end.', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'd.) none of the above', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'c.) WaterFall', 'b', '1', '1', '2');
INSERT INTO `qposttest` VALUES ('8', '38', '2', '8', 'EASY', 'A shared collection of logically related data designed to meet the information needs of multiple users in organization.', 'a.) database', 'b.) document', 'c.) information', 'd.) none of the above', 'a.) database', 'b.) document', 'c.) information', 'c.) information', 'a', '1', '1', '2');
INSERT INTO `qposttest` VALUES ('9', '39', '2', '7', 'EASY', 'are computerized information systems that were developed to process large amounts of data for routine business transaction.', 'a.) ESS', 'b.) TPS', 'c.) MIS', 'd.) none of the above', 'a.) ESS', 'b.) TPS', 'c.) MIS', 'c.) MIS', 'b', '1', '1', '2');
INSERT INTO `qposttest` VALUES ('10', '40', '2', '7', 'EASY', 'the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.', 'a.) programmer', 'b.) encoder', 'c.) system analyst', 'd.) none of the above', 'a.) programmer', 'b.) encoder', 'c.) system analyst', 'c.) system analyst', 'c', '1', '1', '2');
INSERT INTO `qposttest` VALUES ('11', '41', '2', '7', 'EASY', 'Organized collection of people, procedures, software, databases, and devices used to record completed business transactions', 'a.) ESS', 'b.) MIS', 'c.) TPS', 'd.) none of the above', 'a.) ESS', 'b.) MIS', 'c.) TPS', 'c.) TPS', 'd', '2', '1', '2');
INSERT INTO `qposttest` VALUES ('12', '44', '2', '7', 'EASY', 'symbol used to represent data that the system stores.', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'd.) None of the above', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'c.) Data Flow', 'd', '2', '1', '2');
INSERT INTO `qposttest` VALUES ('13', '47', '2', '8', 'MEDIUM', 'a computer program created intentionally to disrupt the normal operation of a computer', 'a.) System', 'b.) information System', 'c.) Virus', 'd.) none of the above', 'a.) System', 'b.) information System', 'c.) Virus', 'c.) Virus', 'c', '1', '1', '2');
INSERT INTO `qposttest` VALUES ('14', '48', '2', '8', 'MEDIUM', 'a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.', 'a.) system programming', 'b.) system designing', 'c.) system planning', 'd.) system analysis', 'a.) system programming', 'b.) system designing', 'c.) system planning', 'c.) system planning', 'd', '1', '1', '2');
INSERT INTO `qposttest` VALUES ('15', '49', '2', '7', 'MEDIUM', 'a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.', 'a.) SDLC', 'b.) Waterfall', 'c.) Agile', 'd.) SCRUM', 'a.) SDLC', 'b.) Waterfall', 'c.) Agile', 'c.) Agile', 'a', '1', '1', '2');
INSERT INTO `qposttest` VALUES ('16', '50', '2', '7', 'MEDIUM', 'a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them', 'a.) Information', 'b.) Data dictionary', 'c.) Data Processing', 'd.) none of the above', 'a.) Information', 'b.) Data dictionary', 'c.) Data Processing', 'c.) Data Processing', 'b', '3', '1', '2');
INSERT INTO `qposttest` VALUES ('17', '51', '2', '7', 'MEDIUM', 'which is none element of a complete computer system', 'a.) people ware', 'b.) Hardware', 'c.) Anti Virus', 'd.) none of the above', 'a.) people ware', 'b.) Hardware', 'c.) Anti Virus', 'c.) Anti Virus', 'c', '3', '1', '2');
INSERT INTO `qposttest` VALUES ('18', '52', '2', '7', 'MEDIUM', 'none basic hardware element', 'a.) external hard drive or flash drive', 'b.) Monitor/Display', 'c.) CPU / Central Processing Unit', 'd.) none of the above', 'a.) external hard drive or flash drive', 'b.) Monitor/Display', 'c.) CPU / Central Processing Unit', 'c.) CPU / Central Processing Unit', 'a', '3', '1', '2');
INSERT INTO `qposttest` VALUES ('19', '53', '2', '7', 'MEDIUM', 'it is an electronic device that uses stored data and instruction to generate information', 'a.) calculator', 'b.) smartphone', 'c.) computer', 'd.) all of the above', 'a.) calculator', 'b.) smartphone', 'c.) computer', 'c.) computer', 'c', '4', '1', '2');
INSERT INTO `qposttest` VALUES ('20', '54', '2', '7', 'MEDIUM', 'it refers to processed data', 'a.) input', 'b.) output', 'c.) data', 'd.) none of the above', 'a.) input', 'b.) output', 'c.) data', 'c.) data', 'd', '4', '1', '2');

-- ----------------------------
-- Table structure for `qpretest`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of qpretest
-- ----------------------------
INSERT INTO `qpretest` VALUES ('123', '3', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'c.) Kevin Warwick', 'a', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('124', '12', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'c.) hardware', 'b', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('125', '22', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'c.) input & output', 'a', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('126', '23', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'c.) input & output', 'b', '2', '1', '1');
INSERT INTO `qpretest` VALUES ('127', '29', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'c.) BIOS', 'c', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('130', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'c.) Computer', 'c', '2', '1', '1');
INSERT INTO `qpretest` VALUES ('131', '2', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'c', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('132', '10', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'c.) Colossus', 'd', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('133', '11', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'c.) hardware', 'c', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('134', '18', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'c.) machine instructions', 'a', '4', '1', '1');
INSERT INTO `qpretest` VALUES ('135', '19', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'c.) machine instructions', 'b', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('136', '20', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'c.) 2', 'c', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('137', '21', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'c.) input & output', 'a', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('138', '67', '1', '2', 'DIFFICULT', 'a software which contains programs that perform task needed for computer hardware to function efficiently. ', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'c.) IOS', 'a', '1', '1', '1');
INSERT INTO `qpretest` VALUES ('139', '68', '1', '2', 'EASY', 'a software that is used to govern the proper operation of a computer', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'c.) IOS', 'a', '3', '1', '1');

-- ----------------------------
-- Table structure for `qshortquiz`
-- ----------------------------
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

-- ----------------------------
-- Records of qshortquiz
-- ----------------------------

-- ----------------------------
-- Table structure for `reviewmaterials`
-- ----------------------------
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

-- ----------------------------
-- Records of reviewmaterials
-- ----------------------------

-- ----------------------------
-- Table structure for `reviewresult`
-- ----------------------------
DROP TABLE IF EXISTS `reviewresult`;
CREATE TABLE `reviewresult` (
  `id` int(11) DEFAULT NULL,
  `reviewid` int(11) DEFAULT NULL,
  `rating` decimal(18,2) DEFAULT NULL,
  `datetimestarted` datetime DEFAULT NULL,
  `datetimeend` datetime DEFAULT NULL,
  `examresultlogid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reviewresult
-- ----------------------------

-- ----------------------------
-- Table structure for `reviewsession`
-- ----------------------------
DROP TABLE IF EXISTS `reviewsession`;
CREATE TABLE `reviewsession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionName` varchar(200) NOT NULL,
  `decription` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reviewsession
-- ----------------------------

-- ----------------------------
-- Table structure for `reviewtopic`
-- ----------------------------
DROP TABLE IF EXISTS `reviewtopic`;
CREATE TABLE `reviewtopic` (
  `id` int(11) NOT NULL,
  `topicname` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reviewtopic
-- ----------------------------
INSERT INTO `reviewtopic` VALUES ('1', 'Pre-Test', '');
INSERT INTO `reviewtopic` VALUES ('2', 'Post-Test', '');
INSERT INTO `reviewtopic` VALUES ('3', 'Short-Quiz', '');

-- ----------------------------
-- Table structure for `studentsession`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentsession
-- ----------------------------

-- ----------------------------
-- Table structure for `studentsessionsummary`
-- ----------------------------
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

-- ----------------------------
-- Records of studentsessionsummary
-- ----------------------------

-- ----------------------------
-- Table structure for `studyunits`
-- ----------------------------
DROP TABLE IF EXISTS `studyunits`;
CREATE TABLE `studyunits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topicid` int(11) NOT NULL,
  `studyname` varchar(100) NOT NULL,
  `isparent` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topicid` (`topicid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studyunits
-- ----------------------------
INSERT INTO `studyunits` VALUES ('1', '1', 'Introduction to Accounting', '1', '0');
INSERT INTO `studyunits` VALUES ('2', '1', 'Day 1 Online Accounting', '0', '1');
INSERT INTO `studyunits` VALUES ('3', '1', 'Day 2 Describe the nature of Accounting', '0', '1');
INSERT INTO `studyunits` VALUES ('4', '1', 'Day 3 Explains the fucntion of accounting in business', '0', '1');
INSERT INTO `studyunits` VALUES ('5', '1', 'Day 4 Narrate the history/Origin of Accounting', '0', '1');
INSERT INTO `studyunits` VALUES ('6', '2', 'Branches of Accounting', '1', '0');
INSERT INTO `studyunits` VALUES ('7', '2', 'Day 5 Differentiate the branches of Accounting', '0', '6');
INSERT INTO `studyunits` VALUES ('8', '2', 'Day 6 Explain the kind/Type of service rendered in each of these branches', '0', '6');

-- ----------------------------
-- Table structure for `temp`
-- ----------------------------
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

-- ----------------------------
-- Records of temp
-- ----------------------------
INSERT INTO `temp` VALUES ('2', '1', '2016-06-17 09:39:14', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'd', '1', '1', 'EASY');
INSERT INTO `temp` VALUES ('3', '1', '2016-06-17 09:39:14', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'd', '1', '1', 'EASY');
INSERT INTO `temp` VALUES ('4', '1', '2016-06-17 09:39:14', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'd', '1', '1', 'EASY');
INSERT INTO `temp` VALUES ('5', '1', '2016-06-17 09:39:14', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'd', '1', '1', 'MEDIUM');
INSERT INTO `temp` VALUES ('6', '1', '2016-06-17 09:39:14', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'd', '1', '1', 'MEDIUM');
INSERT INTO `temp` VALUES ('7', '1', '2016-06-17 09:39:14', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'd', '1', '1', 'MEDIUM');
INSERT INTO `temp` VALUES ('8', '1', '2016-06-17 09:39:14', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'd', '1', '1', 'MEDIUM');
INSERT INTO `temp` VALUES ('9', '1', '2016-06-17 09:39:14', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `temp` VALUES ('10', '1', '2016-06-17 09:39:14', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `temp` VALUES ('11', '1', '2016-06-17 09:39:14', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'd', '1', '1', 'DIFFICULT');

-- ----------------------------
-- Table structure for `testbuffer`
-- ----------------------------
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

-- ----------------------------
-- Records of testbuffer
-- ----------------------------

-- ----------------------------
-- Table structure for `testhistory`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of testhistory
-- ----------------------------
INSERT INTO `testhistory` VALUES ('1', '1', '1', '2016-07-10 02:27:58', '2', '2', '7', 'EASY', 'Organized collection of people, procedures, software, databases, and devices used to record completed business transactions', 'a.) ESS', 'b.) MIS', 'c.) TPS', 'd.) none of the above', 'a.) ESS', 'b.) MIS', 'c.) TPS', 'd.) none of the above', 'd', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('2', '1', '1', '2016-07-10 02:27:58', '2', '2', '7', 'EASY', 'are computerized information systems that were developed to process large amounts of data for routine business transaction.', 'a.) ESS', 'b.) TPS', 'c.) MIS', 'd.) none of the above', 'a.) ESS', 'b.) TPS', 'c.) MIS', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('3', '1', '1', '2016-07-10 02:27:58', '2', '2', '7', 'EASY', 'the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.', 'a.) programmer', 'b.) encoder', 'c.) system analyst', 'd.) none of the above', 'a.) programmer', 'b.) encoder', 'c.) system analyst', 'd.) none of the above', 'c', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('4', '1', '1', '2016-07-10 02:27:58', '2', '2', '7', 'MEDIUM', 'a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them', 'a.) Information', 'b.) Data dictionary', 'c.) Data Processing', 'd.) none of the above', 'a.) Information', 'b.) Data dictionary', 'c.) Data Processing', 'd.) none of the above', 'b', 'a', '3', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('5', '1', '1', '2016-07-10 02:27:58', '2', '2', '7', 'MEDIUM', 'a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.', 'a.) SDLC', 'b.) Waterfall', 'c.) Agile', 'd.) SCRUM', 'a.) SDLC', 'b.) Waterfall', 'c.) Agile', 'd.) SCRUM', 'a', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('6', '1', '1', '2016-07-10 02:27:58', '2', '2', '8', 'MEDIUM', 'a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.', 'a.) system programming', 'b.) system designing', 'c.) system planning', 'd.) system analysis', 'a.) system programming', 'b.) system designing', 'c.) system planning', 'd.) system analysis', 'd', '', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('7', '1', '1', '2016-07-10 02:27:58', '2', '2', '4', 'DIFFICULT', 'printer is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('8', '1', '1', '2016-07-10 02:27:58', '2', '2', '5', 'DIFFICULT', 'momentary storage of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'a', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('9', '1', '1', '2016-07-10 02:27:58', '2', '2', '4', 'DIFFICULT', 'RFID tag reader is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('10', '1', '1', '2016-07-16 20:03:26', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('11', '1', '1', '2016-07-16 20:03:26', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('12', '1', '1', '2016-07-16 20:03:26', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('13', '1', '1', '2016-07-16 20:03:26', '1', '1', '2', 'DIFFICULT', 'a software which contains programs that perform task needed for computer hardware to function efficiently. ', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('14', '1', '1', '2016-07-16 20:03:26', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('17', '3', '3', '2016-07-16 20:05:05', '1', '1', '2', 'EASY', 'a software that is used to govern the proper operation of a computer', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', 'a', '3', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('18', '3', '3', '2016-07-16 20:05:05', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('19', '3', '3', '2016-07-16 20:05:05', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'c', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('20', '3', '3', '2016-07-16 20:05:05', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('21', '3', '3', '2016-07-16 20:05:05', '1', '1', '2', 'DIFFICULT', 'a software which contains programs that perform task needed for computer hardware to function efficiently. ', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('22', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('23', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'EASY', 'a software that is used to govern the proper operation of a computer', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', 'c', '3', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('24', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'd', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('25', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('26', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('27', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('28', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'b', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('29', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('30', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'DIFFICULT', 'a software which contains programs that perform task needed for computer hardware to function efficiently. ', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', 'c', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('31', '3', '3', '2016-07-16 22:55:18', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('37', '3', '3', '2016-07-16 22:57:55', '1', '1', '2', 'EASY', 'a software that is used to govern the proper operation of a computer', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', 'a', '3', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('38', '3', '3', '2016-07-16 22:57:55', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('39', '3', '3', '2016-07-16 22:57:55', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'd', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('40', '3', '3', '2016-07-16 22:57:55', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'b', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('41', '3', '3', '2016-07-16 22:57:55', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('42', '3', '3', '2016-07-16 22:57:55', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('43', '3', '3', '2016-07-16 22:57:55', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('44', '3', '3', '2016-07-16 22:57:55', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('45', '3', '3', '2016-07-16 22:57:55', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('46', '3', '3', '2016-07-16 22:57:55', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('47', '3', '3', '2016-07-16 22:57:55', '1', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'd', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('48', '3', '3', '2016-07-16 22:57:55', '1', '1', '2', 'DIFFICULT', 'a software which contains programs that perform task needed for computer hardware to function efficiently. ', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('49', '3', '3', '2016-07-16 22:57:55', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');

-- ----------------------------
-- Table structure for `topic_config`
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='topic configuration to be defined by the teacher or admin';

-- ----------------------------
-- Records of topic_config
-- ----------------------------
INSERT INTO `topic_config` VALUES ('1', '2', '1', '3', '4', '3', '0');
INSERT INTO `topic_config` VALUES ('2', '2', '2', '3', '3', '3', '0');
INSERT INTO `topic_config` VALUES ('6', '4', '1', '3', '3', '3', '0');
INSERT INTO `topic_config` VALUES ('7', '3', '1', '1', '1', '1', '0');
INSERT INTO `topic_config` VALUES ('8', '5', '1', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for `userlogs`
-- ----------------------------
DROP TABLE IF EXISTS `userlogs`;
CREATE TABLE `userlogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loguserid` int(11) NOT NULL,
  `logdate` date NOT NULL,
  `logdesc` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of userlogs
-- ----------------------------
INSERT INTO `userlogs` VALUES ('1', '0', '2016-05-28', 'Good Login');
INSERT INTO `userlogs` VALUES ('2', '0', '2016-05-28', 'Good Login');
INSERT INTO `userlogs` VALUES ('3', '0', '2016-05-28', 'Good Login');
INSERT INTO `userlogs` VALUES ('4', '2', '2016-05-29', 'Good Login');
INSERT INTO `userlogs` VALUES ('5', '2', '2016-05-29', 'Good Login');
INSERT INTO `userlogs` VALUES ('6', '0', '2016-06-01', 'Good Login');
INSERT INTO `userlogs` VALUES ('7', '0', '2016-06-11', 'Good Login');
INSERT INTO `userlogs` VALUES ('8', '0', '2016-06-11', 'Good Login');
INSERT INTO `userlogs` VALUES ('9', '0', '2016-06-17', 'Good Login');
INSERT INTO `userlogs` VALUES ('10', '0', '2016-06-17', 'Good Login');
INSERT INTO `userlogs` VALUES ('11', '0', '2016-06-17', 'Good Login');
INSERT INTO `userlogs` VALUES ('12', '0', '2016-06-19', 'Good Login');
INSERT INTO `userlogs` VALUES ('13', '0', '2016-06-19', 'Good Login');
INSERT INTO `userlogs` VALUES ('14', '0', '2016-06-19', 'Good Login');
INSERT INTO `userlogs` VALUES ('15', '0', '2016-06-19', 'Good Login');
INSERT INTO `userlogs` VALUES ('16', '0', '2016-06-20', 'Good Login');
INSERT INTO `userlogs` VALUES ('17', '0', '2016-06-20', 'Good Login');
INSERT INTO `userlogs` VALUES ('18', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('19', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('20', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('21', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('22', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('23', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('24', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('25', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('26', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('27', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('28', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('29', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('30', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('31', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('32', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('33', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('34', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('35', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('36', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('37', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('38', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('39', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('40', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('41', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('42', '0', '2016-06-21', 'Good Login');
INSERT INTO `userlogs` VALUES ('43', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('44', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('45', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('46', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('47', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('48', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('49', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('50', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('51', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('52', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('53', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('54', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('55', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('56', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('57', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('58', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('59', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('60', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('61', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('62', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('63', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('64', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('65', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('66', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('67', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('68', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('69', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('70', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('71', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('72', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('73', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('74', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('75', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('76', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('77', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('78', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('79', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('80', '0', '2016-06-22', 'Good Login');
INSERT INTO `userlogs` VALUES ('81', '0', '2016-06-23', 'Good Login');
INSERT INTO `userlogs` VALUES ('82', '0', '2016-06-23', 'Good Login');
INSERT INTO `userlogs` VALUES ('83', '0', '2016-06-23', 'Good Login');
INSERT INTO `userlogs` VALUES ('84', '0', '2016-06-23', 'Good Login');
INSERT INTO `userlogs` VALUES ('85', '0', '2016-06-23', 'Good Login');
INSERT INTO `userlogs` VALUES ('86', '0', '2016-06-24', 'Good Login');
INSERT INTO `userlogs` VALUES ('87', '0', '2016-06-25', 'Good Login');
INSERT INTO `userlogs` VALUES ('88', '0', '2016-06-25', 'Good Login');
INSERT INTO `userlogs` VALUES ('89', '0', '2016-06-25', 'Good Login');
INSERT INTO `userlogs` VALUES ('90', '0', '2016-06-25', 'Good Login');
INSERT INTO `userlogs` VALUES ('91', '0', '2016-06-26', 'Good Login');
INSERT INTO `userlogs` VALUES ('92', '0', '2016-06-26', 'Good Login');
INSERT INTO `userlogs` VALUES ('93', '0', '2016-06-27', 'Good Login');
INSERT INTO `userlogs` VALUES ('94', '0', '2016-06-28', 'Good Login');
INSERT INTO `userlogs` VALUES ('95', '0', '2016-06-28', 'Good Login');
INSERT INTO `userlogs` VALUES ('96', '0', '2016-06-28', 'Good Login');
INSERT INTO `userlogs` VALUES ('97', '0', '2016-07-02', 'Good Login');
INSERT INTO `userlogs` VALUES ('98', '0', '2016-07-02', 'Good Login');
INSERT INTO `userlogs` VALUES ('99', '0', '2016-07-02', 'Good Login');
INSERT INTO `userlogs` VALUES ('100', '0', '2016-07-02', 'Good Login');
INSERT INTO `userlogs` VALUES ('101', '0', '2016-07-02', 'Good Login');
INSERT INTO `userlogs` VALUES ('102', '0', '2016-07-02', 'Good Login');
INSERT INTO `userlogs` VALUES ('103', '0', '2016-07-03', 'Good Login');
INSERT INTO `userlogs` VALUES ('104', '0', '2016-07-03', 'Good Login');
INSERT INTO `userlogs` VALUES ('105', '0', '2016-07-03', 'Good Login');
INSERT INTO `userlogs` VALUES ('106', '0', '2016-07-09', 'Good Login');
INSERT INTO `userlogs` VALUES ('107', '0', '2016-07-09', 'Good Login');
INSERT INTO `userlogs` VALUES ('108', '0', '2016-07-09', 'Good Login');
INSERT INTO `userlogs` VALUES ('109', '0', '2016-07-10', 'Good Login');
INSERT INTO `userlogs` VALUES ('110', '0', '2016-07-10', 'Good Login');
INSERT INTO `userlogs` VALUES ('111', '0', '2016-07-10', 'Good Login');
INSERT INTO `userlogs` VALUES ('112', '0', '2016-07-10', 'Good Login');
INSERT INTO `userlogs` VALUES ('113', '0', '2016-07-10', 'Good Login');
INSERT INTO `userlogs` VALUES ('114', '0', '2016-07-10', 'Good Login');
INSERT INTO `userlogs` VALUES ('115', '0', '2016-07-10', 'Good Login');
INSERT INTO `userlogs` VALUES ('116', '0', '2016-07-10', 'Good Login');
INSERT INTO `userlogs` VALUES ('117', '0', '2016-07-13', 'Good Login');
INSERT INTO `userlogs` VALUES ('118', '0', '2016-07-13', 'Good Login');
INSERT INTO `userlogs` VALUES ('119', '0', '2016-07-13', 'Good Login');
INSERT INTO `userlogs` VALUES ('120', '0', '2016-07-13', 'Good Login');
INSERT INTO `userlogs` VALUES ('121', '0', '2016-07-13', 'Good Login');
INSERT INTO `userlogs` VALUES ('122', '0', '2016-07-13', 'Good Login');
INSERT INTO `userlogs` VALUES ('123', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('124', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('125', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('126', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('127', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('128', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('129', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('130', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('131', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('132', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('133', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('134', '0', '2016-07-16', 'Good Login');
INSERT INTO `userlogs` VALUES ('135', '0', '2016-07-16', 'Good Login');

-- ----------------------------
-- Procedure structure for `1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `1`(IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50), IN `_type` VARCHAR(50), IN `toteasy` INT, IN `totmed` INT, IN `totdiff` INT)
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
 
 END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `generateNewQuestions`
-- ----------------------------
DROP PROCEDURE IF EXISTS `generateNewQuestions`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateNewQuestions`(IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50), IN `_type` INT, IN `toteasy` INT, IN `totmed` INT, IN `totdiff` INT, IN `sessiontype` INT, IN `testtypeid` INT, IN `totitems` INT)
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
 
 
 END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `generateQuestions`
-- ----------------------------
DROP PROCEDURE IF EXISTS `generateQuestions`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateQuestions`(IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50), IN `_type` INT, IN `toteasy` INT, IN `totmed` INT, IN `totdiff` INT, IN `sessiontype` INT, IN `testtypeid` INT, IN `totitems` INT)
BEGIN
SELECT @testsessionid := IFNULL(MAX(testsessionid) + 1,1) FROM testhistory WHERE studentid = studid;
SELECT @totalcount :=  count(id) FROM studentsession WHERE studentid = studid and testsessionid = @testsessionid;
if (@totalcount = totitems) then
select true from studentsession;
else
IF (_type = 1) THEN -- for pre-test questions
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qpretest WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qpretest WHERE TOPICID = topid AND  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qpretest WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSEIF (_type = 2) THEN -- for postt-test questions
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qposttest WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qposttest WHERE TOPICID = topid AND  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qposttest WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSEIF (_type = 3) THEN -- for shortquiz questions
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qshortquiz WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qshortquiz WHERE TOPICID = topid AND  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qshortquiz WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSEIF (_type = 4) THEN
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qlongquiz WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qlongquiz WHERE TOPICID = topid AND  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qlongquiz WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.questionid NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
ELSE
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.questionid,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT questionid FROM qmajorexam WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT questionid FROM qmajorexam WHERE TOPICID = topid AND  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY RAND() LIMIT totmed )
UNION
(SELECT questionid FROM qmajorexam WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY RAND() LIMIT totdiff ))
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
 
 
 END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `getLogin`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getLogin`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLogin`(IN `username` VARCHAR(200), IN `pswrd` VARCHAR(200))
BEGIN
select * from personalinfo where username = lcase(username) and password = lcase(pswrd);
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `getQuestion`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getQuestion`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getQuestion`(IN `sesid` INT, IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50))
BEGIN
  
  IF (topid = 1) THEN 
  SELECT * FROM qpretest eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND eq.topicid = topid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
  ELSEIF (topid = 2) THEN
   SELECT * FROM qposttest eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND eq.topicid = topid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
ELSEIF (topid = 3) THEN
 SELECT * FROM qshortquiz eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND eq.topicid = topid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
ELSEIF (topid = 4) THEN
 SELECT * FROM qlongquiz eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND eq.topicid = topid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
ELSE
 SELECT * FROM qmajorexam eq INNER JOIN studentsession ss ON eq.questionid = ss.questionid 
WHERE ss.studentid = studid AND eq.topicid = topid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
  END IF;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `getReviewtopic`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getReviewtopic`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getReviewtopic`()
BEGIN
select id,topicname,description from reviewtopic ORDER BY id ASC;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `getStudyunits`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getStudyunits`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStudyunits`()
BEGIN
select id,topicid,studyname,isparent,parentid from studyunits ;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `getSubStudyunits`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getSubStudyunits`;
DELIMITER ;;
CREATE DEFINER=`pela`@`%` PROCEDURE `getSubStudyunits`(IN `pid` INT)
BEGIN
select id,reviewid,studyname,description,isparent,parentid from studyunits where parentid = pid;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `getTeachConfig`
-- ----------------------------
DROP PROCEDURE IF EXISTS `getTeachConfig`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTeachConfig`()
BEGIN
  
SELECT tc.id,tc.testtype,tc.subjid,su.studyname,rt.`topicname`,tc.`itemseasy`,tc.`itemsmoderate`,tc.`itemsdifficult`,tc.`israndom` FROM topic_config tc
INNER JOIN studyunits su ON su.id = tc.subjid
INNER JOIN reviewtopic rt ON rt.id = tc.`testtype` order by tc.testtype,tc.subjid;
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `insertIntoTestHistory`
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertIntoTestHistory`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertIntoTestHistory`(IN `studid` INT)
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
    END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `inserttoTable`
-- ----------------------------
DROP PROCEDURE IF EXISTS `inserttoTable`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inserttoTable`(IN `id` VARCHAR(200), IN `testtypeid` INT,in subjectid int)
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
   
    END
;;
DELIMITER ;