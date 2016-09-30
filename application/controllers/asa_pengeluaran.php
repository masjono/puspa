<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class asa_pengeluaran extends CI_Controller {

    //
    public function __construct() {
        session_regenerate_id();
        parent::__construct();
        $this->load->model('mpengeluaran');
    }

    public function index() {
//        show_404();
        $data['list'] = $this->mpengeluaran->daftarPengeluaran();
        //$data = NULL;
        $this->load->view('vpengeluaran', $data);
    }
    public function detail($id_pengeluaran=1) {
//        show_404();
        $data['obj'] = $this->mpengeluaran->getPengeluaran($id_pengeluaran);
        //$data = NULL;
        $this->load->view('vpengeluarandetail', $data);
    }
    


}
