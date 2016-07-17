<?PHP
session_start();
include_once("../controllers/udf.php");
include_once("../views/menuinterface.php");

    $host="localhost"; //hostname
    $username="root";//username
    $password=""; //database password
    $db_name="excelcia";//database name

    //connect to database
    $con = mysqli_connect($host,$username,$password,$db_name) or die ("cannot connect to server");

    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
	}   
    
    $pid = $_GET['testid'];
    $sid = $_GET['subjid'];
    switch ($pid) {
    case 1:
        $sql = "SELECT qpo.id 'testid', subj.studyname, eq.id 'examid',eq.question, eq.level FROM examquestion eq LEFT OUTER JOIN qpretest qpo ON eq.id = qpo.questionid INNER JOIN studyunits subj ON subj.id = eq.subjid where eq.type = '$pid' AND eq.subjid = '$sid' ORDER BY subj.id";
        break;
    case 2:
         $sql = "SELECT qpo.id 'testid', subj.studyname, eq.id 'examid',eq.question, eq.level FROM examquestion eq LEFT OUTER JOIN qposttest qpo ON eq.id = qpo.questionid INNER JOIN studyunits subj ON subj.id = eq.subjid where eq.type = '$pid' AND eq.subjid = '$sid' ORDER BY subj.id";
        
        break;
    case 3:
         $sql = "SELECT qpo.id 'testid', subj.studyname, eq.id 'examid',eq.question, eq.level FROM examquestion eq LEFT OUTER JOIN qshortquiz qpo ON eq.id = qpo.questionid INNER JOIN studyunits subj ON subj.id = eq.subjid where eq.type  IN (1,2,$pid) AND eq.subjid = '$sid' ORDER BY subj.id";
        
        break;
    case 4:

        $sql = "SELECT qpo.id 'testid', subj.studyname, eq.id 'examid',eq.question, eq.level FROM examquestion eq LEFT OUTER JOIN qlongquiz qpo ON eq.id = qpo.questionid INNER JOIN studyunits subj ON subj.id = eq.subjid where eq.type  IN (1,2,3,$pid) AND eq.subjid = '$sid' ORDER BY subj.id";
        break;
    case 5:
        $sql = "SELECT qpo.id 'testid', subj.studyname, eq.id 'examid',eq.question, eq.level FROM examquestion eq LEFT OUTER JOIN qmajorexam qpo ON eq.id = qpo.questionid INNER JOIN studyunits subj ON subj.id = eq.subjid where eq.type  IN (1,2,3,4,$pid) AND eq.subjid = '$sid' ORDER BY subj.id";
        
        break;
    default:
        $sql = "SELECT qpo.id 'testid',eq.id 'examid',eq.question, eq.level FROM examquestion eq LEFT OUTER JOIN qpretest qpo ON eq.id = qpo.questionid where eq.type = $pid";
}
    
    $result = mysqli_query($con, $sql);

    $rows = array();
    while($r = mysqli_fetch_assoc($result)) {
        $rows[] = $r;
    }

    print json_encode($rows);

?>