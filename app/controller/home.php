<?php

class Home extends Controller
{

  public function index($name = '')
  {
    $user = $this->Model('User');
    $user->name = $name;
    echo $user->name;
  }

}

 ?>
