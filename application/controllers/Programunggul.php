<?php

class Programunggul extends CI_Controller {
    function __construct() 
    {
        parent::__construct();
        $this->load->model('m_programunggul');
    }   

    function index()
    {
        $x['data'] = $this->m_programunggul->get_all_program();
        $this->load->view('depan/v_programunggul', $x);
    }
}