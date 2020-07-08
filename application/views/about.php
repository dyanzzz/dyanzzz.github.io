	<div class="page-header header-filter" data-parallax="true" style="background-image: url('<?php echo base_url()?>templ/upld/background/background2.jpg');"></div>
	<div class="main main-raised">
		<div class="profile-content">
			<div class="container">
				<div class="row">
					<div class="col-md-12 ml-auto mr-auto">
						<div class="profile">
							<div class="avatar">
								<img src="<?php echo base_url()."templ/upld/".get_data_toko('logo');?>" alt="Raised Image" class="img-raised rounded img-fluid">
							</div>
							<div class="name">
								<h3 class="title">&nbsp;</h3>
								<!--<h6>Distributor</h6>-->

								<a class="btn btn-just-icon btn-link" rel="tooltip" title="" data-placement="bottom" href="https://twitter.com/dyantribudianto" target="_blank" data-original-title="Follow us on Twitter">
									<i class="fa fa-twitter"></i>
								</a>
								<a class="btn btn-just-icon btn-link" rel="tooltip" title="" data-placement="bottom" href="https://facebook.com/dyaaaaan" target="_blank" data-original-title="Like us on Facebook">
									<i class="fa fa-facebook-square"></i>
								</a>
								<a class="btn btn-just-icon btn-link" rel="tooltip" title="" data-placement="bottom" href="https://api.whatsapp.com/send?phone=087101984&amp;text=Assalamualaikum," target="_blank" data-original-title="Follow us on Whatsapp">
									<i class="fa fa-whatsapp"></i>
								</a>
								<a class="btn btn-just-icon btn-link" rel="tooltip" title="" data-placement="bottom" href="https://linkedin.com/in/dian-tri-budianto-661bab64" target="_blank" data-original-title="Follow us on Linkedin">
									<i class="fa fa-linkedin"></i>
								</a>




							</div>
						</div>
					</div>
				</div>

				<div class="description text-justyfy">
					<?php echo get_data_toko('about');?>
				</div>

				<div class="row">
					<div class="col-md-12 ml-auto mr-auto">
						<div class="profile-tabs">
							<ul class="nav nav-pills nav-pills-icons justify-content-center" role="tablist">
								<?php
									foreach($kategori as $row_kategori){
								?>
										<li class="nav-item">
											<?php
												if($row_kategori->kategori_id == '1'){
											?>
													<a class="nav-link active" href="#<?php echo $row_kategori->kategori_id;?>" role="tab" data-toggle="tab">
											<?php
												}else{
											?>
													<a class="nav-link" href="#<?php echo $row_kategori->kategori_id;?>" role="tab" data-toggle="tab">
											<?php
												}
											?>
												<i class="material-icons"><?php echo $row_kategori->icon_kategori;?></i> <?php echo $row_kategori->nama_kategori;?>
											</a>
										</li>
								<?php
									}
								?>
							</ul>
						</div>
					</div>
				</div>
				<div class="tab-content tab-space">
					<?php
						foreach($kategori as $row_kategori){
					?>
					<?php
						if($row_kategori->kategori_id == '1'){
					?>
							<div class="tab-pane active text-center gallery" id="<?php echo $row_kategori->kategori_id;?>">
					<?php
						}else{
					?>
							<div class="tab-pane text-center gallery" id="<?php echo $row_kategori->kategori_id;?>">
					<?php
						}
					?>
								<div class="row">
									<?php
										/*
										$count_all_product	= $this->Mod_produk->get_product_by_kategori_id($row_kategori->kategori_id)->num_rows();
										$limit = ceil($count_all_product / 3);	//ini limit

										for($offset=1; $offset<=3; $offset++){
											if($offset == 1){
												$nomor = 0;
											}else{
												$nomor = $offse;
											}
										*/
											$produk=$this->Mod_produk->get_product_by_kategori_id($row_kategori->kategori_id)->result();
											foreach($produk as $row_produk){
												if($row_produk->link_portofolio != ""){
												$link = $row_produk->nama_product . " - <u><a href='".$row_produk->link_portofolio."' target='_blank'>Link</a></u>";
												}else{
													$link = $row_produk->nama_product;
												}
									?>
												<div class="col-lg-4 col-md-6">
													<div class="card card-product">
														<div class="card-header card-header-image">
															<a href='#' data-toggle="modal" data-target="#myModal" data-judul="<?php echo $row_produk->nama_product;?>" data-deskripsi="<?php echo $row_produk->keterangan;?>" data-image="<?php echo $row_produk->image;?>">
																<img class="img" src="<?php echo base_url()?>templ/upld/produk/<?php echo $row_produk->image;?>" class="rounded">
															</a>
														</div>
														<div class="card-body">
															<h6 class="card-category text-rose"><?php echo $link;?></h6>
														</div>

													</div>
												</div>
												<?php
													//$nomor++;
													//$offse = $nomor;
												?>
									<?php
											}
										//}
									?>

								</div>
							</div>
					<?php
						}
					?>

				</div>


			</div>
		</div>
	</div>

	<!-- Classic Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Title</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<i class="material-icons">clear</i>
					</button>
				</div>
				<div class="modal-body" align='center'>
					<img class="img" src="<?php echo base_url()?>templ/upld/produk/ikaosDashboard.png" width='100%'>
				</div>

			</div>
		</div>
	</div>
	<!--  End Modal -->
