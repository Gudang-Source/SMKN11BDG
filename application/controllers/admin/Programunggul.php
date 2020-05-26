<?php

class ProgramUnggul extends CI_Controller {
    
    function __construct()
    {
        parent::__construct();
        if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
        $this->load->model('m_programunggul');
        $this->load->model('m_komp_keahlian');
    }

    function index() 
    {
        $x['data']=$this->m_programunggul->get_all_program();
        $x['kompdata'] = $this->m_komp_keahlian->get_all_komp_keahlian();
		$this->load->view('admin/v_program',$x);
    }

    function simpan_programunggul()
    {
        $nama=strip_tags($this->input->post('xnama'));
		$kompid=strip_tags($this->input->post('xkompetensi'));
		$deskripsi=strip_tags($this->input->post('xdeskripsi'));
        $keterangan=strip_tags($this->input->post('xketerangan'));
        
        $data = [
            "nama_program" => $nama,
            "deskripsi_program" => $deskripsi,
            "komp_keahlian_id" => $kompid,
            "keterangan" => $keterangan
        ];

        $this->m_programunggul->simpan_program($data);
        echo $this->session->set_flashdata('msg','success');
		redirect('admin/programunggul');
    }

    function edit_programunggul()
    {
        $id=strip_tags($this->input->post('id'));
        $nama=strip_tags($this->input->post('xnama'));
		$kompid=strip_tags($this->input->post('xkompetensi'));
		$deskripsi=strip_tags($this->input->post('xdeskripsi'));
        $keterangan=strip_tags($this->input->post('xketerangan'));

        $this->m_programunggul->edit_program($id, $nama, $kompid, $deskripsi, $keterangan);
        echo $this->session->set_flashdata('msg','info');
        redirect('admin/programunggul');
    }

    function hapus_programunggul()
    {
        $id=strip_tags($this->input->post('kode'));
		$this->m_programunggul->hapus_program($id);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/programunggul');
    }

}