<?php
session_start();
include ('../controllers/udf.php'); 
$fullname = '';
$allowed_filetypes = array('.jpg','.jpeg','.png','.gif','.doc','.docx','.zip','.rar','.pdf','.txt');
$max_filesize = 50000000;
$upload_path = './../studymaterials/';
$redirectTo ="index.php";

$filename = $_FILES['FiletoUpload']['name'];
$ext = strtolower(substr($filename, strpos($filename,'.'), strlen($filename)-1));
$good = true;
$errdesc ='';
$vDesc	= '';
$vStudyUnitID = '';
//$vdocrefnum =0;
//$StudyUnitID ='NEW';
$errDocRefNum = "";
$_SESSION['wholename'] = trim($_SESSION['lname']) . ', '.trim($_SESSION['fname']). ' '.trim($_SESSION['mname']);
if(isset($_SESSION['wholename'])){
	$vuploadby = $_SESSION['wholename'];
}else{
	siteRedirectWithAlert("UPLOADING ERROR!!! you must login as ADMIN or Teacher to use this module...","index.php");	
}

if((isset($_REQUEST['StudyUnitID']))){
	if(strlen(trim($_REQUEST['StudyUnitID']))<1){
		siteRedirectWithAlert("Please Fill-up the required form element(s)!","UploadFile.php");
	}else{
		$StudyUnitID = $_REQUEST['StudyUnitID'];
	}
	
}else{
}

			if(!in_array($ext,$allowed_filetypes)){
				$errdesc = 'The file you attempted to upload is not allowed \n\n(acceptable files; JPG JPEG GIF PNG DOC ZIP RAR PDF TXT)';
				$redirectTo = 'UploadFile.php';
				$good = false;
			}
			
			if(filesize($_FILES['FiletoUpload']['tmp_name']) > $max_filesize) {
				//die('The file you attempted to upload is too large.');
				$errdesc = $errdesc . 'The file you attempted to upload is too large. (MAXIMUM SIZE IS $max_filesize BYTES)';
				$redirectTo = 'UploadFile.php';
				$good=false;
			}
			if(!is_writable($upload_path)){
				//die('You cannot upload to the specified directory, please CHMOD it to 777.');
				$errdesc = $errdesc .'You cannot upload to the specified directory, please CHMOD it to 777. ';
				$redirectTo = 'UploadFile.php';
				$good = false;
			}
			
			if($good){
				$target_path = $upload_path;
				
				$target_path = $target_path . basename( $_FILES['FiletoUpload']['name']); 
				
				if(move_uploaded_file($_FILES['FiletoUpload']['tmp_name'], $target_path)) {
					$errdesc = "The file \"".  basename( $_FILES['FiletoUpload']['name'])." are now uploaded";
					$vdocrefnum	= $_REQUEST['MaterialDescription'];
					//$vUsersID 	= $_SESSION['SesUserID'];
					$vDate		= date('Y-m-d').'-'. date("his");
					$vsDate		= date('Y-m-d').' '. date("h:i:s");		
					$vFileName 	= $_REQUEST['MaterialDescription'].'-'. $vDate.$ext;
					$vDesc		= $_REQUEST['MaterialDescription'];
					rename("$upload_path".basename( $_FILES['FiletoUpload']['name']), "$upload_path".$vFileName);
					$vSQLcmd="insert into studymaterials (filename,descriptions,studyunitID,datetimeupload,uploadby) values ('$vFileName','$vDesc','$StudyUnitID',now(),'$vuploadby')";
					
					ExecuteNoneQuery($vSQLcmd);
				} else{
					$errdesc = $errdesc ."There was an error uploading the file, please try again!";
					$redirectTo = 'uploadfile.php';
				}
			siteRedirectWithAlert($errdesc,$redirectTo);
	
}else{
		siteRedirectWithAlert("Please Fill-up Document Reference Number!","UploadFile.php");
}

?>
