<?PHP
session_start();
include_once("../../controllers/udf.php");
include_once("../../views/menuinterface.php");

    $host="localhost"; //hostname
    $username="root";//username
    $password=""; //database password
    $db_name="excelcia";//database name

    //connect to database
    $con = mysqli_connect($host,$username,$password,$db_name) or die ("cannot connect to server");

    if (!$con) {
        die("Connection failed: " . mysqli_connect_error());
	}   
    
   $sql = "SELECT * FROM personalinfo";  
  $result = mysqli_query($con, $sql);
          
  $rows = array();
   while($r = mysqli_fetch_assoc($result)) {
     $rows[] = $r;
   }

 print json_encode($rows);

?>