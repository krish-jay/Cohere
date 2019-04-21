
	<?php
		$totSegments = $this->uri->total_segments();
		$uriSegments = $this->uri->segment($totSegments);
		if(!is_numeric($uriSegments)){
			$offset = 0;
		} else if(is_numeric($uriSegments)){
			$offset = $this->uri->segment($totSegments);
		}
		$limit = 12;
		
		foreach($profile as $page):
		include 'user_navigation.php';
	?>
	<div class="container">
		<div class="row">
			<div class="col-md-2 hidden-xs hidden-sm sticky">
				<h4><i class="fa fa-info-circle"></i> <?php echo phrase('account_details'); ?></h4>
				<p class="text-muted">
					<i class="fa fa-quote-left"></i> <?php echo $page['bio']; ?>
				</p>
				<p>
					<i class="fa fa-briefcase"></i> <?php echo $page['designation']; ?>
				</p>
				<p>
					<i class="fa fa-envelope"></i> <?php echo $page['email']; ?>
				</p>
				<p>
					<i class="fa fa-venus-mars"></i> <?php echo $page['gender']; ?>
				</p>
				<p>
					<i class="fa fa-building-o "></i> <?php echo $page['organisation']; ?>
				</p>
				
				<p>
					<i class="fa fa-child"></i> <?php echo $page['age'] . ' ' . phrase('years'); ?>
				</p>
				<p>
					<i class="fa fa-graduation-cap"></i> <?php echo $page['year'] . ' ' . phrase('batch'); ?>
				</p>
				<p>
					<i class="fa fa-institution "></i> <?php echo $page['branch']; ?>
				</p>
			</div>
			<div class="col-md-7 sticky">
				<div class="row grid">
				
					<?php
						if(count($following) > 0)
						{
							foreach($following as $id)
							{
								echo '
									<div class="col-md-6 col-sm-6 grid-item">
										' . getUserDetails($id['is_following']) . '
									</div>
								';
							}
						}
						else
						{
							echo '<div class="col-sm-12 text-center"><div class="alert alert-danger"><h4>' . $page['full_name'] . ' ' . phrase('does_not_follow_any_user') . '</h4></div></div>';
						}
					?>
					
				</div>
				<div class="row">
					<div class="col-sm-12 text-center">
					
						<?php echo generatePagination('followers', null, $page['userID'], null, $limit, $offset); ?>
						
					</div>
				</div>
			</div>
			<div class="col-md-3 hidden-sm hidden-xs sticky">
				<div class="row">
					<div class="col-sm-12">
						<h4><i class="fa fa-tags"></i> <?php echo phrase('trending_hashtags'); ?></h4>
						
						<?php echo widget_hashTags(true, 10); ?>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<?php endforeach; ?>