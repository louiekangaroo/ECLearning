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

    $uname = $_GET['uname'];
    $pword = $_GET['pword'];
    $fname = $_GET['fname'];
    $mname = $_GET['mname'];
    $lname = $_GET['lname'];
    $address = $_GET['address'];
    $contact = $_GET['contact'];
    $email = $_GET['email'];
    $type = $_GET['type'];
    $isactive = $_GET['isactive'];
  
$sql = "INSERT INTO personalinfo(lname,mname,fname,address,contactno,emailadd,username,password,usertype,status) VALUES ('$lname','$mname','$fname','$address','$contact','$email','$uname','$pword','$type',$isactive);";
    //echo 'Thanks for taking the Review Session';
    //$sqlscript = "call insertIntoTestHistory('$StudentID')";
    //VALUES ('1','1','1','aaa','22','33','aa','aa','admin','1');
    ExecuteNoneQuery($sql); 
?>