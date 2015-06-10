<?php

class Application_Model_Exercise {

  protected $_name;
  protected $_abbreviation;
  protected $_force;
  protected $_muscle;
  protected $_description;
  protected $_id;

  public function __construct(array $options = null) {
    if (is_array($options)) {
      $this->setOptions($options);
    }
  }

  public function __set($name, $value) {
    $method = 'set' . $name;
    if ('mapper' == $name) {
      throw new Exception('__set(): Invalid exercise property: wrong name: ' . $name);
    }
    elseif (!method_exists($this, $method)) {
      throw new Exception('__set(): Invalid exercise property: nonexistent method: ' . $method);
    }
    $this->$method($value);
  }

  public function __get($name) {
    $method = 'get' . $name;
    if ('mapper' == $name) {
      throw new Exception('__get(): Invalid exercise property: name: ' . $name);
    }
    elseif (!method_exists($this, $method)) {
      throw new Exception('__get(): Invalid exercise property: nonexistent method: ' . $method . ', name: ' . $name);
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
  # abbreviation
  ###############
  /**
   * Set exercise's abbreviation
   * @param type $abbr
   * @return \Application_Model_Exercise
   */
  public function setAbbreviation($abbr) {
    $this->_abbreviation = (string) $abbr;
    return $this;
  }

  /**
   * Get exercise's abbreviation
   * @return type
   */
  public function getAbbreviation() {
    return $this->_abbreviation;
  }
  
  ###############
  # description
  ###############
  /**
   * Set exercise's description
   * @param type $descr
   * @return \Application_Model_Exercise
   */
  public function setDescription($descr) {
    $this->_description = (string) $descr;
    return $this;
  }

  /**
   * Get exercise's description
   * @return type
   */
  public function getDescription() {
    return $this->_description;
  }
  
  ###############
  # force
  ###############
  /**
   * Set exercise's force (e.g. pull, push, legs)
   * @param type $force
   * @return \Application_Model_Exercise
   */
  public function setForce($force) {
    $this->_force = $force;
    return $this;
  }
  
    /**
   * Get exercise's force
   * @return type
   */
  public function getForce() {
    return $this->_force;
  }

  ###############
  # id 
  ###############
  /**
   * Set exercise's ID
   * @param type $id
   * @return \Application_Model_Exercise
   */
  public function setId($id) {
    $this->_id = (int) $id;
    return $this;
  }

  /**
   * Get exercise's ID
   * @return type
   */
  public function getId() {
    return $this->_id;
  }
  

  ###############
  # muscle 
  ###############
  
  /**
   * Set exercise's muscle group
   * @param type $muscle
   * @return \Application_Model_Exercise
   */
  public function setMuscle($muscle) {
    $this->_muscle = (string) $muscle;
    return $this;
  }

  /**
   * Get exercise's muscle group
   * @return type
   */
  public function getMuscle() {
    return $this->_muscle;
  }

  ###############
  # name
  ###############
  /**
   * Set exercise's name
   * @param type $name
   * @return \Application_Model_Exercise
   */
  public function setName($name) {
    $this->_name = (string) $name;
    return $this;
  }

  /**
   * Get exercise's name
   * @return type
   */
  public function getName() {
    return $this->_name;
  }

}
