<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class asa_pendapatan extends CI_Controller {

    //
    public function __construct() {
        session_regenerate_id();
        parent::__construct();
        $this->load->model('mpendapatan');
    }

    public function index() {
//        show_404();
        $data['list'] = $this->mpendapatan->daftarPendapatan();
        //$data = NULL;
        $this->load->view('vpendapatan', $data);
    }
    
    public function detail($id_pendapatan=1) {
//        show_404();
        $data['obj'] = $this->mpengeluaran->getPendapatan($id_pendapatan);
        //$data = NULL;
        $this->load->view('vpengeluarandetail', $data);
    }
    


}
