<?php 
$id_foto= $_GET['id_foto'];
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Portofolio Details - Resume Christine Ayu W</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <!-- <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"> -->

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <link href="assets/css/components.css" rel="stylesheet">
  <!-- =======================================================
  * Template Name: iPortfolio - v3.7.0
  * Template URL: https://bootstrapmade.com/iportfolio-bootstrap-portfolio-websites-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>

  <!-- ======= Header ======= -->
  <?php 
  include "header2.html";
  ?>
  <!-- End Header -->

  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Portofolio Details</h2>
          <ol>
            <li><a href="index.php#portofolio" style="font-weight: 500;">Beranda</a></li>
            <li>Portofolio Details</li>
          </ol>
        </div>

      </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <?php
      include 'php/db.php';
      // untuk pengulangan penomeran
      
      $data = mysqli_query($koneksi, "select * from foto where id_gmbr='$id_foto' && status='portofolio' ");
      while ($d = mysqli_fetch_array($data)) {
    ?>
    <section id="portofolio-details" class="portfolio-details">
      <div class="container">

        <div class="row gy-4">

          <div class="col-lg-8">
            <div class="portofolio-details-slider swiper ">
              <div class="swiper-wrapper align-items-center">

                <?php
                    include 'php/db.php';
                    // untuk pengulangan penomeran
                    
                    $data1 = mysqli_query($koneksi, "select * from foto WHERE id_gmbr='$id_foto' ");
                    while ($d1 = mysqli_fetch_array($data1)) {
                ?>
                <div class="swiper-slide">
                  <div class="cardPortofolio">
                    <img src="assets/img/portfolio/<?php echo $d1['gmbr_detail']; ?>" alt="">
                  </div>
                </div>
                <?php
                  }
                ?>

              </div>
              <div class="swiper-pagination"></div>
            </div>
          </div>

          <div class="col-lg-4">
            <div class="portfolio-info portfolio-tagHr">
              <h2>Project information</h2>
              <hr>
              <ul>
                <li><strong>Kategori</strong>: <?php echo $d['kategori']; ?></li>
                <li><strong>Klien</strong>: <?php echo $d['klien_nm']; ?></li>
                <li><strong>Proyek Tahun</strong>: <?php echo $d['klien_thn']; ?></li>
              </ul>
            </div>
            <div class="portfolio-description portfolio-tagHr">
              <h3><?php echo $d['judul']; ?></h3>
              <hr>
              <p>
              <?php echo $d['ket']; ?>
              </p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Details Section -->
    <?php
       }
    ?>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <?php
  include "footer.html";
  ?>
  <!-- End  Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>