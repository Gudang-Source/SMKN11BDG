<?php
class M_komp_keahlian extends CI_Model{

	function get_all_komp_keahlian(){
		$hsl=$this->db->query("select * from tbl_komp_keahlian");
		return $hsl;
	}
	function simpan_komp_keahlian($komp_keahlian){
		$hsl=$this->db->query("insert into tbl_komp_keahlian(komp_keahlian_nama) values('$komp_keahlian')");
		return $hsl;
	}
	function update_komp_keahlian($kode,$komp_keahlian){
		$hsl=$this->db->query("update tbl_komp_keahlian set komp_keahlian_nama='$komp_keahlian' where komp_keahlian_id='$kode'");
		return $hsl;
	}
	function hapus_kategori($kode){
		$hsl=$this->db->query("delete from tbl_kategori where kategori_id='$kode'");
		return $hsl;
	}
	
	function get_komp_keahlian_byid($komp_keahlian_id){
		$hsl=$this->db->query("select * from tbl_komp_keahlian where komp_keahlian_id='$komp_keahlian_id'");
		return $hsl;
	}

}