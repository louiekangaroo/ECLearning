DELIMITER $$

USE `excelcia`$$

DROP PROCEDURE IF EXISTS `generateQuestions`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `generateQuestions`(IN studid INT,IN `topid` INT,IN `subid` VARCHAR(50),IN _type INT,IN toteasy INT,IN totmed INT,IN totdiff INT,IN sessiontype INT,IN testtypeid INT,IN totitems INT)
BEGIN
SELECT @testsessionid := IFNULL(MAX(testsessionid) + 1,1) FROM testhistory WHERE studentid = studid;
SELECT @totalcount :=  COUNT(id) FROM studentsession WHERE studentid = studid AND testsessionid = @testsessionid;
IF (@totalcount = totitems) THEN
SELECT TRUE FROM studentsession;
ELSE
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



END IF;
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
 
 
 END$$

DELIMITER ;