<!DOCTYPE html>
  <html>
    <head>
      <title>BRI PUSPA</title>
      <!--Import Google Icon Font-->
      <!--Import Google Icon Font-->
      <link href="<?= base_url() ?>assets/css/material_icons.css" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="<?= base_url() ?>assets/css/materialize.min.css"  media="screen,projection"/>
      <link type="text/css" rel="stylesheet" href="<?= base_url() ?>assets/css/material-design-iconic-font.min.css"/>
      <link rel="stylesheet" href="<?= base_url() ?>assets/css/normalize.css">
      <link rel="stylesheet" href="<?= base_url() ?>assets/css/style.css">
      <link rel="stylesheet" href="<?= base_url() ?>assets/css/shorthand.css">

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body class="home">
        <div class="homepage">
            <div class="home-title">
                  <img src="<?= base_url() ?>assets/img/logo_bri.png" width="100" class="img-center" alt="">
                  <h1>PENGELOLAAN USAHA PANDAI</h1>
            </div>

            <div class="container menu">
                <div class="row">
                    <div class="col s6 m4">
                        <a href="<?= base_url() ?>index.php/asa_dashboard">
                            <div class="menu-list">
                                <img src="<?= base_url() ?>assets/img/b-icon-stat.svg" width="30" alt="">
                                <p>Neraca Laba/Rugi</p>
                            </div>
                        </a>
                    </div>
                    <div class="col s6 m4">
                        <a href="jadwal.html">
                            <div class="menu-list">
                                <img src="<?= base_url() ?>assets/img/b-icon-jadwal.svg" width="26" alt="">
                                <p>Jadwal</p>
                            </div>
                        </a>
                    </div>

                    <div class="col s6 m4">
                        <a href="<?= base_url() ?>index.php/asa_pengeluaran">
                            <div class="menu-list">
                                <img src="<?= base_url() ?>assets/img/b-icon-out.svg" width="30" alt="">
                                <p>Pengeluaran</p>
                            </div>
                        </a>
                    </div>
                    <div class="col s6 m4">
                        <a href="pendapatan.html">
                            <div class="menu-list">
                                <img src="<?= base_url() ?>assets/img/b-icon-in.svg" width="30" alt="">
                                <p>Pendapatan</p>
                            </div>
                        </a>
                    </div>

                    <div class="col s6 m4">
                        <a href="pinjaman.html">
                            <div class="menu-list">
                                <img src="<?= base_url() ?>assets/img/b-icon-pinjam.svg" width="30" alt="">
                                <p>Pinjaman</p>
                            </div>
                        </a>
                    </div>
                    <div class="col s6 m4">
                        <a href="pengaturan.html">
                            <div class="menu-list">
                                <img src="<?= base_url() ?>assets/img/b-icon-setting.svg" width="30" alt="">
                                <p>Pengaturan</p>
                            </div>
                        </a>
                    </div>
                </div>
                  <!-- end of row -->
            </div>
            <!-- end of menu -->
        </div>
        <!-- end of homepage -->

      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.min.js"></script>
      <script type="text/javascript" src="<?= base_url() ?>assets/js/materialize.min.js"></script>
      <script type="text/javascript" src="<?= base_url() ?>assets/js/script.js"></script>
    </body>
  </html>