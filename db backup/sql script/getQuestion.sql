DELIMITER $$

USE `excelcia`$$

DROP PROCEDURE IF EXISTS `getQuestion`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getQuestion`(IN `sesid` INT, IN `studid` INT, IN `topid` INT, IN `subid` VARCHAR(50))
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
    END$$

DELIMITER ;