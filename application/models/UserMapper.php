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
      $this->setDbTable('Application_Model_DbTable_Guestbook');
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
   * @param Application_Model_Guestbook $guestbook
   * @return type
   */
  public function find($id, Application_Model_User $user) {
    $result = $this->getDbTable()->find($id);
    if (0 == count($result)) {
      return;
    }
    $row = $result->current();
    $guestbook->setId($row->id)
      ->setEmail($row->email)
      ->setComment($row->comment)
      ->setCreated($row->created);
  }

  public function fetchAll() {
    $resultSet = $this->getDbTable()->fetchAll();
    $entries   = array();
    foreach ($resultSet as
      $row) {
      $entry     = new Application_Model_Guestbook();
      $entry->setId($row->id)
        ->setEmail($row->email)
        ->setComment($row->comment)
        ->setCreated($row->created);
      $entries[] = $entry;
    }
    return $entries;
  }

}
