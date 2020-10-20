<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Transaksi_m extends CI_Model {
	public function get_where($table, $where)
	{
		return $this->db->get_where($table, $where);
	}

	public function get($table)
	{
		return $this->db->get($table);
	}

	public function insert($table, $data)
	{
		$this->db->insert($table, $data);
	}

	public function update($table, $data)
	{
		$this->db->update($table, $data);
	}

	public function update_where($table, $data, $where)
	{
		$this->db->where($where);
		$this->db->update($table, $data);
	}

	public function getGuruId($idGuru)
	{
		return $this->db->get_where('guru', $idGuru)->row_array();
	}

}