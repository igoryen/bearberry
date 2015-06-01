<?php

// application/models/User.php
class Application_Model_User {

  protected $_first_name;
  protected $_last_name;
  protected $_handle;
  protected $_id;

  public function __set($name, $value);

  public function __get($name);

  public function setFirstName($first_name);

  public function getFirstName();

  public function setLastName($last_name);

  public function getLastName();

  public function setHandle($handle);

  public function getHandle();

  public function setId($id);

  public function getId();
}

class Application_Model_UserMapper {

  public function save(Application_Model_User $user);

  public function find($id);

  public function fetchAll();
}
