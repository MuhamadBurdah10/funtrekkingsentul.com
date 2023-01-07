<?php 

class Funmodel extends CI_Model{

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

     public function getdetailId($id)
    {
        return $this->db->get_where('data_wisata', ["id" => $id])->row_array();
    }

    public function getdetailcrew($id)
    {
        return $this->db->get_where('user', ["id" => $id])->row_array();
    }

    public function getdetailresto($id)
    {
        return $this->db->get_where('resto', ["id_resto" => $id])->row_array();
    }

     public function getdetailmenuhotel()
    {
        $hasil=$this->db->query('SELECT * FROM menu where kode="2" ORDER BY id desc');
        return $hasil;
    }

     public function getAllwisata(){
        $hasil=$this->db->query('SELECT * FROM data_wisata ORDER BY id desc');
        return $hasil;
    }
	public function crew(){
        $hasil=$this->db->query('SELECT * FROM user ORDER BY id');
        return $hasil;


	    }
    public function getAllresto(){
        $hasil=$this->db->query('SELECT * FROM resto ORDER BY id_resto');
        return $hasil;
	}

    public function deletewisata($id){
        return $this->db->delete('data_wisata', array("id"=>$id));
    }

    public function deletehotel($id){
        return $this->db->delete('hotel', array("id_hotel"=>$id));
    }

    public function deleteresto($id){
        return $this->db->delete('resto', array("id_resto"=>$id));
    }

    public function insertwisata($id,$wisata,$alamat,$keterangan,$gambar,$link,$detail,$tgl){
        $data = array(
         
            'nama_wisata' => $wisata,
            'Alamat' => $alamat,
            'keterangan' =>$keterangan,
            'detail_wisata'=>$detail,
            'foto' =>$gambar,
            'link' =>$link,
            'tanggal'=>$tgl);
        $this->db->insert('data_wisata', $data);
    }

    public function inserthotel($id,$nama_hotel,$alamat,$informasi,$link){
        $data = array(
            'id_hotel'=>$id,
            'nama_hotel' => $nama_hotel,
            'alamat_hotel' => $alamat,
            'ket_hotel' =>$informasi,
           // 'foto_hotel' => $foto,
            'link_hotel' => $link);
        $this->db->insert('hotel', $data
    );
    }

    public function insertbooking($nama,$Jumlahorang,$Treking,$whatsap,$pesan,$tgl,$rencana){
        $data = array(
            'nama_group' => $nama,
            'jumlah_orang' => $Jumlahorang,
            'whatsapp' =>$whatsap,
            'pesan' => $pesan,
            'treking' => $Treking,
            'tanggal' => $tgl,
            'rencanaBooking' =>$rencana);
        $this->db->insert('booking', $data
    );
    }

	}


