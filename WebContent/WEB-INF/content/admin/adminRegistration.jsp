<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>

<link
	href="<s:url value="/css/dashboard-component.css" includeParams="none"/>"
	rel="stylesheet" type="text/css">

<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
<title><s:text name="global.application.title" /></title>
<s:include value="/WEB-INF/content/common/css-loging-include.jsp"></s:include>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Dental Science | Home Page</title>
<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="" class="site_title"><img src="../images/dental.png"
							width="40px" alt=""> <span>Dental Hospital</span></a>
					</div>
					<div class="clearfix"></div>

					<!-- menu profile  -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="../images/img.jpg" alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>
								<s:property value="%{#session.SESSION_USER.name}" />
							</h2>
						</div>
					</div>
					<!-- /menu profile -->

					<br />

					<!-- sidebar menu -->
					<s:include value="/WEB-INF/content/common/side-bar-admin.jsp"></s:include>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<s:include value="/WEB-INF/content/common/manu_footer.jsp"></s:include>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>
			<!-- /top navigation -->


			<!-- page content -->
			<!-- /page content -->
			<div class="right_col" role="main">
				<div class="">


					<div class="clearfix"></div>

					<div class="row">
						<div class="col-xs-12">
							<div class="x_panel">
								<div class="x_content">
									<div class="row">

										<div class="col-md-12 col-sm-12 col-xs-12 ">
											<div class="row">
												<div class="col-md-12 col-sm-12 col-xs-12">
													<div class="">
														<div class="x_title">
															<h2>
																Employee Details<small>Please Enter Employee
																	details</small>
															</h2>
															<ul class="nav navbar-right panel_toolbox">
																<li><a class="collapse-link"><i
																		class="fa fa-chevron-up"></i></a></li>


															</ul>
															<div class="clearfix"></div>
														</div>
														<div class="x_content">
															<br />
															<s:form namespace="/emp" action="addEmp" method="get">
																<div data-parsley-validate
																	class="form-horizontal form-label-left">
																	<div class="form-group">
																		<label
																			class="control-label col-md-3 col-sm-3 col-xs-12"
																			for="first-name">Profile Picture (Optional)<span
																			class="required"></span>
																		</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<input type="file" name="profile"
																				class="form-control col-md-7 col-xs-12">
																		</div>
																	</div>

																	<div class="form-group">
																		<label
																			class="control-label col-md-3 col-sm-3 col-xs-12">User
																			Role <span class="required"></span>
																		</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<select name="userRole" class="form-control" required>
																				<option value="">Choose User Role..</option>
																				<option value="ADMIN">ADMIN</option>
																				<option value="DENTAL_DOCTOR'">DENTAL
																					DOCTOR'</option>
																				<option value="HEALTH_MINISTRY_DOCTOR">HEALTH
																					MINISTRY DOCTOR</option>
																				<option value="HEALTH_MINISTRY_NURSE">HEALTH
																					MINISTRY NURSE</option>
																				<option value="DENTAL_NURSE">DENTAL NURSE</option>
																				<option value="CLERK">CLERK</option>
																				<option value="TECHNICIAN">TECHNICIAN</option>
																				<option value="POSTGRADUATE_STUDENT">POSTGRADUATE
																					STUDENT</option>

																			</select>
																		</div>
																	</div>
																	<div class="form-group">
																		<label
																			class="control-label col-md-3 col-sm-3 col-xs-12">Title</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<div class="btn-group" data-toggle="buttons">
																				<label class="btn btn-default active"
																					data-toggle-class="btn-primary"
																					data-toggle-passive-class="btn-default"> <input
																					type="radio" name="title" value="Mr.">
																					&nbsp; Mr. &nbsp;
																				</label> <label class="btn btn-default"
																					data-toggle-class="btn-primary"
																					data-toggle-passive-class="btn-default"> <input
																					type="radio" name="title" value="Mrs.">
																					Mrs.
																				</label> <label class="btn btn-default"
																					data-toggle-class="btn-primary"
																					data-toggle-passive-class="btn-default"> <input
																					type="radio" name="title" value="Miss">
																					Miss.
																				</label> <label class="btn btn-default"
																					data-toggle-class="btn-primary"
																					data-toggle-passive-class="btn-default"> <input
																					type="radio" name="title" value="Dr."> Dr.
																				</label>
																			</div>
																		</div>
																	</div>


																	<%-- <div class="form-group">
																		<label
																			class="control-label col-md-3 col-sm-3 col-xs-12"
																			for="surname">Surname<span class="required"></span>
																		</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<input type="text" name="surname" required="required"
																				class="form-control col-md-7 col-xs-12">
																		</div>
																	</div>
																	<div class="form-group">
																		<label
																			class="control-label col-md-3 col-sm-3 col-xs-12"
																			for="initial">Initial <span class="required"></span>
																		</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<input type="text" name="initials"
																				required="required"
																				class="form-control col-md-7 col-xs-12">
																		</div>
																	</div>
																	<div class="form-group">
																		<label for="firstname"
																			class="control-label col-md-3 col-sm-3 col-xs-12">First
																			Name</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<input id="middle-name"
																				class="form-control col-md-7 col-xs-12" type="text"
																				name="firstName">
																		</div>
																	</div>
																	<div class="form-group">
																		<label
																			class="control-label col-md-3 col-sm-3 col-xs-12">Gender</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<div id="gender" class="btn-group"
																				data-toggle="buttons">
																				<label class="btn btn-default active"
																					data-toggle-class="btn-primary"
																					data-toggle-passive-class="btn-default"> <input
																					type="radio" name="gender" value="male">
																					&nbsp; Male &nbsp;
																				</label> <label class="btn btn-default"
																					data-toggle-class="btn-primary"
																					data-toggle-passive-class="btn-default"> <input
																					type="radio" name="gender" value="female">
																					Female
																				</label> <label class="btn btn-default"
																					data-toggle-class="btn-primary"
																					data-toggle-passive-class="btn-default"> <input
																					type="radio" name="gender" value="other">
																					&nbsp; other &nbsp;
																				</label>
																			</div>
																		</div>
																	</div>
																	<div class="form-group">
																		<label
																			class="control-label col-md-3 col-sm-3 col-xs-12">NIC<span
																			class="required"></span>
																		</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<input id="birthday"
																				class="date-picker form-control col-md-7 col-xs-12"
																				required="required" type="text">
																		</div>
																	</div>
																	<div class="form-group">
																		<label
																			class="control-label col-md-3 col-sm-3 col-xs-12">Designation<span
																			class="required"></span>
																		</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<select name="designation" class="form-control"
																				required>
																				<option value="">Select one..</option>
																				<option value="ADMIN">ADMIN</option>
																				<option value="DENTAL_DOCTOR'">DENTAL
																					DOCTOR'</option>
																				<option value="HEALTH_MINISTRY_DOCTOR">HEALTH
																					MINISTRY DOCTOR</option>
																				<option value="HEALTH_MINISTRY_NURSE">HEALTH
																					MINISTRY NURSE</option>
																				<option value="DENTAL_NURSE">DENTAL NURSE</option>
																				<option value="CLERK">CLERK</option>
																				<option value="TECHNICIAN">TECHNICIAN</option>
																				<option value="POSTGRADUATE_STUDENT">POSTGRADUATE
																					STUDENT</option>

																			</select>
																		</div>
																	</div>

																	<div class="form-group">
																		<label
																			class="control-label col-md-3 col-sm-3 col-xs-12">Department
																			<span class="required"></span>
																		</label>
																		<div class="col-md-6 col-sm-6 col-xs-12">
																			<select name="department" class="form-control"
																				required>
																				<option value="">Select Department</option>
																				<option value="HN88741U00">IT-ADMINISTRATION</option>
																				<option value="HN88741U22">OPD</option>
																				<option value="HN88741U23">ORAL SURGERY</option>
																				<option value="HN88741U24">ORAL MEDICINE</option>
																				<option value="HN88741U25">PERIODONTOLOGY</option>
																				<option value="HN88741U26">RESTORATIVE
																					DENTISTRY</option>
																				<option value="HN88741U27">PROSTHETIC
																					DENTISTRY</option>
																				<option value="HN88741U28">PAEDODONTICS</option>
																				<option value="HN88741U29">ORTHODONTICS</option>
																				<option value="HN88741U30">OMF</option>


																			</select>
																		</div>
																	</div>
 --%>
																	<div class="ln_solid"></div>
																	<div class="form-group">
																		<div
																			class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
																			<button class="btn btn-primary" type="button">Cancel</button>
																			<button class="btn btn-primary" type="reset">Reset</button>
																			<button type="submit" class="btn btn-success">Register
																				Employee</button>
																		</div>
																	</div>
																</div>
															</s:form>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<!-- /page content -->

			<!-- /page content -->

			<!-- footer content -->


			<footer>
				<div class="pull-right">
					©2017 All Rights Reserved. <a>Faculty of Dental Science.</a>
					Privacy and Terms
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>

	<s:include value="/WEB-INF/content/common/js-include-mod.jsp"></s:include>
</body>
</html>



