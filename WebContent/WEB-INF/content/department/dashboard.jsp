<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title><s:text name="global.application.title" /></title>
<link
	href="<s:url value="/css/dashboard-component.css" 
	includeParams="none"/>"
	rel="stylesheet" type="text/css">

<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
<s:include value="/WEB-INF/content/common/css-loging-include.jsp"></s:include>
<s:include value="/WEB-INF/content/common/css.jsp"></s:include>


</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"><img
							src="images/dental.png" width="40px" alt=""> <span>Dental
								Hospital</span></a>
					</div>
					<div class="clearfix"></div>

					<!-- menu profile  -->
					<s:include value="/WEB-INF/content/common/manu_profile.jsp"></s:include>
					<!-- /menu profile -->

					<br />

					<!-- sidebar menu -->
					<s:include value="/WEB-INF/content/common/side-bar.jsp"></s:include>
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
			<div class="right_col" role="main">
				<s:include value="/WEB-INF/content/department/header.jsp"></s:include>
				<h2>Department Dashboard</h2>
				<hr>
				<div class="row">
					<div class="x_panel">
						<div class="row">
							<div class="col-md-12 col-sm-6 col-xs-12" style="padding: 10px;">
								<s:url var="patientAddUrl" namespace="/patient"
									action="visits.html"></s:url>
								<s:a href="%{#patientAddUrl}" cssClass="mainSelect blue">
									<i class="fa fa-user-plus" style="padding: 10px;"></i>Add Visit
								</s:a>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
							</div>
						</div>
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
								<s:url var="patientAddUrl" namespace="/patient"
									action="registration-form.html"></s:url>
								<s:a href="%{#patientAddUrl}" cssClass="mainSelect blue">
									<i class="fa fa-user-plus" style="padding: 10px;"></i>Registration Desk
						</s:a>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
								<s:url var="patientListUrl" namespace="/patient"
									action="list.html"></s:url>
								<s:a href="%{#patientListUrl}" cssClass="mainSelect green">
									<i class="glyphicon glyphicon-edit" style="padding: 10px;"></i>Patients' Modifications
						</s:a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- /page content -->

			<!-- footer content -->
			<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
			<!-- /footer content -->
		</div>
	</div>

	<s:include value="/WEB-INF/content/common/js-include-mod.jsp"></s:include>
</body>
</html>



