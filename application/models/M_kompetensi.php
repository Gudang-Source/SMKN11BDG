<?php
class M_kompetensi extends CI_Model{

	function get_all_kompetensi(){
		$hsl=$this->db->query("SELECT * FROM tbl_kompetensi ORDER BY kompetensi_id DESC");
		return $hsl;
	}
	function simpan_kompetensi($judul,$isi,$komp_keahlian_id,$komp_keahlian_nama,$imgslider,$gambar,$slug){
		$hsl=$this->db->query("insert into tbl_kompetensi(kompetensi_judul,kompetensi_isi,kompetensi_keahlian_id, kompetensi_keahlian_nama, kompetensi_img_slider,kompetensi_gambar,kompetensi_slug) values ('$judul','$isi','$komp_keahlian_id','$komp_keahlian_nama','$imgslider','$gambar','$slug')");
		return $hsl;
	}
	function get_kompetensi_by_kode($kode){
		$hsl=$this->db->query("SELECT tbl_kompetensi.*,DATE_FORMAT(kompetensi_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_kompetensi WHERE kompetensi_id='$kode'");
		return $hsl;
	}
	function update_kompetensi($kompetensi_id,$judul,$isi,$kategori_id,$kategori_nama,$imgslider,$user_id,$user_nama,$gambar,$slug){
		$hsl=$this->db->query("update tbl_kompetensi set kompetensi_judul='$judul',kompetensi_isi='$isi',kompetensi_kategori_id='$kategori_id',kompetensi_kategori_nama='$kategori_nama',kompetensi_img_slider='$imgslider',kompetensi_pengguna_id='$user_id',kompetensi_author='$user_nama',kompetensi_gambar='$gambar',kompetensi_slug='$slug' where kompetensi_id='$kompetensi_id'");
		return $hsl;
	}
	function update_kompetensi_tanpa_img($kompetensi_id,$judul,$isi,$kategori_id,$kategori_nama,$imgslider,$user_id,$user_nama,$slug){
		$hsl=$this->db->query("update tbl_kompetensi set kompetensi_judul='$judul',kompetensi_isi='$isi',kompetensi_kategori_id='$kategori_id',kompetensi_kategori_nama='$kategori_nama',kompetensi_img_slider='$imgslider',kompetensi_pengguna_id='$user_id',kompetensi_author='$user_nama',kompetensi_slug='$slug' where kompetensi_id='$kompetensi_id'");
		return $hsl;
	}
	function hapus_kompetensi($kode){
		$hsl=$this->db->query("delete from tbl_kompetensi where kompetensi_id='$kode'");
		return $hsl;
	}

	//Front-End
	function get_kompetensi_slider(){
		$hsl=$this->db->query("SELECT * tbl_kompetensi where kompetensi_img_slider='1' ORDER BY kompetensi_id DESC");
		return $hsl;
	}
	function get_kompetensi_home(){
		$hsl=$this->db->query("SELECT * FROM tbl_kompetensi ORDER BY kompetensi_id DESC limit 4");
		return $hsl;
	}

	function kompetensi_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_kompetensi ORDER BY kompetensi_id DESC limit $offset,$limit");
		return $hsl;
	}

	function kompetensi(){
		$hsl=$this->db->query("SELECT * FROM tbl_kompetensi ORDER BY kompetensi_id DESC");
		return $hsl;
	}
	function get_berita_by_kode($kode){
		$hsl=$this->db->query("SELECT tbl_kompetensi.*,DATE_FORMAT(kompetensi_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_kompetensi where kompetensi_id='$kode'");
		return $hsl;
	}

	function cari_berita($keyword){
		$hsl=$this->db->query("SELECT tbl_kompetensi.*,DATE_FORMAT(kompetensi_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_kompetensi WHERE kompetensi_judul LIKE '%$keyword%' LIMIT 5");
		return $hsl;
	}

	function show_komentar_by_kompetensi_id($kode){
		$hsl=$this->db->query("SELECT * FROM tbl_komentar WHERE komentar_kompetensi_id='$kode' AND komentar_status='1' AND komentar_parent='0'");
		return $hsl;
	}


}
