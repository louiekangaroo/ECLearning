  <!-- start of header code 'ECheader.php'-->
  <?PHP 
   session_start();
   include_once("../controllers/udf.php");
   include_once("menuinterface.php");
   
$xx = "<form action='#'><div><input type='button' onclick='window.print();' value='Print' />
										 <input type='button' onclick='self.close();' value='Close this window' /></div></form>";
   
	$usertype = strtolower($_SESSION['usertype']);
	if($usertype=='admin' || $usertype=='teacher'){
	}else{
		die($xx);	
	}		
//extract data from table for printing
?>
  <!-- start of detail line codes below -->
  <?php
            // Create connection
            require("../controllers/connection.php");
            global $con;
            if (!$con) {
                die("Connection failed: " . mysqli_connect_error());
            }
			//SELECT upper(concat(trim(p.`lname`),', ', trim(p.`fname`),' ', trim(p.`mname`))) sname, p.`contactno`, p.`emailadd`, if(p.`status`=0,'Inactive','Active') status FROM personalinfo p where usertype='student';
			$sql = "SELECT upper(concat(trim(p.`lname`),', ', trim(p.`fname`),' ', trim(p.`mname`))) sname, p.`contactno`, p.`emailadd`, if(p.`status`=0,'Inactive','Active') status FROM personalinfo p where usertype='student';"; 

			//die("sql $sql $xx");
            $result = mysqli_query($con, $sql);
            if ($result) {
              //variable to contain concatenated detail information for html output
              $details = "";
              $ctr=0;
              foreach ($result as $row) {
				  $ctr++;
				  $bgcolor 		= ""; 	
				  $sname		= $row['sname'];
				  $emailadd		= $row['emailadd'];
				  $contactno	= $row['contactno'];
				  $status		= $row['status'];				  
				  $details .= "<tr>
								<td><div align='right'>$ctr.)</div></td>
								<td>$sname</td>
								<td>$emailadd</td>
								<td>$contactno</td>
								<td>$status</td>
							   </tr>";	
              }
            }
            else {
              echo 'No Items';// Some message, if the database is empty.
            }
            mysqli_free_result($result);// Clear the memory.
            ?>
  <!-- end of detail line codes below -->
  
  <!-- display -->
<table width="100%" border="1">
  <tr>
    <td>&nbsp;</td>
    <td>Student Name(s)</td>
    <td>Email Address</td>
    <td>Contact #</td>
    <td>Status</td>
  </tr>
<!-- start of php code to display details-->
	<?PHP 
	echo $details;
	 ?>
<!-- end of php code to display details-->

</table>
<?PHP echo $xx; ?>
