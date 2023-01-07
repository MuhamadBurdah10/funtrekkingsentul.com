
<style type="text/css">
  div.polaroid {
  width: 23%;
  background-color: white;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-bottom: 20px;
}

div.containerr {
  text-align: center;
  padding: 10px 20px;
}


.image {
  opacity: 1;
  background-color: #4CAF50;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}   

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 30%;
  left: 30%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%)
}

.containe:hover .image {
  opacity: 0.3;
}

.containe:hover .middle {
  opacity: 1;
}

.text {
  background-color: #4CAF50;
  color: white;
  font-size: 12px;
  padding: 2px 7px;
  border-radius: 3px;
  opacity: 5;
  transition: .5s ease;
}
</style>
          <!-- Page Heading -->
<div class="container-fluid">
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
             <?php 
             $jumlah = $sum;
             if ($jumlah < 5) {?>
                   <button href="#" style="float: left;" class="btn btn-success pull-right mr-2 btn-sm btn-edit ml-1" data-id="<?= $myid;?> "><li class="fas fa-plus" style="list-style-type: none"> Tambah Galeri</li></button>
                <?php  }else {?>
                  <span style="color: green;">Galeri Maksimal <?=$jumlah?> </span>
                  <?php  }
                  ?>
            </div>
            <div class="card-body">
              <div class="table-responsive">
              <?= $this->session->flashdata('message'); ?>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Foto</th>
                      <th>Galeri</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=1; 
                    foreach ($data as $row):?> 
                    <tr>
                      <td  width="20%">
                       <div class="text"><?= $row['nama_wisata'] ?></div>
                    </td>
                      <td width="80%">
                        <!-- <div class="polaroid ml-1">
                        <div class="containe">  
                        <img src="<?= base_url().'assets/img/galeri/'.$row['foto_galeri'];?>" alt="Norther Li" class="image"  onclick="modal_image('<?= base_url().'assets/img/galeri/'.$row['foto_galeri'];?>');" alt="No Image">
                        <div class="containerr">
                          
                           <a class="fas fa-edit" style="font-size:20px;color:#2196F3;" href=""<?= site_url('Admin/deletehotel/'.$row['id_galeri']);?>"></a>
                           <a class="fas fa-trash-alt" style="font-size:20px;color:red" href="<?= site_url('Admin/deletehotel/'.$row['id_galeri']);?>" onclick="javascript : return confirm('Anda Yakin Hapus ?');"></a>
                        </div>
                        </div>
                        </div>   -->

                        <div class="col-xl-3 col-md-6 mb-2">
                          <div class="card border-left- shadow h-100 py-" >
                            <div class="containe "> 
                            <img src="<?= base_url().'assets/img/galeri/'.$row['foto_galeri'];?>" alt="Norther Li" class="image"  onclick="modal_image('<?= base_url().'assets/img/galeri/'.$row['foto_galeri'];?>');" alt="No Image"  style="height: 140px; ">
                           </div> 
                           
                              <div class="row no-gutters align-items-center mt-1 mb-2">
                                <div class="col ml-2">
                               <a class="fas fa-edit" style="font-size:18px;color:#2196F3;" href=""<?= site_url('Admin/editgaleri/'.$row['id_galeri']);?>"></a>
                                  <a class="fas fa-trash-alt" style="font-size:18px;color:red" href="<?= site_url('Admin/deletegaleri/'.$row['id_galeri']);?>" onclick="javascript : return confirm('Anda Yakin Hapus ?');"></a>
                                </div>
                              
                            </div>
                          </div>
                        </div>                    
                      </td> 
                    
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

        <form action="<?= site_url('admin/upload_galeri/'); ?>" method="post" enctype="multipart/form-data">
          <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header" style="background-color: #4e73df;">
                <h3 text-center: " style="color: #ffff">Upload Galery</h3>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">
                 <div class="form-group row">
                      <label for="" class="col-sm-5 col-form-label">Uplod Foto Galery</label>
                        <div class="col-sm-9">  
                        <input type="file" accept="image/*" capture="camera"  name="gambar" id="exampleFormControlFile"  onchange="tampilkanPreview(this,'preview')">
                          <img id="preview" src="" alt="" width="150px"/>
                        </div>
                  </div> 

                  <div class="modal-footer">
                      <input type="hidden" name="id_galeri" class="id_galeri">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                      <button type="submit" name="submit2" class="btn btn-primary">Upload</button>
                  </div>
                </div>
              </div>
            </div>
          </div>

            </form>


      <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
  <script type="text/javascript" src="<?php echo base_url().'assets/js/jquery.js'?>"></script>
  <script>


    $(function () {
      $('[data-toggle="tooltip"]').tooltip();
    });
    $(document).ready(function(){
        // get Edit Product
        $('.btn-edit').on('click',function(){
            // get data from button edit
            const id_galeri = $(this).data('id');
            
            
            // Set data to Form Edit
            $('.id_galeri').val(id_galeri);
            // Call Modal Edit
            $('#editModal').modal('show');
        });

        // get Delete Product
        $('.btn-delete').on('click',function(){
            // get data from button edit
            const id = $(this).data('id');
            // Set data to Form Edit
            $('.productID').val(id);
            // Call Modal Edit
            $('#deleteModal').modal('show');
        });  

        $('#search').on('keyup', function() {
                $.ajax({
                    type: 'POST',
                    url: '<?php echo base_url(); ?>/user/search',
                    data: {
                        search: $(this).val()
                    },
                    cache: false,
                    success: function(data) {
                        $('#tampil').html(data);
                    }
                });
            });   
    });


    //image
     function tampilkanPreview(gambar,idpreview){
//                membuat objek gambar
                var gb = gambar.files;
//                loop untuk merender gambar
                for (var i = 0; i < gb.length; i++){
//                    bikin variabel
                    var gbPreview = gb[i];
                    var imageType = /image.*/;
                    var preview=document.getElementById(idpreview);
                    var reader = new FileReader();
                    if (gbPreview.type.match(imageType)) {
//                        jika tipe data sesuai
                        preview.file = gbPreview;
                        reader.onload = (function(element) {
                            return function(e) {
                                element.src = e.target.result;
                            };
                        })(preview);
    //                    membaca data URL gambar
                        reader.readAsDataURL(gbPreview);
                    }else{
//                        jika tipe data tidak sesuai
                        alert("Type file tidak sesuai. Khusus image.");
                    }
                }
            }

function tampilkanPreview2(gambar,idpreview){
//                membuat objek gambar
                var gb = gambar.files;
//                loop untuk merender gambar
                for (var i = 0; i < gb.length; i++){
//                    bikin variabel
                    var gbPreview = gb[i];
                    var imageType = /image.*/;
                    var preview=document.getElementById2(idpreview);
                    var reader = new FileReader();
                    if (gbPreview.type.match(imageType)) {
//                        jika tipe data sesuai
                        preview.file = gbPreview;
                        reader.onload = (function(element) {
                            return function(e) {
                                element.src = e.target.result;
                            };
                        })(preview);
    //                    membaca data URL gambar
                        reader.readAsDataURL(gbPreview);
                    }else{
//                        jika tipe data tidak sesuai
                        alert("Type file tidak sesuai. Khusus image.");
                    }
                }
            }
  </script>

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