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

    $StudentID = $_SESSION['studentID'];
    $qid = $_GET['index'];
    //$qid = $qid - 1;
    $qanswer = $_GET['questioanswer'];

    $sql = "UPDATE studentsession SET answer='$qanswer' WHERE id='$qid'"; 

    //echo 'Thanks for taking the Review Session';
    //$sqlscript = "call insertIntoTestHistory('$StudentID')";
    ExecuteNoneQuery($sql); 
?>