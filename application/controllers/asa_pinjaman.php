<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class asa_pinjaman extends CI_Controller {

    //
    public function __construct() {
        session_regenerate_id();
        parent::__construct();
    }

    public function index() {
      $client = new SoapClient("http://pinjaman.bri.co.id/hackathon?wsdl",
                  array("trace" => 1, 'cache_wsdl' => WSDL_CACHE_NONE));

      insertUser($client);
      
      redirect('../index.php/asa_dashboard/success/1');

    }
    public function pinjaman_action() {

    }
}

function insertUser($client) {
    $param['appname'] = "HKT";
    $param['nik'] = "0123456789ABCDEF";
    $param['email'] = "mustafa@kuda_bri.com";
    $param['password'] = "mustafa123";
    $param['nama'] = "mustafa karbide";


    $result = $client->addUser($param);

    var_dump($result);

}

function insertUser($client) {
    $param['appname'] = "HKT";
    $param['nik'] = "0123456789ABCDEF";
    $param['email'] = "mustafa@kuda_bri.com";
    $param['password'] = "mustafa123";
    $param['nama'] = "mustafa karbide";


    $result = $client->addUser($param);

    var_dump($result);

}
