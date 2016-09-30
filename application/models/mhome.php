<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class mhome extends CI_Model {

    public function __construct() {
        parent::__construct();
    }
    
    function dasboardallvendor($limit=5) {
            $this->db->order_by('kode_perusahaan', 'desc');

            $data = $this->db->get('main_vendor', $limit);

            return $data->result();
    
    }
    function dasboardallpekerjaan($limit=10) {
            $data = $this->db->query('select * '
                    . 'from main_pekerjaan mp '
                    . 'where '
                    . 'CURDATE() BETWEEN DATE(mp.`tanggal_diumumkan`) AND DATE(mp.`tgl_pendaftaran_akhir`) '
                    . 'order by id_pekerjaan desc', $limit);            
            return $data->result();
    
    }
    function simpanuser($semail,$md5_all,$sperusahaan) {
         $this->db->trans_begin();
         $data = array(
            'username' => $semail,
            'password' => $md5_all,
            'nama'     => $sperusahaan,
            'email'         => $semail,
            'ref_role'     => '8',
            'status'     => '0',
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