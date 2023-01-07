	<style type="text/css">
		.row1 {
    display: flex;
    flex-wrap: wrap;
    margin-right: -15px;
    margin-left: -15px;
}
	</style>
			<!-- End Button -->
			<section class="post-content-area single-post-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-10 posts-list">
							<div class="single-post row">
								<div class="col-lg-12">
									<div class="feature-img">
										<img class="img-fluid" src="<?= site_url('assets/img/').$detail['foto_hotel']; ?>" alt="">
									</div>									
								</div>
								<div class="col-lg-3  col-md-3 meta-details">
									<ul class="tags">
										<li><a href="#"><?= $detail['link_hotel']; ?></a></li>
								
									</ul>
									<div class="user-details row">
										<p class="user-name col-lg-12 col-md-12 col-6"><a href="#"><?= $detail['alamat_hotel']; ?></a> <span class="lnr lnr-"></span></p>
										<p class="date col-lg-12 col-md-12 col-6"><a href="#"><?= $detail['tanggal']; ?></a> <span class="lnr lnr-calendar-full"></span></p>
									
										
																												
									</div>
								</div>
								<div class="col-lg-9 col-md-9">
									<h3 class="mt-10 mb-20"><?= $detail['nama_hotel']; ?></h3>
									<p class="excert">
										<?= $detail['nama_hotel']; ?>
									</p>
									<p>
										<?= $detail['ket_hotel']; ?>
									</p>
									<p>
										<?= $detail['detail_hotel']; ?>
									</p>
									
								</div>
							</div>
						</div>
					</div>

					<div class="container mt-0.1">
					<h3>Image Gallery Hotel</h3><br>
					<div class="row">
						
					<?php
	                    foreach ($data->result() as $row):
	     			?> 
						<div class="single-recent-blog col-lg-4 col-md-4">
							<div class="thumb">
								<img  src="<?= base_url().'assets/img/'.$row->menu;?>" class="" alt="">	<p></p>	
							</div>
								<div >
							</div>	
						</div>
											
					<?php 
                  endforeach;?>													
					</div>
				</div>	
			
					

					
			<!-- End Align Area -->

           