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
   <body class="indexBody" ng-controller="finishCtrl">
    <!--This is the HEADER-->
    <?PHP include_once('echeader.php'); ?>
    <div class="container">
        <span class="textTitle">EC Learning Grade Report</span><hr>
        <div id="finishBody">
            <div class="row content">
                <div class="col-sm-12 col-lg-12">
                    <div class="form-group">
                        <div class="col-md-6">
                            <span id="studName"><b>Student Name: </b><?PHP echo $fname . ' ' . $lname ?></span>
                        </div>
                        <div class="col-md-6">
                            <span id="testType"><b>Type of Test: </b><span class="typeOfTest">Study Session</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row content">
                <div class="col-sm-12 col-lg-12">
                    <div class="form-group">
                        <div class="col-md-6">
                            <span id="topic"><b>Topic: </b><span class="topicName">Introduction to Accounting</span></span>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="row content">
                <div class="col-sm-12 col-lg-12">
                    <div class="form-group">
                        <div class="col-md-12" style="text-align: center">
                            <h2>Performance Rating</h2>
                            <h3 class="grade">{{average}}%</h3>
                            <h3 class="remarks">Good!</h3>
                            <h3 class="advice">Practice More!</h3>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row content">
                <div class="col-sm-12 col-lg-12">
                    <div class="form-group">
                        <div class="col-md-4">
                                <button type="button" class="defaultBtn blueBg" style="float: right; width: 100%;">
                                    <a href='perfanalysis.php'>Proceed to Performance Analysis</a>
                                </button> 
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?PHP include_once('ecfooter.php'); ?>
   </body>
</html>