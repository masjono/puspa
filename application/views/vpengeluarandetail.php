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
                        <a href="" class="brand-logo">Detail Pengeluaran</a>
                        
                        <a onclick="goBack()"  class="back-icon"><img src="<?= base_url() ?>assets/img/back-icon.png" width="17" alt=""></a>
                    </div>
                </div>
            </nav>
            </div>
        </header>

        <section class="fix-top">
            <div class="container container-full-mobile">
                <div class="row pt20">
                    <div class="col s12">
                        <div class="list-detail">
                            <p class="mb0 mute">
                              Nama:
                            </p>
                            <p class="bold mt10 mb30">
                              <?= strtoupper($obj->deskripsi_pengeluaran)?>
                            </p>
                        </div>

                        <div class="list-detail">
                            <p class="mb0 mute">
                              Jadwal:
                            </p>
                            <p class="bold mt10 mb30">
                              <?=$obj->schedule_type?>
                            </p>
                        </div>

                        <div class="list-detail">
                            <p class="mb0 mute">
                              Nominal:
                            </p>
                            <p class="bold mt10 mb30">
                              Rp <?=$obj->nominal?>
                            </p>
                        </div>
                        
                        <div class="list-detail">
                            <p class="mb0 mute">
                              Jenis:
                            </p>
                            <p class="bold mt10 mb30">
                              <?=$obj->jenis_pengeluaran?>
                            </p>
                        </div>
                        
                        <div class="list-detail">
                            <p class="mb0 mute">
                              Identitas:
                            </p>
                            <p class="bold mt10 mb30">
                              <?=$obj->nomor_pembayaran?>
                            </p>
                        </div>

                        <div class="list-detail">
                            <p class="mb0 mute">
                              Tanggal Mulai:
                            </p>
                            <p class="bold mt10 mb30">
                              <?=$obj->start_date?>
                            </p>
                        </div>
                        
                        <div class="list-detail">
                            <p class="mb0 mute">
                              Tanggal Selesai:
                            </p>
                            <p class="bold mt10 mb30">
                              <?=empty($obj->end_date) ? "Selamanya" : $obj->end_date?>
                            </p>
                        </div>

                        <hr>
                        <div class="right mt20">
                            <a href="riwayat.html" class="oren mr40">
                              RIWAYAT
                            </a>

                            <a href="edit-pengeluaran.html" class="oren mr20">
                              EDIT
                            </a>
                        </div>
                    </div>
                  </div>
            </div>
            <!-- end of container -->
        </section>
        

      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.min.js"></script>
      <script type="text/javascript" src="<?= base_url() ?>assets/js/materialize.min.js"></script>
      <script type="text/javascript" src="<?= base_url() ?>assets/js/script.js"></script>
      
      
    </body>
  </html>