<?php

class Contact extends CI_Controller {

    function __construct() {
        parent::__construct();
        //$this->load->model('Mod_front');
    }

    function index() {
		//$data['widget3']		= $this->Mod_front->get_widget3()->result();
		$this->template->load('template', 'contact');
    }

}