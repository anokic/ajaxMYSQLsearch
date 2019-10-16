<?php

  $upit = 'SELECT * FROM employees WHERE ime LIKE "%' .$_GET['search']. '%" OR prezime LIKE "%' .$_GET['search']. '%"';

  $konekcija = new PDO('mysql:host=localhost;dbname=search','root','');

  $primer = $konekcija->prepare($upit);
  $rez = $primer->execute();


  if($rez){
    $korisnici = $primer->fetchAll(PDO::FETCH_OBJ);

    echo json_encode($korisnici, JSON_FORCE_OBJECT);
  }
