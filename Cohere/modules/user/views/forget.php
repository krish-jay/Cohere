		<div class="jumbotron bg-primary">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-sm-offset-1 text-center-xs">
						<h3 id="myModalLabel"><i class="fa fa-unlock"></i> &nbsp; &nbsp; <?php echo phrase('forget_password'); ?></h3>
					</div>
					
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-sm-offset-1">
					<p><i class="fa fa-info-circle"></i> <?php echo phrase('please_enter_your_correct_email_id'); ?></p>
				</div>
				<div class="col-sm-6 nomargin-xs nopadding-xs sticky">
					<div class="image-placeholder-sm">
						<?php if($this->session->flashdata('error')) { ?>
							<div class="col-sm-12">
								<div class="alert alert-danger alert-dismissible" role="alert">
									<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
									<?php echo $this->session->flashdata('error'); ?>
								</div>
							</div>
							<div class="clearfix"></div>
						<?php } ?>
						
						<div class="col-sm-12">
							<form action="<?php echo base_url('user/forget'); ?>" class="form-horizontal submitForm" enctype="multipart/form-data" method="post" data-save="<?php echo phrase('search'); ?>" data-saving="<?php echo phrase('searching'); ?>" data-alert="<?php echo phrase('unable_to_search'); ?>">
								<h4><i class="fa fa-envelope"></i> &nbsp; <?php echo phrase('email'); ?></h4>
								<hr/>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('email'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('email_address'); ?>" class="form-control" name="email" value="<?php echo set_value('email'); ?>" />
									</div>
								</div>
								<div class="statusHolder"></div>
								<div class="form-group">
									<div class="col-xs-6 col-sm-4 col-sm-offset-4">
										<a href="<?php echo base_url('user/login'); ?>" class="btn btn-default btn-lg"><i class="fa fa-arrow-left"></i> &nbsp; <?php echo phrase('login'); ?></a>
									</div>
									<div class="col-xs-6 col-sm-4 text-right">
										<input type="hidden" name="hash" value="<?php echo sha1(time()); ?>" />
										<button type="submit" class="btn btn-primary btn-lg submitBtn"><i class="fa fa-check-circle"></i> &nbsp; <?php echo phrase('search'); ?></button>
									</div>
								</div>
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>