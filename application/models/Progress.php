<?php

class Application_Model_Progress {

  protected $_eid;
  protected $_id;
  protected $_uid;
  protected $_week;
  protected $_weight;

  public function __construct(array $options = null) {
    if (is_array($options)) {
      $this->setOptions($options);
    }
  }

  public function __set($name, $value) {
    $method = 'set' . $name;
    if ('mapper' == $name) {
      throw new Exception('__set(): Invalid progress property: wrong name: ' . $name);
    }
    elseif (!method_exists($this, $method)) {
      throw new Exception('__set(): Invalid progress property: nonexistent method: ' . $method);
    }
    $this->$method($value);
  }

  public function __get($name) {
    $method = 'get' . $name;
    if ('mapper' == $name) {
      throw new Exception('__get(): Invalid progress property: name: ' . $name);
    }
    elseif (!method_exists($this, $method)) {
      throw new Exception('__get(): Invalid progress property: nonexistent method: ' . $method . ', name: ' . $name);
    }
    return $this->$method();
  }

  public function setOptions(array $options) {
    $methods = get_class_methods($this);
    foreach ($options as $key => $value) {
      $method = 'set' . ucfirst($key);
      if (in_array($method, $methods)) {
        $this->$method($value);
      }
    }
    return $this;
  }

  ##############################################
  # SETTERS AND GETTERS
  ##############################################
  ###############
  # eid - exercise ID
  ###############
  /**
   * Set the ID of the exercise in the progress record
   * @param type $eid
   * @return \Application_Model_Progress
   */

  public function setEid($eid) {
    $this->_eid = (int) $eid;
    return $this;
  }

  /**
   * Get the ID of the exercise in the progress record
   * @return type
   */
  public function getEid() {
    return $this->_eid;
  }

  ###############
  # id 
  ###############
  /**
   * Set progress's ID
   * @param type $id
   * @return \Application_Model_Progress
   */

  public function setId($id) {
    $this->_id = (int) $id;
    return $this;
  }

  /**
   * Get progress's ID
   * @return type
   */
  public function getId() {
    return $this->_id;
  }

  ###############
  # uid - user ID
  ###############
  /**
   * Set user ID of the progress
   * @param type $uid
   * @return \Application_Model_Progress
   */

  public function setUid($uid) {
    $this->_uid = (int) $uid;
    return $this;
  }

  /**
   * Get user ID of the progress
   * @return type
   */
  public function getUid() {
    return $this->_uid;
  }

  ###############
  # week
  ###############
  /**
   * Set progress's week
   * @param type $week
   * @return \Application_Model_Progress
   */

  public function setWeek($week) {
    $this->_week = (int) $week;
    return $this;
  }

  /**
   * Get progress's week
   * @return type
   */
  public function getWeek() {
    return $this->_week;
  }

  ###############
  # weight
  ###############
  /**
   * Set progress's weight
   * @param type $weight
   * @return \Application_Model_Progress
   */

  public function setWeight($weight) {
    $this->_weight = (float) $weight;
    return $this;
  }

  /**
   * Get progress's weight
   * @return type
   */
  public function getWeight() {
    return $this->_weight;
  }

  
}
