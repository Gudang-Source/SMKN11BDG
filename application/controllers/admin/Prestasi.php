<?php
class Prestasi extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_prestasi_siswa');
		$this->load->model('m_pengguna');
		//$this->load->model('m_kelas');
		//$this->load->library('upload');
	}


	function index(){
		//$x['kelas']=$this->m_kelas->get_all_kelas();
		$x['data']=$this->m_prestasi_siswa->get_all_prestasi();
		$this->load->view('admin/v_prestasi',$x);
	}
	
	function simpan_prestasi(){
	
		$mata_lomba=strip_tags($this->input->post('xmata_lomba'));
		$tingkat=strip_tags($this->input->post('xtingkat'));
		$penyelenggara=strip_tags($this->input->post('xpenyelenggara'));
		$kota=strip_tags($this->input->post('xkota'));
		$tgl_lomba=strip_tags($this->input->post('xtgl_lomba'));
		$peserta=strip_tags($this->input->post('xpeserta'));
		$juara=strip_tags($this->input->post('xjuara'));

		$this->m_prestasi_siswa->simpan_prestasi($mata_lomba,$tingkat,$penyelenggara,$kota,$tgl_lomba,$peserta,$juara);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/prestasi');
					
							
	}
	
	function update_prestasi(){
				        
	    $id=strip_tags($this->input->post('id'));
		$mata_lomba=strip_tags($this->input->post('xmata_lomba'));
		$tingkat=strip_tags($this->input->post('xtingkat'));
		$penyelenggara=strip_tags($this->input->post('xpenyelenggara'));
		$kota=strip_tags($this->input->post('xkota'));
		$tgl_lomba=strip_tags($this->input->post('xtgl_lomba'));
		$peserta=strip_tags($this->input->post('xpeserta'));
		$juara=strip_tags($this->input->post('xjuara'));
		$this->m_prestasi_siswa->update_prestasi($id,$mata_lomba,$tingkat,$penyelenggara,$kota,$tgl_lomba,$peserta,$juara);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/prestasi');

	}

	function hapus_prestasi(){
		$id=strip_tags($this->input->post('id'));
		//$gambar=$this->input->post('gambar');
		//$path='./assets/images/'.$gambar;
		//unlink($path);
		$this->m_prestasi_siswa->hapus_prestasi($id);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/prestasi');
	}

}