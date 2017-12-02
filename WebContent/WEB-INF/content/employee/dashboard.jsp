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
						<a href="index.html" class="site_title"><img
							src="images/dental.png" width="40px" alt=""> <span>Dental
								Hospital</span></a>
					</div>
					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile clearfix">
						<div class="profile_pic">
							<img src="images/img.jpg" alt="..."
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
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>
			<!-- /top navigation -->

			
			<!-- page content -->
			<div class="right_col" role="main">
				<h2>Dashboard</h2>
				<s:include value="/WEB-INF/content/patient/header.jsp"></s:include>
				<hr>
				
				<div class="row">
	            	<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
	            		<s:url var="patientAddUrl" namespace="/patient" action="registration-form.html"></s:url>
				     	<s:a href="%{#patientAddUrl}" cssClass="mainSelect blue">
						    <i class="fa fa-user-plus" style="padding: 10px;"></i>Registration Desk
						</s:a>
	            	</div>
	            	<div class="col-md-6 col-sm-6 col-xs-12" style="padding: 10px;">
	            		<s:url var="patientListUrl" namespace="/patient" action="list.html"></s:url>
				     	<s:a href="%{#patientListUrl}" cssClass="mainSelect green">
						    <i class="glyphicon glyphicon-edit" style="padding: 10px;"></i>Patients' Modifications
						</s:a>
	            	</div>
			    </div>
			            	
				<%-- <div class="row">
				<div class="form-group">
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<button type="button" class="btn btn-info btn-block">
							<strong><h2>Modification
							<span class="glyphicon glyphicon-edit"></span>								
							</h2> </strong>
						
							</button> 
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<button type="button" class="btn btn-info btn-block">
							<strong><h2>Registration
							<span class="fa fa-user-plus"></span>							
							</h2> </strong>

							</button> 
						</div>
					</div>
				</div>				
				</div> --%>
				
				
				<%-- <div class="row" style="margin-top:50px">
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
				</div> --%>
				
				
				
			</div>	
			<!-- /page content -->

		</div>
	</div>
	
	<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp" ></s:include>

</body>
</html>
