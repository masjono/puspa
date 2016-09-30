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

    function daftarPengeluaran() {
        $data = $this->db->query('select * '
                . 'from asa_pengeluaran mp '
                //. 'where '
                //. 'CURDATE() BETWEEN DATE(mp.`tanggal_diumumkan`) AND DATE(mp.`tgl_pendaftaran_akhir`) '
                //. 'order by id_pekerjaan desc', $limit
                );
        //print_r($data->result());
        return $data->result();
    }
    
    function getPengeluaran($id_pengeluaran=1) {
        $data = $this->db->query('select * '
                . 'from asa_pengeluaran mp '
                . "where id_pengeluaran = $id_pengeluaran "
                . "limit 1"
                //. 'CURDATE() BETWEEN DATE(mp.`tanggal_diumumkan`) AND DATE(mp.`tgl_pendaftaran_akhir`) '
                //. 'order by id_pekerjaan desc', $limit
                );
        //print_r($data->result());
        return $data->row();
    }

    function tambahPengeluaran($customer_id, $nominal, $deskripsi_pengeluaran, $nomor_pembayaran, $jenis_pengeluaran, $status, $start_date, $end_date, $schedule_type, $is_manual) {
        $this->db->trans_begin();
        $data = array(
            'customer_id' => $customer_id,
            'nominal' => $nominal,
            'deskripsi_pengeluaran' => $deskripsi_pengeluaran,
            'nomor_pembayaran' => $nomor_pembayaran,
            'jenis_pengeluaran' => $jenis_pengeluaran,
            'status' => $status,
            'start_date' => $start_date,
            'end_date' => $end_date,
            'schedule_type' => $schedule_type,
            'is_manual' => $is_manual,
        );
        $resp = $this->db->insert('t_user', $data);
        if ($resp):
            $this->db->trans_commit();
            return "SUCCESS";
        else:
            $this->db->trans_rollback();
            return "FAILED";
        endif;
    }

}

?>