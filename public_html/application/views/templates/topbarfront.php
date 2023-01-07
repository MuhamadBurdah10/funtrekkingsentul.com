</head>
<body>

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<nav class="site-nav shadow-v1" style="background-color: #20c997;; position: fixed;">
		<div class="container">

			<div class="site-navigation">
				<div class="row">
					<div class="col-6 col-lg-3">
						<a href="index.html" ><img src="<?= base_url().'assets/images/logo2.png';?>"  class="img-fluid" style="width: 4rem;"></a>
						 
					</div>
					<div class="col-lg-8 d-none d-lg-inline-block text-center nav-center-wrap">
						<ul class="js-clone-nav  text-center site-menu p-0 m-0" style="color: white">
							<?php if (!empty($detail['nama_wisata'])) { ?>
								<li class="active"><a href="<?= site_url('front/index'); ?>">Home</a></li>
							
						  <?php	} else { ?>
						  	<li class="active"><a href="<?= site_url('front/index'); ?>">Home</a></li>
						  	<li><a href="#about">Tentang Kami </a></li>
							<li><a href="#services">Layanan</a></li>
							<li><a href="#jalur">Jalur Trekking</a></li>
							<li><a href="#Team">Team</a></li>
							<li><a href="#Contact">Contact</a></li>
							<li><a href="#maps">Meet Poin</a></li>
						  	<?php } ?>
							
							<!-- <li class="has-children">
								<a href="#jalur">Jalur Treking</a>
								<ul class="dropdown">
									<li><a href="#">Menu One</a></li>
									<li class="has-children">
										<a href="#">Menu Two</a>
										<ul class="dropdown">
											<li><a href="#">Sub Menu One</a></li>
											<li><a href="#">Sub Menu Two</a></li>
											<li><a href="#">Sub Menu Three</a></li>
										</ul>
									</li>
									<li><a href="#">Menu Three</a></li>
								</ul>
							</li> -->
							

						</ul>
					</div>
					<div class="col-6 col-lg-3 text-lg-end">
						<!-- <ul class="js-clone-nav d-none d-lg-inline-block text-end site-menu ">
							<li class="cta-button"><a href="contact.html">Contact Us</a></li>
						</ul> -->

						<a href="#" class="burger ms-auto float-end site-menu-toggle js-menu-toggle d-inline-block d-lg-none light" data-toggle="collapse" data-target="#main-navbar">
							<span></span>
						</a>
					</div>
				</div>
			</div>
			
		</div>
	</nav>

	