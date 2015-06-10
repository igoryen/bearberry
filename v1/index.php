<?php
require_once 'aaa.php';
require_once 'bbb.php';
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
  <head>
    <meta charset="UTF-8">
    <title></title>
  </head>
  <body>
    <h1>Bearberry</h1>
    <?php
    $am = new Amaranth('localhost','root', '', 'almond');
    
    $am->createConnection();
    $sql = 'SELECT name, url, category FROM resource;';
    $result = $am->runquery($sql);
    
    $ar = new Arugula($result);
    $ar->printQueryResult();
    
    $am->destroyConnection();
    // put your code here
    
    ?>
  </body>
</html>
