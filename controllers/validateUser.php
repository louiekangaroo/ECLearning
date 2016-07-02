 <?php
// Create connection
require("connection.php");
global $con;

$name = $_POST['uname'];
    
    $sql = "SELECT username, password FROM personalinfo WHERE username ='" .$name. "'" ;  
    $result = mysqli_query($con, $sql);
          
  $rows = array();
   while($r = mysqli_fetch_assoc($result)) {
     $rows[] = $r;
   }

 print json_encode($rows);

?>