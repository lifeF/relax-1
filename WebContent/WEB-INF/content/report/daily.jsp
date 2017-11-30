<%@page import="com.itextpdf.text.Document"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.text.SimpleDateFormat"%>
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
				<h2>Daily Reports</h2>

				<hr>
				<div class="row">
					<div class="x_panel">

						<div class="row">

							<%-- <input type="date" class="form-control" id="report-Date" 
							name="customReportDaily" value='<s:property value='%{customReport.daily}' default='2017-12-01'/>'> --%>

							<s:form namespace="/report" action="report-pdf" method="post">
								<div class="col-md-3 col-sm-3 col-xs-12">
									<input type="date" class="form-control" id="report-Date"
										name=customDate value='<s:property value='%{customDate}'/>'>
									<s:hidden name="viewType" value="D" />
								</div>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<s:submit cssClass="btn btn-primary" value="Print" />
								</div>
							</s:form>



							<%-- <div class="col-md-3 col-sm-3 col-xs-12"  >
	            		<s:url var="dailyPrint" namespace="/report" action="report-pdf">
	            			<s:param name="customDate" value="%{customDate}"></s:param>
	            		</s:url>
				
						<s:a href="%{#dailyPrint}" cssClass="btn btn-primary" style="padding: 6px 60px;" role="button">
							<i class="glyphicon glyphicon-print" style="padding: 0px;"></i>
							Print
						</s:a>
					</div>		 --%>

						</div>

						<br>

						<div class="row flexRow">
							<div class="col-md-6 col-sm-6 col-xs-12"
								style="padding: 10px; background-color: frfrfr;">
								<s:actionerror cssClass="errorMessage" />

								<s:if
									test="pager != null && pager.list != null && pager.list.size != 0">

									<table class="table table-condensed" id="patient_tbl">
										<tr>
											<th>Serial No.</th>
											<th>Name (Title, First Name)</th>
											<th>Date of Birth</th>
											<th>Gender</th>
										</tr>
										<s:iterator value="pager.list" status="rowIndex">
											<tr>
												<td
													title="Registered: <s:date name='insertDatetime' format='yyyy/MM/dd hh:mm'/>"><s:property
														value="serialNumber" /></td>
												<td><s:property value="%{surname}" /> <s:property
														value="%{initials}" /> (<s:property value="%{title}" />, <s:property
														value="%{firstName}" /> )</td>
												<td><s:date name="dateOfBirth" format="dd-MM-yyyy" /></td>
												<td><s:property value="sex" /></td>
											</tr>
										</s:iterator>
									</table>

									<div class="text-center">
										<s:include value="/WEB-INF/content/common/pager.jsp"></s:include>
									</div>
								</s:if>
								<s:else>
									<div class="bg-info text-white">No Patient Registrations</div>
								</s:else>
							</div>

							<div class="col-md-4 col-sm-4 col-xs-12 flexRow"
								style="border-style: ridge; border-width: 5px; border-color: dddddd; padding: 10px 50px;">

								<!-- Here How to obtain the data from the ReportAction.java class which is called from report.xml reports-daily action -->
								<div class="row flexRow">
									<h5>
										<b>Total Patients: </b>
									</h5>
									<h5>
										<s:property value="%{register.total}" />
									</h5>
								</div>
								<div class="row flexRow">
									<h5>
										<b>Total Males: </b>
									</h5>
									<h5>
										<s:property value="%{register.maleTotal}" />
									</h5>
								</div>
								<div class="row flexRow">
									<h5>
										<b>Total Females: </b>
									</h5>
									<h5>
										<s:property value="%{register.femaleTotal}" />
									</h5>
								</div>
								<div class="row flexRow">
									<h5>
										<b>Total Children: </b>
									</h5>
									<h5>
										<s:property value="%{register.childTotal}" />
									</h5>
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