<?php

class ExerciseController extends Zend_Controller_Action {

  public function init() {
    /* Initialize action controller here */
  }

  /**
   * Do `SELECT * FROM Exercise` and display all the exercises in the index.phmtl
   */
  public function indexAction() {
    $exercise =  new Application_Model_DbTable_Exercise();
    $this->view->exerciseSet = $exercise->fetchAll();
  }

}
