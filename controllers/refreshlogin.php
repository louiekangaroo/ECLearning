<?php 
/*
    objectives : 
        1. to renew login datetime for active user
        2. to clean-up user login status for those is said to be in active for more than 1 hour
*/
session_start();

$vupwd = $_SESSION['password'];
$vuid = $_SESSION['username'];

include_once("udf.php");

$vUserIP = GetIP();

$vUserStatus = "update personalinfo set status = 1, ipaddress ='$vUserIP', DateTImeActive=now() where ((username='$vuid' and password = '$vupwd') or TIMEDIFF(now(), DateTimeActive) > '00:59:59') and status='1';";

$vfount = ExecuteNoneQuery($vUserStatus);   // to update personalinfo status and datetime logged in

?>