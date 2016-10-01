<!DOCTYPE html>
  <html>
    <head>
      <title>BRI PUSPA</title>
      <!--Import Google Icon Font-->
      <!--Import Google Icon Font-->
      <link href="css/material_icons.css" rel="stylesheet">
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
                        <a href="" class="brand-logo">Riwayat</a>
                        
                        <a onclick="goBack()"  class="back-icon"><img src="<?= base_url() ?>assets/img/back-icon.png" width="17" alt=""></a>
                        
                </div>
            </nav>
            </div>
        </header>

        <section class="fix-top">
            <div class="container container-full-mobile">
                <div class="row mb15">
                    <div class="col s12">
                        <div class="fix-top-label">
                            <p class="mb0 mute mt0">
                              Nama Pengeluaran:
                            </p>
                            <p class="bold mt10 mb0">
                              <?= $obj->deskripsi_pengeluaran?>
                            </p>
                        </div>
                        

                        
                    </div>
                </div>
            </div>
        </section>
        <div class="skat"></div>
        <section class="riwayat pt0 relative">
            <div class="container container-full-mobile">
                <div class="row">
                    <div class="col s12">
                        
                        <?php if (empty($list)) { ?>
                            <div class="list-riwayat">
                                <p class="mb5">Belum ada Riwayat</p>
                            </div>
                        <?php } else {
                        foreach($list as $row) {?>
                            
                            <div class="list-riwayat">
                                <p class="mb5"><span class="inline-block mr10 mute">Tanggal:</span> <?=$row->timestamp?></p>
                                <p class="mb5"><span class="inline-block mr10 mute">Nominal:</span> Rp <?=number_format($row->nominal_real, 2, ',', '.')?></p>
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