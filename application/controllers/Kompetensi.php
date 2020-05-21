<?php
class Kompetensi extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_kompetensi');
		$this->load->model('m_komp_keahlian');
		$this->load->model('m_pengunjung');
		$this->m_pengunjung->count_visitor();
	}
	
	function index(){
		$jum=$this->m_kompetensi->kompetensi();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=3;
        $config['base_url'] = base_url() . 'kompetensi/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
						//Tambahan untuk styling
	          $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
	          $config['full_tag_close']   = '</ul></nav></div>';
	          $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
	          $config['num_tag_close']    = '</span></li>';
	          $config['cur_tag_open']     = '<li class="page-item"><span class="page-link">';
	          $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
	          $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
	          $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
	          $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
	          $config['prev_tagl_close']  = '</span>Next</li>';
	          $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
	          $config['first_tagl_close'] = '</span></li>';
	          $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
	          $config['last_tagl_close']  = '</span></li>';
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Next >>';
            $config['prev_link'] = '<< Prev';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
			$x['data']=$this->m_kompetensi->kompetensi_perpage($offset,$limit);
			$x['kompetensi_keahlian']=$this->db->get('tbl_kompetensi');
			$x['populer']=$this->db->query("SELECT * FROM tbl_kompetensi ORDER BY kompetensi_views DESC LIMIT 5");
			$this->load->view('depan/v_kompetensi',$x);
	}
	
	function detail($slugs){
		$slug=htmlspecialchars($slugs,ENT_QUOTES);
		$query = $this->db->get_where('tbl_kompetensi', array('kompetensi_slug' => $slug));
		if($query->num_rows() > 0){
			$b=$query->row_array();
			$kode=$b['kompetensi_id'];
			$this->db->query("UPDATE tbl_kompetensi SET kompetensi_views=kompetensi_views+1 WHERE kompetensi_id='$kode'");
			$data=$this->m_kompetensi->get_kompetensi_by_kode($kode);
			$row=$data->row_array();
			$x['id']=$row['kompetensi_id'];
			$x['title']=$row['kompetensi_judul'];
			$x['image']=$row['kompetensi_gambar'];
			$x['kompetensi'] =$row['kompetensi_isi'];
			//$x['tanggal']=$row['tanggal'];
			//$x['author']=$row['tulisan_author'];
			$x['komp_keahlian']=$row['kompetensi_keahlian_nama'];
			$x['slug']=$row['kompetensi_slug'];
			//$x['show_komentar']=$this->m_tulisan->show_komentar_by_tulisan_id($kode);
			$x['kompetensi_keahlian']=$this->db->get('tbl_kompetensi');
			$x['populer']=$this->db->query("SELECT * FROM tbl_kompetensi ORDER BY kompetensi_views DESC LIMIT 5");
			$this->load->view('depan/v_kompetensi_detail',$x);
		}else{
			redirect('kompetensi');
		}
	}

	function komp_keahlian(){
		 $komp_keahlian=str_replace("-"," ",$this->uri->segment(3));
		 $query = $this->db->query("SELECT * FROM tbl_kompetensi WHERE kompetensi_keahlian_nama LIKE '%$komp_keahlian%' ORDER BY kompetensi_views DESC LIMIT 5");
		 if($query->num_rows() > 0){
			 $x['data']=$query;
			 $x['komp_keahlian']=$this->db->get('tbl_kompetensi');
 			 $x['populer']=$this->db->query("SELECT * FROM tbl_kompetensi ORDER BY kompetensi_views DESC LIMIT 5");
			 $this->load->view('depan/v_blog',$x);
		 }else{
			 echo $this->session->set_flashdata('msg','<div class="alert alert-danger">Tidak Ada Kompetensi untuk keahlian <b>'.$komp_keahlian.'</b></div>');
			 redirect('kompetensi');
		 }
	}

    function search(){
        $keyword=str_replace("'", "", htmlspecialchars($this->input->get('keyword',TRUE),ENT_QUOTES));
        $query=$this->m_kompetensi->cari_kompetensi($keyword);
				if($query->num_rows() > 0){
					$x['data']=$query;
					$x['komp_keahlian']=$this->db->get('tbl_kompetensi');
  				$x['populer']=$this->db->query("SELECT * FROM tbl_kompetensi ORDER BY kompetensi_views DESC LIMIT 5");
          $this->load->view('depan/v_kompetensi',$x);
	 		 }else{
				 echo $this->session->set_flashdata('msg','<div class="alert alert-danger">Tidak dapat menemukan kompetensi dengan kata kunci <b>'.$keyword.'</b></div>');
				 redirect('kompetensi');
			 }
    }

	/*	function komentar(){
				$kode = htmlspecialchars($this->input->post('id',TRUE),ENT_QUOTES);
				$data=$this->m_tulisan->get_berita_by_kode($kode);
				$row=$data->row_array();
				$slug=$row['tulisan_slug'];
				$nama = htmlspecialchars($this->input->post('nama',TRUE),ENT_QUOTES);
				$email = htmlspecialchars($this->input->post('email',TRUE),ENT_QUOTES);
				$komentar = nl2br(htmlspecialchars($this->input->post('komentar',TRUE),ENT_QUOTES));
				if(empty($nama) || empty($email)){
					$this->session->set_flashdata('msg','<div class="alert alert-danger">Masukkan input dengan benar.</div>');
					redirect('artikel/'.$slug);
				}else{
					$data = array(
			        'komentar_nama' 			=> $nama,
			        'komentar_email' 			=> $email,
			        'komentar_isi' 				=> $komentar,
							'komentar_status' 		=> 0,
							'komentar_tulisan_id' => $kode
					);

					$this->db->insert('tbl_komentar', $data);
					$this->session->set_flashdata('msg','<div class="alert alert-info">Komentar Anda akan tampil setelah moderasi.</div>');
					redirect('artikel/'.$slug);
				}
		}*/

}
