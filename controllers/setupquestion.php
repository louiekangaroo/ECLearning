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
    $c_sessiontype = $_GET["sesstype"];

    $StudentID = $_SESSION['studentID'];
    
    
    $itemseasy = getfieldvalue("topic_config", "SUM(itemseasy)", "where testtype = '$c_topicid' AND FIND_IN_SET(SUBJID, '$c_subjid')");
                    
    $itemsmoderate = getfieldvalue("topic_config", "SUM(itemsmoderate)", "where testtype = '$c_topicid' AND FIND_IN_SET(SUBJID, '$c_subjid')");

    $itemsdifficult = getfieldvalue("topic_config", "SUM(itemsdifficult)", "where testtype = '$c_topicid' AND FIND_IN_SET(SUBJID, '$c_subjid')");
    
    $totalitems = $itemsdifficult + $itemseasy + $itemsmoderate;
    
    $sqlscript = "call  generateQuestions('$StudentID','$c_topicid','$c_subjid','$c_topicid',$itemseasy,$itemsmoderate,$itemsdifficult,$c_sessiontype,'$c_topicid',$totalitems)";
    ExecuteNoneQuery($sqlscript);   

    echo $totalitems;
?>