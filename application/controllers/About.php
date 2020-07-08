<?php

class About extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->model('Mod_produk');
		$this->load->model('Mod_kategori');
    }

    function index() {
		$data['kategori']			= $this->Mod_kategori->select_all()->result();
		//$data['count_all_product']	= $this->Mod_produk->get_product_by_kategori_id($row_kategori->kategori_id)->num_rows();
		
		/*
		print_r($data['count_all_product']);
		die();
		
		foreach($data['kategori'] as $row_kategori){
			$array_kategori_produk = array(
				'kategori_id'	=> $row_kategori->kategori_id,
				'nama_kategori'	=> $row_kategori->nama_kategori
			);
			
			$data['jumlah_produk']	= $this->Mod_produk->get_product_by_kategori_id($array_kategori_produk)->num_rows();
			$offset					= round($data['jumlah_produk'] / 3);
			$data['produk']			= $this->Mod_produk->get_page_product_by_kategori_id($array_kategori_produk, $offset, 3)->result();
			
			if($data['jumlah_produk'] <= 3){
				$data['jumlah_produk2']	= $this->Mod_produk->get_product_by_kategori_id($array_kategori_produk)->num_rows();
				if(empty($data['jumlah_produk2'])){
					$data['produk']			= $this->Mod_produk->get_page_product_by_kategori_id($array_kategori_produk, $offset, 3)->result();
					$nomor = 0;
				}else{
					$nomor = 3;
				}
			}
			
			print_r("kategori $array_kategori_produk[kategori_id]<br/>");
			foreach($data['produk'] as $row_produk){
				print_r($row_produk->nama_product.'<br/>');
				//die();
			}
			print_r ('<br/>');
			
		}
		//9
		//7257807
		
		die();
		*/
		
		$this->template->load('template', 'about', $data);
    }

}