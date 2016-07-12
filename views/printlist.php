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

<p>
  <!-- start of detail line codes below -->
  <?php
	// deter the testid type
	if(isset($_REQUEST['testid']) && $_REQUEST['testid']>0 && $_REQUEST['testid'] <6){
		
	}else{
		die($xx);	
	}
	$tablename = $_REQUEST['testid'];
	$heading = "";	
	switch ($tablename) {
		case 1:
			$tablename = "qpretest";
			$heading = "Pre-Test";
			break;	
		case 2:
			$tablename = "qposttest";
			$heading = "Post-Test";
			break;	
		case 3:
			$tablename = "qshortquiz";
			$heading = "Short-Quiz";
			break;	
		case 4:
			$tablename = "qlongquiz";
			$heading = "Long-Quiz";
			break;	
		case 5:
			$tablename = "qmajorexam";
			$heading = "Major Exam";
			break;	
	}
            // Create connection
            require("../controllers/connection.php");
            global $con;
            if (!$con) {
                die("Connection failed: " . mysqli_connect_error());
            }
			$start = 0;
			$limit = 0;
			//SELECT q.`level`, q.`question`, q.`a`, q.`b`, q.`c`, q.`d`, q.`correct_ans` FROM qpretest q;
			$sql = "SELECT question,a,b,c,d,correct_ans,minutes,point 
                    FROM $tablename q;"; 

			//die("sql $sql $xx");
            $result = mysqli_query($con, $sql);
            if ($result) {
              //variable to contain concatenated detail information for html output
              $details = "";
              $ctr=0;
			  $tmpstudyname = "";
			  $ctr = 0;
              foreach ($result as $row) {
				  $ctr++;
				  $bgcolor = ""; 	
				  $question = $row['question'];
				  $a		= $row['a'];
				  $b		= $row['b'];
				  $c		= $row['c'];
				  $d		= $row['d'];
				  $correct_ans	= $row['correct_ans'];
				  $minutes		= $row['minutes'];
				  $point 		= $row['point'];
				  
				  $details .= "<tr>
								<td rowspan='2'><div align='right'>$ctr.)</div></td>
								<td colspan='4'>$question</td>
								<td rowspan='2'>$correct_ans</td>
								<td rowspan='2'>$point</td>
								<td rowspan='2'>$minutes</td>
							  </tr>
							  <tr>
								<td>$a</td>
								<td>$b</td>
								<td>$c</td>
								<td>$d</td>
							  </tr>
							  <tr>
								<td rowspan='2'><div align='right'> </div></td>
								<td colspan='4'> </td>
								<td rowspan='2'> </td>
								<td rowspan='2'> </td>
								<td rowspan='2'> </td>
							  </tr>
							  <tr>
								<td> </td>
								<td> </td>
								<td> </td>
								<td> </td>
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
</p>
<table width="100%" border="0">
  <tr>
    <td>&nbsp;<hr/></td>
    <td colspan="4">Active Questions - <?PHP echo $heading ?> <hr/></td>
    <td>Ans<hr/></td>
    <td>Pts<hr/></td>
    <td>Time<hr/></td>
  </tr>
  <!-- start of details -->
  <?PHP echo $details; ?>
  <!-- end of details -->
  <tr>
    <td><hr/></td>
    <td colspan="4"><?PHP echo $xx; ?><hr/></td>
    <td><hr/></td>
    <td><hr/></td>
    <td><hr/></td>
  </tr>
</table>

