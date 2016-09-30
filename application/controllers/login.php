<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class login extends CI_Controller {

    public function __construct() {
        parent::__construct();
        if ($this->session->userdata('username')):
            redirect('home');
            return;
        endif;
    }

    public function index() {
            $this->load->view('vlogin');
    }
}
