<!-- start of header code 'ECheader.php'-->
<?PHP 
   session_start();
   include_once("../controllers/udf.php");
   include_once("menuinterface.php");
   ?>
<!DOCTYPE html>
<html ng-app="topicModule">
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
      <script src="../js/topic.js"></script>
   </head>
   <body class="indexBody" ng-controller="editTopicCtrl">
      <!--This is the HEADER-->
      <?PHP include_once('echeader.php'); ?>
      <div class="container">
         <span class="textTitle">Edit Topic</span>
         <hr>
         <div class="row content">
            <div class="col-xs-12 col-sm-12 col-lg-12 text-left">
                <div id="topicDiv">
               <form class="form-horizontal" role="form">
                   <div class="row" style="padding: 0 10px 0 10px">
                        <div class="col-sm-6 col-lg-8">
                            <div class="form-group">
                                <label for="txtTestType" class="col-md-2 control-label txtLabel">Topic Type:</label>
                                <div class="col-md-6">
                                    <select id="idTopic" name="topicchoice" class="form-control inputUser">
                                           <option value="0">Main Topic</option>
                                        <option value="1">Sub-Topic</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                   </div>
                   <div id="hiddenDiv" class="row" style="padding: 0 10px 0 10px; display:none">
                   <div class="col-sm-6 col-lg-8">
                       <div class="form-group">
                                <label class="col-md-2 control-label txtLabel">Main Topics:</label>
                                <div class="col-md-8">
                                    <select name="topicval" class="form-control inputUser">
                                        <option ng-repeat="topic in getMainTopic" value="{{topic.id}}">{{topic.studyname}}</option>
                                    </select>
                                </div>
                       </div>
                   </div>
                   </div>
                   <div class="row" style="padding: 0 10px 0 10px">
                   <div class="col-sm-6 col-lg-8">
                       <div class="form-group">
                                <label class="col-md-2 control-label txtLabel">Topic Title:</label>
                                <div class="col-md-8">
                                    <input type='text' name='tname' id="topicName" class="form-control inputUser">
                                </div>
                       </div>
                   </div>
                   </div>
                   <div class="row" style="padding: 0 10px 0 10px">
                        <div class="col-sm-6 col-lg-8">
                            <div class="form-group">
                            <label class="col-md-2 control-label txtLabel"></label>
                            <div class="col-md-2">
                                <button ng-click="updateTopic()"  type="button" class="btnSave defaultBtn blueBg btnSaveTopic" style="float: right; width: 100%;"> Save </button>
                                <!--<input type="button" class ="btn btn-blue btnBox btnSaveTopic" ng-click="saveTopic()" value="Save">-->
                            </div>
                            <div class="col-md-2">
                                <button type="button" class="defaultBtn greyBg" style="float: right; width: 100%;">
                                    <a href='topicconfig.php'>Back</a>
                                </button> 
                            </div>
                            </div>
                        </div>
                   </div>
               </form>
            </div>
         </div>
        </div>
      </div>
      <?PHP include_once('ecfooter.php'); ?>
   </body>
</html>