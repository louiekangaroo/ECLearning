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
    
    $c_topicid = $_GET["sesstopic"];
    $c_subjid = $_GET["subjid"];
    $StudentID = $_SESSION['studentID'];
    
     $sql= "SELECT SUM(eq.minutes) AS MIN FROM examquestion eq INNER JOIN studentsession ss ON eq.id = ss.questionid WHERE ss.studentid = '$StudentID' AND eq.topicid = '$c_topicid' AND FIND_IN_SET(eq.SUBJID, '$c_subjid')";
    
    $result = mysqli_query($con, $sql);
          
    $rows = array();
    while($r = mysqli_fetch_assoc($result)) {
        $rows[] = $r;
    }

    print json_encode($rows);

?>