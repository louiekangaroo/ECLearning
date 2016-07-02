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
            <li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>CIA Management <b class='caret'></b></a>
                <ul class='dropdown-menu'>
                    <li><a href='usermanagement.php'>User Accounts</a></li>
                    <li><a href='#'>Question Bank</a></li>
                </ul>
            </li>
            <li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>Report Management <b class='caret'></b></a>
                <ul class='dropdown-menu'>
                    <li><a href='#'>User Activity Logs</a></li>
                    <li><a href='#'>Exam Results</a></li>
               </ul>
            </li>";
   }
   if($usertype=='teacher') {
       $displaymenu .= "
            <li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>Manage Study Materials</b></a></li>
            <li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>View Students Performance Report</b></a></li>";  
   }
   if($usertype=='student') {
       $displaymenu .= "
            <li class='dropdown'><a href='#' class='dropdown-toggle' data-toggle='dropdown'>Review / Download Materials</b></a></li>
            <li class='dropdown'><a href='selectsession.php' class='dropdown-toggle'>Select Session</b></a></li>";
   }
   $displaymenu .= "<li><a href='#'>Help, Info and Support</a></li>";
   $displaymenu .= "</ul>";
  
?>
