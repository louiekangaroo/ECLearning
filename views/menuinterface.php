<?PHP
	if(strlen(trim($_SESSION['usertype']))<1 ){
       siteRedirectWithAlert("You Must Login first!","login.php");
   }
   $usertype = strtolower($_SESSION['usertype']);
   $fname  = strtoupper($_SESSION['fname']);
   $lname = strtoupper($_SESSION['lname']);

   $displaymenu = "<div id='navbarCollapse' class='collapse navbar-collapse'>";
   $displaymenu .= "<ul class='nav navbar-nav'>";
   if($usertype=='admin') {
       $displaymenu .= "                   
            <li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>EC Management <b class='caret'></b></a>
                <ul class='dropdown-menu'>
                    <li><a href='usermanagement.php'>User Management</a></li>
                    <li><a href='underconst.php'>Question Bank</a></li>
                    <li><a href='testconfig.php'>Manage Exam</a></li>
                </ul>
            </li>
            <li class='dropdown'><a href='underconst.php' class='dropdown-toggle' data-toggle='dropdown'>Manage Study Materials</b></a></li>
            <li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>Report Management <b class='caret'></b></a>
                <ul class='dropdown-menu'>
                    <li><a href='printcoursemast.php' target='_blank'>Course Master List</a></li>
                    <li><a href='perfanalysis.php' target='_blank'>Performance Report</a></li>
                    <li><a href='testconfig.php'>Test / Exam Keys</a></li>
                    <li><a href='underconst.php'>Student Log Report</a></li>
                    <li><a href='underconst.php'>Teachers Log Report</a></li>
               </ul>
            </li>";
   }
   if($usertype=='teacher') {
       $displaymenu .= "
            <li class='dropdown'><a href='underconst.php' class='dropdown-toggle' data-toggle='dropdown'>Manage Study Materials</b></a></li>
            <li class='dropdown'><a href='underconst.php' class='dropdown-toggle' data-toggle='dropdown'>Manage Exam</b></a></li>
            <li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>Report Management <b class='caret'></b></a>
                <ul class='dropdown-menu'>
                    <li><a href='printcoursemast.php' target='_blank'>Course Master List</a></li>
                    <li><a href='perfanalysis.php' target='_blank'>Performance Report</a></li>
                    <li><a href='testconfig.php'>Test / Exam Keys</a></li>
                    <li><a href='underconst.php'>Student Log Report</a></li>
               </ul>
            </li>";
   }
   if($usertype=='student') {
       $displaymenu .= "
            <li class='dropdown'><a href='underconst.php' class='dropdown-toggle' data-toggle='dropdown'>Review / Download Materials</b></a></li>
            <li class='dropdown'><a href='selectsession.php' class='dropdown-toggle'>Select Session</b></a></li>
            <li class='dropdown'><a href='perfanalysis.php' class='dropdown-toggle' target ='_blank' >Performance Report</b></a></li>";
            
   }
   $displaymenu .= "<li><a href='underconst.php'>Help, Info and Support</a></li>";
   $displaymenu .= "</ul>";
  
?>

