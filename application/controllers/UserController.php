<?php

class UserController extends Zend_Controller_Action {

  public function init() {
    /* Initialize action controller here */
  }

  /**
   * Do `SELECT * FROM user` and display all the users in the index.phmtl
   */
  public function indexAction() {
    $user = new Application_Model_UserMapper();
    $this->view->users = $user->fetchAll();
  }

}
