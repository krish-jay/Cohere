
	<?php 
		$totSegments = $this->uri->total_segments();
		$uriSegments = $this->uri->segment($totSegments);
		if(!is_numeric($uriSegments)){
			$offset = 0;
		} else if(is_numeric($uriSegments)){
			$offset = $this->uri->segment($totSegments);
		}
		$limit = 12;
	?>
	
	<div class="bg-info">
		<div class="container first-child">
			<div class="row">
				<div class="col-sm-7 col-sm-offset-1 hidden-xs">
					<h2><i class="fa fa-image"></i> &nbsp; <?php echo phrase('snapshots'); ?></h2>
				</div>
				<div class="col-sm-3">
					<div class="col-12-xs">
						<a href="<?php echo base_url('user/snapshots/add'); ?>" class="btn btn-lg btn-block btn-primary newPost" data-toggle="modal"><i class="fa fa-plus"></i> &nbsp; <?php echo phrase('new_snapshot'); ?></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-3 col-md-offset-1 hidden-xs hidden-sm sticky">
			
				<?php echo ($this->input->is_ajax_request() ? $this->load->view('dashboard_navigation') : $template['partials']['navigation']); ?>
				
			</div>
			<div class="col-md-7 sticky">
				<div class="row grid">
					
					<?php
						$n = 1;
						$snapshots = getPosts('snapshots', ($this->session->userdata('user_level') == 1 ? null : $this->session->userdata('userID')), null, $limit, $offset);
						if($snapshots)
						{
							foreach($snapshots as $c)
							{
								echo '
									<div class="col-sm-4 grid-item" id="snapshot' . $c['snapshotID'] . '">
										<div class="image-placeholder">
											<a href="' . base_url('snapshots/' . $c['snapshotSlug']) . '" class="ajax"><img width="100%" class="img-responsive" src="' . base_url('uploads/snapshots/thumbs/' . imageCheck('snapshots', $c['snapshotFile'], 1)) . '" alt="' . truncate($c['snapshotContent'], 50) . '" /></a>
											<div class="col-sm-12" style="border-top:1px solid #ddd;padding-top:10px">
												<div class="btn-group btn-group-justified">
													<a class="btn btn-default btn-sm newPost" data-toggle="modal" href="' . base_url('user/snapshots/edit/' . $c['snapshotSlug']) . '"><i class="btn-icon-only fa fa-edit"></i> ' . phrase('edit') . '</a>
													<a class="btn btn-default btn-sm" href="javascript:void(0)" onclick="confirm_modal(\'' . base_url('user/snapshots/remove/' . $c['snapshotSlug']) . '\', \'snapshot' . $c['snapshotID'] . '\')"><i class="btn-icon-only fa fa-times"></i> ' . phrase('remove') . '</a>
												</div>
											</div>
										</div>
									</div>
								';
							}
						}
					?>
					
				</div>
				
				<hr/>
				<div class="row">
					<div class="col-sm-12 text-center">
					
						<?php echo generatePagination('snapshots', null, ($this->session->userdata('user_level') == 1 ? null : $this->session->userdata('userID')), 'user', $limit, $offset); ?>
						
					</div>
				</div>
			</div>
		</div>
	</div>
