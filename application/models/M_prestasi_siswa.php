<?php 
class M_prestasi_siswa extends CI_Model{

	function get_all_prestasi(){
		$hsl=$this->db->query("SELECT * FROM tbl_prestasi");
		return $hsl;
	}

	function simpan_prestasi($mata_lomba,$tingkat,$penyelenggara,$kota,$tgl_lomba,$peserta,$juara){
		$hsl=$this->db->query("INSERT INTO tbl_prestasi (id,mata_lomba,tingkat,penyelenggara,kota,tgl_lomba,peserta,juara ) VALUES ('','$mata_lomba','$tingkat','$penyelenggara','$kota','$tgl_lomba','$peserta','$juara')");
		return $hsl;
	}
	/*function simpan_prestasi_tanpa_img($mata_lomba,$tingkat,$penyelenggara,$kota,$tgl_lomba,$peserta,$juara){
		$hsl=$this->db->query("INSERT INTO tbl_prestasi (prestasi_nis,prestasi_nama,prestasi_jenkel,prestasi_kelas_id) VALUES ('$nis','$nama','$jenkel','$kelas')");
		return $hsl;
	}*/

	function update_prestasi($id,$mata_lomba,$tingkat,$penyelenggara,$kota,$tgl_lomba,$peserta,$juara){
		$hsl=$this->db->query("UPDATE tbl_prestasi SET mata_lomba='$mata_lomba',tingkat='$tingkat',penyelenggara='$penyelenggara',kota='$kota',tgl_lomba='$tgl_lomba',peserta='$peserta',juara='$juara' WHERE id='$id'");
		return $hsl;
	}
	/*function update_prestasi_tanpa_img($id,$mata_lomba,$tingkat,$penyelenggara,$kota,$tgl_lomba,$peserta,$juara){
		$hsl=$this->db->query("UPDATE tbl_prestasi SET mata_lomba='$mata_lomba',tingkat='$tingkat',penyelenggara='$penyelenggara',kota='$kota',tgl_lomba='$tgl_lomba',peserta='$peserta',juara='$juara' WHERE id='$id'");
		return $hsl;
	}*/
	function hapus_prestasi($id){
		$hsl=$this->db->query("DELETE FROM tbl_prestasi WHERE id='$id'");
		return $hsl;
	}

	function prestasi(){
		$hsl=$this->db->query("SELECT * FROM tbl_prestasi");
		return $hsl;
	}
	function prestasi_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT * FROM tbl_prestasi ORDER by id DESC limit $offset,$limit");
		return $hsl;
	}
	
	//front-end
	function get_prestasi_home(){
		$hsl=$this->db->query("SELECT * FROM tbl_prestasi ORDER BY id DESC limit 10");
		return $hsl;
	}

}