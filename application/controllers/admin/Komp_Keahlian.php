<?php
class Komp_Keahlian extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_komp_keahlian');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_komp_keahlian->get_all_komp_keahlian();
		$this->load->view('admin/v_komp_keahlian',$x);
	}

	function simpan_komp_keahlian(){
		$komp_keahlian=strip_tags($this->input->post('xkomp_keahlian'));
		$this->m_komp_keahlian->simpan_komp_keahlian($komp_keahlian);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/komp_keahlian');
	}

	function update_komp_keahlian(){
		$kode=strip_tags($this->input->post('kode'));
		$komp_keahlian=strip_tags($this->input->post('xkomp_keahlian'));
		$this->m_komp_keahlian->update_komp_keahlian($kode,$komp_keahlian);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/komp_keahlian');
	}
	function hapus_komp_keahlian(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_komp_keahlian->hapus_komp_keahlian($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/komp_keahlian');
	}

}
