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
    
    $itemseasy = getfieldvalue("topic_config", "itemseasy", "where testtype = '$c_topicid'");
                    
    $itemsmoderate = getfieldvalue("topic_config", "itemsmoderate", "where testtype = '$c_topicid'");

    $itemsdifficult = getfieldvalue("topic_config", "itemsdifficult", "where testtype = '$c_topicid'");
    
    $totalitems = $itemsdifficult + $itemseasy + $itemsmoderate;
    
    $sqlscript = "call  generateQuestions('$StudentID','$c_topicid','$c_subjid','$c_topicid',$itemseasy,$itemsmoderate,$itemsdifficult,0,'$c_topicid',$totalitems)";
    ExecuteNoneQuery($sqlscript);   

    echo $totalitems;
?>