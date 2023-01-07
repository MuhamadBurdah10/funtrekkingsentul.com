
  <!-- jadikan file templates footer-->
<script src="<?= site_url('/') ?>assets/layout/vendor/jquery/jquery.min.js"></script>
  <script src="<?= site_url('/') ?>assets/layout/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  

  <!-- Core plugin JavaScript-->
  <script src="<?= site_url('/') ?>assets/layout/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="<?= site_url('/') ?>assets/layout/js/sb-admin-2.min.js"></script>

  <!-- Data Tables-->
  <script src="<?= site_url('/') ?>assets/layout/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<?= site_url('/') ?>assets/layout/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <script src="<?= site_url('/') ?>assets/layout/js/demo/datatables-demo.js"></script>
  <script type="text/javascript" src="<?= site_url('/') ?>assets/ckeditor/ckeditor.js"></script>
<!-- panggil adapter jquery ckeditor -->
<script type="text/javascript" src="<?= site_url('/') ?>assets/ckeditor/adapters/jquery.js"></script>
<!-- setup selector -->
<script type="text/javascript">
    $('textarea.texteditor').ckeditor();
</script>

</body>

</html>


<!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
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