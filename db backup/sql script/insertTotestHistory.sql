DELIMITER $$

USE `excelcia`$$

DROP PROCEDURE IF EXISTS `insertIntoTestHistory`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insertIntoTestHistory`(IN studid INT)
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
    END$$

DELIMITER ;