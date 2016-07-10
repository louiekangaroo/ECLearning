<!-- start of header code 'ECheader.php'-->
<?PHP 
   session_start();
   include_once("../controllers/udf.php");
   include_once("menuinterface.php");
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
         <span class="textTitle">Configure Questions</span>
         <hr>
         <div class="row content">
            <div class="col-xs-12 col-sm-12 col-lg-12 text-left">
               <form class="form-horizontal" role="form">
               <div class="row" style="padding: 0 10px 0 10px">
                  <div class="col-sm-6 col-lg-4">
                     <div class="form-group">
                        <label for="txtTestType" class="col-md-6 control-label txtLabel">Test Type:</label>
                        <div class="col-md-6">
                           <select name="testtype" class="form-control testtype">
                              <option value="1">Pre-Test</option>
                              <option value="2">Post-Test</option>
                              <option value="3">Short Quiz</option>
                              <option value="4">Long Quiz</option>
                              <option value="5">Major Exam</option>
                           </select>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="row" style="padding: 0 10px 0 10px">
                  <div class="col-xs-12 col-sm-12 col-lg-12">
                     <div class="form-group">
                        <label for="txtTestType" class="col-md-0 control-label txtLabel"></label>
                        <div class="col-md-12">
                           <div class="list-responsive">
                              <ul ng-repeat="question in questionLists" style="list-style: none;">
                                 <li>
                                    <input type="checkbox" name="chkb[]" ng-checked="question.testid" value="{{question.examid}}">
                                    <label for=""><span><span></span></span></label> {{ question.question }}
                                 </li>
                              </ul>
                              
                           </div>
                              <div class="form-group clsButtonSaveCancel">
                                <label class="col-md-4"></label>
                                <div class="col-md-4">
                                    <input type="button" class ="btnSave" value="Save" style="float: center; width: 50%;">
                                </div>
                               
                            </div>
                        </div>
                     </div>
                      
                  </div>
               </div>
                   
            </div>
         </div>
      </div>
      <?PHP include_once('ecfooter.php'); ?>
   </body>
</html>