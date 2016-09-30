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
        $this->load->view('vpinjaman', $data);
    }
    public function pinjaman_action() {
        
    }
    


}
