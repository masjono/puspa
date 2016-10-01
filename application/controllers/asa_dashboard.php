<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class asa_dashboard extends CI_Controller {

    //
    public function __construct() {
        session_regenerate_id();
        parent::__construct();
        $this->load->model('mhome');
    }

    public function index($success=0) {
//        show_404();
        //$data['list'] = $this->mhome->dasboardallvendor();
        $data['success'] = $success;
        $this->load->view('vdashboard', $data);
    }
    
    public function success($success=0) {
//        show_404();
        //$data['list'] = $this->mhome->dasboardallvendor();
        $data['success'] = $success;
        $this->load->view('vdashboard', $data);
    }


}
