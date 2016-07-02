<?PHP

session_start();
include_once("../controllers/udf.php");
include_once("../views/menuinterface.php");

switch($_GET['command']) {
   case 'reviewTopics':
       getReviewTopics();
       break;
   case 'studyUnits':
       getStudyUnits();
       break;
    case 'studyUnitsChild':
        getStudyUnitsChildren();
    case 'inserTestHistory':
        insertIntoTestHistory();
   default:
       return;
}

function getReviewTopics() {
  
    $host="localhost"; //hostname
    $username="root";//username
    $password=""; //database password
    $db_name="excelcia";//database name

    //connect to database
    $con = mysqli_connect($host,$username,$password,$db_name) or die ("cannot connect to server");

    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
	}   
  
    $sql = "CALL getReviewtopic()";  
    $result = mysqli_query($con, $sql);
          
    $rows = array();
    while($r = mysqli_fetch_assoc($result)) {
        $rows[] = $r;
    }

    print json_encode($rows);

}

function getStudyUnits() {
    
    $host="localhost"; //hostname
    $username="root";//username
    $password=""; //database password
    $db_name="excelcia";//database name

    //connect to database
    $con = mysqli_connect($host,$username,$password,$db_name) or die ("cannot connect to server");

    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
	}   
  
    $sql = "CALL getStudyUnits()";
    $result = mysqli_query($con, $sql);
          
    $rows = array();
    while($r = mysqli_fetch_assoc($result)) {
        $rows[] = $r;
    }

    print json_encode($rows);
    
}


function getStudyUnitsChildren() {
    
    $host="localhost"; //hostname
    $username="root";//username
    $password=""; //database password
    $db_name="excelcia";//database name

    //connect to database
    $con = mysqli_connect($host,$username,$password,$db_name) or die ("cannot connect to server");

    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
	}   
    
    $sql = "SELECT * FROM studyunits WHERE parentid =" . $_GET["topicId"];
    $result = mysqli_query($con, $sql);
    
    
    $rows = array();
    while($r = mysqli_fetch_assoc($result)) {
        $rows[] = $r;
    }

    print json_encode($rows);
    
}

function insertIntoTestHistory() {
    
    $host="localhost"; //hostname
    $username="root";//username
    $password=""; //database password
    $db_name="excelcia";//database name

    //connect to database
    $con = mysqli_connect($host,$username,$password,$db_name) or die ("cannot connect to server");

    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
	}   
    
    $StudentID = $_SESSION['studentID'];
    
    $sqlscript = "call insertIntoTestHistory('$StudentID')";
    ExecuteNoneQuery($sqlscript); 
    
}

?>