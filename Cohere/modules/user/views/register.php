		<div class="jumbotron bg-primary">
			<div class="container">
				<div class="row">
					<div class="col-sm-7 col-sm-offset-1 text-center-xs">
						<h3 id="myModalLabel"><i class="fa fa-user-plus"></i> &nbsp; &nbsp; <?php echo phrase('register_new_account'); ?></h3>
					</div>
					
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-sm-offset-1">
					<p><i class="fa fa-info-circle"></i> <?php echo phrase('register_hint'); ?></p>
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
							<form action="<?php echo base_url('user/register'); ?>" class="form-horizontal submitForm" enctype="multipart/form-data" method="post" data-save="<?php echo phrase('register'); ?>" data-saving="<?php echo phrase('registering'); ?>" data-alert="<?php echo phrase('unable_to_register'); ?>">
								<h4><i class="fa fa-user"></i> &nbsp; <?php echo phrase('basic_info'); ?></h4>
								<hr/>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('full_name'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('enter_full_name'); ?>" class="form-control" name="full_name" value="<?php echo set_value('full_name'); ?>" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('gender'); ?></label>
									<div class="col-sm-8">
										<select name="gender" class="form-control" placeholder="<?php echo phrase('select_gender'); ?>">
											<option value=""><?php echo phrase('select_gender'); ?></option>
											<option value="male"><?php echo phrase('male'); ?></option>
											<option value="female"><?php echo phrase('female'); ?></option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('age'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('enter_your_age'); ?>" class="form-control" name="age" value="<?php echo set_value('age'); ?>" />
									</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('date_of_birth'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('enter_your_dob'); ?>" class="form-control" name="dob" value="<?php echo set_value('dob'); ?>" />
									</div>
								</div>
								
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('language'); ?></label>
									<div class="col-sm-8">
										<select name="language" class="form-control" placeholder="<?php echo phrase('language'); ?>">
						
											<?php
												$fields = $this->db->list_fields('language');
												foreach($fields as $field)
												{
													if($field == 'phrase_id' || $field == 'phrase') continue;
											?>
											
												<option value="<?php echo $field;?>"<?php if($this->session->userdata('language') == $field) echo ' selected'; ?>><?php echo ucwords($field);?></option>
						
											<?php } ?>
											
										</select>
									</div>
								</div>
								
								<br/>
								<h4><i class="fa fa-phone"></i> &nbsp; <?php echo phrase('contact_info'); ?></h4>
								<hr/>
								
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('phone_number'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('enter_mobile_number'); ?>" class="form-control" name="mobile" value="<?php echo set_value('mobile'); ?>" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('address'); ?></label>
									<div class="col-sm-8">
										<textarea class="form-control" name="address" placeholder="<?php echo phrase('enter_full_address'); ?>"><?php echo set_value('address'); ?></textarea>
									</div>
								</div>
								<br>


								<h4><i class="fa fa-graduation-cap"></i> &nbsp; <?php echo phrase('academic_info'); ?></h4>
								<hr/>
								
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('course_/_branch'); ?></label>
									<div class="col-sm-8">
										<select name="branch" class="form-control" placeholder="<?php echo phrase('enter_your_branch'); ?>">
											<option value=""><?php echo phrase('select_branch'); ?></option>
											
											<option value="B.E Mechanical Engineering"><?php echo phrase('b.e_mechanical_engineering'); ?></option>
											<option value="B.E Computer Science and Engineering"><?php echo phrase('b.e_computer_science_and_engineering'); ?></option>
											<option value="B.E Production Engineering"><?php echo phrase('b.e_production_engineering'); ?></option>
											<option value="B.E Instrumentation and Control Engineering"><?php echo phrase('b.e_instrumentation_and_control_engineering'); ?></option>
											<option value="B.E Electronics and Communication Engineering"><?php echo phrase('b.e_electronics_and_communication_engineering'); ?></option>
											<option value="B.E Electrical and Electronics Engineering"><?php echo phrase('b.e_electrical_and_electronics_engineering'); ?></option>
											<option value="B.Tech Information Technology"><?php echo phrase('b.tech_information_technology'); ?></option>
											<option value="B.E Electronics and Instrumentation Engineering"><?php echo phrase('b.e_electronics_and_instrumentation_engineering'); ?></option>
											<option value="B.E Civil Engineering"><?php echo phrase('b.e_civil_engineering'); ?></option>
											<option value="M.E CAD/CAM"><?php echo phrase('m.e_cad/cam'); ?></option>
										
										<option value="M.E Communication System"><?php echo phrase('m.e_communication_system'); ?></option>
										<option value="M.E Computer Science and Engineering"><?php echo phrase('m.e_computer_science_and_engineering'); ?></option>
										<option value="M.E Power Electronics and Drives"><?php echo phrase('m.e_power_electronics_and_drives'); ?></option>
										<option value=">M.E VLSI Design"><?php echo phrase('m.e_vlsi_design'); ?></option>
										<option value="M.E Computer and Communication Engineering"><?php echo phrase('m.e_computer_and_communication_engineering'); ?></option>
										<option value="M.E Computer Science and Engineering(Networks)"><?php echo phrase('m.e_computer_science_and_engineering(network)'); ?></option>
										<option value="M.E Structural Engineering"><?php echo phrase('m.e_structural_engineering'); ?></option>
										<option value="M.Sc Computer Technology"><?php echo phrase('m.sc_computer_technology'); ?></option>
										<option value="M.Sc Software Engineering"><?php echo phrase('m.sc_software_engineering'); ?></option>
										
										<option value="M.Sc Information Technology"><?php echo phrase('m.sc_information_technology'); ?></option>
										<option value="M.Sc Computer Science and Information Technology"><?php echo phrase('m.sc_computer_science_and_information_technology'); ?></option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('year_of_graduation'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('enter_your_graduation_year'); ?>" class="form-control" name="year" value="<?php echo set_value('graduation_year'); ?>" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('current_status'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('enter_your_designation'); ?>" class="form-control" name="designation" value="<?php echo set_value('designation'); ?>" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('organisation'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('enter_your_work_place'); ?>" class="form-control" name="organisation" value="<?php echo set_value('organisation'); ?>" />
									</div>
								</div>
								
								


								<br/>
								<h4><i class="fa fa-info-circle"></i> &nbsp; <?php echo phrase('account_info'); ?></h4>
								<hr/>
								
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('username'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('select_username'); ?>" class="form-control" name="username" value="<?php echo set_value('username'); ?>" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('email'); ?></label>
									<div class="col-sm-8">
										<input type="text" placeholder="<?php echo phrase('email_address'); ?>" class="form-control" name="email" value="<?php echo set_value('email'); ?>" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('password'); ?></label>
									<div class="col-sm-8">
										<input type="password" placeholder="<?php echo phrase('enter_password'); ?>" class="form-control" name="password" />
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-sm-4 hidden-xs"><?php echo phrase('retype_password'); ?></label>
									<div class="col-sm-8">
										<input type="password" placeholder="<?php echo phrase('retype_password'); ?>" class="form-control" name="con_password" />
									</div>
								</div>
								<div class="statusHolder"></div>
								<div class="form-group">
									<div class="col-xs-6 col-sm-4 col-sm-offset-4">
										<a href="<?php echo base_url('user/login'); ?>" class="btn btn-default btn-lg"><i class="fa fa-arrow-left"></i> &nbsp; <?php echo phrase('login'); ?></a>
									</div>
									<div class="col-xs-6 col-sm-4 text-right">
										<input type="hidden" name="hash" value="<?php echo sha1(time()); ?>" />
										<button type="submit" class="btn btn-primary btn-lg submitBtn"><i class="fa fa-check-circle"></i> &nbsp; <?php echo phrase('register'); ?></button>
									</div>
								</div>
							</form>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>