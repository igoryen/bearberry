<?php

class Arugula{
  private $result = [];
  
  function __construct($result) {
    $this->result = $result;
  }
  
  function printQueryResult(){
    while($row = $this->result->fetch_assoc()) {
        echo '<a href="' . $row["url"]. '" target="_blank">' . $row["name"]. '</a> - '.$row['category'].'<br>';
    }
  }
}