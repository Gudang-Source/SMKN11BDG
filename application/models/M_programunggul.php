<?php

class M_programunggul extends CI_Model {

    function get_all_program()
    {
        $this->db->select('*');
        $this->db->from('tbl_program_unggulan');
        $this->db->join('tbl_komp_keahlian', 'tbl_komp_keahlian.komp_keahlian_id = tbl_program_unggulan.komp_keahlian_id');
        $this->db->order_by('id_program', 'DESC');
        $query = $this->db->get();
        return $query;
    }

    function simpan_program($data)
    {
        $query = $this->db->insert('tbl_program_unggulan', $data);
        return $query;
    }

    function edit_program($id, $nama, $kompid, $deskripsi, $keterangan) 
    {  
        $que=$this->db->query("UPDATE tbl_program_unggulan SET nama_program='$nama',deskripsi_program='$deskripsi',komp_keahlian_id='$kompid',keterangan='$keterangan' WHERE id_program='$id'");
		return $que;
    }

    function hapus_program($id)
    {
        $qu = $this->db->delete('tbl_program_unggulan',['id_program' => $id]);
        return $qu;
    }

}