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
<s:include value="/WEB-INF/content/common/css.jsp"></s:include>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="" class="site_title"><img src="images/dental.png"
							width="40px" alt=""> <span>Dental Hospital</span></a>
					</div>
					<div class="clearfix"></div>

					<!-- menu profile  -->
					<s:include value="/WEB-INF/content/common/manu_profile.jsp"></s:include>
					<!-- /menu profile -->

					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>
								<s:text name="global.menu.module"></s:text>
							</h3>
							<ul class="nav side-menu">
								<li><s:url var="dashboardUrl" action="dashboard.html"
										namespace="/"></s:url> <s:a href="%{#dashboardUrl}">
										<i class="fa fa-home"></i>Dashboard
								</s:a></li>

								<li><s:url var="registrationFormUrl"
										action="registration-form.html" namespace="/patient"></s:url>
									<s:a href="%{#registrationFormUrl}">
										<i class="fa fa-address-card"></i>Registration Employee
									</s:a></li>



							</ul>
						</div>
					</div>
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
			<div class="row">
				<div class="x_panel">
					<s:url var="patientAddUrl" namespace="/emp"
						action="ListGetForAdmin.html"></s:url>
					<s:a href="%{#patientAddUrl}" cssClass="mainSelect blue">
						<i class="fa fa-user-plus" style="padding: 10px;"></i>Add Visit
			</s:a>
				</div>

			</div>
			<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
			</div>
		</div>
		<!-- /page content -->

		<!-- footer content -->


		<footer>
			<div class="pull-right">
				©2017 All Rights Reserved. <a>Faculty of Dental Science.</a> Privacy
				and Terms
			</div>
			<div class="clearfix"></div>
		</footer>
		<!-- /footer content -->
	</div>


	<s:include value="/WEB-INF/content/common/js-include-mod.jsp"></s:include>
</body>
</html>



