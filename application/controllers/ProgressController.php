<?php

class ProgressController extends Zend_Controller_Action {

  public function init() {
    /* Initialize action controller here */
  }

  public function indexAction() {
    $pm = new Application_Model_ProgressMapper();
    $this->view->inbox = $pm->fetchAll();
  }

}
