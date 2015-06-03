<?php

class Application_Model_ProgressMapper {

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
      $this->setDbTable('Application_Model_DbTable_Progress');
    }
    return $this->_dbTable;
  }

  /**
   * Save a record into the Progress table
   * @param Application_Model_Progress $progress
   */
  public function save(Application_Model_Progress $progress) {
    $data = array(
      'uid' => $progress->getUid(),
      'eid' => $progress->getEid(),
      'week' => $progress->getWeek(),
      'weight' => $progress->getWeight(),
    );
    if (null === ($id   = $progress->getId())) {
      unset($data['id']);
      $this->getDbTable()->insert($data);
    }
    else {
      $this->getDbTable()->update($data, array('id = ?' => $id));
    }
  }

  /**
   * Find an progress record by id
   * @param type $id
   * @param Application_Model_Progress $progress
   * @return type
   */
  public function find($id, Application_Model_Progress $progress) {
    $result = $this->getDbTable()->find($id);
    if (0 == count($result)) {
      return;
    }
    $row = $result->current();
    $progress->setId($row->id)
      ->setUid($row->uid)
      ->setEid($row->eid)
      ->setWeek($row->week)
      ->setWeight($row->weight);
  }

  public function fetchAll() {
    $resultSet   = $this->getDbTable()->fetchAll();
    $progressSet = array();
    foreach ($resultSet as $row) {
      $progress      = new Application_Model_Progress();
      $progress->setId($row->id)
        ->setUid($row->uid)
        ->setEid($row->eid)
        ->setWeek($row->week)
        ->setWeight($row->weight);
      $progressSet[] = $progress;
    }
    return $progressSet;
  }

}
