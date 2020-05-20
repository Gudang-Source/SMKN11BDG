<?php
class Prestasi_siswa extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_prestasi_siswa');
		$this->load->model('m_pengguna');
		$this->load->model('m_kelas');
		$this->load->library('upload');
	}


	function index(){
		//$x['kelas']=$this->m_kelas->get_all_kelas();
		$x['data']=$this->m_prestasi_siswa->get_all_prestasi();
		$this->load->view('admin/v_prestasi',$x);
	}
	
	function simpan_prestasi(){
				//$photo=$gbr['file_name'];
				$kode=$this->input->post('kode');
				$mata_lomba=strip_tags($this->input->post('xmata_lomba'));
				$tingkat=strip_tags($this->input->post('xtingkat'));
				$penyelenggara=strip_tags($this->input->post('xpenyelenggara'));
				$kota=strip_tags($this->input->post('xkota'));
				$tgl_lomba=strip_tags($this->input->post('xtgl_lomba'));
				$peserta=strip_tags($this->input->post('xpeserta'));
				$juara=strip_tags($this->input->post('xjuara'));
				
				$this->m_prestasi_siswa->simpan_prestasi($mata_lomba,$tingkat,$penyelenggara,$kota,$tgl_lomba,$peserta,$juara);
				echo $this->session->set_flashdata('msg','success');
				redirect('admin/prestasi_siswa');
					//}else{
	            //echo $this->session->set_flashdata('msg','warning');
	            //redirect('admin/prestasi_siswa');           
	}
	
	function update_prestasi(){
				
	            //$config['upload_path'] = './assets/images/'; //path folder
	            //$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	            //$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

	            //$this->upload->initialize($config);
	            //if(!empty($_FILES['filefoto']['name']))
	            /*{
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        //Compress Image
	                        $config['image_library']='gd2';
	                        $config['source_image']='./assets/images/'.$gbr['file_name'];
	                        $config['create_thumb']= FALSE;
	                        $config['maintain_ratio']= FALSE;
	                        $config['quality']= '60%';
	                        $config['width']= 300;
	                        $config['height']= 300;
	                        $config['new_image']= './assets/images/'.$gbr['file_name'];
	                        $this->load->library('image_lib', $config);
	                        $this->image_lib->resize();
	                        $gambar=$this->input->post('gambar');
							$path='./assets/images/'.$gambar;
							unlink($path);

	                        $photo=$gbr['file_name'];*/
	                        //$kode=$this->input->post('kode');
							$mata_lomba=strip_tags($this->input->post('xmata_lomba'));
							$tingkat=strip_tags($this->input->post('xtingkat'));
							$penyelenggara=strip_tags($this->input->post('xpenyelenggara'));
							$kota=strip_tags($this->input->post('xkota'));
							$tgl_lomba=strip_tags($this->input->post('xtgl_lomba'));
							$peserta=strip_tags($this->input->post('xpeserta'));
							$juara=strip_tags($this->input->post('xjuara'));

							$this->m_prestasi_siswasiswa->update_prestasi($mata_lomba,$tingkat,$penyelenggara,$kota,$tgl_lomba,$peserta,$juara);
							echo $this->session->set_flashdata('msg','info');
							redirect('admin/prestasi_siswa');

	}

	function hapus_prestasi(){
		$id=$this->input->post('id');
		//$gambar=$this->input->post('gambar');
		//$path='./assets/images/'.$gambar;
		//unlink($path);
		$this->m_prestasi_siswa->hapus_prestasi($id);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/siswa');
	}

}