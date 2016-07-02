<nav role="navigation" class="navbar navbar-default">
   <!-- Brand and toggle get grouped for better mobile display -->
   <div class="navbar-header">
      <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      </button>
      <a href="index.php" class="navbar-brand"><img id="brandLogo" src="../images/eclearninglogo.png" alt="eclearninglogo"/></a>
   </div>
   <?PHP echo $displaymenu; ?>
   <ul class='nav navbar-nav navbar-right'>
      <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
           Hi, <span class="welcomeUser"><?PHP echo $fname . ' ' . $lname ?></span><span><?PHP echo ' - ' . $usertype . ' ' ?></span><b class="caret"></b></a>
       <ul class="dropdown-menu">
           <li><a href='#'>Profile</a></li>
           <li><a href='../controllers/logout.php'>Sign Out</a></li>
       </ul>
       </li>
       
       
   </ul>
   </div>
</nav>