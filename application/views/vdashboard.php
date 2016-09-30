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
                        <a href="" class="brand-logo">Neraca Laba Rugi</a>
                        <ul id="nav-mobile" class="right hide-on-med-and-down">
                            <li><a href="<?= base_url() ?>">Home</a></li>
                            <li><a href="<?= base_url() ?>index.php/asa_dashboard">Neraca Laba Rugi</a></li>
                            <li><a href="jadwal.html">Jadwal</a></li>
                            <li><a href="<?= base_url() ?>index.php/asa_pengeluaran">Pengeluaran</a></li>
                            <li><a href="pendapatan.html">Pendapatan</a></li>
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
                            <li><a href="pendapatan.html">Pendapatan</a></li>
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
                <div class="row">
                    <div class="col s12">
                        <div class="fix-top-label">
                            <span class="label-left">Pendapatan</span>
                            <span class="label-right">Rp 2.000.000</span>
                            <div class="clearfix"></div>
                        </div>
                        <div class="fix-top-label">
                            <span class="label-left">Pengeluaran</span>
                            <span class="label-right">Rp 4.800.000</span>
                        </div>
                        <hr>

                        <!--div class="fix-top-label">
                            <span class="label-left">Laba / Rugi</span>
                            <span class="label-right"><span class="ijo">Rp 1.000.000</span></span>
                            <div class="clearfix"></div>
                        </div-->

                        <div class="fix-top-label">
                            <span class="label-left">Laba / Rugi</span>
                            <span class="label-right"><span class="merah">Rp (2.800.000)</span></span>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <div class="skat"></div>

        <section class="potensi">
            <div class="container">
                <div class="row mb0">
                    <div class="col s12">
                        <a href="pinjaman.html">
                            <div class="text-center">
                                <p class="mt0 mb0">Potensi Pinjaman Cepat</p>
                                <?php 
                                $potensi = file_get_contents("http://localhost/puspa/index.php/asa_projection");
                                ?>
                                <h4 class="mb0 mt10"><?php echo "Rp. ".number_format($potensi*1000000, 2, ',', '.') ?></h4>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        <div class="skat"></div>

        <section class="statistik">
            <div class="container container-full-mobile">
                <div class="row">
                    <div class="col s12">
                        <div class="title">Pendapatan vs Pengeluaran</div>
                        <div id="puspa-chart" style="min-width: 320px; height: 400px; margin: 0 auto"></div>

                    </div>
                </div>
            </div>
        </section>

      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery.min.js"></script>
      <script type="text/javascript" src="<?= base_url() ?>assets/js/materialize.min.js"></script>
      <script type="text/javascript" src="<?= base_url() ?>assets/js/script.js"></script>
      
      <script src="https://code.highcharts.com/highcharts.js"></script>
      <script src="https://code.highcharts.com/modules/exporting.js"></script>


      <script>
          $(function () {
            $('#puspa-chart').highcharts({
                title: {
                    text: '',
                    x: 0 //center
                },
                exporting: {
                    buttons: {
                        printButton: {
                            enabled: false
                        },
                        exportButton: {
                            enabled: false
                        }
                    }
                },

                subtitle: {
                    text: '',
                    x: -20
                },
                xAxis: {
                    categories: ['Oct', 'Nov', 'Dec', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                        'Jul', 'Aug', 'Sep']
                },
                yAxis: {
                    title: {
                        text: 'Juta Rupiah'
                    },
                    plotLines: [{
                        value: 0,
                        width: 1,
                        color: '#808080'
                    }]
                },
                tooltip: {
                    valueSuffix: ' jt'
                },
                legend: {
                    enabled: true,
                    floating: true,
                    verticalAlign: 'bottom',
                    align:'left',
                    y:50
                },
                series: [{
                    name: 'Pendapatan',
                    data: [9.0, 5.0, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 19.0, 23.9, 7.0]
                }, {
                    name: 'Pengeluaran',
                    data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
                }]
            });
        });

      </script>
    </body>
  </html>