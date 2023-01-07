
          <!-- Page Heading -->
<div class="container-fluid">
          <!-- DataTales Example -->

          <div class="card shadow mb-4">
           
            <div class="card-header py-3">
              
               <a href="<?= site_url('Admin/formwisata'); ?>" style="float: left;" class="btn btn-primary pull-right mr-2 ">Tambah<a>
              <!--<a href="<?= site_url('StaffTu/cetakmahasiswa'); ?>" style="float: left;" class="btn btn-danger pull-right">Cetak<a> -->
            </div>
            <div class="card-body">
              <div class="table-responsive">
              <?= $this->session->flashdata('message'); ?>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                     <th>NO</th>
                      <th>Nama Wisata</th>
                      <th>Alamat Wisata</th>
                       <th>Informasi</th>
                       <th>Gambar</th>
                       <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=1; 
                    foreach ($data->result() as $row):?> 
                    <tr>
                        <td style="vertical-align: middle;"><?= $no?></td>
                        <td style="vertical-align: middle;"><?= $row->nama_wisata; ?></td>
                         <td style="vertical-align: middle;"><?= $row->Alamat; ?></td>
                        <td style="vertical-align: middle;"><?= $row->keterangan; ?></td>
                        <td style="vertical-align: middle;"><img style="width: 90px;"id="myImg" src="<?= base_url().'assets/img/'.$row->foto;?>" onclick="modal_image('<?= base_url().'assets/img/'.$row->foto;?>');" alt="No Image" width="50px" height="40px"></td>
                       <td><a class="fas fa-edit" style="font-size:;color:#2196F3;" href="<?= site_url('Admin/editwisata/'.$row->id)?>"></a><a class="fas fa-trash-alt ml-2" style="color:red" href="<?= site_url('Admin/deletewisata/'.$row->id);?>" onclick="javascript : return confirm('Anda Yakin Hapus ?');"></td>   
                    </tr>
                    <?php 
                  $no++;
                  endforeach;?>
                  </tbody>
                </table>
               
              </div>
            </div>
          </div>

        </div>

        <!-- Modal Gambar -->
     <div id="myModal" class="modal modal-img " role="dialog"  style="width: 500px; margin-left: 300px;">
         <!-- The Close Button -->
         <span class="close cursor" onclick="closeModal()">&times;</span>
         <!-- Modal Content (The Image) -->
         <img class="modal-content modal-content-img" id="img-artikel">
     </div>
     <script>
         // Get the modal
         var modal = document.getElementById("myModal");
         var img = document.getElementById("myImg");
         var modalImg = document.getElementById("img-artikel");
         var captionText = document.getElementById("caption");
         function modal_image(image_url) {
             modal.style.display = "block";
             document.getElementById('img-artikel').setAttribute('src', image_url);
             captionText.innerHTML = this.alt;
         }
         // Close the modal
         function closeModal() {
             document.getElementById("myModal").style.display = "none";
         }
     </script>
        <!-- /.container-fluid -->


      <!-- End of Main Content -->