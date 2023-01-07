
		<body>	
		  <header id="header">
		    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
			        <a href="index.html"><img src="img/logo3.png" style="width:145px;" /></a>

			      </div>
			      <nav id="nav-menu-container">
			        <ul class="nav-menu">
			          <li><a href="">Home</a></li>
			          <li><a href="<?= site_url('Admin/objek'); ?>">Wisata</a></li>
			          <li><a href="#services">H</a></li>
			         			          					          		          
			          <li><a href="#contact">Resto</a></li>
			          <li><a href="#contact">Contact</a></li>
			        </ul>
			      </nav><!-- #nav-menu-container -->		    		
		    	</div>
		    </div>
		  </header><!-- #header -->
 
			<section  id="slide">
				<?php $no=1; 
                    foreach ($wisata->result() as $row):?> 
      <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel mb-40">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner ">
              <div class="carousel-item active">
                <img src="<?= base_url().'assets/img/'.$row->foto;?>" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="<?= base_url().'assets/img/'.$row->foto2;?>" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
            <img src="<?= base_url().'assets/img/'.$row->foto3;?>" class="d-block w-100" alt="...">
          </div>
        </div> 
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div><?php 
                  $no++;
                  endforeach;?>



      <div class="container mt-5 ">
					
				</div>	
 				 
 				 
				<div class="container mt-0.01 mb-5" id="about">
					<div class="row align-items-center justify-content-between">
						<div class="col-lg-6 col-md-6 home-about-left" data-aos="fade-right">
							<img class="img-fluid" src="img/foto1.png" alt="">
						</div>
						
					</div>
				</div>
			
			<!-- End top-category-widget Area -->
			
			<!-- Start post-content Area -->
			

		 <div class="container mt-7 " data-aos="fade-down" id="services">
					<div class="row d-flex justify-content-center">
		                <div class="menu-content pb-70 col-lg-10">
		                    <div class="title text-center">
		                        <h1 class="mb-10"> Choose Your Plan</h1>
		                        <p>We have more recomended the beutiful place in sentul bogor, and our team will </p>
		                    </div>
		                </div>
		            </div>
				</div>
					<?php $no=1; 
                    foreach ($data->result() as $row):?> 
				<div class="container mt-0.1">
					<div class="row justify-content-center">
						
					</div>
					<div class="row">	
						<div class="single-recent-blog col-lg-4 col-md-4">
							<div class="thumb">
								<img  src="<?= base_url().'assets/img/'.$row->foto;?>" class="" alt="">	
							</div>
													
							<a class="mt-1">
								<h4><?= $row->nama_wisata; ?></h4>
							</a>
							<p>
								<?= $row->keterangan; ?>
							</p>
								<a href="detail.php" class="genric-btn warning circle arrow mb-3">View Detail</a>
								<div >
							</div>	
						</div>

						
					
																
											
												
					</div>
				</div>	
				<?php 
                  $no++;
                  endforeach;?>

			</section>
							
						</div>
						
					</div>
				</div>	
			</section>
				
			<!-- End post-content Area -->
			 
            <!-- start footer Area 
            <footer class="footer-area section-gap" id="contact" >
                <div class="container">
                    <div class="row">

                    	<div class="col-lg-4 col-md-6 col-sm-6" data-aos="fade-right">
                            <div class="single-footer-widget">
                                
								<img src="img/foot.png" style="width: 300px; text-align: center;" />
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4 col-sm-6" >
                            <div class="single-footer-widget">
                                
                                <p class="footer-text"> Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. 
  <i  aria-hidden="true"></i>  <a href="https://colorlib.com" target="_blank" style="font-size: 20px">Visit Sentul Bogor sebuah situs yang menyajikan tempat wisata hits yang ada di sentul Bogor</a> <script>document.write(new Date().getFullYear());</script> 
Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. </p>
                            </div>
                        </div>
                        
                        <div class="col-lg-4 col-md-6 col-sm-6 social-widget" data-aos="fade-left">
                            <div class="single-footer-widget">
                               
                               
                                <div class="footer-social d-flex align-items-center ml-7" style="font-size: 24px">
                                    <a href="#"><i class="fa fa-facebook  mr-4"></i></a>
                                    <a href="#"><i class="fa fa-instagram mr-4"></i></a>
                                    <a href="#"><i class="fa fa-youtube mr-4"></i></a>
                                    <a href="#"><i class="fa fa-whatsapp mr-4"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </footer>


            -->	
            <!-- Footer -->
<footer class="text-center text-lg-start" style="background-color: #000">
	
  <!-- Grid container -->
  <div class="container p-5">
    <!--Grid row-->
    <div class="row">
      <!--Grid column-->
                         	<div class="col-lg-4 col-md-6 col-sm-6" data-aos="fade-right">
                            <div class="single-footer-widget">
                                
								<img src="img/foot.png" style="width: 300px; text-align: center;" />
                            </div>
                        </div>
      <!--Grid column-->
 <!--Grid column-->
      <div class="col-lg-4 col-md-4  colmd-0" id="contact">
        <h4 class="text-uppercase">Footer Content</h4>

        <p>
         Visit Sentul Bogor sebuah situs yang menyajikan tempat wisata hits yang ada di sentul Bogor
        </p>
      </div>
      <!--Grid column-->

      <!--Grid column-->
     <div class="col-lg-4 col-md-6 col-sm-6 social-widget" data-aos="fade-left">
                            <div class="single-footer-widget">
                               
                               
                                <div class="footer-social d-flex align-items-center ml-7" style="font-size: 24px">
                                    <a href="#"><i class="fa fa-facebook  mr-4"></i></a>
                                    <a href="#"><i class="fa fa-instagram mr-4"></i></a>
                                    <a href="#"><i class="fa fa-youtube mr-4"></i></a>
                                    <a href="#"><i class="fa fa-whatsapp mr-4"></i></a>
                                </div>
                            </div>
                        </div>
      <!--Grid column-->

      <!--Grid column-->
    
                        
      <!--Grid column-->
    </div>
    <!--Grid row-->
  </div>
  <!-- Grid container -->
