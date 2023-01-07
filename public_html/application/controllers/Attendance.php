<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Attendance extends CI_Controller {
	function __construct() {
        parent:: __construct();
    
        $this->load->library('form_validation');
        $this->load->model('model','mod');
        
    }
	 function tarik(){

	    	//$this->mod->get_data_absen();
	       // $j=103;
	       // for ($i=101; $i <= $j; $i++) { 
	    # code...
	            echo 'Download Finger Print'."\n";
	              $this->mod->get_data_absen('');
	              echo "Done Download Finger Print ID \n" ;
	    //}
	      
	     echo "\nfinish ....";
	}
}
