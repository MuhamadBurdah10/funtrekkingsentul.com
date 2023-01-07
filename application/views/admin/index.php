<!-- Begin Page Content -->
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
  font-size: 16px;
  padding: 6px 10px;
}


</style>

    <div class="container-fluid">
       <?= $this->session->flashdata('message'); ?>
        
          <i class="fas fa-images fa-2x text-400" style="color: green;"></i> <H5>Galerry</H5>
     
    <div class="row">
    <?php $no=1; 
    foreach ($data->result() as $row):?> 
          <div class="col-xl-3 col-md-6 mb-2">
              <div class="card border-left- shadow h-100 py-" >
                <div class="containe "> 
                  <a href="<?= site_url('Admin/get_galery/'.$row->id);?>">
                <img src="<?= base_url().'assets/img/'.$row->foto;?>" alt="Norther Li" class="image" style="width:100%">
                </a>
               </div> 
                <div class="card-body mb-0">
                  <div class="row no-gutters align-items-center">
                    <div class="col-auto">
                      <i class="fas fa-images fa-2x text-400" style="color: green;"></i>
                    </div>
                    <div class="col ml-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase"><?= $row->nama_wisata; ?>    
                    </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
      <?php 
      $no++;
      endforeach;?>
          </div>
        </div>
        </div>
        <!-- /.container-fluid -->
  
      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->
  </div>
  <!-- End of Page Wrapper -->
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>
  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <div class="modal-header">
           <div class="col-lg-8">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="<?= base_url('auth/logout'); ?>">Logout</a>
        </div>
      </div>
    </div>
  </div>
</div>

 
