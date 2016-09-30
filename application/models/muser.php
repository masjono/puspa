<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class muser extends CI_Model {

    public function construct() {
        parent::__construct();
    }

    public function my_md5($pass) {
        $md5_1 = md5($pass . 'AMR');
        $md5_2 = md5('DASHBOARD' . $pass);
        return substr($md5_1, 16, 16) . substr($md5_2, 0, 16);
    }

    public function auth($username, $password) {
        $sql = "SELECT * FROM t_user WHERE username=? AND password=?";
        $res = $this->db->query($sql, array($username, $this->my_md5($password)));
        if ($res->num_rows() == 1) {
            $row = $res->row(1);
			if ($row->status==0)
				return 'User Anda Belum Aktif/Bermasalah, Silahkan Hubungi Administrator';
            $this->session->set_userdata('username', $username);
            $this->session->set_userdata('role', $row->ref_role);
            $this->session->set_userdata('nama', $row->nama);
            $this->session->set_userdata('sbu', $row->sbu);
            $this->session->set_userdata('guid', $row->guid);
            $this->session->set_userdata('fk_unit', $row->fk_unit);
            $this->db->query("UPDATE t_user SET last_login=?, last_ip=? WHERE username=?", array(date('Y-m-d H:i:s'), $this->common->get_host(), $username));
			$this->mutil->access_record(__CLASS__ . '.' . __FUNCTION__, $username);
            return AJAX_SUCCESS;
        }
        return 'Invalid username or password';
    }
	
	public function logout() {
        $this->mutil->access_record(__CLASS__ . '.' . __FUNCTION__, $this->session->userdata('username'));
        $this->db->query("UPDATE t_user SET last_logout=?, last_ip=? WHERE username=?", array(date('Y-m-d H:i:s'), $this->common->get_host(), $this->session->userdata('username')));
    }
	
	//public function add($data, $username_edited, $username_baru) {
        public function add($data, $username_edited){
		$this->mutil->access_record(__CLASS__.'.'.__FUNCTION__, $username_edited.';'.var_export($data, true));
		if (strlen($username_edited)==0) {
			$data['insert_datetime'] = $this->common->get_mysql_date();
			$res = $this->db->insert('t_user', $data);
			$report = 'User '.$data['username'].' berhasil ditambahkan';
		} else {
			$data['update_datetime'] = $this->common->get_mysql_date();
			$res = $this->db->update('t_user', $data, array('username'=>$username_edited));
			$report = 'User '.$username_edited.' berhasil diupdate, <br> Pastikan vendor untuk logout dan login kembali dengan username dan kata sandi yang baru diubah';
		}
		
		if (!$res) {
			return 'Proses gagal'.$this->db->_error_message();
		} else {
			$this->session->set_userdata('form_success', $report);
			return AJAX_SUCCESS;
		}
	}
	
	public function is_username_exist($username) {
		$res = $this->db->query("SELECT * FROM t_user WHERE username='$username'");
		return $res->num_rows()>0;
	}
	
	public function is_email_exist($email) {
		$res = $this->db->query("SELECT * FROM t_user WHERE email='$email'");
		return $res->num_rows()>0;
	}
	
	public function get_menus($is_left_menu=1) {
		$arr = array();
		// parent_id=0 -> tidak punya parent
		$res = $this->db->query("SELECT * FROM tr_menu WHERE is_left_menu=$is_left_menu AND parent_id=0 ORDER BY position");
		foreach ($res->result() as $row) {
			$arr[$row->menu_url] = $row->has_child;
		}
		return $arr;
	}
	
	public function get_submenus($parent_url) {
		$arr = array();
		// parent_id=0 -> tidak punya parent
		$res = $this->db->query("SELECT * FROM tr_menu WHERE is_left_menu=1 AND parent_id=(SELECT id FROM tr_menu WHERE menu_url='$parent_url') ORDER BY position");
		foreach ($res->result() as $row) {
			$arr[] = $row->menu_url;
		}
		return $arr;
	}
	
	public function get_authorized_menu($ref_role) {
		$arr_name = array();
		$arr_icon_class = array();
		$sql = "SELECT * FROM t_role_menu rm, tr_menu m WHERE rm.ref_menu=m.id AND ref_role=?";
		$res = $this->db->query($sql, array($ref_role));
		foreach ($res->result() as $row) {
			$arr_name[$row->menu_url] = $row->menu_name;
			$arr_icon_class[$row->menu_url] = $row->icon_class;
		}
		return array('name'=>$arr_name, 'icon_class'=>$arr_icon_class);
	}
	
	public function get_authorized_url($role_id) {
		$arr = array();
		$sql = "SELECT * FROM t_role_menu rm, tr_menu m WHERE rm.ref_menu=m.id AND ref_role=?";
		$res = $this->db->query($sql, array($role_id));
		foreach ($res->result() as $row) {
			$arr[$row->menu_url] = $row->menu_name;
		}
		return $arr;
	}
	
	public function has_access_to($url) {
                if ($this->session->userdata('role') == 1){ //by pass admin
                    return true;
                }
		$sql = "SELECT * FROM t_role_menu rm, tr_menu m WHERE rm.ref_menu=m.id AND ref_role=? AND menu_url=?";
//                echo $sql;
		$res = $this->db->query($sql, array($this->session->userdata('role'), $url));
		return ($res->num_rows()==1);
	}
	
	public function get_user_list() {
		$res = $this->db->query("SELECT * FROM t_user ORDER BY username");
		return $res;
	}
        function ambildataselecteduser($username){
                $res = $this->db->query("SELECT * FROM t_user WHERE username = '$username'");
		return $res->row();
        }
	
	public function get_combo_role() {
		$res = $this->db->query("SELECT * FROM tr_role ORDER BY detil");
//		$data = array(''=>'--- Pilih Role ---');
//		foreach ($res->result() as $row) {
//			$data[$row->id] = $row->detil;
//		}
//		return $data;
                return $res->result();
	}
        function ambil_daftar_unit(){
            $res = $this->db->query("SELECT * FROM r_unit ORDER BY nama_unit ASC");
            return $res->result();
        }
	function ambil_daftar_jabatan(){
            $sql = "SELECT * FROM r_jabatan";
            $query = $this->db->query($sql);
            return $query->result();
        }
	public function get_user($username) {
		$res = $this->db->query("SELECT * FROM t_user WHERE username=?", array($username));
		if ($res->num_rows()==0)
			return null;
		$row = $res->row(1);
		return $row;
	}
	
	public function get_nip($nip) {
		$res = $this->db->query("SELECT * FROM t_user WHERE nip=?", array($nip));
		if ($res->num_rows()==0)
			return array();
		$row = $res->row_array();
		return $row;
	}
	
	public function get_email($email) {
		$res = $this->db->query("SELECT * FROM t_user WHERE email=?", array($email));
		if ($res->num_rows()==0)
			return array();
		$row = $res->row_array();
		return $row;
	}
	
	public function get_role_list() {
		$res = $this->db->query("SELECT * FROM tr_role ORDER BY detil");
		return $res;
	}
	
	public function get_user_by_role($role_id) {
		$res = $this->db->query("SELECT * FROM t_user WHERE ref_role=? ORDER BY username", array($role_id));
		return $res;
	}
	
	public function is_role_name_exist($role_name) {
		$res = $this->db->query("SELECT * FROM tr_role WHERE detil=?", array($role_name));
		return ($res->num_rows()>0);
	}
	
	public function add_role($role_name) {
		$this->mutil->access_record(__CLASS__.'.'.__FUNCTION__, $role_name);
		
		$res = $this->db->insert('tr_role', array('detil'=>$role_name));
		
		if (!$res) {
			return 'Proses gagal';
		} else {
			$this->session->set_userdata('form_success', 'Role '.$role_name.' berhasil ditambahkan');
			return AJAX_SUCCESS;
		}
	}
	
	public function edit_role_name($role_id, $role_name) {
		$this->mutil->access_record(__CLASS__.'.'.__FUNCTION__, $role_id.';'.$role_name);
		
		$res = $this->db->update('tr_role', array('detil'=>$role_name), array('id'=>$role_id));
		
		if (!$res) {
			$this->session->set_userdata('form_error', 'Role '.$role_name.' gagal diedit');
			return 'xx dont care';
		} else {
			$this->session->set_userdata('form_success', 'Role '.$role_name.' berhasil diedit');
			return 'xx dont care';
		}
	}
	
	public function get_role($role_id) {
		$res = $this->db->query("SELECT * FROM tr_role WHERE id=?", array($role_id));
		if ($res->num_rows()==0)
			return array();
		$row = $res->row_array();
		return $row;
	}
	
	public function delete_role($role_id, $role_name) {
		$this->mutil->access_record(__CLASS__.'.'.__FUNCTION__, $role_id.'='.$role_name);
		
		$res = $this->db->query("SELECT COUNT(*) AS count1 FROM t_user WHERE ref_role=$role_id");
		$row = $res->row(1);
		if ($row->count1 > 0) {
			$this->session->set_userdata('form_error', 'Ada '.$row->count1.' user yang memiliki role '.$role_name.', penghapusan dibatalkan');
			return 'xx dont care';
		}
		
		$res = $this->db->delete('tr_role', array('id'=>$role_id));
		if (!$res) {
			$this->session->set_userdata('form_error', 'Role '.$role_name.' gagal dihapus');
			return 'xx dont care';
		} else {
			$this->session->set_userdata('form_success', 'Role '.$role_name.' berhasil dihapus');
			return 'xx dont care';
		}
	}
	
	public function edit_role_access($role_id, $role_name, $arr_menu_id) {
		$this->mutil->access_record(__CLASS__.'.'.__FUNCTION__, $role_id.';'.var_export($arr_menu_id, true));
		$this->db->trans_begin();
		
		$res = $this->db->delete('t_role_menu', array('ref_role'=>$role_id));
		if (!$res) {
			$this->db->trans_rollback();
			return 'Akses untuk role '.$role_name.' gagal diupdate';
		}
		foreach ($arr_menu_id as $val) {
			$res = $this->db->insert('t_role_menu', array('ref_role'=>$role_id, 'ref_menu'=>$val));
			if (!$res) {
				$this->db->trans_rollback();
				return 'Akses untuk role '.$role_name.' gagal diupdate';
			}
		}
		
		$this->db->trans_commit();
		$this->session->set_userdata('form_success', 'Akses untuk role '.$role_name.' berhasil diupdate');
		return AJAX_SUCCESS;
	}
	
	public function delete($username) {
		$this->mutil->access_record(__CLASS__.'.'.__FUNCTION__, $username);
		$res = $this->db->delete('t_user', array('username'=>$username));
		if (!$res) {
			return 'Username '.$username.' gagal dihapus karena masih digunakan sebagai referensi di data lain';
		} else {
			return AJAX_SUCCESS;
		}
	}
	
	public function change_password($data, $username) {
        $this->mutil->access_record(__CLASS__ . '.' . __FUNCTION__, $username.';'.var_export($data, true));
        $res = $this->db->update('t_user', $data, array('username' => $username));
        if (!$res) {
            return 'Proses ubah password gagal';
        } else {
            return AJAX_SUCCESS;
        }
    }
        function change_email($data, $username){
            $this->db->where('username',$username);
            $res = $this->db->update('t_user', $data);
            if (!$res):
                return 'Proses ubah e-mail gagal';
            else:
                return AJAX_SUCCESS;
            endif;
        }
	
	public function get_notif($username, $unread, $limit='') {
		$res = $this->db->query("
		SELECT
		b.id AS id,
		b.read_datetime AS read_datetime,
		a.n_datetime AS n_datetime,
		a.uraian AS uraian,
		a.notif_url AS notif_url
		FROM t_notifikasi a, t_notifikasi_user b
		WHERE a.id=b.ref_notifikasi
		AND b.ref_username='$username'
		".($unread?"AND b.read_datetime IS NULL":"")."
		ORDER BY a.id DESC
		".(strlen($limit)>0?"LIMIT 0, $limit":"")."
		");
		return $res;
	}
}
