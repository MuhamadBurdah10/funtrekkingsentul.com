
          <!-- Page Heading -->
<div class="container-fluid">
          <!-- DataTales Example -->

          <div class="card shadow mb-4">
           
            <div class="card-header py-3">  
            <a class="nav-link" href="<?= site_url('Admin/Setting'); ?>">
            <i class="fas fa-cog fa-sm fa-fw mr-2 text-gray-400" style="font-size: 20px;"></i>
            <span style="font-size: 20px; ">Setting / Profile</span></a>
            </div>
            <div class="card-body">
              <div class="table-responsive">
              <?= $this->session->flashdata('message'); ?>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                     <th>NO</th>
                      <th>Nama Wisata</th>
                      <th>Logo</th>
                      <th>Tentang</th>
                       <th>Whatsapp</th>
                       <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=1; 
                    foreach ($data as $row):?> 
                    <tr>
                        <td style="vertical-align: middle;"><?= $no?></td>
                        <td style="vertical-align: middle;"><?= $row['nama_wisata']; ?></td>
                        <td><img style="width: 90px;"cclass="img-profile rounded-circle " src="<?= base_url().'assets/images/'.$row['logo'];?>"></td>
                         <td style="vertical-align: middle;"><?= $row['Tentang']; ?></td>
                        <td style="vertical-align: middle;"><?= $row['whatsapp']; ?></td>
                        <!-- <td style="vertical-align: middle;"><img style="width: 90px;" src="<?= base_url().'assets/img/'.$rowsertivicate;?>"></td> -->
                      
                       <td><a class="fas fa-edit" style="font-size:20px;color:#2196F3;" href="<?= site_url('Admin/editsetting/'.$row['id_setting'])?>"></a> 
                       
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