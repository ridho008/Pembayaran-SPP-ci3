<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laporan extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Auth_m');
	}
	
	public function index()
	{
		$data['user'] = $this->Auth_m->get_where('users', ['username' => $this->session->userdata('username')])->row_array();
		$data['title'] = 'Laporan';
		$this->load->view('layout/header', $data);
		$this->load->view('layout/sidebar', $data);
		$this->load->view('admin/laporan/index', $data);
		$this->load->view('layout/footer');
	}

	public function guru()
	{
		$data['title'] = 'Laporan Guru';
		$data['guru'] = $this->db->get('guru')->result_array();
		$this->load->view('layout/header', $data);
		$this->load->view('admin/laporan/laporan_guru', $data);
		$this->load->view('layout/footer');
	}

	public function siswa()
	{
		$data['title'] = 'Laporan Siswa';
		$data['siswa'] = $this->db->get('siswa')->result_array();
		$this->load->view('layout/header', $data);
		$this->load->view('admin/laporan/laporan_siswa', $data);
		$this->load->view('layout/footer');
	}

}