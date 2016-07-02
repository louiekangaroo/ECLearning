<?php
   session_start();
   include_once("../controllers/udf.php");
   
   /* session variables */
       $_SESSION['address']    ='';
       $_SESSION['contactno']  ='';
       $_SESSION['emailadd']   ='';
       $_SESSION['fname']      ='';
       $_SESSION['id']         ='';
       $_SESSION['lname']      ='';
       $_SESSION['mname']      ='';
       $_SESSION['password']   ='';
       $_SESSION['status']     ='';
       $_SESSION['username']   ='';
       $_SESSION['usertype']   ='';
   /* end of session variables */
   
   $pw='';
   $id='';
   if(isset($_POST['user_login']) && isset($_POST['user_password']) ){
       $id = $_POST['user_login'];
       $pw = $_POST['user_password'];
       if(ChkUserLogin($id, $pw)) {
           siteRedirectWithAlert("Welcome back " . $_SESSION['wholename'],"index.php");
       }else{
           session_destroy();
           DisplayAlert("Invalid Username and/or Password combination.");
       }
   } else {
       
   }
   
   ?>
<!DOCTYPE html>
<html>
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
      <link href="../css/global.css" rel="stylesheet">
      <script src="../js/jquery-2.2.4.min.js"></script>
      <script src="../js/bootstrap.min.js"></script>
      <script src="../js/ec.js"></script>
   </head>
   <body class="loginBody">
      
         <div class="container">
            <div class="row row-centered">
               <div class="col-xs-12 col-centered col-max">
                  <div style="text-align:center">
                     <img id="logo" src="../images/eclearninglogo.png" alt="excelciaLogo" />
                  </div>
               </div>
            </div>
            <form action="#" method="post">
            <div id="loginForm" class="row row-centered">
               <div class="col-xs-12 col-centered col-max">
                  <div class="loginBox">
                     <input type="text" name="user_login" class="textBox" id="user_login" placeholder="Username"/>
                     <input type="password" name="user_password" class="passBox" id="user_password" placeholder="Password"/>
                     <button type="submit" class="btn btn-blue btnBox">Sign In</button>
                     <a class="link lnk-forgotPass">Forgot your password?</a>
                     <br><span class="link warningText" style="display:none">asdadsa</span>
                  </div>
               </div>
            </div>
            </form>
            <div id="forgotPasswordForm" class="row row-centered" style="display:none;">
                <div class="col-xs-12 col-centered col-max">
                  <div class="loginBox">
                     <input type="text" class="textBox" id="txtUsername" placeholder="Username"/>
                     <input type="password" class="passBox" id="txtNewPassword" placeholder="New Password"/>
                     <input type="password" class="passBox" id="txtConfirmPassword" placeholder="Confirm Password"/>
                     <button class="btn btn-red btnBox btnChangePass">Change Password</button>
                     <br><span class="link warningText" style="display:none"></span>
                  </div>
               </div>
            </div>
      
     <?PHP 
include_once('ECfooter.php');
?>
      </div>
   </body>
</html>