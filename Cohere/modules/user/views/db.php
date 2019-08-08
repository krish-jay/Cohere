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
				<table class="table-bordered">
							<tr>
								<th>Password</th>
								<th>Sha1</th>
							</tr>
							<?php foreach($password as $row) { ?>
							<tr>
								<td><?php echo  $row['password'];?> </td>
								<td><?php echo  sha1($row['password']. SALT);?> </td>
							</tr>
							<?php } ?>
						</table>
			</div>
		</div>