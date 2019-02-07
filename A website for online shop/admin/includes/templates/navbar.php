<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-nav" aria-expanded="false">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="dashboard.php"><?php echo 'home';?></a>
    </div>
    <div class="collapse navbar-collapse" id="app-nav">
      <ul class="nav navbar-nav">
        <li><a href="categories.php"><?php echo 'Categories'; ?></a></li>
        <li><a href="items.php"><?php echo 'Items'; ?></a></li>
        <li><a href="members.php"><?php echo 'Members' ?></a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown" 	>
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" style="background:#333;"> <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="../index.php" style="background:#333;">Visit Shop</a></li>
            <li><a href="members.php?do=Edit&userid=<?php echo $_SESSION['ID'] ?>" style="background:#333;" >Edit Profile</a></li>
           
            <li><a href="logout.php" style="background:#333;">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>