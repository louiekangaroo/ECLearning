 <?php
// Create connection
require("connection.php");
global $con;

$name = $_POST['uname'];
$password = $_POST['pass'];
    
    $sql = "UPDATE personalinfo set password = '" .$password. "' WHERE username = '" .$name. "'";
    $result = mysqli_query($con, $sql) or die ("Could not execute query : $sql . " . mysqli_error());
          
    mysqli_close($con);	
    if ($result)
    {
        echo 'Password Update Successfully';
    } else {
        echo 'Saving failed';
    }

?>