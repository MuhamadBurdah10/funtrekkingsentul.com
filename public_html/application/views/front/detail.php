
	<title><?=$title ?> </title>
	<div class="hero overlay" style="height: 400px; opacity: 100;">
		<div class="img-bg rellax mt-5">
			<img src="<?= base_url().'assets/img/logo/Bannerr.png';?>" alt="Image" class="img-fluid" style="width: 100%;">
		</div> 
		<div class="container">
			<div class="row align-items-center justify-content-start">
				<div class="col-lg-6 mx-auto text-center">
					<br><br><br><br><br><br><br><br>
					<h3 class="heading" data-aos="fade-up" style="color: #ffc107; text-shadow:2px 2px 3px #000000; "><?=$detail['nama_wisata'];?></h3>
					<p data-aos="fade-up">Jalur Trekking Sentul Bogor</p>
				</div>
			</div>
		</div>
	</div>


	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 blog-content pe-5">
					<h2><span class="d-block" style="color: #4dc247;text-shadow:2px 2px 15px #4dc247;"><?=$detail['nama_wisata'];?></span></h2>
					
					<blockquote><p><?=$detail['keterangan'];?></p></blockquote>

					<div class="pt-5">
						<H2 >GALLERY ><a href="#" style="color: #4dc247">Trekking <?=$detail['nama_wisata'];?></a> </H2>
					</div>

				<div class="row">
				 <?php $no=1; 
                    foreach ($galeri as $row):
                  ?> 
				<div class="col-lg-3">
					<a href="#" class="person">
						<img src="<?= base_url().'assets/img/galeri/'.$row['foto_galeri'];?>" alt="Image" class="img-fluid mb-4">
					</a>
				</div>
				<?php 
                  $no++;
                  endforeach;?>
			</div>
	

				</div>
				<div class="col-md-4 sidebar">
					<!-- <div class="sidebar-box">
						<form action="#" class="search-form">
							<div class="form-group">
								<span class="icon fa fa-search"></span>
								<input type="text" class="form-control" placeholder="Type a keyword and hit enter">
							</div>
						</form>
					</div>
					<div class="sidebar-box">
						<div class="categories">
							<h3>Categories</h3>
							<li><a href="#">Creatives <span>(12)</span></a></li>
							<li><a href="#">News <span>(22)</span></a></li>
							<li><a href="#">Design <span>(37)</span></a></li>
							<li><a href="#">HTML <span>(42)</span></a></li>
							<li><a href="#">Web Development <span>(14)</span></a></li>
						</div>
					</div> -->
					<div class="sidebar-box">
						<h3 style="color: #4dc247;text-shadow:2px 2px 15px #4dc247;">Boking Via Website</h3>
						<div class="col-lg-" data-aos="fade-up" data-aos-delay="200">
					<?= $this->session->flashdata('message'); ?>
					<div class="alert alert-warning" role="alert">
                        <ul class="">
							<li><strong>Minimal Booking 3 (Tiga) Orang</strong></li>
							<li><strong>Minimal Usia 3 (Tiga) Tahun</strong></li>
							<li><strong>Reservasi 3 atau 1 Hari Sebelum Keberangkatan</strong></li>
						</ul>
                    </div>
                  	<form method="post" action="<?= BASE_URL().'index.php/front/booking2'?>" enctype="multipart/form-data">
						<div class="row">
							<div class="col-12 mb-3">
								<input type="text" name="nama" class="form-control" required="" placeholder="Nama / Group">
							</div>
							<div class="col-12 mb-3">
								<input type="number" class="form-control" name="Jumlahorang" required="" placeholder="Jumlah Orang">
							</div>
							<div class="col-12 mb-3">
								<label>Tujuan Trekking</label>
								<input type="number" class="form-control" name="Treking" value=" <?=$detail['nama_wisata'];?>" required="" placeholder=" <?=$detail['nama_wisata'];?>" readonly="">
							</div>
							<div class="col-12 mb-3">
								<input type="number" name="whatsap" class="form-control" placeholder="No WhatsApp">
							</div>
							<div class="col-12 mb-3">
							    <label>Rencana Booking</label>
								<input type="date" name="rencana" class="form-control" placeholder="">
							</div>
							<div class="col-12 mb-3">
								<textarea name="pesan" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
							</div>

							<div class="col-12">
								<input type="submit" value="Booking Now" required="" class="btn btn-" style="background-color: #ffc107;">
							</div>
						</div>
					</form>
				</div>
					</div>

					<div class="sidebar-box">
						<h3 class="text-black">Information</h3>
						<p>Setelah Anda mengirimkan data melalui website kami. <BR> <br>Kami akan mengubungi anda ke no whatsapp yang anda cantumkan untuk informasi lebih lanjut terkait booking jasa trekking kami.
						<BR><BR>  Atau bisa booking jasa trekking by whatsapp dengan klik icon whatsapp yang tersedia.
						<BR><HR>Terimakasih</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div style="float: right;">
