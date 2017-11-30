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

<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"><img
							src="../images/dental.png" width="40px" alt=""> <span>Dental
								Hospital</span></a>
					</div>
					<div class="clearfix"></div>

					<!-- menu profile quick info -->
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
					<!-- /menu profile quick info -->

					<br />

					<!-- sidebar menu -->
					<s:include value="/WEB-INF/content/common/side-bar.jsp"></s:include>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a>

						<s:url var="signOutUrl" namespace="/" action="/sign-out.html"></s:url>
						<s:a data-toggle="tooltip" data-placement="top" title="Logout"
							href="%{#signOutUrl}">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</s:a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>

						<ul class="nav navbar-nav navbar-right">
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img src="../images/img.jpg" alt="">
								<s:property value="%{#session.SESSION_USER.name}" /> <span
									class=" fa fa-angle-down"></span>
							</a>
								<ul class="dropdown-menu dropdown-usermenu pull-right">
									<li><a href="javascript:;">Help</a></li>
									<!-- <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li> -->
									<li><s:url var="signOutUrl" namespace="/"
											action="/sign-out.html"></s:url> <s:a href="%{#signOutUrl}">
											<span class="fa fa-sign-out pull-right"></span> Log Out</s:a></li>
								</ul></li>
							<!-- side profile -->
							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> </a></li>
							<!-- end side profile -->
						</ul>
					</nav>
				</div>
			</div>
			<!-- /top navigation -->
			<!-- /top navigation -->


			<!-- page content -->
			<div class="right_col" role="main">
				<h2>Patient Visits</h2>
				<s:include value="/WEB-INF/content/department/header.jsp"></s:include>
				<hr>

				<div class="row">
					<div class="x_panel">
						<div >
							<%-- <s:include value="/WEB-INF/content/patient/header.jsp"></s:include> --%>
							<div class="row" style="margin-bottom: 1em;">

								<div class="col-md-4">

									<s:form namespace="/patient" action="visits.html"
										id="visitSearchForm" method="post">
										<div class="input-group">

											<div class="input-group-btn search-panel">
												<button type="button"
													class="btn btn-default dropdown-toggle">
													<span id="search_concept">Search</span>
												</button>
											</div>
											<input type="hidden" name="searchKey" value="serial"
												id="search_param"> <input type="text"
												class="form-control" name="searchWord"
												placeholder="Enter Patient Serial" autofocus> <span
												class="input-group-btn"> <s:submit
													cssClass="btn btn-default" type="button">
													<span class="glyphicon glyphicon-search"></span>
												</s:submit>
											</span>
										</div>
									</s:form>
								</div>

							</div>
							<div class="row" style="margin-bottom: 2em;">
								<s:form namespace="/patient" action="addVisits.html"
									id="addCommentForm" method="post">
									<div class="col-md-10">
										<input type="text" class="form-control" name="visitComment"
											placeholder="Comments" autofocus>

									</div>
									<div class="col-md-2">

										<input type="hidden" name="patientId"
											value=<s:property value="%{patient.serialNumber}" />>

										<%-- <s:a href="%{#addCommentForm}" cssClass="btn btn-primary"
								role="button">Add Visit</s:a>
							 --%>
										<s:submit cssClass="btn btn-primary" type="button">
											<span id="add_visit">Add Visit</span>
										</s:submit>
										<!-- Check the Submit of new Visit - to be configured -->
										<%-- <s:a href="%{#patientHiddenUrl}" cssClass="btn btn-info" role="button">Deleted</s:a> --%>
									</div>
								</s:form>
							</div>

							<div class="row">
								<div class="col-sm-7">

									<div class="form-group">
										<div class="row" id="serialNo">
											<div class="col-xs-3" id="serialNo1">
												<label>Serial Number:</label>
											</div>
											<div class="col-xs-6" id="serialNo2">
												<s:property value="%{patient.serialNumber}" />
											</div>

											<%-- <div class="col-xs-4" id="barcode">
										<img id="barcodeImage" style="width: 200px; height: 50px" src="<s:url namespace="/image" action='bar-code.html?q=%{patient.serialNumber}' />" />									
									</div>		 --%>

										</div>
									</div>

									<div id="patient-full">
										<div class="form-group">
											<div class="row" id="name">
												<div class="col-xs-3">
													<label for="name">Patient Name:</label>
												</div>
												<div class="col-xs-6">
													<s:property value="%{patient.printName}" />
													(First name:
													<s:property value="%{patient.firstName}" />
													)
												</div>

											</div>
										</div>

										<div class="form-group">
											<div class="row" id="fileNo">
												<div class="col-xs-3">
													<label for="name">Phy. File No. :</label>
												</div>
												<div class="col-xs-6">
													<s:property value="%{patient.fileNumber}" />
												</div>
											</div>
										</div>

										<div class="form-group">
											<div class="row" id="sex">
												<div class="col-xs-3">
													<label for="name">Sex:</label>
												</div>
												<div class="col-xs-6">
													<s:property value="%{patient.sex}" />
												</div>

											</div>
										</div>

									</div>

									<br>
									<%-- <s:actionerror cssClass="errorMessage"/> --%>

									<s:if
										test="pager != null && pager.list != null && pager.list.size != 0">

										<table class="table table-condensed" id="patient_visit_tbl">
											<tr>
												<th>Date</th>
												<th>Department</th>
												<th>Comments</th>
											</tr>
											<s:iterator value="pager.list" status="rowIndex">
												<tr>
													<td <s:date name='insertDatetime' format='yyyy-MM-dd'/>><s:property
															value="%{insertDatetime}" /></td>
													<td><s:property value="%{department}" /></td>

													<td><s:property value="%{comment}" /></td>

												</tr>
											</s:iterator>
										</table>

										<div class="text-center">
											<s:include value="/WEB-INF/content/common/pager.jsp"></s:include>
										</div>
									</s:if>
									<s:else>
										<div class="bg-info text-white">No Visits found</div>
									</s:else>
									

								</div>

							</div>
						</div>
					</div>
					</div>
					</div>

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



