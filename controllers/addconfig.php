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

    $ttype = $_GET['testtype'];
    $sid = $_GET['subjid'];
    $teasy = $_GET['easy'];
    $tmoderate = $_GET['moderate'];
    $tdifficult = $_GET['difficult'];        
        
    $sql = "select * from topic_config where subjid=$sid";
    $result = mysqli_query($con, $sql);
	if (mysqli_num_rows($result) >=1) {
    echo -1;
    } else {
        mysqli_query($con,"INSERT INTO topic_config(testtype,subjid,itemseasy,itemsmoderate,itemsdifficult,israndom) VALUES                        ('$ttype','$sid','$teasy','$tmoderate','$tdifficult','0')") or die("".mysql_error());
    }
?>