<!-- start of header code 'ECheader.php'-->
<?PHP 
   session_start();
   include_once("../controllers/udf.php");
   include_once("menuinterface.php");
?>
<!DOCTYPE html>
<html ng-app="userModule">
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
      <script src="../js/user.js"></script>
   </head>
   <body class="indexBody" ng-controller="getUserListCtrl">
    <!--This is the HEADER-->
    <?PHP include_once('echeader.php'); ?>
        <div class="container">
            <span class="textTitle">User Management</span><hr>
            <div class="row content">
                <div class="col-xs-12 col-sm-12 col-lg-12 text-left">
                    <div class="divButtons">
                         <input type="button" class ="btnUser" value="Add New">
                    </div>
                    <div class="table-responsive">
                        <table id="userTbl" class="table table-striped table-bordered" cellspacing="0" width="100%">
                          <thead>
                            <tr>
                                <th>Name</th>
                                <th>Username</th>
                                <th>Type</th>
                                <th></th>
                            </tr>
                          </thead>
                          <tbody>
                          <tr ng-repeat="user in userList">
                              <td>{{ user.fname }} {{user.mname}} {{user.lname}}</td>
                              <td>{{ user.username }}</td>
                              <td>{{ user.usertype }}</td>
                              <td class="alignCenter">
                                  <p class="pLink">
                                      <span class="btnLink blue glyphicon glyphicon-pencil" ng-click="btnEditUser(user.id)"></span>
                                      <span class="btnLink red glyphicon glyphicon-remove" ng-click="btnDeleteUser(user.id)"></span>
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