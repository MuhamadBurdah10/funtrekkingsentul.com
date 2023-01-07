<?php 

class Slide_model extends CI_Model{

public function gethotel(){
        return $this->db->get('hotel');  
    }

    public function getresto(){
        return $this->db->get('resto');
        
    }

    public function getAllslide(){
        $hasil=$this->db->query('SELECT * FROM slide ORDER BY id');
        return $hasil;
    }

    public function getBooking(){
        $hasil=$this->db->query('SELECT * FROM booking ORDER BY tanggal DESC');
        return $hasil;
    }

    public function getcrew(){
        $hasil=$this->db->query('SELECT * FROM user where role_id = 0 ORDER BY id ');
        return $hasil;
    }

    public function setting(){
        return $this->db->get('setting')->result_array();
    }

    public function settingfront(){
        return $this->db->get('setting')->row_array();
    }

     public function getdetailId($id)
    {
        return $this->db->get_where('data_wisata', ["id" => $id])->row_array();
    }

    public function editwisata($id)
    {
        return $this->db->get_where('data_wisata', ["id" => $id])->row_array();
    }

     public function editsetting($id)
    {
        return $this->db->get_where('setting', ["id_setting" => $id])->row_array();
    }

    public function editcrew($id)
    {
        return $this->db->get_where('user', ["id" => $id])->row_array();
    }

    public function getdetailcrew($id)
    {
        return $this->db->get_where('user', ["id" => $id])->row_array();
    }

    public function get_galery($id){
        $this->db->select("*");
        $this->db->from("galeri g");
        $this->db->join('data_wisata d','g.id_wisata = d.id');
        $this->db->where("id_wisata",$id);
        $query = $this->db->get();
        return $query->result_array();
      }

    public function sumgaleri($id){
        $this->db->select('*');
        $this->db->from("galeri");
        $this->db->where("id_wisata",$id);
        return $this->db->count_all_results();
    }
 
    public function getAllwisata(){
        $hasil=$this->db->query('SELECT * FROM data_wisata ORDER BY nama_wisata ASC');
        return $hasil;
    }
	public function crew(){
        $hasil=$this->db->query('SELECT * FROM user where role_id = 0 ORDER BY id');
        return $hasil;
	    }
   
    public function deletewisata($id){
        return $this->db->delete('data_wisata', array("id"=>$id));
    }

    public function deletecrew($id){
        return $this->db->delete('user', array("id"=>$id));
    }

    public function deletegaleri($id){
        return $this->db->delete('galeri', array("id_galeri"=>$id));
    }


    public function insertwisata($wisata,$alamat,$keterangan,$detail,$gambar,$tgl){
        $data = array(
            'nama_wisata' => $wisata,
            'Alamat' => $alamat,
            'keterangan' =>$keterangan,
            'detail_wisata'=>$detail,
            'foto' =>$gambar,
            'tanggal'=>$tgl);
        $this->db->insert('data_wisata', $data);
    }

    public function updatetwisata($id, $post)
    {
        $this->db->where('id', $id);
        $this->db->update('data_wisata', $post);
        return $this->db->affected_rows();
    }

    public function insertgaleri($id,$foto){
        $data = array(
            'id_wisata'=>$id,
            'foto_galeri' => $foto
             );
        $this->db->insert('galeri', $data
    );
    }

     public function insertcrew($nama,$jk,$gambar,$sertivikat){
        $data = array(
            'name' => $nama,
            'jenis_kelamin' => $jk,
            'sertivicate' =>$sertivikat,
            'image' =>$gambar );
        $this->db->insert('user', $data);
    }

    public function updatecrew($nama,$jk,$gambar,$sertivikat,$id){
        $data = array(
            'name' => $nama,
            'jenis_kelamin' => $jk,
            'sertivicate' =>$sertivikat,
            'image' =>$gambar );
        $this->db->where('id', $id);
        $this->db->update('user', $data);
    }

    public function Settingupdate($nama,$logo,$tentang,$whatsapp,$id){
        $data = array(
            'nama_wisata' => $nama,
            'logo' => $logo,
            'Tentang' =>$tentang,
            'whatsapp' =>$whatsapp );
        $this->db->where('id_setting', $id);
        $this->db->update('setting', $data);
    }

	}


