<?php

class ProgressController extends Zend_Controller_Action {

  public function init() {
    /* Initialize action controller here */
  }

  public function indexAction() {
    $progress                = new Application_Model_DbTable_Progress();
    $this->view->progressSet = $progress->fetchAll();
  }

}
