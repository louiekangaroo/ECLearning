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
    <body class="indexBody" ng-controller="addeditUserCtrl">
        <!--This is the HEADER-->
        <?PHP include_once('echeader.php'); ?>
        <div class="container">
            <span class="textTitle"><span class="clsType"></span> User</span>
            <hr>
            <div class="row content">
                <div id="userDiv">
                <form class="form-horizontal" role="form">
                    <div class="row" style="padding: 0 10px 0 10px">
                        <div class="col-sm-6 col-lg-4">
                            <div class="form-group">
                                <label for="txtUsername" class="col-md-4 control-label txtLabel">Username:</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="txtUsername" maxlength="15">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4">
                            <div class="form-group">
                                <label for="inputPassword" class="col-md-4 control-label txtLabel">Password:</label>
                                <div class="col-md-8">
                                    <input type="password" class="form-control" id="txtPassword" maxlength="6">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="padding: 0 10px 0 10px">
                        <div class="col-sm-4 col-lg-4">
                            <div class="form-group">
                                <label for="txtFirstName" class="col-md-4 control-label txtLabel">First Name:</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="txtFirstName">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-4">
                            <div class="form-group">
                                <label for="txtMiddleName" class="col-md-4 control-label txtLabel">Middle Name:</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="txtMiddleName">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-4">
                            <div class="form-group">
                                <label for="txtLastName" class="col-md-4 control-label txtLabel">Last Name:</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="txtLastName">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="padding: 0 10px 0 10px">
                        <div class="col-sm-8 col-lg-8">
                            <div class="form-group">
                                <label for="txtAddress" class="col-md-2 control-label txtLabel">Address:</label>
                                <div class="col-md-10">
                                    <textarea id="txtAddress" class="form-control"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-4">
                            <div class="form-group">
                                <label for="txtContactNo" class="col-md-4 control-label txtLabel">Contact No.:</label>
                                <div class="col-md-8">
                                    <input type="text" class="form-control" id="txtContactNo">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="padding: 0 10px 0 10px">
                        <div class="col-sm-4 col-lg-4">
                            <div class="form-group">
                                <label for="txtEmail" class="col-md-4 control-label txtLabel">Email Address:</label>
                                <div class="col-md-8">
                                    <input type="email" class="form-control" id="txtEmail">
                                </div>
                            </div>
                        </div>
                       <div class="col-sm-4 col-lg-4">
                            <div class="form-group">
                                <label for="txtUserType" class="col-md-4 control-label txtLabel">User Type:</label>
                                <div class="col-md-8">
                                    <select name="txtUserType" class="form-control">
                                        <option value="Admin">Admin</option>
                                        <option value="Teacher">Teacher</option>
                                        <option value="Student">Student</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4 col-lg-4">
                            <div class="form-group">
                                <label for="txtIsActive" class="col-md-4 control-label txtLabel">Is Active:</label>
                                <div class="col-md-8">
                                    <input id="txtIsActive" type="checkbox">
                                    <label for="txtIsActive"><span><span></span></span></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="padding: 0 10px 0 10px; margin-top: 0px;">
                        <div class="col-sm-4 col-lg-4">
                        </div>
                        <div class="col-sm-4 col-lg-4">
                        </div>
                        <div class="col-sm-4 col-lg-4">
                            <div class="form-group clsButtonSaveCancel">
                                <label class="col-md-4"></label>
                                <div class="col-md-4">
                                    <input type="button" class ="btnSave" value="Save" style="float: right; width: 100%;">
                                </div>
                                <div class="col-md-4">
                                    <input type="button" class ="btnCancel" value="Cancel" style="float: right; width: 100%;">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row this actually does not appear to be needed with the form-horizontal -->
                </form>
                </div>
            </div>
        </div>
        <?PHP include_once('ecfooter.php'); ?>
    </body>
</html>