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
    
    $tcid = $_GET['id'];

  	$sql = "SELECT tc.id,tc.subjid,rt.`topicname`,tc.`itemseasy`,tc.`itemsmoderate`,tc.`itemsdifficult`,tc.`israndom`,tc.testtype
            FROM topic_config tc
            INNER JOIN reviewtopic rt ON rt.id = tc.`testtype`
            WHERE tc.id = $tcid"; 
    
    $result = mysqli_query($con, $sql);
          
    $rows = array();
    while($r = mysqli_fetch_assoc($result)) {
        $rows[] = $r;
    }

    print json_encode($rows);

?>