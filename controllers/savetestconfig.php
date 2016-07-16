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

    $questionID = $_GET['qID']; 
    $testtypeid = $_GET['testtype'];
    $sid = $_GET['subjid'];
    $sql = "call inserttotable('$questionID','$testtypeid','$sid')";
    //echo 'Thanks for taking the Review Session';
    //$sqlscript = "call insertIntoTestHistory('$StudentID')";
    //VALUES ('1','1','1','aaa','22','33','aa','aa','admin','1');
    ExecuteNoneQuery($sql); 
?>