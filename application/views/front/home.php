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
          <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-10">
                        <div class="title text-center">
                            <h1 class="mb-10"> Visit Sentul Bogor</h1>
                            <p>Sentul City adalah sebuah kawasan "kota pegunungan" seluas kira-kira 3.000 hektare yang berada di Kecamatan Babakan Madang, Kabupaten Bogor, di sebelah timur Kota Bogor yang dikembangkan oleh PT Sentul City Tbk</p>
                        </div>
                    </div>
                </div>
        </div>  
         
         