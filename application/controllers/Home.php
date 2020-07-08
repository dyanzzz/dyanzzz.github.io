<?php

class Home extends CI_Controller {

    function __construct() {
        parent::__construct();
        //$this->load->model('Mod_front');
    }

    function index() {
        //$data['slider']			= $this->Mod_front->get_slider()->result();
		//$data['widget1']		= $this->Mod_front->get_widget1()->result();
		//$data['widget2']		= $this->Mod_front->get_widget2()->result();
		//$data['distributor']	= $this->Mod_front->get_distributor()->result();
		
        $this->template->load('template', 'home');
    }

}