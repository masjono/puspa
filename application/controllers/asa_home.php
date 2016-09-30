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

//    public function sendemail() {
//        $semail = $this->session->userdata('email');
//        $sperusahaan = $this->session->userdata('nama_perusahaan');
//        $namaperusahaan = str_replace(' ', '_', $sperusahaan);
//        $random = $this->common->generateRandomString(8);
//        $this->load->model('muser');
//
//        $md5_all = $this->muser->my_md5($random);
//        $confirmation_link = "/cvendor/reff/" . $namaperusahaan . "/" . $md5_all;
//
//        include('c_notification.php');
//        $resp = c_notification::__add_email_queue_pendaftaran_corporate($recipient_email = $semail, $kata_sandi = $random, $url = $confirmation_link, $sperusahaan);
//        if ($resp == "SUCCESS"):
//            $simpan = $this->mpengumuman->simpanuser($semail, $md5_all, $namaperusahaan);
//            $this->session->set_flashdata('message', 'Berhasil!, Silahkan cek e-mail anda dalam kurun waktu maksimal 20 menit.');
//            redirect('pengumuman/pendaftaran');
//        else:
//            $this->session->set_flashdata('message', 'Gagal Memproses e-mail, <br> Kontak Administrator.');
//            redirect('pengumuman/pendaftaran');
//        endif;
//    }

}
