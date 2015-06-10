<?php

class Application_Model_ExerciseMapper {

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
      $this->setDbTable('Application_Model_DbTable_Exercise');
    }
    return $this->_dbTable;
  }

  /**
   * Save a record into the Exercise table
   * @param Application_Model_Exercise $exercise
   */
  public function save(Application_Model_Exercise $exercise) {
    $data = array(
      'name' => $exercise->getName(),
      'abbreviation' => $exercise->getAbbreviation(),
      'force' => $exercise->getForce(),
      'muscle' => $exercise->getMuscle(),
      'description' => $exercise->getDescription(),
    );
    if (null === ($id = $exercise->getId())) {
      unset($data['id']);
      $this->getDbTable()->insert($data);
    }
    else {
      $this->getDbTable()->update($data, array('id = ?' => $id));
    }
  }

  /**
   * Find an exercise by id
   * @param type $id
   * @param Application_Model_Exercise $exercise
   * @return type
   */
  public function find($id, Application_Model_Exercise $exercise) {
    $result = $this->getDbTable()->find($id);
    if (0 == count($result)) {
      return;
    }
    $row = $result->current();
    $exercise->setId($row->id)
      ->setName($row->name)
      ->setAbbreviation($row->abbreviation)
      ->setForce($row->force)
      ->setMuscle($row->muscle)
      ->setDescription($row->description);
  }

  public function fetchAll() {
    $resultSet = $this->getDbTable()->fetchAll();
    return $this->retvalar($resultSet);
  }

//  public function fetchAll() {
//    $resultSet = $this->getDbTable()->fetchAll();
//    $exerciseSet = array();
//    foreach ($resultSet as $row) {
//      $exercise = new Application_Model_Exercise();
//      $exercise->setId($row->id)
//        ->setFirstName($row->first_name)
//        ->setLastName($row->last_name)
//        ->setHandle($row->handle);
//      $exerciseSet[] = $exercise;
//    }
//    return $exerciseSet;
//  }

  /**
   * retvalar = ret(urn) var(iables') ar(ray)
   * Put the result from querying the database into an array to return to the view
   * @param type $resultSet
   * @return \Application_Model_Progress
   */
  public function retvalar($resultSet) {
    $outbox = array();
    $recordSet = array();

    $columnSet = $this->getDbTable()->info(Zend_Db_Table_Abstract::COLS);

    foreach ($resultSet as $row) {
      $exercise = new Application_Model_Exercise();
      $exercise->setId($row->id)
        ->setName($row->name)
        ->setAbbreviation($row->abbreviation)
        ->setForce($row->force)
        ->setMuscle($row->muscle)
        ->setDescription($row->description);
      $exerciseSet[] = $exercise;
    }
    $outbox['columnSet'] = $columnSet;
    $outbox['exerciseSet'] = $exerciseSet;
    return $outbox;
  }

}
