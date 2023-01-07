<script>
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
        </script>
<div class="container col-lg-9">                      
        <div class="card shadow mb-4">
              <div class="card-header py-3">
                    <div class="col-lg" >
                            <?= $this->session->flashdata('message'); ?>
                  <form method="post" action="<?= BASE_URL().'index.php/Admin/Inputwisata'?>" enctype="multipart/form-data">
                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-2 col-form-label">Nama Hotel</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="wisata" name="wisata" placeholder="Nama Hotel">
                       
                      </div>
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-2 col-form-label">Alamat Hotel</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="alamat" name="alamat" placeholder="alamat wisata">
                       
                      </div>
                    </div>
                    
                   
                    <div class="form-group row">
                   <label for="inputPassword3" class="col-sm-2 col-form-label">Keterangan</label>
                        <div class="col-sm-10">
                                <textarea class="texteditor" id="ket" name="ket" rows="4"> </textarea>
                              </div>
                            </div>
                           
                    <div class="form-group row">
                      <label for="exampleFormControlFile1" class="col-sm-2 col-form-label">Gambar</label>
                      <div>
                      <input type="file" class="form-control-file" name="gambar" id="foto"  onchange="tampilkanPreview(this,'preview')">
                      <img id="preview" src="" alt="" width="150px" />
                      </div>
                      
                    </div>

                    <div class="form-group row">
                      <label for="inputEmail3" class="col-sm-2 col-form-label">Dea</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="link" name="link" placeholder="link">
                       
                      </div>
                    </div>

                    <div class="form-group row">
                      <div class="col-sm-10">
                        <button type="submit" class="btn btn-primary" name="submit">Submit</button>
                      </div>
                    </div>
                    
                  </form>

                  </div>
          </div>
          </div>
          

