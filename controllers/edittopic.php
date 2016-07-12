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

    $studname = $_GET['topic'];
    $id = $_GET['id'];
        
    $sql = "UPDATE studyunits SET studyname='$studname' WHERE id='$id'"; 
    //$sqlscript = "call insertIntoTestHistory('$StudentID')";
    ExecuteNoneQuery($sql); 
?>