<input class='chatMenu hidden' id='offchatMenu' type='checkbox' />
<label class='chatButton' for='offchatMenu' style="float: right;">
  <svg class='svg-1' viewBox='0 0 32 32'><g><path d='M16,2A13,13,0,0,0,8,25.23V29a1,1,0,0,0,.51.87A1,1,0,0,0,9,30a1,1,0,0,0,.51-.14l3.65-2.19A12.64,12.64,0,0,0,16,28,13,13,0,0,0,16,2Zm0,24a11.13,11.13,0,0,1-2.76-.36,1,1,0,0,0-.76.11L10,27.23v-2.5a1,1,0,0,0-.42-.81A11,11,0,1,1,16,26Z'></path><path d='M19.86,15.18a1.9,1.9,0,0,0-2.64,0l-.09.09-1.4-1.4.09-.09a1.86,1.86,0,0,0,0-2.64L14.23,9.55a1.9,1.9,0,0,0-2.64,0l-.8.79a3.56,3.56,0,0,0-.5,3.76,10.64,10.64,0,0,0,2.62,4A8.7,8.7,0,0,0,18.56,21a2.92,2.92,0,0,0,2.1-.79l.79-.8a1.86,1.86,0,0,0,0-2.64Zm-.62,3.61c-.57.58-2.78,0-4.92-2.11a8.88,8.88,0,0,1-2.13-3.21c-.26-.79-.25-1.44,0-1.71l.7-.7,1.4,1.4-.7.7a1,1,0,0,0,0,1.41l2.82,2.82a1,1,0,0,0,1.41,0l.7-.7,1.4,1.4Z'></path></g></svg>
  <svg class='svg-2' viewBox='0 0 512 512'><path d='M278.6 256l68.2-68.2c6.2-6.2 6.2-16.4 0-22.6-6.2-6.2-16.4-6.2-22.6 0L256 233.4l-68.2-68.2c-6.2-6.2-16.4-6.2-22.6 0-3.1 3.1-4.7 7.2-4.7 11.3 0 4.1 1.6 8.2 4.7 11.3l68.2 68.2-68.2 68.2c-3.1 3.1-4.7 7.2-4.7 11.3 0 4.1 1.6 8.2 4.7 11.3 6.2 6.2 16.4 6.2 22.6 0l68.2-68.2 68.2 68.2c6.2 6.2 16.4 6.2 22.6 0 6.2-6.2 6.2-16.4 0-22.6L278.6 256z'></path></svg>
</label>

<div class='chatBox'>
  <div class='chatContent'>
    <div class='chatHeader'>
      <svg viewbox='0 0 32 32'><path d='M24,22a1,1,0,0,1-.64-.23L18.84,18H17A8,8,0,0,1,17,2h6a8,8,0,0,1,2,15.74V21a1,1,0,0,1-.58.91A1,1,0,0,1,24,22ZM17,4a6,6,0,0,0,0,12h2.2a1,1,0,0,1,.64.23L23,18.86V16.92a1,1,0,0,1,.86-1A6,6,0,0,0,23,4Z'></path><rect height='2' width='2' x='19' y='9'></rect><rect height='2' width='2' x='14' y='9'></rect><rect height='2' width='2' x='24' y='9'></rect><path d='M8,30a1,1,0,0,1-.42-.09A1,1,0,0,1,7,29V25.74a8,8,0,0,1-1.28-15,1,1,0,1,1,.82,1.82,6,6,0,0,0,1.6,11.4,1,1,0,0,1,.86,1v1.94l3.16-2.63A1,1,0,0,1,12.8,24H15a5.94,5.94,0,0,0,4.29-1.82,1,1,0,0,1,1.44,1.4A8,8,0,0,1,15,26H13.16L8.64,29.77A1,1,0,0,1,8,30Z'></path></svg>
      <div class='chatTitle'>Silahkan chat dengan tim kami <span>Admin akan membalas dalam beberapa menit</span></div>
    </div>
    <div class='chatText'>
      <span>Hai Fun Trekking Sentul, Saya ingin booking Treking ke <b> <?=$detail['nama_wisata'];?><b></span>
    </div>
  </div>
  
  <a class='chatStart' href='https://api.whatsapp.com/send?phone=62<?= $set['whatsapp']; ?>&text=Hai Fun Trekking Sentul,%20Saya%20ingin%20booking Treking ke <?=$detail['nama_wisata'];?>' rel='nofollow noreferrer' target='_blank'>
    <span>Kirim chat...</span>        
  </a>
</div>
</div>

	