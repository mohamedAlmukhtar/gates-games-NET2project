<?php
 $dsn ='mysql:host=localhost;dbname=gates_games';//Data source Name
 $user ='root';// user to connect
 $pass ='';//
 $options =array(
   PDO::MYSQL_ATTR_INIT_COMMAND=>'SET  NAMES utf8',///options
 );
 try {
   $con = new PBD($dsn,$user,$pass,$options);
   $con->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_Exception);
  /* $query = INSRET  INTO */
  echo 'Welcome';
   /*$con->exec($query);k*/
 }
 catch(PDOException $e){

   echo'Failed'.$e->getMessage();

 }
 ?>
