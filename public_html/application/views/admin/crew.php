
          <!-- Page Heading -->
<div class="container-fluid">
          <!-- DataTales Example -->

          <div class="card shadow mb-4">
           
            <div class="card-header py-3">
              
               <a href="<?= site_url('Admin/formcrew'); ?>" style="float: left;" class="btn btn-primary pull-right mr-2 ">Tambah<a>
              <!--<a href="<?= site_url('StaffTu/cetakmahasiswa'); ?>" style="float: left;" class="btn btn-danger pull-right">Cetak<a> -->
            </div>
            <div class="card-body">
              <div class="table-responsive">
              <?= $this->session->flashdata('message'); ?>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                     <th>NO</th>
                      <th>Nama</th>
                      <th>Foto</th>
                      <th>Jenis Kelamin</th>
                       <th>Bio</th>
                       <th>Sertivicate</th>
                       <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=1; 
                    foreach ($data->result() as $row):?> 
                    <tr>
                        <td style="vertical-align: middle;"><?= $no?></td>
                        <td style="vertical-align: middle;"><?= $row->name; ?></td>
                        <td><img style="width: 90px;"cclass="img-profile rounded-circle " src="<?= base_url().'assets/img/'.$row->image;?>"></td>
                         <td style="vertical-align: middle;"><?= $row->jenis_kelamin; ?></td>
                        <td style="vertical-align: middle;"><?= $row->bio; ?></td>
                        <td style="vertical-align: middle;"><img style="width: 90px;" src="<?= base_url().'assets/img/'.$row->sertivicate;?>"></td>
                      
                       <td><a class="fas fa-edit" style="font-size:20px;color:#2196F3;" href="<?= site_url('Admin/editcrew/'.$row->id)?>"></a><a class="fas fa-trash-alt ml-2" style="font-size:20px;color:red" href="<?= site_url('Admin/deletecrew/'.$row->id)?>" onclick="javascript : return confirm('Anda Yakin Hapus ?');"></td>
                       
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
        <!-- /.container-fluid -->


      <!-- End of Main Content -->