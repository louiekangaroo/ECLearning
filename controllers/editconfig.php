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

    $tid = $_GET['id'];
    $teasy = $_GET['easy'];
    $tmoderate = $_GET['moderate'];
    $tdifficult = $_GET['difficult'];   
    $trandom = $_GET['randomMe'];
        
    $sql = "UPDATE topic_config SET itemseasy='$teasy', itemsmoderate='$tmoderate', itemsdifficult='$tdifficult', israndom='$trandom' WHERE id='$tid'"; 
    //$sqlscript = "call insertIntoTestHistory('$StudentID')";
    ExecuteNoneQuery($sql); 
?>