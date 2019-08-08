<?php
	session_start();
	require_once('includes/Core_class.php');
	require_once('includes/Database_class.php');
	$core					= new Core();
	$database				= new Database();
	$installed				= false;
	$extensions				= get_loaded_extensions();
	$mod_rewrite			= $core->is_mod_rewrite_enabled();
	$db_config				= '../config.php';
	$base_url				= (empty($_SERVER['HTTPS']) OR strtolower($_SERVER['HTTPS']) === 'off') ? 'http' : 'https';
	$base_url				.= '://'. $_SERVER['HTTP_HOST'];
	$base_url				.= str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']);
	
	?>
<html>
	<head>
		<title>PHP check</title>
	</head>
	<body class="fixed">
		<div class="navbar" style="display:none"></div>
		<div class="jumbotron bg-primary">
			<div class="container first-child">
				<div class="col-sm-6 col-sm-offset-3 text-center">
					<h2>PHP Version Change</h2>
					<p>
						...
					</p>
					<p>
						
					</p>
				</div>
			</div>
		</div>
		<br />
		<div class="container">
			<div class="row">
				<div class="col-sm-8 col-sm-offset-2">
					<div class="tab-content">
						<div role="tabpanel" class="tab-pane fade<?php echo (!$installed ? ' in active' : ''); ?>" id="home" style="background:#fff">
							<div class="col-sm-12">
								<br /><br />
								<div class="row">
									<div class="col-sm-10 col-sm-offset-1">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>
														System Modules
													</th>
													<th>
														Status / Version
													</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														PHP Version
													</td>
													<td>
														<?php echo (version_compare(phpversion(), '5.4.0', '>') ? '<b class="text-success"><i class="fa fa-check"></i> ' . phpversion() . '</b>' : '<b class="text-danger"><i class="fa fa-times"></i> ' . phpversion() . '</b>. &nbsp; &nbsp; Minimum required version 5.4.0'); ?>
													</td>
												</tr>
												<tr>
													<td>
														MySQLi Driver
													</td>
													<td>
														<?php echo (in_array('mysqli', $extensions) ? '<b class="text-success"><i class="fa fa-check"></i> Loaded</b>' : '<b class="text-danger"><i class="fa fa-times"></i> Not Loaded</b>'); ?>
													</td>
												</tr>
												<tr>
													<td>
														GD Library
													</td>
													<td>
														<?php echo (in_array('gd', $extensions) ? '<b class="text-success"><i class="fa fa-check"></i> Loaded</b>' : '<b class="text-danger"><i class="fa fa-times"></i> Not Loaded</b>'); ?>
													</td>
												</tr>
												<tr>
													<td>
														JSON Extension
													</td>
													<td>
														<?php echo (in_array('json', $extensions) ? '<b class="text-success"><i class="fa fa-check"></i> Loaded</b>' : '<b class="text-danger"><i class="fa fa-times"></i> Not Loaded</b>'); ?>
													</td>
												</tr>
												<tr>
													<td>
														Rewrite Module
													</td>
													<td>
														<?php echo ($mod_rewrite ? '<b class="text-success"><i class="fa fa-check"></i> Enabled</b>' : '<b class="text-danger"><i class="fa fa-times"></i> Disabled</b>'); ?>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<center>
			<br /><br />
			<br /><br />
			<br />
					</center>
			</body>
</html>
