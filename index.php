<?php
include "koneksi.php"; 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" 
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" 
    crossorigin="anonymous">
    <link rel="icon" href="foto/logo.png" />
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-body-tertiary sticky-top">
        <div class="container">
          <a class="navbar-brand" href="#">website ku</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0 text-dark">
              <li class="nav-item">
                <a class="nav-link active text-center" href="#hero">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active text-center" href="#profile">Profile</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active text-center" href="#article">Article</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active text-center" href="#schedule">Schedule</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active text-center" href="#gallery">Gallery</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="login.php" target="_blank">Login</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      
      <section id="hero" class="text-center p-5 m-0 bg-primary-subtle text-sm-smart">
        <div class="container mh-100 " style="height: max-100px;">
          <div class="d-sm-flex flex-sm-row-reverse align-items-center"><img src="foto/baru.jpg" width="500" height="400" class="img-fluid">
            <div>
              <h1 class="fw-bold display-4">My beautiful memory in August</h1>
              <p class="fs-4">Bangka Belitung Island</p>
            </div>
          </div>
        </div>
      </section>

    <section id="profile" class="p-5">
      <div class="container my-5">
      <div class="row align-items-center">
    <div class="col-md-3 text-center">
        <img src="foto/foto ara.jpg"  width="300px" gap="10px" alt="Profile Image" class="img-fluid profile-img rounded-circle">
    </div>
    <div class="col-md-9">
        <h2 class="profile-name">Tiara Sofa</h2>
        <table class="table table-borderless profile-info">
            <tr>
                <td><strong>NIM</strong></td>
                <td>: A11.2023.15347</td>
            </tr>
            <tr>
                <td><strong>Program Studi</strong></td>
                <td>: Teknik Informatika</td>
            </tr>
            <tr>
                <td><strong>Email</strong></td>
                <td>: 111202315347@mhs.dinus.ac.id</td>
            </tr>
            <tr>
                <td><strong>Telepon</strong></td>
                <td>: +62 877 0832 5443</td>
            </tr>
            <tr>
                <td><strong>Alamat</strong></td>
                <td>: Jl. Nakula I No.55, Semarang</td>
            </tr>
        </table>
      </div>
      </div>
      </div>
      </section>

<!-- article begin -->
<section id="article" class="text-center p-5">
  <div class="container">
    <h1 class="fw-bold display-4 pb-3">article</h1>
    <div class="row row-cols-1 row-cols-md-3 g-4 justify-content-center">
      <?php
      $sql = "SELECT * FROM article ORDER BY tanggal DESC";
      $hasil = $conn->query($sql); 

      while($row = $hasil->fetch_assoc()){
      ?>
        <div class="col">
          <div class="card h-100">
            <img src="foto/<?= $row["gambar"]?>" class="card-img-top" alt="..." />
            <div class="card-body">
              <h5 class="card-title"><?= $row["judul"]?></h5>
              <p class="card-text">
                <?= $row["isi"]?>
              </p>
            </div>
            <div class="card-footer">
              <small class="text-body-secondary">
                <?= $row["tanggal"]?>
              </small>
            </div>
          </div>
        </div>
        <?php
      }
      ?> 
    </div>
  </div>
</section>
<!-- article end -->
 
      <selection id="schedule" class="text-center p-5">
        <div class="row row-cols-1 row-cols-md-4 g-4 justify-content-center">
          <div class="col">
          <div class="card text" style="max-width: 30rem;">
            <div class="card-header bg.info-subtle">Senin</div>
            <div class="card-body">
              <p class="card-title"><b>12.30 - 10.30</b></p>
              <p class="card-title">Probabilitas Statistika</p>
              <p class="card-title">Ruang H.4.8</p>
              <br>
              <p class="card-title"><b>15.30 - 18.00</b></p>
              <p class="card-title">Sistem Operasi</p>
              <p class="card-title">Ruang H.4.9</p>
            </div>
          </div>
          </div>
          <div class="col">
            <div class="card text" style="max-width: 30rem;">
              <div class="card-header bg.success-subtle">Selasa</div>
              <div class="card-body">
               <p class="card-title"><b>09.30 - 12.00</b></p>
                <p class="card-title">Rekayasa Perangkat Lunak</p>
                <p class="card-title">Ruang H.4.10</p>
                <br>
                <p class="card-title"><b>15.30 - 18.00</b></p>
                <p class="card-title">Data Mining</p>
                <p class="card-title">Ruang H.4.9</p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card text" style="max-width: 30rem;">
              <div class="card-header bg-warning-subtle">Rabu</div>
              <div class="card-body">
                <p class="card-title"><b>09.30 - 12.00</b></p>
                <p class="card-title">kriptografi</p>
                <p class="card-title">Ruang H.4.11</p>
                <br>
                <p class="card-title"><b>14.10 - 15.50</b></p>
                <p class="card-title">Basis Data</p>
                <p class="card-title">Ruang H.5.1</p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card text" style="max-width: 30rem;">
              <div class="card-header bg-danger-subtle">Kamis</div>
              <div class="card-body">
                <p class="card-title"><b>09.30 - 12.00</b></p>
                <p class="card-title">Logika Informatika</p>
                <p class="card-title">Ruang H.4.10</p>
                <br>
                <p class="card-title"><b>14.10 - 15.50</b></p>
                <p class="card-title">Basis Data</p>
                <p class="card-title">Ruang H.5.1</p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card text" style="max-width: 30rem;">
              <div class="card-header bg-primary-subtle mb-3">Jumat</div>
              <div class="card-body">
                <p class="card-title"><b>10.20 - 12.00</b></p>
                <p class="card-title">Pemrograman Berbasis Web</p>
                <p class="card-title">Ruang D.2.J</p>
                <br>
                <p class="card-title"><b>14.10 - 15.50</b></p>
                <p class="card-title">Basis Data</p>
                <p class="card-title">Ruang D.3.M</p>
              </div>
            </div>
          </div>

        </div>
      </selection>

      <section id="gallery" class="text-center p-5 bg-primary-subtle">
        <div class="fw-bold display-4 pb-3">

          <div id="carouselExample" class="carousel slide">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="foto/8.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="foto/9.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="foto/10.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="foto/11.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="foto/12.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="foto/13.jpg" class="d-block w-100" alt="...">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
        </div>
      </section>
      <footer class="bg-primary-subtle text-center">
        <div>
          <a href="https://www.instagram.com/tiara_ssss/profilecard/?igsh=YWZmazhjNDV0d2wz"><i class="bi bi-instagram h2 p-2 text-dark"></i></a>
          <a href="https://wa.me/qr/DCSU3JIPINQ7A1"><i class="bi bi-whatsapp h2 p-2 text-dark"></i></a>
          <a href="https://mail.google.com/mail/?authuser=0"><i class="bi bi-envelope h2 p-2 text-dark"></i></a>
        </div>
        <div>Tiara Sofa &copy 2024</div>
      </footer>
        

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>