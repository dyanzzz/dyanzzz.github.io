<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8" />
		<link rel="shortcut icon" href="<?php echo base_url()."templ/upld/".get_data_toko('logo_full');?>"/>
		<link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url()."templ/upld/".get_data_toko('logo_full');?>">
		<link rel="icon" type="image/png" href="<?php echo base_url()."templ/upld/".get_data_toko('logo_full');?>">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>
			<?php echo get_data_toko('nama');?>
		</title>
		<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
		<!--     Fonts and icons     -->
		<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
		<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
		<!-- CSS Files -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>templ/frnt/assets/css/material-kit.css?v=2.0.4" rel="stylesheet" />
		<!-- CSS Just for demo purpose, don't include it in your project -->
		<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>templ/frnt/assets/demo/demo.css" rel="stylesheet" />
	</head>
	
	<body class="sidebar-collapse body">
		<nav class="navbar navbar-transparent navbar-color-on-scroll fixed-top navbar-expand-lg" color-on-scroll="100" id="sectionsNav">
			<div class="container">
				<div class="navbar-translate">
					<a class="navbar-brand" href="<?php echo base_url();?>">
						<img width='30' src='<?php echo base_url()."templ/upld/".get_data_toko('logo');?>'/>
						<?php echo get_data_toko('nama');?>
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" aria-expanded="false" aria-label="Toggle navigation">
						<span class="sr-only">Toggle navigation</span>
						<span class="navbar-toggler-icon"></span>
						<span class="navbar-toggler-icon"></span>
						<span class="navbar-toggler-icon"></span>
					</button>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="navbar-nav ml-auto">
						<?php
						/*
						<li class="dropdown nav-item">
							<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
								<i class="material-icons">apps</i> Our Portofolio
							</a>
							<div class="dropdown-menu dropdown-with-icons">
							
								<?php
									$mainKategory		= $this->db->get_where('tbl_kategori', array('parent'=>0, 'status_delete'=>0));
									foreach ($mainKategory->result() as $k){
										echo anchor('category/'.$k->nama_kategori_seo, "<i class='material-icons'>chevron_right</i>&nbsp;&nbsp;".$k->nama_kategori, array('class' => 'dropdown-item'));
									}
								?>
								
							</div>
						</li>
						*/
						?>
						<li class="nav-item">
							<a class="nav-link" href="<?php echo base_url()?>about" >
								<i class="material-icons">info</i> About Us
							</a>
						</li>
						
						<li class="nav-item">
							<a class="nav-link" target="_blank" href="http://imu-creative.blogspot.com/" >
								<i class="material-icons">whatshot</i> Blog
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" rel="tooltip" title="" data-placement="bottom" href="https://twitter.com/dyantribudianto" target="_blank" data-original-title="Follow us on Twitter">
								<i class="fa fa-twitter"></i>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" rel="tooltip" title="" data-placement="bottom" href="https://facebook.com/dyaaaaan" target="_blank" data-original-title="Like us on Facebook">
								<i class="fa fa-facebook-square"></i>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" rel="tooltip" title="" data-placement="bottom" href="https://api.whatsapp.com/send?phone=087101984&amp;text=Assalamualaikum," target="_blank" data-original-title="Follow us on Whatsapp">
								<i class="fa fa-whatsapp"></i>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" rel="tooltip" title="" data-placement="bottom" href="https://linkedin.com/in/dian-tri-budianto-661bab64" target="_blank" data-original-title="Follow us on Linkedin">
								<i class="fa fa-linkedin"></i>
							</a>
						</li>
						
					</ul>
				</div>
			</div>
		</nav>
		
		<!-- start: MAIN CONTAINER -->
			<?php 
				echo $contents; 
			?>	<!--================================================================================================-->
		<!-- end: MAIN CONTAINER -->
		
	</body>
	
	<footer class="footer footer-default">
		<div class="container">
			
			<nav class="float-left">
				<ul>
				
					<li>
						<a href="https://imucreative.click/about"><i class="material-icons">info</i> About Us</a>
					</li>
					<li>
						<a href="http://imu-creative.blogspot.com/" target="_blank"><i class="material-icons">whatshot</i> Blog</a>
					</li>
					<li>
						<!-- Start of StatCounter Code for Dreamweaver -->
						<script type="text/javascript">
							var sc_project=11599063; 
							var sc_invisible=1; 
							var sc_security="376df18c"; 
							var scJsHost = (("https:" == document.location.protocol) ? "https://secure." : "http://www.");
							document.write("<sc"+"ript type='text/javascript' src='" + scJsHost+ "statcounter.com/counter/counter.js'></"+"script>");
						</script>
						<noscript>
							<div class="statcounter">
								<a title="Web Analytics Made Easy - StatCounter" href="http://statcounter.com/" target="_blank">
									<img class="statcounter" src="//c.statcounter.com/11599063/0/376df18c/0/" alt="Web Analytics Made Easy - StatCounter"/>
								</a>
							</div>
						</noscript>
						<!-- End of StatCounter Code for Dreamweaver -->
					</li>
					
				</ul>
			</nav>
			
			<div class="copyright float-right">
				&copy; 2018 by <?php echo get_data_toko('nama');?>. All Rights Reserved.
			</div>
		</div>
	</footer>
	<!--   Core JS Files   -->
	<script type="text/javascript" src="<?php echo base_url()?>templ/frnt/assets/js/core/jquery.min.js" ></script>
	<script type="text/javascript" src="<?php echo base_url()?>templ/frnt/assets/js/core/popper.min.js" ></script>
	<script type="text/javascript" src="<?php echo base_url()?>templ/frnt/assets/js/core/bootstrap-material-design.min.js" ></script>
	<script type="text/javascript" src="<?php echo base_url()?>templ/frnt/assets/js/plugins/moment.min.js"></script>
	<!--	Plugin for the Datepicker, full documentation here: https://github.com/Eonasdan/bootstrap-datetimepicker -->
	<script type="text/javascript" src="<?php echo base_url()?>templ/frnt/assets/js/plugins/bootstrap-datetimepicker.js" ></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script type="text/javascript" src="<?php echo base_url()?>templ/frnt/assets/js/plugins/nouislider.min.js" ></script>
	<!--	Plugin for Sharrre btn -->
	<script type="text/javascript" src="<?php echo base_url()?>templ/frnt/assets/js/plugins/jquery.sharrre.js" ></script>
	<!-- Control Center for Material Kit: parallax effects, scripts for the example pages etc -->
	<script type="text/javascript" src="<?php echo base_url()?>templ/frnt/assets/js/material-kit.js?v=2.0.4" ></script>
	<script type="text/javascript" src="<?php echo base_url()?>templ/frnt/assets/js/custom.js" ></script>

	<?php
		$kelasBody = $this->uri->segment(1);
		if($kelasBody == ''){
			echo "<script type='text/javascript'>$( '.body' ).removeClass( 'profile-page' ).addClass( 'landing-page' );</script>";
		}else{
			echo "<script type='text/javascript'>$( '.body' ).removeClass( 'landing-page' ).addClass( 'profile-page' );</script>";
		}
	?>
	
</html>

<script>
	$(document).ready(function(){
		$('#myModal').on('show.bs.modal', function (event) {
		  var judul		= $(event.relatedTarget).data('judul')
		  //var deskripsi	= $(event.relatedTarget).data('deskripsi')
		  var image		= $(event.relatedTarget).data('image')
		  var modal = $(this)
		  modal.find('.modal-title').text(judul)
		  modal.find('.img').attr('src', '<?php echo base_url()?>templ/upld/produk/'+image)
		})
	});
</script>