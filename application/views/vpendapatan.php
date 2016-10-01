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

      <link rel="stylesheet" href="http://www.highcharts.com/media/com_demo/css/highslide.min.css" type="text/css" />

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
        <header>
            <div class="navbar-fixed">
            <nav>
                <div class="nav-wrapper ">
                    <div class="container">
                        <a href="" class="brand-logo">Pendapatan</a>
                        <ul id="nav-mobile" class="right hide-on-med-and-down">
                            <li><a href="<?= base_url() ?>">Home</a></li>
                            <li><a href="<?= base_url() ?>index.php/asa_dashboard">Neraca Laba Rugi</a></li>
                            <li><a href="jadwal.html">Jadwal</a></li>
                            <li><a href="<?= base_url() ?>index.php/asa_pengeluaran">Pengeluaran</a></li>
                            <li><a href="<?= base_url() ?>index.php/asa_pendapatan">Pendapatan</a></li>
                            <li><a href="pinjaman.html">Pinjaman</a></li>
                            <li><a href="pengaturan.html">Pengaturan</a></li>
                        </ul>
                         <ul id="slide-out" class="side-nav">
                            <li><div class="userView">
                              <img class="background responsive-img" src="<?= base_url() ?>assets/img/bg_home.png">
                              <a href="#!user"><img class="circle" src="<?= base_url() ?>assets/img/bg_home.jpg"></a>
                              <a href="#!name"><span class="white-text name">John Doe</span></a>
                              <a href="#!email"><span class="white-text email">jdandturk@gmail.com</span></a>
                            </div></li>
                            <li><a href="<?= base_url() ?>">Home</a></li>
                            <li><a href="<?= base_url() ?>index.php/asa_dashboard">Neraca Laba Rugi</a></li>
                            <li><a href="jadwal.html">Jadwal</a></li>
                            <li><a href="<?= base_url() ?>index.php/asa_pengeluaran">Pengeluaran</a></li>
                            <li><a href="<?= base_url() ?>index.php/asa_pendapatan">Pendapatan</a></li>
                            <li><a href="pinjaman.html">Pinjaman</a></li>
                            <li><a href="pengaturan.html">Pengaturan</a></li>
                          </ul>
                          <a href="#" data-activates="slide-out" class="button-collapse"><i class="material-icons">menu</i></a>
                    </div>
                </div>
            </nav>
            </div>
        </header>

        <section class="fix-top">
            <div class="container container-full-mobile">
                <div class="row mb15">
                    <div class="col s12">
                        <div class="fix-top-label">
                            <span class="label-left">Pendapatan bulan ini:</span>
                            <span class="label-right"><span class="ijo">Rp 2.000.000</span></span>
                            <div class="clearfix"></div>
                        </div>
                        

                        
                    </div>
                </div>
            </div>
        </section>
        <div class="skat"></div>
        <section class="pengeluaran relative">
            <div class="container container-full-mobile">
                <div class="row">
                    <div class="col s12">
                        <div class="title mb20">Data Pendapatan:</div>
                        
                        <?php if (empty($list)) { ?>
                            <a href="detail-pengeluaran.html">
                            <div class="list-pengeluaran">
                                <p class="mb5">Belum ada Pendapatan</p>
                            </div>
                            </a>
                        <?php } else {
                        foreach($list as $row) {?>
                            
                            <div class="list-pengeluaran">
                                <p class="mb5"><?= strtoupper($row->deskripsi) ?></p>
                                <small class="mute block">Nominal: <?=number_format($row->nominal, 2, ',', '.')?></small>
                                <small class="mt5 mute block">Tanggal: <?=$row->timestamp?></small>
                            </div>
                            
                        <?php }
                        }?>
                    </div>
                </div>
            </div>
        </section>

      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.min.js"></script>
      <script type="text/javascript" src="<?= base_url() ?>assets/js/materialize.min.js"></script>
      <script type="text/javascript" src="<?= base_url() ?>assets/js/script.js"></script>
      
      
    </body>
  </html>