<?php

class ExerciseController extends Zend_Controller_Action {

  public function init() {
    /* Initialize action controller here */
  }

  /**
   * Do `SELECT * FROM Exercise` and display all the exercises in the index.phmtl
   */
  public function indexAction() {
    $em =  new Application_Model_ExerciseMapper();
    $this->view->inbox = $em->fetchAll();
  }

}
