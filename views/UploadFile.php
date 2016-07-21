<!-- start of header code 'ECheader.php'-->
<?PHP 
   session_start();
   include_once("../controllers/udf.php");
   include_once("menuinterface.php");
   if(isset($_REQUEST['delrecord'])){
	    $recid = $_REQUEST['delrecord'];
		$SqlDelete = "delete from studymaterials where id='$recid';";
		if(ExecuteNoneQuery($SqlDelete)){
			// deleted successfull
			DisplayAlert("Material Record ID : $recid Deleted!");
		}else{
			// delete fails
			DisplayAlert("Faild to delete Material Record ID : $recid!");			
		}
		//die("xxxxxxxxx $recid");
   }
   ?>
<!DOCTYPE html>
<html ng-app="configModule">
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
      <meta name="description" content="">
      <meta name="keywords" content="">
      <meta name="author" content="Team PELA">
      <link rel='shortcut icon' type='image/x-icon' href='../favicon.ico' />
      <title>EC Learning</title>
      <link href="../css/bootstrap.min.css" rel="stylesheet">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
      <link href="../css/global.css" rel="stylesheet">
      <script src="../js/jquery-2.2.4.min.js"></script>
      <script src="../js/angular.min.js"></script>
      <script src="../js/bootstrap.min.js"></script>
      <script src="../js/ec.js"></script>
      <script src="../js/config.js"></script>
   </head>
   <body class="indexBody" ng-controller="questionListCtrl">
      <!--This is the HEADER-->
      <?PHP include_once('echeader.php'); ?>
        <div class="container">
                 <span class="textTitle">Manage Study Materials</span>
                 <hr>
                 <div class="row content">
                    <div class="col-xs-12 col-sm-12 col-lg-12 text-left">
					
                    <form class="form-horizontal" role="form" enctype="multipart/form-data" method="post" action="ActionUploadFile.php">
                          

                            <!-- start code to facilitate file upload -->
                            <input type="hidden" name="MAX_FILE_SIZE" value="50000000" />
                            <!-- end code of file upload -->
                            
                            <label class="StudyUnitID" for="StudyUnitID">Study Unit ID/Name</label>
                            <label for="select"></label>
                            <select name="StudyUnitID" size="1" id="StudyUnitID">
                              <?PHP 
								require("../controllers/connection.php");
								global $con;
								if (!$con) {
									die("Connection failed: " . mysqli_connect_error());
								}
								$sql = "SELECT * FROM studyunits;"; 
								
								$result = mysqli_query($con, $sql);
								if ($result) {
									$details = "";
									$ctr=0;
									$tmpstudyname = "";
									$ctr = 0;
									foreach ($result as $row) {
										$ctr++;
										$studyID = $row['id'];
										$studyName = $row['studyname'];
										$details .= "<option value ='$studyID'>$studyID. $studyName</option>";			
									}
								}
								echo $details;	
								mysqli_free_result($result);		
                            ?>
                            </select>
                            <br/>
                            <label class="description" for="MaterialDescription"><br />
                              Material Descriptions</label>
                            <br />
                            <textarea name="MaterialDescription" cols="50" rows="4" class="element text medium" id="MaterialDescription" required="required"></textarea> 
                            
                            <label class="description" for="FiletoUpload"><br />
                              <br />
                              Upload a File <br />
                            </label>
                            
                            <input id="FiletoUpload" name="FiletoUpload" class="element file" type="file" required="required"/> 
                            <br />
                            <br />
                            <input type="reset" name="Reset" id="button" value="Reset" />
                            <input id="saveForm" class="button_text" type="submit" name="submit" value="Submit" />
                            
                 
                    </form>	
                    
                    <form name="form1" method="post" action="">
                      Search Study Materials : 
                      <label for="textfield"></label>
                      <input type="text" name="textfield" id="textfield">
                      <input type="submit" name="button2" id="button2" value="Submit">
                    </form>
                    
                     <?PHP 
								require("../controllers/connection.php");
								global $con;
								if (!$con) {
									die("Connection failed: " . mysqli_connect_error());
								}
								$sql = "SELECT 
											m.id,
											m.studyunitID,
											m.filename,
											m.descriptions,
											m.datetimeupload,
											m.uploadby,
											s.studyname 
										FROM 
											studyunits s, 
											studymaterials m 
										where s.id=m.studyunitID;"; 
								
								$result = mysqli_query($con, $sql);
								if ($result) {
									$details = "";
									$ctr=0;
									$tmpstudyname = "";
									$ctr = 0;
									$studyunitID = '';
									foreach ($result as $row) {
										$ctr++;
										$recid = $row['id'];
										$studyunitID = $row['studyunitID']; 
										$filename = $row['filename']; 
										$descriptions  = $row['descriptions']; 
										$datetimeuplload  = $row['datetimeupload']; 
										$uploadby = $row['uploadby']; 
										$studyName  = $row['studyname']; 
										$details .= "
										<tr>
											<td>$studyunitID</td>
											<td>$descriptions<br/>
											<a href='./../studymaterials/$filename' target='_blank'>DOWNLOAD</a></td>
											<td>$datetimeuplload</td>
											<td>$uploadby</td>
											<td><a href=UploadFile.php?delrecord=$recid>delete</a> / download</td>
										</tr>
										";
									}
									if($ctr<1){
										$details = "										
										<tr>
											<td colspan='5'>NOTHING TO DISPLAY</td>
										</tr>
										";	
									}
								}
								mysqli_free_result($result);		
                            ?>
                    
                    
                    <table width="100%" border="1">
                      <tr>
                        <td><div align="center">StudyID/Name</div></td>
                        <td><div align="center">Material Descriptions</div></td>
                        <td><div align="center">Date Time Uploaded</div></td>
                        <td><div align="center">Upload by</div></td>
                        <td><div align="center">Action</div></td>
                      </tr>
                     <?PHP
					 	echo $details;
					 ?>
                    </table>
			       </div>
				</div>
			</div>        
 <?PHP include_once('ecfooter.php'); ?>
   </body>
</html>	