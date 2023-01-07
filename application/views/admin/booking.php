
          <!-- Page Heading -->
<div class="container-fluid">
          <!-- DataTales Example -->

          <div class="card shadow mb-4">
           
            <div class="card-header py-3">
              
              <p>Data Booking Fun Trekking sentul Bogor</p>
            </div>
            <div class="card-body">
              <div class="table-responsive">
              <?= $this->session->flashdata('message'); ?>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                     <th>Tanggal Booking</th>
                      <th>Nama Booking</th>
                      <th>Jumlah Orang</th>
                       <th>Tujuan Trekking</th>
                       <th>Rencana Booking</th>
                       <th>Pesan</th>
                       <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no=1; 
                    foreach ($data->result() as $row):?> 
                    <tr>
                        <td style="vertical-align: middle;"><?= $row->tanggal;?></td>
                        <td style="vertical-align: middle;"><?= $row->nama_group; ?></td>
                         <td style="vertical-align: middle;"><?= $row->jumlah_orang; ?></td>
                        <td style="vertical-align: middle;"><?= $row->treking; ?></td>
                        <td style="vertical-align: middle;"><?= $row->rencanaBooking; ?></td>
                        <td style="vertical-align: middle;"><?= $row->pesan; ?></td>
                       <td> <a style="float: right; margin-left: 1px" href="http://api.whatsapp.com/send?phone=62<?= $row->whatsapp; ?>&text=Haii Sobat Fun Trekking Sentul Bogor%20<?= $row->nama_group; ?>,%20Kami ingin menkonfirmasi%20 Rencana Booking%20pada tanggal%20<?= $row->rencanaBooking; ?>20Terimakasih%20" class="btn btn-success btn-sm"><i class="fab fa-whatsapp mr-2"></td>   
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