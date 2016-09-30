<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class mutil extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function access_record($modul, $note='') {
		if (!$this->session->userdata('username'))
			return;
        $data = array();
        $data['access_datetime'] = date('Y-m-d H:i:s');
        $data['username'] = $this->session->userdata('username');
        $data['modul'] = $modul;
        $data['pc_source'] = $this->common->get_host();
        $note = str_replace("'", '', $note);
        $data['data'] = substr($note, 0, 3000); // di DB, varchar2(3000)
        $res = $this->db->insert('t_access', $data);
		if (!$res) {
			show_error('Error on access_record()');
			die();
		}
    }
	
	public function get_table_map($table) {
        $res = $this->db->query("SELECT * FROM $table");
		$arr = array();
        foreach ($res->result() as $row) {
            $arr[$row->id] = $row->detil;
        }
        return $arr;
    }
	
	public function get_map($table) {
        $res = $this->db->query("SELECT * FROM $table");
		$arr = array();
        foreach ($res->result() as $row) {
            $arr[$row->kode] = $row->nama;
        }
        return $arr;
    }
	
	public function get_list($table) {
        $res = $this->db->query("SELECT * FROM $table ORDER BY kode");
        return $res;
    }
	
	public function get_list_grup_kegiatan() {
        $tahun = $this->session->userdata('processing_year');
		$res = $this->db->query("SELECT
		p.kode AS kode_program,
		p.nama AS nama_program,
		gk.kode AS kode,
		gk.nama AS nama,
		gk.pagu AS pagu,
		gk.id AS id
		FROM tr_program p, tr_kegiatan gk
		WHERE p.id=gk.ref_program
		AND p.tahun_anggaran=$tahun
		ORDER BY kode");
        return $res;
    }
	
	public function get_list_capaian() {
		$tahun = $this->session->userdata('processing_year');
        $res = $this->db->query("SELECT
		p.kode AS kode_program,
		p.nama AS ref_program,
		c.id AS id,
		c.uraian AS uraian,
		c.target AS target
		FROM tr_program p, tr_capaian c
		WHERE p.id=c.ref_program
		AND p.tahun_anggaran=$tahun
		ORDER BY kode");
        return $res;
    }
	
	public function get_list_program() {
        $res = $this->db->query("SELECT * FROM tr_program WHERE tahun_anggaran=".$this->session->userdata('processing_year')." ORDER BY kode");
        return $res;
    }
	
	public function get_prop($table, $id) {
        $res = $this->db->query("SELECT * FROM $table WHERE id=$id");
		if ($res->num_rows()==0)
			return null;
		$row = $res->row(1);
        return $row;
    }
	
	public function get_combo_id($table, $title) {
        $arr = array('' => "-- Pilih $title --");
		
		$this->db->from($table);
		if ($table=='tr_program')
			$this->db->where('tahun_anggaran',$this->session->userdata('processing_year'));
		$this->db->order_by('nama');
        $res = $this->db->get();
		
        foreach ($res->result() as $row) {
			$arr[$row->id] = $row->kode.' - '.$row->nama;
        }
        return $arr;
    }
	
	public function get_combo($table, $title) {
        $arr = array('' => "-- Pilih $title --");
		
        $this->db->from($table);
		if ($table=='tr_program')
			$this->db->where('tahun_anggaran',$this->session->userdata('processing_year'));
		$this->db->order_by('nama');
        $res = $this->db->get();
		
        foreach ($res->result() as $row) {
			$arr[$row->kode] = $row->kode.' - '.$row->nama;
        }
        return $arr;
    }
	
	public function get_combo_capaian() {
        $arr = array('' => "-- Pilih Referensi Capaian --");
        $res = $this->db->query("SELECT * FROM tr_capaian");
        foreach ($res->result() as $row) {
            $arr[$row->id] = $row->ref_program.' - '.$row->uraian;
        }
        return $arr;
    }
	
	public function get_combo_kegiatan() {
        $arr = array('' => "-- Pilih Kegiatan --");
        $res = $this->db->query("SELECT * FROM t_kegiatan ORDER BY nama");
        foreach ($res->result() as $row) {
            $arr[$row->id] = $row->nama;
        }
        return $arr;
    }
	
	public function get_menu_name($url) {
		$sql = "SELECT * FROM tr_menu WHERE menu_url=?";
		$res = $this->db->query($sql, array($url));
		if ($res->num_rows()==1) {
			$row = $res->row(1);
			return $row->menu_name;
		}
		return '';
	}
	
	public function get_status_map() {
		return array(
			'0' => 'Diblok',
			'1' => 'Aktif'
		);
	}
	
	public function get_status_icon_map() {
		return array(
			'0' => 'label-warning',
			'1' => 'label-success'
		);
	}
	
	public function get_menu_list() {
		$res = $this->db->query("SELECT * FROM tr_menu ORDER BY menu_url");
		return $res;
	}
	
	public function add_tableref($table, $data, $id_edited) {
		$this->mutil->access_record(__CLASS__.'.'.__FUNCTION__, $id_edited.';'.var_export($data, true));
		$data['insert_user'] = $this->session->userdata('username');
		$data['insert_datetime'] = $this->common->get_mysql_date();
		
		if (intval($id_edited)>0)
			$res = $this->db->update($table, $data, array('id'=>$id_edited));
		else
			$res = $this->db->insert($table, $data);
		
		if (!$res) {
			$error_number = $this->db->_error_number();
			return 'Proses gagal'.(intval($error_number)==1062?', kode sudah digunakan':'');
		} else {
			$this->session->set_userdata('form_success', 'Data berhasil '.(intval($id_edited)>0?'diedit':'ditambahkan'));
			return AJAX_SUCCESS;
		}
	}
	
	public function delete_tableref($table, $id, $nama) {
		$this->mutil->access_record(__CLASS__.'.'.__FUNCTION__, "$table;$id;$nama");
		
		$res = $this->db->delete($table, array('id'=>$id));
		if (!$res) {
			$this->session->set_userdata('form_error', $nama.' gagal dihapus karena masih digunakan sebagai referensi di data lain');
			return 'xx dont care';
		} else {
			$this->session->set_userdata('form_success', $nama.' berhasil dihapus');
			return 'xx dont care';
		}
	}
	
	public function get_autocomplete($table, $q) {
		$res = $this->db->query("SELECT * FROM $table
		WHERE LOWER(kode) LIKE '%$q%' OR LOWER(nama) LIKE '%$q%'
		ORDER BY kode LIMIT 0,10");
		$out = array();
		foreach($res->result() as $row) {
			$out[] = $row->kode.AUTOCOMPLETE_DELIMITER.ucwords($row->nama);
		}
		return json_encode($out);
	}
	
	public function get_autocomplete_rekening($q) {
		$res = $this->db->query("SELECT * FROM tr_rekening
		WHERE LOWER(kode) LIKE '%$q%' OR LOWER(nama) LIKE '%$q%'
		AND (LENGTH(kode)-LENGTH(REPLACE(kode,'.','')))>=4
		ORDER BY kode LIMIT 0,10");
		$out = array();
		foreach($res->result() as $row) {
			$out[] = $row->kode.AUTOCOMPLETE_DELIMITER.ucwords($row->nama);
		}
		return json_encode($out);
	}
	
	public function get_autocomplete_rekening_btl($q) {
		$res = $this->db->query("SELECT * FROM tr_rekening
		WHERE LOWER(kode) LIKE '%$q%' OR LOWER(nama) LIKE '%$q%'
		AND SUBSTRING(kode,1,3)='5.1'
		AND (LENGTH(kode)-LENGTH(REPLACE(kode,'.','')))>=4
		ORDER BY kode LIMIT 0,10");
		$out = array();
		foreach($res->result() as $row) {
			$out[] = $row->kode.AUTOCOMPLETE_DELIMITER.ucwords($row->nama);
		}
		return json_encode($out);
	}
	
	public function set_pagination($num_rows, $num_record_per_page, $get_page_from_url, $url, $mode='flow') {
        $num_page = ($num_rows % $num_record_per_page == 0) ? ($num_rows / $num_record_per_page) : ceil($num_rows / $num_record_per_page);
		if ($num_page<=1) return array('showing' => '', 'range1' => '', 'offset' => 0, 'num_record_per_page' => $num_record_per_page);;
		
        $paging = '';
        if ($mode == 'combo')
            $paging .= '<select onchange="goToPage(this.value)">';
		elseif ($mode == 'flow')
            $paging .= '<ul class="pagination">';

        $is_space_left = false;
        $is_space_right = false;
        for ($i = 1; $i <= $num_page; $i++) {
            if ($i == 1) // first page
                $paging .= '<li><a href="' . $url . $i . '#pagination">First</a></li>';
            $ignored = false;
            if ($mode == 'flow') {
                if ($i < ($get_page_from_url - 5)) { // tampilkan 5 page sebelum current page
                    $ignored = true;
                    if (!$is_space_left) { // space hanya ditulis 1x
                        //$paging .= '&nbsp;........&nbsp;';
                        $is_space_left = true;
                    }
                } elseif ($i > ($get_page_from_url + 5)) { // 5 page setelah current page
                    $ignored = true;
                    if (!$is_space_right) { // space hanya ditulis 1x
                        //$paging .= '&nbsp;........&nbsp;';
                        $is_space_right = true;
                    }
                }
                if (!$ignored)
                    $paging .= '<li'.($get_page_from_url == $i ? ' class="active"' : '').'><a href="' . $url . $i . '#pagination">' . $i . '</a></li>';
                if ($i == $num_page) // last page
                    $paging .= '<li><a href="' . $url . $i . '#pagination" class="btn btn-small">Last</a></li>';
            } elseif ($mode == 'combo') {
                $paging .= '<option value="' . $i . '"' . ($get_page_from_url == $i ? ' selected="selected"' : '') . '>' . $i . '</option>';
            }
        }
        if ($mode == 'combo')
            $paging .= '</select>';
		elseif ($mode == 'flow')
            $paging .= '</ul>';

        $range1 = (($get_page_from_url - 1) * $num_record_per_page) + 1;
        $range2 = ($get_page_from_url == $num_page) ? $num_rows : $get_page_from_url * $num_record_per_page;

        if ($range1 == $range2) {
            if ($mode == 'flow')
                $showing = $paging;
            elseif ($mode == 'combo')
                $showing = "Page $paging";
        } else {
            if ($mode == 'flow') {
                $showing = $paging . '<br />Showing record # ' . $range1 . '-' . $range2 . ' of total ' . $num_rows . ' records<br />
				Show ' . $this->common->combo_id('num_record_per_page', array('20' => '20', '30' => '30', '50' => '50', '100' => '100'), $this->session->userdata('num_record_per_page'), 'onchange="setNumRecordPerPage(\''.$url.'\')"') .
                        ' records per page';
            } elseif ($mode == 'combo') {
                $showing = 'Page ' . $paging . ' Showing record # ' . $range1 . '-' . $range2 . ' of total ' . $num_rows . ' records<br />
				Show ' . $this->common->combo_id('num_record_per_page', array('20' => '20', '30' => '30', '50' => '50', '100' => '100'), $this->session->userdata('num_record_per_page'), 'onchange="setNumRecordPerPage(\''.$url.'\')"') .
                        ' records per page';
            }
        }
        $offset = ($get_page_from_url - 1) * $num_record_per_page;

        return array('showing' => $showing, 'range1' => $range1, 'offset' => $offset, 'num_record_per_page' => $num_record_per_page);
    }
	
	public function get_value_from_autocomplete($string) {
		$pos = strpos($string, AUTOCOMPLETE_DELIMITER);
		if ($pos!==false) {
			$string = substr($string, 0, $pos);
		}
		return $string;
	}
	
	public function read_notif($id, $username) {
		$this->db->update('t_notifikasi_user', array('read_datetime'=>$this->common->get_mysql_date()), array('id'=>$id, 'ref_username'=>$username));
	}
	
	public function read_all_notif($username) {
		$this->db->update('t_notifikasi_user', array('read_datetime'=>$this->common->get_mysql_date()), array('ref_username'=>$username));
		$this->db->query("UPDATE t_notifikasi_user SET read_datetime=?
		WHERE ref_username=? AND read_datetime IS NULL", array($this->common->get_mysql_date(), $username));
	}
	
	public function put_notification($notif, $url, $menus) {
		$arr = array();
		$username = $this->session->userdata('username');
		
		$this->db->trans_begin();
		$res = $this->db->insert('t_notifikasi', array('uraian'=>$notif, 'notif_url'=>$url, 'n_datetime'=>$this->common->get_mysql_date()));
		if (!$res) {
			$this->db->trans_rollback();
			return;
		}
		
		$notif_id = $this->mutil->get_max('id', 't_notifikasi');
		
		
		foreach ($menus as $val) {
			$res = $this->db->query("SELECT username FROM v_user_menu WHERE menu_url='$val' AND username<>'$username'");
			foreach ($res->result() as $row) {
				$arr[] = $row->username;
			}
		}
		$arr = array_unique($arr);
		
		// loop lagi supaya tidak ada nested db->query()
		foreach ($arr as $val) {
			$res = $this->db->insert('t_notifikasi_user', array('ref_username'=>$val, 'ref_notifikasi'=>$notif_id));
			if (!$res) {
				$this->db->trans_rollback();
				return;
			}
		}
		$this->db->trans_commit();
	}
	
	public function get_max($field, $table) {
		$res = $this->db->query("SELECT MAX($field) AS max_id FROM $table");
		$row = $res->row(1);
		return intval($row->max_id);
	}

	
}
