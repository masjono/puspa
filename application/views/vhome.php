<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>e-Procurement - PT. Gapura Angkasa</title>
        <link rel="shortcut icon" href="<?= base_url() ?>assets/images/favicon.png"/>
        <meta name="description" content="e-Procurement PT. Gapura Angkasa" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="refresh" content="90" >
        <!-- basic styles -->

        <link href="<?= base_url() ?>assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="<?= base_url() ?>assets/css/font-awesome.min.css" />
        <link rel="stylesheet" href="<?= base_url() ?>assets/css/bootstrap.animated-icons-demo.css" />

       	<link rel="stylesheet" href="<?= base_url() ?>assets/css/ace-fonts.css" />

        <!-- ace styles -->

        <link rel="stylesheet" href="<?= base_url() ?>assets/css/ace.min.css" />
        <link rel="stylesheet" href="<?= base_url() ?>assets/css/ace-rtl.min.css" />

        <!-- end colorbox -->
        <link rel="stylesheet" href="<?= base_url() ?>assets/css/dani.css" />
        <script type="text/javascript">
            var baseUrl = "<?= base_url() ?>";
            var siteUrl = "<?= site_url() ?>";
            function blockUI() {
                try{
                    $.blockUI({
                        css: {
                            border: 'none',
                            padding: '15px',
                            backgroundColor: '#000', '-webkit-border-radius': '10px', '-moz-border-radius': '10px',
                            opacity: .5,
                            color: '#fff'
                        }
                    });
                }catch(e){};
            }
            function unblockUI() {
                try{
                    $.unblockUI();
                catch(e){}
            }


            function sync() {
                blockUI();
                $.post(siteUrl + "/ws/", {
                    //year: $("#processing_year").val()
                }, function(resp) {
                    unblockUI();
                    if (resp == 'Sync finished') {
                        alert('Sinkronisasi Sukses');
                    }
                    else {
                        alert('Sinkronisasi Gagal');
                    }
                });
            }
        </script>
    </head>
</head>
<body>
    <div class="navbar navbar-default" id="navbar">
        <script type="text/javascript">
            try {
                ace.settings.check('navbar', 'fixed')
            } catch (e) {
            }
        </script>
        <div class="navbar-container" id="navbar-container">
            <div class="navbar-header pull-left">
                <a href="#" class="navbar-brand" style="font-size: large;">
                    <img src="data:image/jpg;base64,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" alt="PT. Gapura Angkasa" width="9.7%"/>&nbsp;e-Procurement PT. Gapura Angkasa
                </a><!-- /.brand -->
            </div>
            <!-- /.navbar-header -->
            <div class="navbar-header pull-right" role="navigation">
                <ul class="nav ace-nav">
                    <!-- notification -->

                    <li class="light-grey">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown">

                            <div class="infobox-icon">
                                <i class="icon-home bigger-160 icon-whitex icon-animated-pulsing animate-unlimited-times animate-fast-speed"></i>
                            </div>
                        </a>
                        <!-- akhir notification -->
                    <li class="light-blue">
                        <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                            <span class="user-info">
                                <small>Selamat Datang,</small>
                                Pengunjung
                            </span>
                            <i class="icon-caret-down"></i>
                        </a>
                        <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                            <li>
                                <a href="<?= site_url() ?>/pengumuman/pendaftaran">
                                    <i class="icon-lightbulb icon-whitex icon-animated-pulsing animate-unlimited-times animate-fast-speed"></i>      
                                    Pendaftaran
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="<?= site_url() ?>/login/">
                                    <i class="icon-key icon-whitex icon-animated-pulsing animate-unlimited-times animate-fast-speed"></i>        
                                    Login
                                </a>
                            </li>


                        </ul>
                    </li>
                </ul>
                <!-- /.ace-nav -->
            </div>
            <!-- /.navbar-header -->
        </div>
        <!-- /.container -->
    </div>
</div>

</body>
</html>



<div class="page-content">


    <div class="row">
        <div class="col-xs-12">
            <!-- PAGE CONTENT BEGINS -->

            <div class="alert alert-block alert-success">
                <button type="button" class="close" data-dismiss="alert">
                    <i class="icon-remove "></i>
                </button>
                <i class="icon-ok green"></i>
                Halaman e-Procurement PT. Gapura Angkasa
            </div>


            <div class="row">
                <div class="col-sm-12">
                    <div class="widget-box">
                        <div class="widget-header header-color-orange">
                            <h4 class="lighter white">
                                <i class="icon-bell-alt icon-animated-pulsing"></i>
                                Informasi Jadwal Pelelangan
                            </h4>

                        </div>
                        <div class="widget-body">
                            <div class="widget-box transparent">

                                <div class="widget-body">
                                    <div class="widget-main no-padding">
                                        <table class="table table-bordered table-striped">
                                            <thead class="thin-border-bottom">
                                                <tr>
                                                    <th>
                                                        <i class="icon-caret-right blue"></i>
                                                        Nama Pekerjaan
                                                    </th>

                                                    <th>
                                                        <i class="icon-caret-right blue"></i>
                                                        Lokasi
                                                    </th>

                                                    <th class="hidden-480">
                                                        <i class="icon-caret-right blue"></i>
                                                        Pagu
                                                    </th>
                                                    <th class="hidden-480">
                                                        <i class="icon-caret-right blue"></i>
                                                        Tanggal Akhir Pendaftaran
                                                    </th>
                                                </tr>
                                            </thead>
                                            <?php
                                            if (empty($list2)) {//$listvendor berasal dari data yang dilempar dari controller, yaitu $data['listvendor']. num_rows() digunakan untuk menghitung jumlah baris yang dimiliki ketika kita melakukan select dari database
                                                ?>  
                                                <tr>
                                                    <td colspan="8" align=center>
                                                        <!-- Kalau datanya masih kosong, kita harus melakukan add vendor -->
                                                        <a href="#" title="Saat ini Data Masih Kosong" data-placement='bottom' rel='tooltip'>Tidak Ada Data</a>
                                                    </td>
                                                </tr>
                                                <?php
                                            } else {
                                                ?>
                                                <!-- Kalau ada datanya, maka kita akan tampilkan dalam table -->


                                                <?php
                                                //Kita akan melakukan looping sesuai dengan data yang dimiliki
                                                $i = 0; //nantinya akan digunakan untuk pengisian Nomor
                                                foreach ($list2 as $row) {
                                                    $i++;
                                                    ?>
                                                    <tr>
                                                        <td><?= strtoupper($row->nama_pekerjaan) ?></td>
                                                        <td><?= strtoupper($row->lokasi_pekerjaan) ?></td>
                                                        <td align="right">
                                                            <?php if($row->flag_pagu == 'PTB'):
                                                            echo 'Rp. '.number_format($row->pagu,0,'.',','); 
                                                            else:
                                                                echo '-';
                                                            endif;
                                                            ?></td>
                                                        <td><?= strtoupper($row->tgl_pendaftaran_akhir) ?></td>
                                                    </tr>

                                                    <?php
                                                }
                                            }
                                            ?>
                                            <tbody>

                                            </tbody>
                                        </table>
                                    </div><!-- /widget-main -->




                                </div><!-- /widget-body -->
                            </div><!-- /widget-box -->
                        </div>
                    </div>
                </div>


                
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div><!-- /.main-content -->


    <!-- basic scripts -->

    <!--[if !IE]> -->

    <script type="text/javascript">
        window.jQuery || document.write("<script src='<?= base_url() ?>assets/js/jquery-2.0.3.min.js'>" + "<" + "/script>");
    </script>

    <script src="<?= base_url() ?>/assets/js/jquery.easy-pie-chart.min.js"></script>

    <script type="text/javascript">
        jQuery(function($) {
            $('.easy-pie-chart.percentage').each(function() {
                var $box = $(this).closest('.infobox');
                var barColor = $(this).data('color') || (!$box.hasClass('infobox-dark') ? $box.css('color') : 'rgba(255,255,255,0.95)');
                var trackColor = barColor == 'rgba(255,255,255,0.95)' ? 'rgba(255,255,255,0.25)' : '#E2E2E2';
                var size = parseInt($(this).data('size')) || 50;
                $(this).easyPieChart({
                    barColor: barColor,
                    trackColor: trackColor,
                    scaleColor: false,
                    lineCap: 'butt',
                    lineWidth: parseInt(size / 10),
                    animate: /msie\s*(8|7|6)/.test(navigator.userAgent.toLowerCase()) ? false : 1000,
                    size: size
                });
            })

            var placeholder = $('#piechart-placeholder').css({'width': '90%', 'min-height': '150px'});
            var data = [
                {label: "Bidang IT", data: 38.7, color: "#68BC31"},
                {label: "Bidang ATK", data: 8.2, color: "#AF4E96"},
                {label: "Lainnya", data: 24.5, color: "#2091CF"},
            ]
            function drawPieChart(placeholder, data, position) {
                $.plot(placeholder, data, {
                    series: {
                        pie: {
                            show: true,
                            tilt: 0.8,
                            highlight: {
                                opacity: 0.25
                            },
                            stroke: {
                                color: '#fff',
                                width: 2
                            },
                            startAngle: 2
                        }
                    },
                    legend: {
                        show: true,
                        position: position || "ne",
                        labelBoxBorderColor: null,
                        margin: [-30, 15]
                    }
                    ,
                    grid: {
                        hoverable: true,
                        clickable: true
                    }
                })
            }
            drawPieChart(placeholder, data);
        })
    </script>	

    <script type="text/javascript">
        if ("ontouchend" in document)
            document.write("<script src='<?= base_url() ?>assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
    </script>
    <script src="<?= base_url() ?>assets/js/bootstrap.min.js"></script>
    <script src="<?= base_url() ?>assets/js/typeahead-bs2.min.js"></script>

    <!-- page specific plugin scripts -->

    <!--[if lte IE 8]>
      <script src="assets/js/excanvas.min.js"></script>
    <![endif]-->

    <script src="<?= base_url() ?>/assets/js/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/jquery.ui.touch-punch.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/jquery.slimscroll.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/jquery.easy-pie-chart.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/jquery.sparkline.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/flot/jquery.flot.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/flot/jquery.flot.pie.min.js"></script>
    <script src="<?= base_url() ?>/assets/js/flot/jquery.flot.resize.min.js"></script>
    <!-- ace scripts -->

    <script src="<?= base_url() ?>assets/js/ace-elements.min.js"></script>
    <script src="<?= base_url() ?>assets/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->



</body>
</html>
