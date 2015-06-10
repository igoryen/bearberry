<?php

class Application_Model_User {

  protected $_firstName;
  protected $_lastName;
  protected $_handle;
  protected $_id;

  public function __construct(array $options = null) {
    if (is_array($options)) {
      $this->setOptions($options);
    }
  }

  public function __set($name, $value) {
    $method = 'set' . $name;
    if ('mapper' == $name) {
      throw new Exception('__set(): Invalid user property: wrong name: ' . $name);
    }
    elseif (!method_exists($this, $method)) {
      throw new Exception('__set(): Invalid user property: nonexistent method: ' . $method);
    }
    $this->$method($value);
  }

  public function __get($name) {
    $method = 'get' . $name;
    if ('mapper' == $name){
      throw new Exception('__get(): Invalid user property: name: ' . $name );
    }
    elseif (!method_exists($this, $method)) {
      throw new Exception('__get(): Invalid user property: nonexistent method: ' . $method . ', name: ' . $name);
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

  /**
   * Set user's first name
   * @param type $first_name
   * @return \Application_Model_User
   */
  public function setFirstName($first_name) {
    $this->_firstName = (string) $first_name;
    return $this;
  }

  /**
   * Get user's first name
   * @return type
   */
  public function getFirstName() {
    return $this->_firstName;
  }

  /**
   * Set user's last name
   * @param type $last_name
   * @return \Application_Model_User
   */
  public function setLastName($last_name) {
    $this->_lastName = (string) $last_name;
    return $this;
  }

  /**
   * Get user's last name
   * @return type
   */
  public function getLastName() {
    return $this->_lastName;
  }

  /**
   * Set user's handle
   * @param type $handle
   * @return \Application_Model_User
   */
  public function setHandle($handle) {
    $this->_handle = $handle;
    return $this;
  }

  /**
   * Get user's handle
   * @return type
   */
  public function getHandle() {
    return $this->_handle;
  }

  /**
   * Set user's ID
   * @param type $id
   * @return \Application_Model_User
   */
  public function setId($id) {
    $this->_id = (int) $id;
    return $this;
  }

  /**
   * Get user's ID
   * @return type
   */
  public function getId() {
    return $this->_id;
  }

}
