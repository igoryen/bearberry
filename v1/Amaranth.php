<?php

class Amaranth {

  private $servername ='';
  private $username ='';
  private $password ='';
  private $dbname ='';
  private $result = [];
  private $conn ="";

  /**
   * initialize the credentials of the db
   * 
   * @param type $servername
   * @param type $username
   * @param type $password
   * @param type $dbname
   */
  function __construct($servername, $username, $password, $dbname) {
    $this->servername = $servername;
    $this->username = $username;
    $this->password = $password;
    $this->dbname   = $dbname;
  }

  /**
   * Create a connection with the database
   * @return type
   */
  function createConnection() {
    $retval ="";
    $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);

    // Check connection
    if ($this->conn->connect_error) {
      die("Connection failed: " . $this->conn->connect_error);
      $retval = false;
    }
    else {
      return $this->conn;
    }
  }
  

  /**
   * destroy the database connection with the database
   */
  function destroyConnection(){
    $this->conn->close();
  }

  
  /**
   * Run query and return its result
   * 
   * @param type $sql
   * @return type
   */
  function runquery($sql){
//    echo 'in runquery';
//    echo $sql ;
    $rslt = $this->conn->query($sql);
//    gettype($rslt);
    if ($rslt->num_rows > 0) {
      $this->result = $rslt;
    }
    else {
      $this->result = "0 results";
    }
    return $this->result;
  }
  
  
  
}
