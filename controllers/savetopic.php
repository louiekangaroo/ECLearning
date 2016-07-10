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

    $topictype = $_GET['ttype']; 
    $subtopid = $_GET['subtopic'];
    $topicname = $_GET['tname'];

    if($topictype == 0){
        $sql = "INSERT INTO studyunits(studyname,isparent,parentid) VALUES ('$topicname','1','0')";
    } else {
        $sql = "INSERT INTO studyunits(studyname,isparent,parentid) VALUES ('$topicname','0','$subtopid')";
    }
    
    ExecuteNoneQuery($sql); 
?>