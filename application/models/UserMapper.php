<?php

class Application_Model_UserMapper {

  protected $_dbTable;

  public function setDbTable($dbTable) {
    if (is_string($dbTable)) {
      $dbTable = new $dbTable();
    }
    if (!$dbTable instanceof Zend_Db_Table_Abstract) {
      throw new Exception('Invalid table data gateway provided');
    }
    $this->_dbTable = $dbTable;
    return $this;
  }

  public function getDbTable() {
    if (null === $this->_dbTable) {
      $this->setDbTable('Application_Model_DbTable_User');
    }
    return $this->_dbTable;
  }

  /**
   * Save a record into the User table
   * @param Application_Model_User $user
   */
  public function save(Application_Model_User $user) {
    $data = array(
      'first_name' => $user->getFirstName(),
      'last_name' => $user->getLastName(),
      'handle' => $user->getHandle(),
    );
    if (null === ($id   = $user->getId())) {
      unset($data['id']);
      $this->getDbTable()->insert($data);
    }
    else {
      $this->getDbTable()->update($data, array('id = ?' => $id));
    }
  }

  /**
   * Find a user by id
   * @param type $id
   * @param Application_Model_User $user
   * @return type
   */
  public function find($id, Application_Model_User $user) {
    $result = $this->getDbTable()->find($id);
    if (0 == count($result)) {
      return;
    }
    $row = $result->current();
    $user->setId($row->id)
      ->setFirstName($row->first_name)
      ->setLastName($row->last_name)
      ->setHandle($row->handle);
  }

  public function fetchAll() {
    $resultSet = $this->getDbTable()->fetchAll();
    $userSet   = array();
    foreach ($resultSet as $row) {
      $user     = new Application_Model_User();
      $user->setId($row->id)
        ->setFirstName($row->first_name)
        ->setLastName($row->last_name)
        ->setHandle($row->handle);
      $userSet[] = $user;
    }
    return $userSet;
  }

}
