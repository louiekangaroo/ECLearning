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
   <body class="indexBody" ng-controller="getTopicListCtrl">
    <!--This is the HEADER-->
    <?PHP include_once('echeader.php'); ?>
    <div class="container">
        <span class="textTitle">Select your topic</span><hr>
        <div class="row content">
            <div class="col-xs-12 col-sm-12 col-lg-12 text-left">
               <div class="divButtons">
                         <button type="button" id="btnAddTopic" class="btnUser defaultBtn">Add New</button>
                         <!--<input type="button" class ="btnUser" id="btnAddTopic" value="Add New">-->
                    </div>
                    <div class="table-responsive">
                        <table id="topicTbl" class="table table-striped table-bordered" cellspacing="0" width="100%">
                          <thead>
                            <tr>
                                <th>Study Name</th>
                                <th>Is Parent</th>
                                <th></th>
                            </tr>
                          </thead>
                          <tbody>
                          <tr ng-repeat="topic in getTopicList">
                              <td ng-class="{bold: topic.isparent == 1}">{{topic.studyname}}</td>
                              <td><input type="checkbox" disabled="true" ng-checked="{{ topic.isparent }}" class="chkOk"></td>
                              <td class="alignCenter">
                                  <p class="pLink">
                                      <span class="btnLink blue glyphicon glyphicon-pencil" ng-click="btnEditTopic(topic.id)"></span>
                                  </p> 
                              </td>
                              
                          </tr>
                          </tbody>
                        </table>
                    </div>
            </div>
        </div>
    </div>
    <?PHP include_once('ecfooter.php'); ?>
   </body>
</html>