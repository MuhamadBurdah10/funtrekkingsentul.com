<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

        function __construct(){
        parent::__construct();
        $this->load->model('slide_model');
        if($this->session->userdata('role_id') != 1){
            redirect('Auth');
        }
    }   

    public function index() {
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();
        $data['title'] = 'Fun Trekking Sentul Bogor';
        $data['data']=$this->slide_model->getAllwisata();
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/index',$data);
        $this->load->view('templates/auth_footer');

    }   

    public function wisata(){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();

        $data['title'] = 'Fun Trekking Sentul Bogor';
        $data['data']=$this->slide_model->getAllwisata();
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/datawisata',$data);
        $this->load->view('templates/auth_footer');
        
    }

    public function crew(){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();

        $data['title'] = 'Fun Trekking Sentul Bogor';
        $data['data']=$this->slide_model->crew();
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/crew',$data);
        $this->load->view('templates/auth_footer');
    }

    public function get_galery($id){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();
        $data['title'] = 'Fun Trekking Sentul Bogor';
        $data['myid']= $id;

        $data['data']=$this->slide_model->get_galery($id);
        $data['sum']=$this->slide_model->sumgaleri($id);
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar');
        $this->load->view('templates/topbar');
        $this->load->view('admin/my_galery',$data);
        $this->load->view('templates/auth_footer');
    }

     public function Setting(){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();

        $data['title'] = 'Fun Trekking Sentul';
        $data['data']=$this->slide_model->setting();
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/setting',$data);
        $this->load->view('templates/auth_footer');
    }   

    public function formwisata(){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();
        $data['title'] = 'Fun Trekking Sentul Bogor';
       
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/tambahwisata',$data);
        $this->load->view('templates/auth_footer');  
    }

    public function formcrew(){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();
        $data['title'] = 'Fun Trekking Sentul Bogor';
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/tambahcrew',$data);
        $this->load->view('templates/auth_footer');  
    }

    public function addcrew(){
            $gambar=$this->input->post('gambar');
            $nama=$this->input->post('nama');
            $jk=$this->input->post('jk');
            $sertivikat=$this->input->post('sertivikat');
           
             if(isset($_POST['submit'])){
                $dir_upload = "./assets/img/";
                $gambar = $_FILES['gambar']['name'];
                if(is_uploaded_file($_FILES['gambar']['tmp_name'])){
                    $cek = move_uploaded_file ($_FILES['gambar']['tmp_name'],$dir_upload.$gambar);
                }

                $dir_uploadd = "./assets/img/";
                $sertivikat = $_FILES['sertivikat']['name'];
                if(is_uploaded_file($_FILES['sertivikat']['tmp_name'])){
                    $cek = move_uploaded_file ($_FILES['sertivikat']['tmp_name'],$dir_uploadd.$sertivikat);
                }
            }

           $this->slide_model->insertcrew($nama,$jk,$gambar,$sertivikat);
           $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasil Ditambahkan </div>');
              redirect('admin/crew');
        }

        public function updatecrew(){
            $id=$this->input->post('id');
            $gambar=$this->input->post('gambar');
            $nama=$this->input->post('nama');
            $jk=$this->input->post('jk');
            $sertivikat=$this->input->post('sertivikat');
           
             if(isset($_POST['submit'])){
                $dir_upload = "./assets/img/";
                $gambar = $_FILES['gambar']['name'];
                if(is_uploaded_file($_FILES['gambar']['tmp_name'])){
                    $cek = move_uploaded_file ($_FILES['gambar']['tmp_name'],$dir_upload.$gambar);
                }

                $dir_uploadd = "./assets/img/";
                $sertivikat = $_FILES['sertivikat']['name'];
                if(is_uploaded_file($_FILES['sertivikat']['tmp_name'])){
                    $cek = move_uploaded_file ($_FILES['sertivikat']['tmp_name'],$dir_uploadd.$sertivikat);
                }
            }

           $this->slide_model->updatecrew($nama,$jk,$gambar,$sertivikat,$id);
           $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasil Ditambahkan </div>');
              redirect('admin/crew');
        }

    public function updatesetting(){
            $id=$this->input->post('id');
            $nama_wisata=$this->input->post('nama_wisata');
            $logo=$this->input->post('logo');
            $tentang=$this->input->post('tentang');
            $whatsapp=$this->input->post('whatsapp');
           
             if(isset($_POST['submit'])){
                $dir_upload = "./assets/images/";
                $logo = $_FILES['logo']['name'];
                if(is_uploaded_file($_FILES['logo']['tmp_name'])){
                    $cek = move_uploaded_file ($_FILES['logo']['tmp_name'],$dir_upload.$logo);
                }
            }

           $this->slide_model->Settingupdate($nama_wisata,$logo,$tentang,$whatsapp,$id);
           $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasil Ditambahkan </div>');
              redirect('admin/Setting');
        }

    public function Inputwisata(){
            $gambar=$this->input->post('gambar');
            $wisata=$this->input->post('wisata');
            $alamat=$this->input->post('alamat');
            $keterangan=$this->input->post('ket');
            $detail=$this->input->post('Detail');
            $tgl=date('d-m-Y');
           
             if(isset($_POST['submit'])){
                $dir_upload = "./assets/img/";
                $gambar = $_FILES['gambar']['name'];
            
                if(is_uploaded_file($_FILES['gambar']['tmp_name'])){
                    $cek = move_uploaded_file ($_FILES['gambar']['tmp_name'],$dir_upload.$gambar);
                }
            }

           $this->slide_model->insertwisata($wisata,$alamat,$keterangan,$detail,$gambar,$tgl);
           $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasil Ditambahkan </div>');
              redirect('admin/wisata');
        }

        public function updatewisata($id){
            $post['id'] = $this->input->post('id');
        $post['nama_wisata'] = $this->input->post('wisata');
        $post['Alamat']    = $this->input->post('alamat');
        $post['keterangan']    = $this->input->post('ket');
        $post['detail_wisata']    = $this->input->post('Detail');
        $post['tanggal']    = date('d-m-Y');
        $config['upload_path']          = './assets/img/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
        // $config['max_size']             = 100000;
        // $config['max_width']            = 10240;
        // $config['max_height']           = 7680;

        $this->load->library('upload', $config);
        $this->upload->do_upload('foto');

        if (!empty($this->upload->data()['file_name'])) {
            $post['foto'] = $this->upload->data()['file_name'];
        }

        $id = $this->slide_model->updatetwisata($id, $post);
        if ($id) {
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasil Ditambahkan </div>');
            redirect('admin/wisata');
        } else {
            echo "Data gagal di Editkan !!!";
        }
        }

        public function editwisata($id){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();
        $data['title'] = 'Fun Trkking Sentul Bogor';
        $data['wisata']=$this->slide_model->editwisata($id);
       
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/editwisata',$data);
        $this->load->view('templates/auth_footer');       
    }

     public function editsetting($id){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();
        $data['title'] = 'Fun Trkking Sentul Bogor';
        $data['set']=$this->slide_model->editsetting($id);
       
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/editsetting',$data);
        $this->load->view('templates/auth_footer');       
    }

     public function editcrew($id){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();
        $data['title'] = 'Fun Trkking Sentul';
        $data['crew']=$this->slide_model->editcrew($id);
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/editcrew',$data);
        $this->load->view('templates/auth_footer');     
    }


    
    public function upload_galeri(){
            $id=$this->input->post('id_galeri');
        
            $foto=$this->input->post('gambar');
             if(isset($_POST['submit2'])){
                $dir_upload = "./assets/img/galeri/";
                $foto = $_FILES['gambar']['name'];
            
                if(is_uploaded_file($_FILES['gambar']['tmp_name'])){
                    $cek = move_uploaded_file ($_FILES['gambar']['tmp_name'],$dir_upload.$foto);
                }
            }
           $this->slide_model->insertgaleri($id,$foto);
           $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasil Ditambahkan </div>');
             redirect('admin/index/');
        
    }

    public function deletecrew($id){    
        $this->slide_model->deletecrew($id);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasil Dihapus </div>');
        redirect('admin/crew');
    }

    public function deletewisata($id){
            $this->slide_model->deletewisata($id);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasil Dihapus </div>');
            redirect('admin/wisata');
        }

     //hotel
    public function formresto(){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();
       
        $data['title'] = 'resto';
       
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/tambahresto',);
        $this->load->view('templates/auth_footer'); 
    }

   
    public function deletegaleri($id){  
        $this->slide_model->deletegaleri($id);
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasil Dihapus </div>');
        redirect('admin/index');
        }


    public function booking(){
        $data['user']= $this->db->get_where('user',
        ['email' => $this->session->userdata('email')])
        ->row_array();

        $data['title'] = 'Fun Trekking Sentul Bogor';
        $data['data']=$this->slide_model->getBooking();
        $this->load->view('templates/auth_header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('admin/booking',$data);
        $this->load->view('templates/auth_footer');
    }


}