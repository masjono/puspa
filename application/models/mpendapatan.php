<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class mpendapatan extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    function dasboardallvendor($limit = 5) {
        $this->db->order_by('kode_perusahaan', 'desc');

        $data = $this->db->get('main_vendor', $limit);

        return $data->result();
    }

    function daftarPendapatan() {
        $data = $this->db->query('select * '
                . 'from asa_pendapatan mp '
                //. 'where '
                //. 'CURDATE() BETWEEN DATE(mp.`tanggal_diumumkan`) AND DATE(mp.`tgl_pendaftaran_akhir`) '
                //. 'order by id_pekerjaan desc', $limit
                );
        //print_r($data->result());
        return $data->result();
    }
    
    function getPendapatan($id_pendapatan=1) {
        $data = $this->db->query('select * '
                . 'from asa_pendapatan mp '
                . "where id = $id_pendapatan "
                . "limit 1"
                //. 'CURDATE() BETWEEN DATE(mp.`tanggal_diumumkan`) AND DATE(mp.`tgl_pendaftaran_akhir`) '
                //. 'order by id_pekerjaan desc', $limit
                );
        //print_r($data->result());
        return $data->row();
    }

}

?>