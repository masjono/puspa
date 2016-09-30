<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class user extends CI_Controller {

	public function __construct() {
        session_regenerate_id();
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('login');
		}
    }

	public function index() {
		//if (!$this->muser->has_access_to('user/index')) { redirect('chart');return; }
		$html['title'] = $this->mutil->get_menu_name('user/index');
		$html['data'] = $this->muser->get_user_list();
		$html['data_role_map'] = $this->mutil->get_table_map('tr_role');
		$html['data_status_map'] = $this->mutil->get_status_map();
		$html['data_status_icon_map'] = $this->mutil->get_status_icon_map();
		$html['has_access'] = $this->muser->has_access_to('user/add');
		$this->load->view('vuser_index', $html);
	}
	
	public function add($username='') {
		if (!$this->muser->has_access_to(__CLASS__.'/'.__FUNCTION__)) { redirect('chart');return; }
		if (strlen($username)>0) {
			//if (!ctype_alnum($username)) { redirect('chart');return; }
			//if (strtolower($username)==strtolower($this->session->userdata('username'))) { redirect('chart');return; }
			$html['row'] = $this->muser->get_user($username);
			if (is_null($html['row'])) { redirect('home');return; }
			$html['username_edited'] = $username;
		}
		$html['subtitle'] = $this->mutil->get_menu_name('user/add/'); // yg lainnya pake title, ini subtitle karena bentuknya form
		$html['random_password'] = $this->common->my_rand_number(MIN_LENGTH_PASSWORD);
		$html['arr_role'] = $this->muser->get_combo_role();
                $html['daftar_unit'] = $this->muser->ambil_daftar_unit();
                $html['daftar_jabatan'] = $this->muser->ambil_daftar_jabatan();
		$this->load->view('vuser_add', $html);
	}
	
	public function doadd() { // via AJAX
		if (!$this->muser->has_access_to('user/add')) { redirect('home');return; }
		//post available
//                username_edited:,
//                username: $("#username").val(),
//                password: $("#password").val(),
//                ref_role: $("#user_role").val(),
//                nama: $("#nama").val(),
//                nip: $("#nip").val(),
//                email: $("#username").val(),
//                jabatan: $("#jabatan").val(),
//                unit: $("#unit").val()
		$data = array();
		$error = array();
		$username_edited = $this->common->filter($this->input->post('username_edited'));
                $select_ref_role = $this->common->filter($this->input->post('ref_role'));
                $select_jabatan = $this->common->filter($this->input->post('jabatan'));
                $select_unit = $this->common->filter($this->input->post('unit'));
                $post = array(
                    'username' => $this->common->filter($this->input->post('username')),
                    'password' => $this->common->filter($this->input->post('password')),
                    'ref_role' => $select_ref_role,
                    'nama' => $this->common->filter($this->input->post('nama')),
                    'nip' => $this->common->filter($this->input->post('nip')),
                    'email' => $this->common->filter($this->input->post('username'))
                );
		foreach ($post as $key=>$val) {
			$input = $this->common->filter($this->input->post($key));
			if (strlen($username_edited)==0) { // add
                                if (strlen($input)==0){
                                    $error[] = 'Anda harus mengisi '.$val;
                                }
			} else { // edit
				if (strlen($input)==0 && !in_array($key, array('username','password')))
					$error[] = 'Anda harus mengisi '.$val;
			}
		}
		if (count($error)==0) {
			if (strlen($username_edited)==0) { // add
//				if (!ctype_alnum($data['username'])) {
//					$error[] = 'Username harus karakter alphanumerik';
//				} else {
//					$test = $this->muser->get_user($post['username']);
//					if (!is_null($test)){
//						$error[] = 'Username '.$post['username'].' sudah terdaftar';
//				}
				if (strlen($post['password']) < MIN_LENGTH_PASSWORD)
					$error[] = 'Panjang password minimum '.MIN_LENGTH_PASSWORD.' karakter';
				$bool_nip = strlen($post['nip'])>0;
				$bool_email = strlen($post['username'])>0;
                                if ($select_ref_role == "-"):
                                    $tomodel_select_ref_role = NULL;
                                else:
                                    $tomodel_select_ref_role = $select_ref_role;
                                endif;
                                if ($select_jabatan == "-"):
                                    $tomodel_select_jabatan = NULL;
                                else:
                                    $tomodel_select_jabatan = $select_jabatan;
                                endif;
                                $data = array(
                                    'username' => $this->common->filter($this->input->post('username')),
                                    'password' => $this->muser->my_md5($this->common->filter($this->input->post('password'))),
                                    'ref_role' => $tomodel_select_ref_role,
                                    'nama' => $this->common->filter($this->input->post('nama')),
                                    'nip' => $this->common->filter($this->input->post('nip')),
                                    'email' => $this->common->filter($this->input->post('username')),
                                    'jabatan' => $tomodel_select_jabatan,
                                    'fk_unit' => $select_unit
                                );
			} else { // edit
				//unset($data['username']);
				$test = $this->muser->get_user($username_edited);
				if (is_null($test)) die('Invalid username');
				if (strlen($post['password']) > 0 && strlen($post['password']) < MIN_LENGTH_PASSWORD)
					$error[] = 'Panjang password minimum '.MIN_LENGTH_PASSWORD.' karakter';
				if (strlen($post['password']) == 0)
					unset($data['password']);
				$bool_nip = strlen($post['nip'])>0 && $post['nip']!=$test->nip;
				$bool_email = strlen($post['username'])>0 && $post['username']!=$test->email;
                                if ($select_ref_role == "-"):
                                    $tomodel_select_ref_role = NULL;
                                else:
                                    $tomodel_select_ref_role = $select_ref_role;
                                endif;
                                if ($select_jabatan == "-"):
                                    $tomodel_select_jabatan = NULL;
                                else:
                                    $tomodel_select_jabatan = $select_jabatan;
                                endif;
                                $data = array(
                                    'username' => $this->common->filter($this->input->post('username')),
                                    'ref_role' => $tomodel_select_ref_role,
                                    'nama' => $this->common->filter($this->input->post('nama')),
                                    'nip' => $this->common->filter($this->input->post('nip')),
                                    'email' => $this->common->filter($this->input->post('username')),
                                    'jabatan' => $tomodel_select_jabatan,
                                    'fk_unit' => $select_unit
                                );
			}
			
			if ($bool_nip) {
				$arr = $this->muser->get_nip($post['nip']);
				if (count($arr)>0)
					$error[] = 'NIP '.$post['nip'].' sudah terdaftar';
			}
			if ($bool_email) {
				if (!$this->common->is_valid_email($post['username']))
					$error[] = 'Email '.$post['username'].' tidak valid';
				else {
					$arr = $this->muser->get_email($post['username']);
					if (count($arr)>0)
						$error[] = 'Email '.$post['username'].' sudah terdaftar';
				}
			}
		}
                if ($select_ref_role == "-"):
                    $error[] = 'Anda harus memilih Kedudukan';
                endif;
                if ( ($select_ref_role == '9') && ($select_jabatan == "-") ):
                    //jika ref_role = pejabat maka harus memilih jabatan
                    $error[] = 'Anda harus memilih Jabatan untuk kedudukan pejabat';
                endif;
                if ( ($select_ref_role == '10') && ($select_unit == "-") ):
                    //jika ref_role = purchaser maka harus memilih unit
                    $error[] = 'Anda harus memilih Unit untuk kedudukan purchaser';
                endif;
		if (count($error)>0) {
			echo implode('<br />', $error);
			return;
		}
                if ($select_jabatan == "-"): $select_jabatan = NULL; endif;
                if ($select_ref_role == "-"): $select_ref_role = NULL; endif;
                if ($select_unit == "-"): $select_unit = NULL; endif;
		if (isset($post['password']) && strlen($post['password'])>0) // karena jika kasus edit dan password dikosongkan maka tidak perlu ada encrypt password
			$post['password'] = $this->muser->my_md5($post['password']);
                        $username_baru = $post['username'];      
		echo $this->muser->add($data, $username_edited);
	}
	
	public function role() {
		if (!$this->muser->has_access_to(__CLASS__.'/'.__FUNCTION__)) { redirect('chart');return; }
		$html['title'] = $this->mutil->get_menu_name('user/role/');
		$html['data_role'] = $this->muser->get_role_list();
		$this->load->view('vuser_role', $html);
	}
	
	public function doaddrole() {
		if (!$this->muser->has_access_to('user/addrole')) { redirect('chart');return; }
		
		$error = array();
		
		$role = $this->input->post('ROLE');
		if (strlen($role)==0)
			$error[] = 'Anda harus mengisi nama role';
		elseif ($this->muser->is_role_name_exist($role))
			$error[] = 'Role '.$role.' sudah terdaftar';
		
		if (count($error)>0) {
			echo implode('<br />', $error);
			return;
		}
		echo $this->muser->add_role($role);
	}
	
	public function doeditrolename() {
		if (!$this->muser->has_access_to('user/rolename')) { redirect('chart');return; }
		
		$role_id = $this->input->post('id');
		$role_name = $this->input->post('detil');
		if (strlen($role_name)==0) {
			echo $this->session->set_userdata('form_error', 'Nama role harus diisi');
			return '';
		}
		echo $this->muser->edit_role_name($role_id, $role_name);
	}
	
	public function roleaccess($role_id='') {
		if (!$this->muser->has_access_to(__CLASS__.'/'.__FUNCTION__)) { redirect('chart');return; }
		if (strlen($role_id)==0 || !ctype_digit($role_id)) {
			redirect('chart');
			return;
		}
		if ($role_id==$this->session->userdata('role')) {
			redirect('chart');
			return;
		}
		$role_prop = $this->muser->get_role($role_id);
		if (count($role_prop)==0) {
			redirect('chart');
			return;
		}
		$html['title'] = $this->mutil->get_menu_name('user/role/').' '.$role_prop['detil'];
		$html['arr_menu'] = $this->muser->get_authorized_url($role_id);
		$html['data_menu'] = $this->mutil->get_menu_list();
		$html['role_id'] = $role_id;
		$html['role_name'] = $role_prop['detil'];
		$this->load->view('vuser_role_access', $html);
	}
	
	public function dodeleterole() {
		if (!$this->muser->has_access_to(__CLASS__.'/'.__FUNCTION__)) { redirect('chart');return; }
		
		$role_id = $this->input->post('id');
		$role_name = $this->input->post('detil');
		if (!ctype_digit($role_id)) die();
		echo $this->muser->delete_role($role_id, $role_name);
	}
	
	// input: menu_1,menu_3,menu_5, ..........
	public function doeditroleaccess() { // via AJAX
		if (!$this->muser->has_access_to('user/roleaccess')) { redirect('chart');return; }
		
		$role_id = $this->input->post('role_id');
		$role_name = $this->input->post('role_name');
		
		if ($role_id==$this->session->userdata('role'))
			die('Unauthorized access');
		
		$str = $this->input->post('str');
		$arr_menu = explode(',', $str);
		$arr_menu_id = array();
		foreach ($arr_menu as $val) {
			if (strlen($val)>0) {
				// misal: menu_9
				$arr_temp = explode('_', $val);
				if (count($arr_temp)==2) {
					$arr_menu_id[] = $arr_temp[1];
				}
			}
		}
		echo $this->muser->edit_role_access($role_id, $role_name, $arr_menu_id);
	}
	
	public function dodelete() { // via AJAX
		if (!$this->muser->has_access_to('user/delete')) { redirect('chart');return; }
		$username = $this->common->filter($this->input->post('username'));
		if (strtolower($username)==strtolower($this->session->userdata('username'))) die('Unauthorized access');
		echo $this->muser->delete($username);
	}
	
	public function password() {
        if ($this->input->is_ajax_request() && isset($_POST['oldpass'])) {
			$error = array();
            if (strlen($this->input->post('oldpass')) == 0)
                $error[] = 'Anda harus mengisi password lama';
            else {
                $user = $this->muser->get_user($this->session->userdata('username'));
                if ($this->muser->my_md5($this->input->post('oldpass')) != $user->password)
                    $error[] = 'Password lama salah';
            }
            if (strlen($this->input->post('newpass1')) < MIN_LENGTH_PASSWORD)
                $error[] = 'Password minimum '.MIN_LENGTH_PASSWORD.' karakter';
            if (strlen($this->input->post('newpass2')) == 0)
                $error[] = 'Anda harus mengisi konfirmasi password baru';
            if ($this->input->post('newpass1') != $this->input->post('newpass2'))
                $error[] = 'Password Baru tidak sama dengan Konfirmasi Password Baru';

            if (count($error) > 0) {
                echo implode('<br />', $error);
            } else {
                $data = array(
                    'password' => $this->muser->my_md5($this->input->post('newpass1'))
                );
                echo $this->muser->change_password($data, $this->session->userdata('username'));
            }
        } else {
            $this->load->view('vpassword');
        }
    }
    function changeemail(){
        if ($this->session->userdata('role') != 1):
            show_404();
        endif;
        if ($this->input->is_ajax_request() && isset($_POST['oldpass'])):
            $error = array();
            if (strlen($this->input->post('oldpass')) == 0):
                    $error[] = 'Anda harus mengetikkan password anda';
            else:
                    $user = $this->muser->get_user($this->session->userdata('username'));
                    if ($this->muser->my_md5($this->input->post('oldpass')) != $user->password):
                        $error[] = 'Password anda salah';
                    endif;
            endif;
            if (strlen($this->input->post('newemail')) == 0):
                    $error[] = 'Anda harus mengetikkan alamat e-mail yang anda inginkan';
            else:
                    $nama_tabel_yang_akan_dicek = 't_user';
                    $post_email = $this->input->post('newemail');
                    $this->load->model('mvendor');
                    $cek_result = $this->mvendor->cek_result_column($post_email,$nama_tabel_yang_akan_dicek,'email');
                    if ($cek_result->num_rows() != 0):
                        $error[] = 'Alamat e-mail tersebut sudah ada yang memiliki';
                    endif;
            endif;
            if (count($error) > 0):
                echo implode('<br />', $error);
            else:
//                $data = array(
//                    'email' => $post_email,
//                    'username' => $post_email
//                );
                $data = array(
                    'username' => $post_email
                );
                echo $this->muser->change_email($data, $this->session->userdata('username'));
            endif;
        else:
            $username = $this->session->userdata('username');
            $data['username'] = $username;
            //ambil alamat email admin saat ini berdasarkan username
            $data['selecteduser'] = $this->muser->ambildataselecteduser($username);
            $this->load->view('vchange_email',$data);
        endif;
    }
}
