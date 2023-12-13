<?php
//koneksi
session_start();
include "koneksi.php";

 ?>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>SPK Pemilihan Karyawan Terbaik</title>
    <!--bootstrap-->
    <link href="tampilan/css/bootstrap.min.css" rel="stylesheet">
    <link href="styles/slider.css" rel="stylesheet" type="text/css" media="all">

    <style>

    img {
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 200vh;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #6E7AB7;
        
    }

    h1, h3 {
        font-size: 2em;
        color: #3384C5;
        position: static;
        text-align: center;
        
        margin:0 0 20px 0; 
        line-height:normal; 
        font-weight:normal; 
        text-transform:capitalize;

    }
    </style>

  </head>
  <body><br>
<!--navbar navbar-default navbar-custom-->
    <!--menu-->
    <nav class="">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Sistem Pendukung Keputusan Metode TOPSIS</a>
        </div>

        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
            <li>
              <a href="kriteria.php">Kriteria</a>
            </li>
            <li>
              <a href="alternatif.php">Alternatif</a>
            </li>
            <li>
              <a href="nilmat.php">Nilai Matriks</a>
            </li>
            <li>
              <a href="hastop.php">Hasil Topsis</a>
            </li>
          </ul>
        </div>
      </div>
    </nav><br><br>

    <div class="img">
        <!-- Konten Anda akan ditempatkan di sini -->
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>

        <h1>Sistem Pemilihan Karyawan Terbaik Menggunakan Metode TOPSIS </h1>
        <h3> Kelompok 1</h3>

        
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <br><br>




        <!-- <img src="gambar/bag2.jpeg" alt="bag"> -->
    </div>
    


    


    

    
    <!--footer-->
    <footer class="text-center">
      <div class="footer-below">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <em>SPK Pemilihan Karyawan Terbaik</em>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <!--plugin-->
    <script src="tampilan/js/bootstrap.min.js"></script>

  </body>
</html>
