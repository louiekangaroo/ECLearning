<?php 
session_start();

$vupwd = $_SESSION['password'];
$vuid = $_SESSION['username'];

include_once("udf.php");

$vUserIP = GetIP();
//$vUserStatus = "update personalinfo set status = 0, ipaddress ='$vUserIP', DateTImeActive=now() where username='$vuid' and password = '$vupwd' and status='1';";

$vUserStatus = "update personalinfo set status = 0, ipaddress ='$vUserIP', DateTImeActive=now() where ((username='$vuid' and password = '$vupwd') or TIMEDIFF(now(), DateTimeActive) > '00:59:59') and status='1';";

$vfount = ExecuteNoneQuery($vUserStatus);   // to update personalinfo status and datetime logged in

session_destroy();

header ('location: ../views/login.php');
?>