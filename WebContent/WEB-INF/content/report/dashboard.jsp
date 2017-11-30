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
				<h2>Report Dashboard</h2>

				<hr>
				<div class="row">
					<div class="x_panel">

						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12"
								style="padding-Top: 5px; text-Align: left">
								<label class="labelCustom">Custom Report :</label>
							</div>

							<s:form namespace="/report" action="report-pdf" method="post">
								<div class="col-md-2 col-sm-2 col-xs-12">
									<input type="date" class="form-control"
										id="report-Custom-Start" name=customDate
										value='<s:property value='%{customDate}'/>'>
								</div>
								
								<div class="col-md-1 col-sm-1 col-xs-12"
									style="text-align: center; padding-Top: 5px">
									<label class="labelCustom"> to </label>
								</div>
								<div class="col-md-2 col-sm-2 col-xs-12" style="padding: 0px 10px 10px 10px">
									<input type="date" class="form-control" id="report-Custom-End"
										name=customEndDate
										value='<s:property value='%{customEndDate}'/>'>
								</div>
								<div class="col-md-2 col-sm-2 col-xs-12"
									style="padding: 0px 10px">
									<s:submit cssClass="btn btn-primary" value="Print"
										style="padding: 6px 50px" />
									<s:hidden name="isCustom" value="true" />
									<s:hidden name="viewType" value="C" />
								</div>
							</s:form>

						</div>

						<hr>

						<div class="row">

							<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
								<s:url var="dailyReports" namespace="/report"
									action="reports-daily.html"></s:url>
								<s:a href="%{#dailyReports}" cssClass="mainSelect yellow">
									<i class="glyphicon glyphicon-list-alt"
										style="padding: 10px 25px 10px 0px;"></i>Daily Reports
						</s:a>
							</div>

							<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
								<s:url var="weeklyReports" namespace="/report"
									action="reports-weekly.html"></s:url>
								<s:a href="%{#weeklyReports}" cssClass="mainSelect green">
									<i class="glyphicon glyphicon-list-alt" style="padding: 10px;"></i>Weekly Reports
						</s:a>
							</div>



						</div>


						<div class="row">

							<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
								<s:url var="monthlyReports" namespace="/report"
									action="reports-monthly.html"></s:url>
								<s:a href="%{#monthlyReports}" cssClass="mainSelect green">
									<i class="glyphicon glyphicon-list-alt" style="padding: 10px;"></i>Monthly Reports
						</s:a>
							</div>

							<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
								<s:url var="annualReports" namespace="/report"
									action="reports-annual.html"></s:url>
								<s:a href="%{#annualReports}" cssClass="mainSelect yellow">
									<i class="glyphicon glyphicon-list-alt"
										style="padding: 10px 20px 10px 0px;"></i>Annual Report
						</s:a>
							</div>

						</div>

						<!--   Uncomment when patient visit form is finalized
				
				<div class="row" style="margin-top:50px">
	               <div class="col-md-4 col-sm-6 col-xs-12 clientes">
				    <div class="clientes-content">
				    	<div class="content-title">
				            <span style="padding-left:10px">Registrations (This Week)</span>
				    	</div>
				        <div class="number"><span>270</span></div>
				        <div class="line">
				            <div class="line-1"></div>
				            <div class="line-2"></div>
				        </div>
				        <div class="analysis">
				            <div class="quote"><b>55% Kandy</b></div>
				            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				        </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4 col-sm-6 col-xs-12 concorrentes" style="padding:0 10px">
				    <div class="concorrentes-content">
				        <div class="content-title">
				            <span style="padding-left:10px">New Intakes (Today)</span>
				    	</div>
				        <div class="number"><span>10</span>  <span> / 25</span></div>
				        <div class="line">
				            <div class="line-1"></div>
				            <div class="line-2"></div>
				        </div>
				        <div class="analysis">
				            <div class="quote"><b>40% are new intakes</b></div>
				            <a href="#" class="see-more">More <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				        </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4 col-sm-6 col-xs-12 clientes">
				    <div class="clientes-content">
				    	<div class="content-title">
				            <span style="padding-left:10px">Planed Surgeries (Today)</span>
				    	</div>
				        <div class="number"><span>4</span></div>
				        <div class="line">
				            <div class="line-1"></div>
				            <div class="line-2"></div>
				        </div>
				        <div class="analysis">
				            <div class="quote"><b></b></div>
				            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
				        </div>
				    </div>
				  </div>
				</div> 
				
				
				-->
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