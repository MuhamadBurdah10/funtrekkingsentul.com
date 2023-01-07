<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Front extends CI_Controller 
{

    function __construct(){
        parent::__construct();
        $this->load->model('Slide_model');
        $this->load->model('Funmodel');
        }

	public function index()
	{
		
		$data['user']= $this->db->get_where('user',
		['email' => $this->session->userdata('email')])
		->row_array();
		$data['title'] = 'My Profile';
		/*echo "selamat datang  ". $data ['user']['name'];*/
        $data['data']=$this->Slide_model->getAllwisata();
        $data['crew']=$this->Slide_model->getcrew();
        $data['set']=$this->Slide_model->settingfront();
		$this->load->view('templates/header_front');
        $this->load->view('templates/topbarfront');
		$this->load->view('user/index2',$data);
		$this->load->view('templates/footbar');
	}

	//frontend
     public function Home()
    {
        $data['title'] = 'Fun Trekking Sentul Bogor';
        $data['wisata']=$this->slide_model->getAllslide();
        $data['data']=$this->slide_model->getAllwisata();
        //echo "selamat datang  ". $data ['user']['name'];
         $this->load->view('templates/header_front');
    
        $this->load->view('templates/topbarfront');
        $this->load->view('front/home',$data);
        $this->load->view('templates/footbar');
    }

    public function wisataf()
    {
         $data['title'] = 'Fun Trekking Sentul Bogor';
         $data['wisata']=$this->slide_model->getAllslide();
        $data['data']=$this->slide_model->getAllwisata();
        //echo "selamat datang  ". $data ['user']['name'];
         $this->load->view('templates/header_front');
    
        $this->load->view('templates/topbarfront');
        $this->load->view('front/objek',$data);
        $this->load->view('templates/footbar');
    }

     

    public function hotelf()
    {
         $data['title'] = 'wisata';
         $data['wisata']=$this->slide_model->getAllslide();
        $data['data']=$this->slide_model->gethotel();
        //echo "selamat datang  ". $data ['user']['name'];
        $this->load->view('templates/header_front');
    
        $this->load->view('templates/topbarfront');
        $this->load->view('front/hotel',$data);
        $this->load->view('templates/footbar');
    }

   public function booking(){
            $nama=$this->input->post('nama');
            $Jumlahorang=$this->input->post('Jumlahorang');
            $Treking=$this->input->post('Treking');
            $whatsap=$this->input->post('whatsap');
            $pesan=$this->input->post('pesan');
            $tgl=date('Y-m-d');
            $rencana=$this->input->post('rencana');
           
           $this->Funmodel->insertbooking($nama,$Jumlahorang,$Treking,$whatsap,$pesan,$tgl,$rencana);
           $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Booking Berhasil,  Silahkan Tunggu Konfirmasi Selanjutnya Dari Admin </div>');
              redirect('front/index');
        }

    public function booking2(){
            $nama=$this->input->post('nama');
            $Jumlahorang=$this->input->post('Jumlahorang');
            $Treking=$this->input->post('Treking');
            $whatsap=$this->input->post('whatsap');
            $pesan=$this->input->post('pesan');
            $tgl=date('Y-m-d');
            $rencana = $this->input->post('rencana');;
           
           $this->Funmodel->insertbooking($nama,$Jumlahorang,$Treking,$whatsap,$pesan,$tgl,$rencana);
           $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Booking Berhasil,  Silahkan Tunggu Konfirmasi Selanjutnya Dari Admin </div>');
              redirect('/');
        }

    public function detailwisata($id){
    $data['title'] = 'Fun Trekking Sentul Bogor';
    $data['galeri']=$this->Slide_model->get_galery($id);
    $data['detail']= $this->Slide_model->getdetailId($id);
    $data['set']=$this->Slide_model->settingfront();
    $this->load->view('templates/header_front');
    $this->load->view('templates/topbarfront',$data);
    $this->load->view('front/detail',$data);
    $this->load->view('templates/footbar');
    }

    public function detailhotel($id){
    $data['detail']= $this->slide_model->getdetailhotel($id);
    $data['data']= $this->slide_model->getdetailmenuhotel();
    // var_dump($data);
    // die();
    $this->load->view('templates/header_front');
    $this->load->view('templates/topbarfront');
    $this->load->view('user/detailhotel',$data);
    }

     public function detailresto($id){
    $data['detail']= $this->slide_model->getdetailresto($id);
    $this->load->view('templates/header_front');
    $this->load->view('templates/topbarfront');
    $this->load->view('user/detailresto',$data);
    }


}