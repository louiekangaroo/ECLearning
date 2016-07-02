/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : excelcia

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-06-28 23:12:04
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
  CONSTRAINT `examquestion_ibfk_1` FOREIGN KEY (`topicid`) REFERENCES `reviewtopic` (`id`),
  CONSTRAINT `examquestion_ibfk_2` FOREIGN KEY (`subjid`) REFERENCES `studyunits` (`id`)
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
INSERT INTO `examquestion` VALUES ('30', '2', '7', '5', 'raw facts, events or happening. this is processed in order to provide an information', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('31', '2', '7', '1', 'a collection of facts organized in such a way that they have additional value beyond the facts themselves.', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('32', '2', '7', '2', 'typically considered to be a set of interrelated elements or components that collect (input), manipulate(processes), and dissiminate(output) and information and provide a feedback mechanism to meet an objective.', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'a.) data', 'b.) information', 'c.) IS', 'd.) none of the above', 'c', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('33', '2', '7', '3', 'provides information and supports needed for effective decision making by managers', 'a.) MIS', 'b.) DSS', 'c.) ES', 'd.) none of the above', 'a.) MIS', 'b.) DSS', 'c.) ES', 'd.) none of the above', 'd', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('34', '2', '8', '4', 'automate office procedures and enhance office communications and productivity', 'a.) MIS', 'b.) DSS', 'c.) ES', 'd.) none of the above', 'a.) MIS', 'b.) DSS', 'c.) ES', 'd.) none of the above', 'd', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('35', '2', '8', '5', 'Provide critical information tailored to the information needs of executives.', 'a.) MIS', 'b.) DSS', 'c.) ESS', 'd.) none of the above', 'a.) MIS', 'b.) DSS', 'c.) ESS', 'd.) none of the above', 'c', '4', '1', '2');
INSERT INTO `examquestion` VALUES ('36', '2', '8', '1', 'a SAD model of development that is linear and sequential.', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'd.) none of the above', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'd.) none of the above', 'c', '4', '1', '2');
INSERT INTO `examquestion` VALUES ('37', '2', '8', '2', 'is a time boxed, iteractive approach to software development that builds software incrementally from the start of the project, instead of trying to deliver it all at once near the end.', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'd.) none of the above', 'a.) SCRUM', 'b.) AGILE', 'c.) WaterFall', 'd.) none of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('38', '2', '8', '3', 'A shared collection of logically related data designed to meet the information needs of multiple users in organization.', 'a.) database', 'b.) document', 'c.) information', 'd.) none of the above', 'a.) database', 'b.) document', 'c.) information', 'd.) none of the above', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('39', '2', '7', '4', 'are computerized information systems that were developed to process large amounts of data for routine business transaction.', 'a.) ESS', 'b.) TPS', 'c.) MIS', 'd.) none of the above', 'a.) ESS', 'b.) TPS', 'c.) MIS', 'd.) none of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('40', '2', '7', '5', 'the one who studies the problems and needs of an organization to determine how people, data, processes, communications, and information technology can best accomplish improvements for the business.', 'a.) programmer', 'b.) encoder', 'c.) system analyst', 'd.) none of the above', 'a.) programmer', 'b.) encoder', 'c.) system analyst', 'd.) none of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('41', '2', '7', '1', 'Organized collection of people, procedures, software, databases, and devices used to record completed business transactions', 'a.) ESS', 'b.) MIS', 'c.) TPS', 'd.) none of the above', 'a.) ESS', 'b.) MIS', 'c.) TPS', 'd.) none of the above', 'd', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('42', '2', '7', '2', 'Computer system takes on characteristics of human intelligence', 'a.) DSS', 'b.) MIS', 'c.) TPS', 'd.) all of the above', 'a.) DSS', 'b.) MIS', 'c.) TPS', 'd.) all of the above', 'd', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('43', '2', '7', '3', 'a graphical representation of the \"flow\" of data through an information system, modelling its process aspects.', 'a.) System Flow', 'b.) Data Flow Diagram', 'c.) System Flowchart', 'd.) none of the above', 'a.) System Flow', 'b.) Data Flow Diagram', 'c.) System Flowchart', 'd.) none of the above', 'b', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('44', '2', '7', '4', 'symbol used to represent data that the system stores.', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'd.) None of the above', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'd.) None of the above', 'd', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('45', '2', '8', '5', 'performs some action on data, such as creates, modifies, stores, delete, etc. (either manual or supported by a computer)', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'd.) None of the above', 'a.) Process', 'b.) External Entity', 'c.) Data Flow', 'd.) None of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('46', '2', '8', '1', 'a type of computer network which intends to connect one town to another town of a different region.', 'a.) LAN', 'b.) MAN', 'c.) WAN', 'd.) none of the above', 'a.) LAN', 'b.) MAN', 'c.) WAN', 'd.) none of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('47', '2', '8', '2', 'a computer program created intentionally to disrupt the normal operation of a computer', 'a.) System', 'b.) information System', 'c.) Virus', 'd.) none of the above', 'a.) System', 'b.) information System', 'c.) Virus', 'd.) none of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('48', '2', '8', '3', 'a problem solving technique that decomposes a system into its component pieces for the purpose of the studying how well those component parts work and interact to accomplish their purpose.', 'a.) system programming', 'b.) system designing', 'c.) system planning', 'd.) system analysis', 'a.) system programming', 'b.) system designing', 'c.) system planning', 'd.) system analysis', 'd', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('49', '2', '7', '4', 'a conceptual model used in project management that describes the stages involved in an information system development project, from an initial feasibility study through maintenance of the completed application.', 'a.) SDLC', 'b.) Waterfall', 'c.) Agile', 'd.) SCRUM', 'a.) SDLC', 'b.) Waterfall', 'c.) Agile', 'd.) SCRUM', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('50', '2', '7', '5', 'a collection of descriptions of the data objects or items in a data model for the benefit of programmers and others who need to refer to them', 'a.) Information', 'b.) Data dictionary', 'c.) Data Processing', 'd.) none of the above', 'a.) Information', 'b.) Data dictionary', 'c.) Data Processing', 'd.) none of the above', 'b', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('51', '2', '7', '1', 'which is none element of a complete computer system', 'a.) people ware', 'b.) Hardware', 'c.) Anti Virus', 'd.) none of the above', 'a.) people ware', 'b.) Hardware', 'c.) Anti Virus', 'd.) none of the above', 'c', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('52', '2', '7', '2', 'none basic hardware element', 'a.) external hard drive or flash drive', 'b.) Monitor/Display', 'c.) CPU / Central Processing Unit', 'd.) none of the above', 'a.) external hard drive or flash drive', 'b.) Monitor/Display', 'c.) CPU / Central Processing Unit', 'd.) none of the above', 'a', '3', '1', '2');
INSERT INTO `examquestion` VALUES ('53', '2', '7', '3', 'it is an electronic device that uses stored data and instruction to generate information', 'a.) calculator', 'b.) smartphone', 'c.) computer', 'd.) all of the above', 'a.) calculator', 'b.) smartphone', 'c.) computer', 'd.) all of the above', 'c', '4', '1', '2');
INSERT INTO `examquestion` VALUES ('54', '2', '7', '4', 'it refers to processed data', 'a.) input', 'b.) output', 'c.) data', 'd.) none of the above', 'a.) input', 'b.) output', 'c.) data', 'd.) none of the above', 'd', '4', '1', '2');
INSERT INTO `examquestion` VALUES ('55', '2', '7', '5', 'it is the unprocessed facts', 'a.) input', 'b.) output', 'c.) data', 'd.) none of the above', 'a.) input', 'b.) output', 'c.) data', 'd.) none of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('56', '2', '8', '1', 'an electronic machine that has memory and can manipulate data and it has arithmetic and logic function', 'a.) calculator', 'b.) smartphone', 'c.) computer ', 'd.) all of the above', 'a.) calculator', 'b.) smartphone', 'c.) computer ', 'd.) all of the above', 'c', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('57', '2', '8', '2', 'a computing device popularized by chinese as their early calculator', 'a.) abacus', 'b.) smartphone', 'c.) napiers bone', 'd.) none of the above', 'a.) abacus', 'b.) smartphone', 'c.) napiers bone', 'd.) none of the above', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('58', '2', '8', '3', 'basic components of computer system', 'a.) monitor / keyboard / cpu', 'b.) monitor / keyboard / cpu / mouse / avr', 'c.) monitor / keyboard / cpu / webcam / speaker / avr', 'd.) none of the above', 'a.) monitor / keyboard / cpu', 'b.) monitor / keyboard / cpu / mouse / avr', 'c.) monitor / keyboard / cpu / webcam / speaker / avr', 'd.) none of the above', 'd', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('59', '2', '8', '4', 'basic computer hardware components', 'a.) monitor / keyboard / cpu', 'b.) monitor / keyboard / cpu / mouse / avr', 'c.) monitor / keyboard / cpu / webcam / speakers', 'd.) none of the above', 'a.) monitor / keyboard / cpu', 'b.) monitor / keyboard / cpu / mouse / avr', 'c.) monitor / keyboard / cpu / webcam / speakers', 'd.) none of the above', 'a', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('60', '2', '8', '5', 'this refers to the physical components of the computer', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) none of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) none of the above', 'c', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('61', '2', '8', '1', 'this is considered to be the brain of a computer', 'a.) input/output device', 'b.) internal storage', 'c.) processor', 'd.) none of the above', 'a.) input/output device', 'b.) internal storage', 'c.) processor', 'd.) none of the above', 'c', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('62', '2', '8', '2', 'nonvolatile memory of a computer', 'a.) Read Only Memory (ROM)', 'b.) Random Access Memory (RAM)', 'c.) both A & B', 'd.) none of the above', 'a.) Read Only Memory (ROM)', 'b.) Random Access Memory (RAM)', 'c.) both A & B', 'd.) none of the above', 'a', '2', '1', '2');
INSERT INTO `examquestion` VALUES ('63', '2', '8', '3', 'this is known to be the device which can accept instructions from computer user', 'a.) input device', 'b.) output device', 'c.) both A & B', 'd.) none of the above', 'a.) input device', 'b.) output device', 'c.) both A & B', 'd.) none of the above', 'a', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('64', '2', '7', '4', 'this is known to return data, that is, information back to the user', 'a.) input device', 'b.) output device', 'c.) both A & B', 'd.) none of the above', 'a.) input device', 'b.) output device', 'c.) both A & B', 'd.) none of the above', 'b', '1', '1', '2');
INSERT INTO `examquestion` VALUES ('65', '1', '4', '5', 'this is known to be an optical storage which can hold 600MB to 720MB of data', 'a.) CD Disc', 'b.) DVD Disc', 'c.) Bluray', 'd.) none of the above', 'a.) CD Disc', 'b.) DVD Disc', 'c.) Bluray', 'd.) none of the above', 'a', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('66', '1', '5', '1', 'this refers to the set of instructions written in code that computers can understand and executed', 'a.) System', 'b.) software', 'c.) programs', 'd.) none / all of the above', 'a.) System', 'b.) software', 'c.) programs', 'd.) none / all of the above', 'b', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('67', '1', '2', '2', 'a software which contains programs that perform task needed for computer hardware to function efficiently. ', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', '1', '1', '1');
INSERT INTO `examquestion` VALUES ('68', '1', '2', '3', 'a software that is used to govern the proper operation of a computer', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a.) system software / operating system', 'b.) microsoft windows', 'c.) IOS', 'd.) none / all of the above', 'a', '3', '1', '1');
INSERT INTO `examquestion` VALUES ('69', '1', '3', '4', 'refers to any person involve in the software development and maintenance of the hardware', 'a.) hardware', 'b.) software', 'c.) peopleware', 'd.) none / all of the above', 'a.) hardware', 'b.) software', 'c.) peopleware', 'd.) none / all of the above', 'c', '3', '1', '1');
INSERT INTO `examquestion` VALUES ('70', '1', '3', '5', 'is an interrelated set of components that function together to achieve an outcome', 'a.) program', 'b.) system', 'c.) module', 'd.) none of the above', 'a.) program', 'b.) system', 'c.) module', 'd.) none of the above', 'b', '3', '1', '1');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personalinfo
-- ----------------------------
INSERT INTO `personalinfo` VALUES ('1', 'dean', 'salangsang', 'alan', 'taytay', '123', 'email@ko.com', 'alan', 'alan', 'student', '1');
INSERT INTO `personalinfo` VALUES ('2', 'manalastas', 'edd', 'edd', 'angono', '321', 'email@edd.com', 'edd', 'edd', 'admin', '1');
INSERT INTO `personalinfo` VALUES ('3', 'pep', 'pep', 'pep', 'pep', 'pep', 'pep@pep.com', 'pep', 'pep', 'student', '1');
INSERT INTO `personalinfo` VALUES ('4', 'llagas', 'gatela', 'louie', 'binangonan', '1234', 'louie@lou.com', 'louie', 'louie', 'student', '1');
INSERT INTO `personalinfo` VALUES ('6', 'zzz', 'zzz', 'zzz', 'zzz', '13', '123', 'zzz', 'zzz', 'student', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of studentsession
-- ----------------------------
INSERT INTO `studentsession` VALUES ('1', '1', '4', '', '2016-06-28 22:08:37', '0000-00-00 00:00:00', '0', '13', '1');
INSERT INTO `studentsession` VALUES ('2', '1', '1', '', '2016-06-28 22:08:37', '0000-00-00 00:00:00', '0', '13', '1');
INSERT INTO `studentsession` VALUES ('3', '1', '6', '', '2016-06-28 22:08:37', '0000-00-00 00:00:00', '0', '13', '1');
INSERT INTO `studentsession` VALUES ('4', '1', '15', '', '2016-06-28 22:08:37', '0000-00-00 00:00:00', '0', '13', '1');
INSERT INTO `studentsession` VALUES ('5', '1', '14', '', '2016-06-28 22:08:37', '0000-00-00 00:00:00', '0', '13', '1');
INSERT INTO `studentsession` VALUES ('6', '1', '18', '', '2016-06-28 22:08:37', '0000-00-00 00:00:00', '0', '13', '1');
INSERT INTO `studentsession` VALUES ('7', '1', '28', '', '2016-06-28 22:08:37', '0000-00-00 00:00:00', '0', '13', '1');
INSERT INTO `studentsession` VALUES ('8', '1', '22', '', '2016-06-28 22:08:37', '0000-00-00 00:00:00', '0', '13', '1');
INSERT INTO `studentsession` VALUES ('9', '1', '20', '', '2016-06-28 22:08:37', '0000-00-00 00:00:00', '0', '13', '1');

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
  `id` int(11) NOT NULL,
  `topicid` int(11) NOT NULL,
  `studyname` varchar(100) NOT NULL,
  `isparent` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topicid` (`topicid`),
  CONSTRAINT `studyunits_ibfk_1` FOREIGN KEY (`topicid`) REFERENCES `reviewtopic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=713 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of testhistory
-- ----------------------------
INSERT INTO `testhistory` VALUES ('2', '1', '1', '2016-06-17 09:39:14', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('3', '1', '1', '2016-06-17 09:39:14', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('4', '1', '1', '2016-06-17 09:39:14', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'd', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('5', '1', '1', '2016-06-17 09:39:14', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('6', '1', '1', '2016-06-17 09:39:14', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('7', '1', '1', '2016-06-17 09:39:14', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('8', '1', '1', '2016-06-17 09:39:14', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('9', '1', '1', '2016-06-17 09:39:14', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'c', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('10', '1', '1', '2016-06-17 09:39:14', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('11', '1', '1', '2016-06-17 09:39:14', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('17', '1', '1', '2016-06-17 09:39:14', '2', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('18', '1', '1', '2016-06-17 09:39:14', '2', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'd', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('19', '1', '1', '2016-06-17 09:39:14', '2', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('20', '1', '1', '2016-06-17 09:39:14', '2', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('21', '1', '1', '2016-06-17 09:39:14', '2', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('22', '1', '1', '2016-06-17 09:39:14', '2', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('23', '1', '1', '2016-06-17 09:39:14', '2', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('24', '1', '1', '2016-06-17 09:39:14', '2', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('25', '1', '1', '2016-06-17 09:39:14', '2', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('26', '1', '1', '2016-06-17 09:39:14', '2', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('32', '1', '1', '2016-06-17 09:39:14', '3', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('33', '1', '1', '2016-06-17 09:39:14', '3', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'd', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('34', '1', '1', '2016-06-17 09:39:14', '3', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'd', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('35', '1', '1', '2016-06-17 09:39:14', '3', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('36', '1', '1', '2016-06-17 09:39:14', '3', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('37', '1', '1', '2016-06-17 09:39:14', '3', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('38', '1', '1', '2016-06-17 09:39:14', '3', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('39', '1', '1', '2016-06-17 09:39:14', '3', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('40', '1', '1', '2016-06-17 09:39:14', '3', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('41', '1', '1', '2016-06-17 09:39:14', '3', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('47', '1', '1', '2016-06-17 09:39:14', '4', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('48', '1', '1', '2016-06-17 09:39:14', '4', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('49', '1', '1', '2016-06-17 09:39:14', '4', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('50', '1', '1', '2016-06-17 09:39:14', '4', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('51', '1', '1', '2016-06-17 09:39:14', '4', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('52', '1', '1', '2016-06-17 09:39:14', '4', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('53', '1', '1', '2016-06-17 09:39:14', '4', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('54', '1', '1', '2016-06-17 09:39:14', '4', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'c', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('55', '1', '1', '2016-06-17 09:39:14', '4', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'c', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('56', '1', '1', '2016-06-17 09:39:14', '4', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'c', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('62', '1', '1', '2016-06-17 09:39:14', '5', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('63', '1', '1', '2016-06-17 09:39:14', '5', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('64', '1', '1', '2016-06-17 09:39:14', '5', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('65', '1', '1', '2016-06-17 09:39:14', '5', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('66', '1', '1', '2016-06-17 09:39:14', '5', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('67', '1', '1', '2016-06-17 09:39:14', '5', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('68', '1', '1', '2016-06-17 09:39:14', '5', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('69', '1', '1', '2016-06-17 09:39:14', '5', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'c', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('70', '1', '1', '2016-06-17 09:39:14', '5', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('71', '1', '1', '2016-06-17 09:39:14', '5', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('77', '1', '1', '2016-06-17 09:39:14', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('78', '1', '1', '2016-06-17 09:39:14', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'd', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('79', '1', '1', '2016-06-17 09:39:14', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'd', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('80', '1', '1', '2016-06-17 09:39:14', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('81', '1', '1', '2016-06-17 09:39:14', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('82', '1', '1', '2016-06-17 09:39:14', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('83', '1', '1', '2016-06-17 09:39:14', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('84', '1', '1', '2016-06-17 09:39:14', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('85', '1', '1', '2016-06-17 09:39:14', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('86', '1', '1', '2016-06-17 09:39:14', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('93', '2', '1', '2016-06-21 03:25:47', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('94', '2', '1', '2016-06-21 03:25:47', '0', '1', '4', 'EASY', 'he developed colossus.', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'd', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('95', '2', '1', '2016-06-21 03:25:47', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('96', '2', '1', '2016-06-21 03:25:47', '0', '1', '4', 'MEDIUM', 'smallest unit of measurement use to measure; capacity to hold information or data, capacity to process, and etc.', 'a.) byte', 'b.) bit', 'c.) kilobyte', 'd. all of the above', 'a.) byte', 'b.) bit', 'c.) kilobyte', 'd. all of the above', 'b', 'a', '3', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('97', '2', '1', '2016-06-21 03:25:47', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('98', '2', '1', '2016-06-21 03:25:47', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('99', '2', '1', '2016-06-21 03:25:47', '0', '1', '4', 'MEDIUM', 'if I have 3bytes how many characters do I have?', 'a.) 18', 'b.) 24', 'c.) 36', 'd.) none of the above', 'a.) 18', 'b.) 24', 'c.) 36', 'd.) none of the above', 'd', 'a', '3', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('100', '2', '1', '2016-06-21 03:25:47', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('101', '2', '1', '2016-06-21 03:25:47', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('102', '2', '1', '2016-06-21 03:25:47', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('108', '3', '1', '2016-06-21 03:28:17', '0', '1', '4', 'EASY', 'dr. artificial intelligent / robotics, that got a microhip implant, w/c intends to remotely control a robotic arm', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'c', 'b', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('109', '3', '1', '2016-06-21 03:28:17', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('110', '3', '1', '2016-06-21 03:28:17', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('111', '3', '1', '2016-06-21 03:28:17', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('112', '3', '1', '2016-06-21 03:28:19', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('113', '3', '1', '2016-06-21 03:28:19', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('114', '3', '1', '2016-06-21 03:28:19', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('115', '3', '1', '2016-06-21 03:28:20', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'b', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('116', '3', '1', '2016-06-21 03:28:23', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('117', '3', '1', '2016-06-21 03:28:23', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', '', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('123', '4', '1', '2016-06-21 03:31:18', '0', '1', '4', 'EASY', 'he developed colossus.', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'd', 'c', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('124', '4', '1', '2016-06-21 03:31:18', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('125', '4', '1', '2016-06-21 03:31:18', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'c', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('126', '4', '1', '2016-06-21 03:31:18', '0', '1', '4', 'MEDIUM', 'smallest unit of measurement use to measure; capacity to hold information or data, capacity to process, and etc.', 'a.) byte', 'b.) bit', 'c.) kilobyte', 'd. all of the above', 'a.) byte', 'b.) bit', 'c.) kilobyte', 'd. all of the above', 'b', 'c', '3', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('127', '4', '1', '2016-06-21 03:31:18', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('128', '4', '1', '2016-06-21 03:31:18', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('129', '4', '1', '2016-06-21 03:31:18', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'c', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('130', '4', '1', '2016-06-21 03:31:18', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'c', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('131', '4', '1', '2016-06-21 03:31:18', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'c', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('132', '4', '1', '2016-06-21 03:31:18', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('138', '5', '1', '2016-06-21 12:17:00', '0', '1', '4', 'EASY', 'dr. artificial intelligent / robotics, that got a microhip implant, w/c intends to remotely control a robotic arm', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'c', '', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('139', '5', '1', '2016-06-21 12:17:00', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('140', '5', '1', '2016-06-21 12:17:00', '0', '1', '4', 'EASY', 'he developed colossus.', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'd', 'b', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('141', '5', '1', '2016-06-21 12:17:00', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('142', '5', '1', '2016-06-21 12:17:00', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('143', '5', '1', '2016-06-21 12:17:00', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('144', '5', '1', '2016-06-21 12:17:00', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('145', '5', '1', '2016-06-21 12:17:00', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'c', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('146', '5', '1', '2016-06-21 12:17:00', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'd', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('147', '5', '1', '2016-06-21 12:17:00', '0', '1', '4', 'MEDIUM', 'if I have 3bytes how many characters do I have?', 'a.) 18', 'b.) 24', 'c.) 36', 'd.) none of the above', 'a.) 18', 'b.) 24', 'c.) 36', 'd.) none of the above', 'd', 'c', '3', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('148', '5', '1', '2016-06-21 12:17:00', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('149', '5', '1', '2016-06-21 12:17:00', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('150', '5', '1', '2016-06-21 12:17:00', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'c', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('151', '5', '1', '2016-06-21 12:17:00', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'd', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('152', '5', '1', '2016-06-21 12:17:00', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('153', '6', '1', '2016-06-21 23:22:56', '0', '1', '4', 'EASY', 'dr. artificial intelligent / robotics, that got a microhip implant, w/c intends to remotely control a robotic arm', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'c', '', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('154', '6', '1', '2016-06-21 23:22:56', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', '', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('155', '6', '1', '2016-06-21 23:22:56', '0', '1', '5', 'EASY', 'miniturized electronic component (a complex electronic part composed of several thousand of colossus circuits)', 'a.) integrated circuits', 'b.) silicon chips', 'c.) microchips', 'd.) all of the above', 'a.) integrated circuits', 'b.) silicon chips', 'c.) microchips', 'd.) all of the above', 'd', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('156', '6', '1', '2016-06-21 23:22:56', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('157', '6', '1', '2016-06-21 23:22:56', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('158', '6', '1', '2016-06-21 23:22:56', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', '', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('159', '6', '1', '2016-06-21 23:22:56', '0', '1', '5', 'MEDIUM', 'a memory type used to hold the configuration/settings of the computer (including system date & time)', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) CMOS', 'b', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('160', '6', '1', '2016-06-21 23:22:56', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('161', '6', '1', '2016-06-21 23:22:56', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('162', '6', '1', '2016-06-21 23:22:56', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('163', '6', '1', '2016-06-21 23:22:56', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('164', '6', '1', '2016-06-21 23:22:56', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('165', '6', '1', '2016-06-21 23:22:56', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('166', '6', '1', '2016-06-21 23:22:56', '0', '1', '5', 'DIFFICULT', 'the particular computer memory which contains the configuration/settings of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) both b & c', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) both b & c', 'd', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('167', '6', '1', '2016-06-21 23:22:56', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('168', '7', '1', '2016-06-22 12:39:14', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('169', '7', '1', '2016-06-22 12:39:14', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('170', '7', '1', '2016-06-22 12:39:14', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('171', '7', '1', '2016-06-22 12:39:14', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('172', '7', '1', '2016-06-22 12:39:14', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('173', '7', '1', '2016-06-22 12:39:14', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('174', '7', '1', '2016-06-22 12:39:14', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('175', '7', '1', '2016-06-22 12:39:14', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('176', '7', '1', '2016-06-22 12:39:14', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('177', '7', '1', '2016-06-22 12:39:14', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('178', '7', '1', '2016-06-22 12:39:14', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('179', '7', '1', '2016-06-22 12:39:14', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('180', '7', '1', '2016-06-22 12:39:14', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('181', '7', '1', '2016-06-22 12:39:14', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('182', '7', '1', '2016-06-22 12:40:00', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('183', '7', '1', '2016-06-22 12:40:00', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('199', '8', '1', '2016-06-22 12:42:38', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('200', '8', '1', '2016-06-22 12:42:38', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'b', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('201', '8', '1', '2016-06-22 12:42:38', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('202', '8', '1', '2016-06-22 12:42:38', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('203', '8', '1', '2016-06-22 12:42:38', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('204', '8', '1', '2016-06-22 12:42:38', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('205', '8', '1', '2016-06-22 12:42:38', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'b', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('206', '8', '1', '2016-06-22 12:42:38', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('207', '8', '1', '2016-06-22 12:42:38', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('208', '8', '1', '2016-06-22 12:42:38', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('209', '8', '1', '2016-06-22 12:42:38', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('210', '8', '1', '2016-06-22 12:42:38', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('211', '8', '1', '2016-06-22 12:42:38', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'b', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('212', '8', '1', '2016-06-22 12:42:38', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('213', '8', '1', '2016-06-22 12:42:41', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('214', '8', '1', '2016-06-22 12:42:41', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('230', '9', '1', '2016-06-22 20:26:56', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('231', '9', '1', '2016-06-22 20:26:56', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'b', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('232', '9', '1', '2016-06-22 20:26:56', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('233', '9', '1', '2016-06-22 20:26:56', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('234', '9', '1', '2016-06-22 20:26:56', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('235', '9', '1', '2016-06-22 20:26:56', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('236', '9', '1', '2016-06-22 20:26:56', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'b', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('237', '9', '1', '2016-06-22 20:26:56', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('238', '9', '1', '2016-06-22 20:26:56', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('239', '9', '1', '2016-06-22 20:26:56', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('240', '9', '1', '2016-06-22 20:26:56', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('241', '9', '1', '2016-06-22 20:26:56', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('242', '9', '1', '2016-06-22 20:26:56', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'b', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('243', '9', '1', '2016-06-22 20:26:56', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('244', '9', '1', '2016-06-22 20:26:59', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('245', '9', '1', '2016-06-22 20:26:59', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('261', '10', '1', '2016-06-22 20:30:00', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('262', '10', '1', '2016-06-22 20:30:00', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('263', '10', '1', '2016-06-22 20:30:00', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('264', '10', '1', '2016-06-22 20:30:00', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('265', '10', '1', '2016-06-22 20:30:00', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('266', '10', '1', '2016-06-22 20:30:00', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('267', '10', '1', '2016-06-22 20:30:00', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('268', '10', '1', '2016-06-22 20:30:00', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('269', '10', '1', '2016-06-22 20:30:00', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('270', '10', '1', '2016-06-22 20:30:00', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('271', '10', '1', '2016-06-22 20:30:00', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('272', '10', '1', '2016-06-22 20:30:00', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('273', '10', '1', '2016-06-22 20:30:00', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('274', '10', '1', '2016-06-22 20:30:00', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('275', '10', '1', '2016-06-22 20:30:19', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('276', '10', '1', '2016-06-22 20:30:19', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('292', '11', '1', '2016-06-22 20:36:42', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', '', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('293', '11', '1', '2016-06-22 20:36:42', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', '', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('294', '11', '1', '2016-06-22 20:36:42', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', '', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('295', '11', '1', '2016-06-22 20:36:42', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', '', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('296', '11', '1', '2016-06-22 20:36:42', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', '', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('297', '11', '1', '2016-06-22 20:36:42', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', '', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('298', '11', '1', '2016-06-22 20:36:42', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', '', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('299', '11', '1', '2016-06-22 20:36:42', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', '', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('300', '11', '1', '2016-06-22 20:36:42', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', '', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('301', '11', '1', '2016-06-22 20:36:42', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('302', '11', '1', '2016-06-22 20:36:42', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('303', '11', '1', '2016-06-22 20:36:42', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('304', '11', '1', '2016-06-22 20:36:42', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('305', '11', '1', '2016-06-22 20:36:42', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('307', '1', '4', '2016-06-22 20:37:08', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('308', '1', '4', '2016-06-22 20:37:08', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('309', '1', '4', '2016-06-22 20:37:08', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('310', '1', '4', '2016-06-22 20:37:08', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('311', '1', '4', '2016-06-22 20:37:08', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('312', '1', '4', '2016-06-22 20:37:08', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('313', '1', '4', '2016-06-22 20:37:08', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('314', '1', '4', '2016-06-22 20:37:08', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('315', '1', '4', '2016-06-22 20:37:08', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('316', '1', '4', '2016-06-22 20:37:08', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('317', '1', '4', '2016-06-22 20:37:08', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('318', '1', '4', '2016-06-22 20:37:08', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('319', '1', '4', '2016-06-22 20:37:08', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('320', '1', '4', '2016-06-22 20:37:08', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('321', '1', '4', '2016-06-22 20:37:11', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('322', '1', '4', '2016-06-22 20:37:11', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('338', '12', '1', '2016-06-22 20:55:06', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('339', '12', '1', '2016-06-22 20:55:06', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('340', '12', '1', '2016-06-22 20:55:06', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'b', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('341', '12', '1', '2016-06-22 20:55:06', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('342', '12', '1', '2016-06-22 20:55:06', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('343', '12', '1', '2016-06-22 20:55:06', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('344', '12', '1', '2016-06-22 20:55:06', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('345', '12', '1', '2016-06-22 20:55:06', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('346', '12', '1', '2016-06-22 20:55:06', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('347', '12', '1', '2016-06-22 20:55:06', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('348', '12', '1', '2016-06-22 20:55:06', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('349', '12', '1', '2016-06-22 20:55:06', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'b', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('350', '12', '1', '2016-06-22 20:55:06', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'b', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('351', '12', '1', '2016-06-22 20:55:06', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('352', '12', '1', '2016-06-22 20:55:09', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('353', '1', '1', '2016-06-22 20:59:30', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('354', '1', '1', '2016-06-22 20:59:30', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('355', '1', '1', '2016-06-22 20:59:30', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('356', '1', '1', '2016-06-22 20:59:30', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('357', '1', '1', '2016-06-22 20:59:30', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('358', '1', '1', '2016-06-22 20:59:30', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('359', '1', '1', '2016-06-22 20:59:30', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('360', '1', '1', '2016-06-22 20:59:30', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('361', '1', '1', '2016-06-22 20:59:30', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('362', '1', '1', '2016-06-22 20:59:30', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('363', '1', '1', '2016-06-22 20:59:30', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('364', '1', '1', '2016-06-22 20:59:30', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('365', '1', '1', '2016-06-22 20:59:30', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('366', '1', '1', '2016-06-22 20:59:30', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('367', '1', '1', '2016-06-22 20:59:32', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('368', '1', '1', '2016-06-22 20:59:32', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('384', '1', '1', '2016-06-22 21:01:15', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('385', '1', '1', '2016-06-22 21:01:15', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'b', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('386', '1', '1', '2016-06-22 21:01:15', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'b', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('387', '1', '1', '2016-06-22 21:01:15', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('388', '1', '1', '2016-06-22 21:01:15', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('389', '1', '1', '2016-06-22 21:01:15', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'b', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('390', '1', '1', '2016-06-22 21:01:15', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'c', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('391', '1', '1', '2016-06-22 21:01:15', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('392', '1', '1', '2016-06-22 21:01:15', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('393', '1', '1', '2016-06-22 21:01:15', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('394', '1', '1', '2016-06-22 21:01:15', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('395', '1', '1', '2016-06-22 21:01:15', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('396', '1', '1', '2016-06-22 21:01:15', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('397', '1', '1', '2016-06-22 21:01:15', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('398', '1', '1', '2016-06-22 21:01:19', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('399', '1', '1', '2016-06-22 21:02:28', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('400', '1', '1', '2016-06-22 21:02:28', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('401', '1', '1', '2016-06-22 21:02:28', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('402', '1', '1', '2016-06-22 21:02:28', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('403', '1', '1', '2016-06-22 21:02:28', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('404', '1', '1', '2016-06-22 21:02:28', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('405', '1', '1', '2016-06-22 21:02:28', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('406', '1', '1', '2016-06-22 21:02:28', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('407', '1', '1', '2016-06-22 21:02:28', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('408', '1', '1', '2016-06-22 21:02:28', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('409', '1', '1', '2016-06-22 21:02:28', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('410', '1', '1', '2016-06-22 21:02:28', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('411', '1', '1', '2016-06-22 21:02:28', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('412', '1', '1', '2016-06-22 21:02:28', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('413', '1', '1', '2016-06-22 21:02:41', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('414', '1', '1', '2016-06-22 21:02:41', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('430', '4', '4', '2016-06-22 21:03:31', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('431', '4', '4', '2016-06-22 21:03:31', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('432', '4', '4', '2016-06-22 21:03:31', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('433', '4', '4', '2016-06-22 21:03:31', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('434', '4', '4', '2016-06-22 21:03:31', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('435', '4', '4', '2016-06-22 21:03:31', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('436', '4', '4', '2016-06-22 21:03:31', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('437', '4', '4', '2016-06-22 21:03:31', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('438', '4', '4', '2016-06-22 21:03:31', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('439', '4', '4', '2016-06-22 21:03:31', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('440', '4', '4', '2016-06-22 21:03:31', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('441', '4', '4', '2016-06-22 21:03:31', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('442', '4', '4', '2016-06-22 21:03:31', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('443', '4', '4', '2016-06-22 21:03:31', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('444', '4', '4', '2016-06-22 21:04:22', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('445', '4', '4', '2016-06-22 21:07:15', '0', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('446', '4', '4', '2016-06-22 21:07:15', '0', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('447', '4', '4', '2016-06-22 21:07:15', '0', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('448', '4', '4', '2016-06-22 21:07:15', '0', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('449', '4', '4', '2016-06-22 21:07:15', '0', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('450', '4', '4', '2016-06-22 21:07:15', '0', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('451', '4', '4', '2016-06-22 21:07:15', '0', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('452', '4', '4', '2016-06-22 21:07:15', '0', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('453', '4', '4', '2016-06-22 21:07:15', '0', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('454', '4', '4', '2016-06-22 21:07:15', '0', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('455', '4', '4', '2016-06-22 21:07:15', '0', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('456', '4', '4', '2016-06-22 21:07:15', '0', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('457', '4', '4', '2016-06-22 21:07:15', '0', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('458', '4', '4', '2016-06-22 21:07:15', '0', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('459', '4', '4', '2016-06-22 21:07:18', '0', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('460', '4', '4', '2016-06-22 21:07:18', '0', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('476', '4', '4', '2016-06-22 21:09:00', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('477', '4', '4', '2016-06-22 21:09:00', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('478', '4', '4', '2016-06-22 21:09:00', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('479', '4', '4', '2016-06-22 21:09:00', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('480', '4', '4', '2016-06-22 21:09:00', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('481', '4', '4', '2016-06-22 21:09:00', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('482', '4', '4', '2016-06-22 21:09:00', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('483', '4', '4', '2016-06-22 21:09:00', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('484', '4', '4', '2016-06-22 21:09:00', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('485', '4', '4', '2016-06-22 21:09:00', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('486', '4', '4', '2016-06-22 21:09:00', '1', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('487', '4', '4', '2016-06-22 21:09:00', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('488', '4', '4', '2016-06-22 21:09:00', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('489', '4', '4', '2016-06-22 21:09:00', '1', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('490', '4', '4', '2016-06-22 21:09:02', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('491', '1', '1', '2016-06-22 21:16:53', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('492', '1', '1', '2016-06-22 21:16:53', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('493', '1', '1', '2016-06-22 21:16:53', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('494', '1', '1', '2016-06-22 21:16:53', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('495', '1', '1', '2016-06-22 21:16:53', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('496', '1', '1', '2016-06-22 21:16:53', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('497', '1', '1', '2016-06-22 21:16:53', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('498', '1', '1', '2016-06-22 21:16:53', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('499', '1', '1', '2016-06-22 21:16:53', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('500', '1', '1', '2016-06-22 21:16:53', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('501', '1', '1', '2016-06-22 21:16:53', '1', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('502', '1', '1', '2016-06-22 21:16:53', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('503', '1', '1', '2016-06-22 21:16:53', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('504', '1', '1', '2016-06-22 21:16:53', '1', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('505', '1', '1', '2016-06-22 21:16:56', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('506', '1', '1', '2016-06-22 21:16:56', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('522', '5', '5', '2016-06-22 22:07:58', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('523', '5', '5', '2016-06-22 22:07:58', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('524', '5', '5', '2016-06-22 22:07:58', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('525', '5', '5', '2016-06-22 22:07:58', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('526', '5', '5', '2016-06-22 22:07:58', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('527', '5', '5', '2016-06-22 22:07:58', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('528', '5', '5', '2016-06-22 22:07:58', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('529', '5', '5', '2016-06-22 22:07:58', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('530', '5', '5', '2016-06-22 22:07:58', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('531', '5', '5', '2016-06-22 22:07:58', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('532', '5', '5', '2016-06-22 22:07:58', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('533', '5', '5', '2016-06-22 22:07:58', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('534', '5', '5', '2016-06-22 22:07:58', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('535', '5', '5', '2016-06-22 22:07:58', '1', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('536', '5', '5', '2016-06-22 22:08:01', '1', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('537', '1', '1', '2016-06-22 21:54:29', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('538', '1', '1', '2016-06-22 21:54:29', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('539', '1', '1', '2016-06-22 21:54:29', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('540', '1', '1', '2016-06-22 21:54:29', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('541', '1', '1', '2016-06-22 21:54:29', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('542', '1', '1', '2016-06-22 21:54:29', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('543', '1', '1', '2016-06-22 21:54:29', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('544', '1', '1', '2016-06-22 21:54:29', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('545', '1', '1', '2016-06-22 21:54:29', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('546', '1', '1', '2016-06-22 21:54:29', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('547', '1', '1', '2016-06-22 21:54:29', '1', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('548', '1', '1', '2016-06-22 21:54:29', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('549', '1', '1', '2016-06-22 21:54:29', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('550', '1', '1', '2016-06-22 21:54:29', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('551', '1', '1', '2016-06-22 22:16:40', '1', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('552', '5', '5', '2016-06-22 22:17:35', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('553', '5', '5', '2016-06-22 22:17:35', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('554', '5', '5', '2016-06-22 22:17:35', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('555', '5', '5', '2016-06-22 22:17:35', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('556', '5', '5', '2016-06-22 22:17:35', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('557', '5', '5', '2016-06-22 22:17:35', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('558', '5', '5', '2016-06-22 22:17:35', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('559', '5', '5', '2016-06-22 22:17:35', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('560', '5', '5', '2016-06-22 22:17:35', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('561', '5', '5', '2016-06-22 22:17:35', '1', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('562', '5', '5', '2016-06-22 22:17:35', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('563', '5', '5', '2016-06-22 22:17:35', '1', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('564', '5', '5', '2016-06-22 22:17:35', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('565', '5', '5', '2016-06-22 22:17:35', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('566', '5', '5', '2016-06-22 22:17:44', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('567', '5', '5', '2016-06-22 22:17:44', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('583', '1', '1', '2016-06-22 22:19:07', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('584', '1', '1', '2016-06-22 22:19:07', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('585', '1', '1', '2016-06-22 22:19:07', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('586', '1', '1', '2016-06-22 22:19:07', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('587', '1', '1', '2016-06-22 22:19:07', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('588', '1', '1', '2016-06-22 22:19:07', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('589', '1', '1', '2016-06-22 22:19:07', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('590', '1', '1', '2016-06-22 22:19:07', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('591', '1', '1', '2016-06-22 22:19:07', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('592', '1', '1', '2016-06-22 22:19:07', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('593', '1', '1', '2016-06-22 22:19:07', '1', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('594', '1', '1', '2016-06-22 22:19:07', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('595', '1', '1', '2016-06-22 22:19:07', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('596', '1', '1', '2016-06-22 22:19:07', '1', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('597', '1', '1', '2016-06-22 22:20:12', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('598', '1', '1', '2016-06-22 22:20:12', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('614', '1', '1', '2016-06-22 22:24:16', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('615', '1', '1', '2016-06-22 22:24:16', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('616', '1', '1', '2016-06-22 22:24:16', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('617', '1', '1', '2016-06-22 22:24:16', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('618', '1', '1', '2016-06-22 22:24:16', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('619', '1', '1', '2016-06-22 22:24:16', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('620', '1', '1', '2016-06-22 22:24:16', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('621', '1', '1', '2016-06-22 22:24:16', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('622', '1', '1', '2016-06-22 22:24:16', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('623', '1', '1', '2016-06-22 22:24:16', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('624', '1', '1', '2016-06-22 22:24:16', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('625', '1', '1', '2016-06-22 22:24:16', '1', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('626', '1', '1', '2016-06-22 22:24:16', '1', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', 'a', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('627', '1', '1', '2016-06-22 22:24:16', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('628', '1', '1', '2016-06-22 22:24:31', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('629', '1', '1', '2016-06-22 22:24:31', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('645', '1', '1', '2016-06-22 22:25:14', '1', '1', '4', 'EASY', 'dr. artificial intelligent / robotics, that got a microhip implant, w/c intends to remotely control a robotic arm', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('646', '1', '1', '2016-06-22 22:25:14', '1', '1', '4', 'EASY', 'he developed colossus.', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'd', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('647', '1', '1', '2016-06-22 22:25:14', '1', '1', '4', 'MEDIUM', 'smallest unit of measurement use to measure; capacity to hold information or data, capacity to process, and etc.', 'a.) byte', 'b.) bit', 'c.) kilobyte', 'd. all of the above', 'a.) byte', 'b.) bit', 'c.) kilobyte', 'd. all of the above', 'b', 'a', '3', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('648', '1', '1', '2016-06-22 22:25:14', '1', '1', '4', 'MEDIUM', 'if I have 3bytes how many characters do I have?', 'a.) 18', 'b.) 24', 'c.) 36', 'd.) none of the above', 'a.) 18', 'b.) 24', 'c.) 36', 'd.) none of the above', 'd', '', '3', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('652', '1', '1', '2016-06-22 22:34:55', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('653', '1', '1', '2016-06-22 22:34:55', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('654', '1', '1', '2016-06-22 22:34:55', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('655', '1', '1', '2016-06-22 22:34:55', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('656', '1', '1', '2016-06-22 22:34:55', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('657', '1', '1', '2016-06-22 22:34:55', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('658', '1', '1', '2016-06-22 22:34:55', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('659', '1', '1', '2016-06-22 22:34:55', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('660', '1', '1', '2016-06-22 22:34:55', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('661', '1', '1', '2016-06-22 22:34:55', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('662', '1', '1', '2016-06-22 22:34:55', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('663', '1', '1', '2016-06-22 22:34:55', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('664', '1', '1', '2016-06-22 22:34:55', '1', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', 'a', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('665', '1', '1', '2016-06-22 22:34:55', '1', '1', '3', 'DIFFICULT', 'speaker is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'b', '', '2', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('666', '1', '1', '2016-06-22 22:34:57', '1', '1', '2', 'MEDIUM', 'a man made machine capable to automate human task', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'a.) desktop computer', 'b.) mainframe computer', 'c.) Colossus', 'd.) all of the above', 'd', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('667', '1', '1', '2016-06-22 22:34:57', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('683', '1', '1', '2016-06-22 22:39:47', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('684', '1', '1', '2016-06-22 22:39:47', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('685', '1', '1', '2016-06-22 22:39:47', '1', '1', '3', 'DIFFICULT', 'if i have 24bits how many characters do i have.', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'a.) 24', 'b.) 12', 'c.) 3', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('686', '1', '1', '2016-06-22 22:40:14', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('687', '1', '1', '2016-06-22 22:40:14', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('688', '1', '1', '2016-06-22 22:40:14', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('689', '1', '1', '2016-06-22 22:41:47', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('690', '1', '1', '2016-06-22 22:41:47', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('691', '1', '1', '2016-06-22 22:41:47', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('692', '1', '1', '2016-06-22 22:44:57', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('693', '1', '1', '2016-06-22 22:44:57', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('694', '1', '1', '2016-06-22 22:44:57', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('695', '6', '6', '2016-06-22 22:47:23', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('696', '6', '6', '2016-06-22 22:47:23', '1', '1', '2', 'MEDIUM', 'a collection of programs &/or modules that is combined all together to accomplish and/or automate human tasks', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a', 'a', '4', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('697', '6', '6', '2016-06-22 22:47:23', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('698', '6', '6', '2016-06-22 22:48:25', '1', '1', '2', 'EASY', 'the machine that changed the world', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'a.) Colossus', 'b.) SmartPhone', 'c.) Computer', 'd.) All the above', 'c', 'a', '2', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('699', '6', '6', '2016-06-22 22:48:25', '1', '1', '2', 'MEDIUM', 'refers to the physical tangible computer itself (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'c', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('700', '6', '6', '2016-06-22 22:48:25', '1', '1', '2', 'DIFFICULT', 'if i have 2 characters how many bytes do i have', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'a.) 8', 'b.) 16', 'c.) 2', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('701', '6', '6', '2016-06-22 22:49:28', '1', '1', '2', 'EASY', 'names whom contributed for the development of computers', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'a.) C.Babbage / T.Flowers / K. Warwick / Jeremy', 'b.) A. Turing / C.Babbage / Jeremy', 'c.) T.Flowers / A.Turing / K. Warwick / C. Babbage', 'd.) all of the above.', 'c', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('702', '6', '6', '2016-06-22 22:49:28', '1', '1', '2', 'MEDIUM', 'a collection of commands written by a programmer to accomplish specific task', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'a.) system', 'b.) program', 'c.) machine instructions', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('703', '6', '6', '2016-06-22 22:49:28', '1', '1', '2', 'DIFFICULT', 'keyboard is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('704', '6', '6', '2016-06-22 22:55:41', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('705', '6', '6', '2016-06-22 22:55:41', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('706', '6', '6', '2016-06-22 22:55:41', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('707', '6', '6', '2016-06-22 23:12:22', '1', '1', '3', 'EASY', 'father of computer', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('708', '6', '6', '2016-06-22 23:12:22', '1', '1', '3', 'MEDIUM', 'refers to user/coders/programmers/computer operators (an element of a complete computer system)', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('709', '6', '6', '2016-06-22 23:12:22', '1', '1', '3', 'DIFFICULT', 'mouse is what type of device?', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a.) input', 'b.) output', 'c.) input & output', 'd.) unknown', 'a', '', '1', '1', 'DIFFICULT');
INSERT INTO `testhistory` VALUES ('710', '6', '6', '2016-06-22 23:13:23', '1', '1', '3', 'EASY', 'father of computer science', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'a.) Charles Babbage', 'b.) Alan Turing', 'c.) Kevin Warwick', 'd.) none of the above', 'b', 'a', '1', '1', 'EASY');
INSERT INTO `testhistory` VALUES ('711', '6', '6', '2016-06-22 23:13:23', '1', '1', '3', 'MEDIUM', 'refers to the programs/system/machine instructions that is made by programmers.', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'a.) people ware', 'b.) software', 'c.) hardware', 'd.) all of the above', 'b', 'a', '1', '1', 'MEDIUM');
INSERT INTO `testhistory` VALUES ('712', '6', '6', '2016-06-22 23:13:23', '1', '1', '3', 'DIFFICULT', 'this controls the basic i/o processing of a computer', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'a.) RAM', 'b.) ROM', 'c.) BIOS', 'd.) none of the above', 'c', '', '1', '1', 'DIFFICULT');

-- ----------------------------
-- Table structure for `topic_config`
-- ----------------------------
DROP TABLE IF EXISTS `topic_config`;
CREATE TABLE `topic_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `topicID` int(10) NOT NULL,
  `testtype` int(10) NOT NULL,
  `itemseasy` int(10) NOT NULL,
  `itemsmoderate` int(10) NOT NULL,
  `itemsdifficult` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `topicID` (`topicID`),
  CONSTRAINT `topic_config_ibfk_1` FOREIGN KEY (`topicID`) REFERENCES `reviewtopic` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='topic configuration to be defined by the teacher or admin';

-- ----------------------------
-- Records of topic_config
-- ----------------------------
INSERT INTO `topic_config` VALUES ('1', '1', '1', '3', '3', '3');
INSERT INTO `topic_config` VALUES ('2', '2', '2', '3', '3', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

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

-- ----------------------------
-- Procedure structure for `1`
-- ----------------------------
DROP PROCEDURE IF EXISTS `1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `1`(in studid int,IN `topid` INT,IN `subid` varchar(50),in _type varchar(50),in toteasy int,in totmed int,in totdiff int)
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
-- Procedure structure for `generateQuestions`
-- ----------------------------
DROP PROCEDURE IF EXISTS `generateQuestions`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateQuestions`(in studid int,IN `topid` INT,IN `subid` varchar(50),in _type int,in toteasy int,in totmed int,in totdiff int,in sessiontype int,in testtypeid int,in totitems INT)
BEGIN
SELECT @testsessionid := IFNULL(MAX(testsessionid) + 1,1) FROM testhistory WHERE studentid = studid;
SELECT @totalcount :=  count(id) FROM studentsession WHERE studentid = studid and testsessionid = @testsessionid;
if (@totalcount = totitems) then
select true from studentsession;
else
INSERT INTO studentsession (studentid,questionid,answer,datetimecreated,datetimeanswered,sessiontype,testsessionid,testtypeid)
SELECT studid,U.id,NULL,NOW(),NULL,sessiontype,@testsessionid,testtypeid FROM ((SELECT id FROM EXAMQUESTION WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'EASY' AND TYPE = _type ORDER BY RAND() LIMIT toteasy) 
UNION
(SELECT id FROM EXAMQUESTION WHERE TOPICID = topid AND  FIND_IN_SET(SUBJID, subid) AND LEVEL = 'MEDIUM' AND TYPE = _type ORDER BY RAND() LIMIT totmed )
UNION
(SELECT id FROM EXAMQUESTION WHERE TOPICID = topid AND FIND_IN_SET(SUBJID, subid) AND LEVEL = 'DIFFICULT' AND TYPE = _type ORDER BY RAND() LIMIT totdiff ))
AS U WHERE U.id NOT IN (SELECT DISTINCT questionid FROM studentsession WHERE studentid = studid) ;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `getQuestion`(in sesid int,IN studid INT,IN `topid` INT,IN `subid` VARCHAR(50))
BEGIN
  
SELECT * FROM examquestion eq INNER JOIN studentsession ss ON eq.id = ss.questionid 
WHERE ss.studentid = studid AND eq.topicid = topid AND FIND_IN_SET(eq.SUBJID, subid) ORDER BY ss.id LIMIT 1 OFFSET sesid;
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
-- Procedure structure for `insertIntoTestHistory`
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertIntoTestHistory`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertIntoTestHistory`(in studid int)
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
