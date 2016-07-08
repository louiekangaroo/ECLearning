<!-- start of header code 'ECheader.php'-->
<?PHP 
   session_start();
   include_once("../controllers/udf.php");
   include_once("menuinterface.php");
?>
<!DOCTYPE html>
<html ng-app="qaModule">
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
      <script src="../js/qa.js"></script>
   </head>
   <body class="indexBody" ng-controller="reviewTopicsCtrl">
    <!--This is the HEADER-->
    <?PHP include_once('echeader.php'); ?>
    <div class="container">
        <span class="textTitle">Select your topic</span><hr>
        <div class="row content">
            <div class="col-xs-12 col-sm-12 col-lg-12 text-left">
            
                <div ng-repeat="x in topics">
                    <input id="rdio" type="radio" name="rdtopic" value="{{ x.id }}">
                    <label for="rdio"><span><span></span></span>{{x.topicname}}</label>
                </div>
            </div>
        </div>
        <div class="row content">
            <div class="col-xs-12 col-sm-6 col-lg-3 text-left">
                <input type="submit" class="btn btn-blue btnBox btnReviewTopicsSubmit" value="Submit">
            </div>
        </div>
    </div>
    <?PHP include_once('ecfooter.php'); ?>
   </body>
</html>