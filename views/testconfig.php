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
   <body class="indexBody" ng-controller="getConfigCtrl">
    <!--This is the HEADER-->
    <?PHP include_once('echeader.php'); ?>
        <div class="container">
            <span class="textTitle">Test Config</span><hr>
            <div class="row content">
                <div class="col-xs-12 col-sm-12 col-lg-12 text-left">
                <div class="divButtons">
                         <button type="button" id="btnCreateNew" class="btnUser defaultBtn">Add New</button>
                         <!--<input type="button" id="btnCreateNew" class ="btnConfig" value="Create New Record">-->
                    </div>
                    <div class="table-responsive">
                        <table id="testConfigTbl" class="table table-striped table-bordered" cellspacing="0" width="100%">
                          <thead>
                            <tr>
                                <th>Test Type</th>
                                <th>Study Name</th>
                                <th>Number of Easy</th>
                                <th>Number of Moderate</th>
                                <th>Number of Difficult</th>
                                <th>Is Random</th>
                                <th></th>
                            </tr>
                          </thead>
                          <tbody>
                          <tr ng-repeat="test in testconfig">
                              <td class="alignCenter">{{ test.topicname }}</td>
                              <td class="alignCenter">{{ test.studyname }}</td>
                              <td class="alignCenter">{{ test.itemseasy }}</td>
                              <td class="alignCenter">{{ test.itemsmoderate }}</td>
                              <td class="alignCenter">{{ test.itemsdifficult }}</td>
                              <td class="alignCenter"><input type="checkbox" disabled="disable" ng-checked="test.israndom" class="chkOk"></td>
                              <td class="alignCenter">
                                  <span class="btnLink blue glyphicon glyphicon-file" ng-click="btnConfigure(test.testtype,test.subjid)" title="Configure Questions"></span>
                                  <span class="btnLink blue glyphicon glyphicon-pencil" ng-click="btnEdit(test.id)" title="Edit"></span>
                                  <span class="btnLink blue glyphicon glyphicon-print" ng-click="btnPrint(test.id)" title="Print Questions"></span>
                                      
                                    
                            
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