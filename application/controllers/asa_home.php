<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class asa_home extends CI_Controller {

    //
    public function __construct() {
        session_regenerate_id();
        parent::__construct();
        $this->load->model('mhome');
    }

    public function index() {
//        show_404();
        //$data['list'] = $this->mhome->dasboardallvendor();
        $data = NULL;
        $this->load->view('vhome', $data);
    }


}
