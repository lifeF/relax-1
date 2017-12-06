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
			
				<s:include value="/WEB-INF/content/patient/header.jsp"></s:include>
				<div class="x_panel">
				<h4>Patient Registration</h4>
				<hr>

				<s:form namespace="/patient" action="registration-save" method="post">

					<s:hidden name="patient.id" value="%{patient.id}"></s:hidden>
					<div>

						<div class="form-group required">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-6">
									<label class="control-label" for="name">Patient Name:</label>
								</div>
								<div class="col-md-2 col-sm-4 col-xs-12">
									<s:select cssClass="form-control" name="patient.title" list="#{'Mr':'Mr.','Ms':'Ms.','Rev':'Rev.','Dr':'Dr.',' ':' '}" />
										
								</div>
								<div class="col-md-3 col-sm-4 col-xs-12">
									<s:textfield required="required" title="Surname" type="text" cssClass="form-control" id="name" 
									name="patient.surname" placeholder="Surname" style="text-transform:capitalize"/>
								</div>
								<div class="col-md-3 col-sm-4 col-xs-12">
									<s:textfield title="Initials" type="text" cssClass="form-control" id="name"
										name="patient.initials" placeholder="Initials" style="text-transform:uppercase"/>
								</div>
								<div class="col-md-3 col-sm-4 col-xs-12">
									<s:textfield title="First name" type="text" cssClass="form-control" id="name"
										name="patient.firstName" placeholder="First name" style="text-transform:capitalize"/>
								</div>
							</div>
						</div>
						<!--  -->

    
						<div class="form-group">
							<div class="row">
								<s:if test="patient.id != null">
									<div class="form-group">
										<div class="row">
											<div class="col-md-2 col-sm-2 col-xs-12">
												<label for="ethnicity">File No.: </label>
											</div>
			
											<div class="col-md-3 col-sm-3 col-xs-12">
												<s:textfield type="text" cssClass="form-control" id="fileNumber" name="patient.fileNumber" />
											</div>
											
										</div>
									</div>
								</s:if>
								<div class="col-md-2 col-sm-2 col-xs-12">
									<label for="checkbox">Child</label> 
										<s:checkbox 
										name="patient.child" cssClass="checkbox-inline" id="check_child"
										value="child" />
								</div>

<!-- 								<div class="col-md-1 col-sm-2 col-xs-12">
									<label for="serialNumber">NIC No.:</label>
								</div> -->
								<div class="col-md-3 col-sm-3 col-xs-12">
									<s:textfield type="text" pattern=".{10,15}" title="NIC should be between 10 to 15 digits!" cssClass="form-control" id="nic" name="patient.nic"
										placeholder="NIC number" />
								</div>

							</div>

						</div>
						<script>
							document.getElementById('check_child').onchange = function() {
								document.getElementById('nic').disabled = this.checked;
							};
						</script>

						<div class="form-group required">
							<div class="row">
								<div class="col-md-2 col-sm-2 col-xs-12">
									<label for="birthDay" class="control-label">Date of Birth:</label>
								</div>
								<div class="col-md-3 col-sm-4 col-xs-12">
									<input type="date" required="required" class="form-control" id="bday"
										name="patient.birthDayString" value="<s:property value='%{patient.birthDayString}' />">
								</div>
							</div>
						</div>

						<div class="form-group required">
							<div class="row">
								<div class="col-md-2 col-sm-2 col-xs-12">
									<label for="sex" class="control-label">Sex: </label>
								</div>
								<div class="col-md-3 col-sm-4 col-xs-12">
									<div class="form-control">
										<s:radio required="required" label="Answer" name="patient.sex" list="#{'Male':'Male','Female':'Female','Other':'Other'}" />
									</div>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-2 col-xs-4">
									<label for="ethnicity">Ethnicity: </label>
								</div>

								<div class="col-md-3 col-sm-4 col-xs-8">
									<s:select cssClass="form-control"  name="patient.ethnicity" list="#{'Sinhala':'Sinhala','Tamil':'Tamil','Muslim':'Muslim', 'Other':'Other'}" />
								</div>
								
							</div>
						</div>
						
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-2 col-xs-4">
									<label for="district">District:</label>
								</div>
								
								<div class="col-md-3 col-sm-4 col-xs-8">
									<s:select cssClass="form-control"  name="patient.districtId" listKey="id" listValue="name" list="districts" value="14"/>
								</div>							
								<div class="col-md-2 col-sm-2 col-xs-4">
									<label for="country">Nationality: </label>
								</div>
								<div class="col-md-3 col-sm-4 col-xs-8">
									<s:select name="patient.country" cssClass="form-control" list="#{'Sri Lankan':'Sri Lankan','Non Sri Lankan':'Non Sri Lankan'}">
									</s:select>
								</div>
							</div>
						</div>
						<br>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-2 col-xs-12">
									<label for="phone">Phone number:</label>
								</div>
								<div class="col-md-3 col-sm-4 col-xs-12">
									<input type="text" class="form-control" id="phoneNo" pattern=".{10,}" title="Phone number should be 10 or more characters" name="patient.mobile" value="<s:property value='%{patient.mobile}' />">
								</div>
								<div class="col-md-2 col-sm-2 col-xs-12">
									<label for="mail">E-mail:</label>
								</div>
								<div class="col-md-3 col-sm-4 col-xs-12">
									<input type="email" class="form-control" id="mail"
										name="patient.email" value="<s:property value='%{patient.email}' />" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-2 col-xs-12">
									<label for="address">Address:</label>
								</div>
								<div class="col-md-3 col-sm-4 col-xs-12">
									<textarea class="form-control" id="address"
										name="patient.address"><s:property value='%{patient.address}' /></textarea>
								</div>
							</div>
						</div>
						<div class="form-group" id="remarks-div">
							<div class="row">

								<div class="col-md-2 col-sm-2 col-xs-12">
									<label for="checkbox">Referral</label> 
										<input type="checkbox" class="checkbox-inline" id="check-referral" value="referral">
										
								</div>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<s:hidden name="patientAdditionalProperties[0].nameKey" value="Rererral"></s:hidden>
									<s:textfield type="text" cssClass="form-control" id="remarks" name="patientAdditionalProperties[0].propertyValue" placeholder="Referral Body" />
								</div>
								<div class="col-md-3 col-sm-3 col-xs-12">
									<s:hidden name="patientAdditionalProperties[1].nameKey" value="Rererral-Remarks"></s:hidden>
									<s:textfield type="text" cssClass="form-control" id="remarks" name="patientAdditionalProperties[1].propertyValue" placeholder="Remarks" />
								</div>
								
								<%-- <s:if test="patient.id != null">
									<div class="col-md-3 col-sm-3 col-xs-12">
										<s:hidden name="patientAdditionalProperties[2].nameKey" value="Payment"></s:hidden>
										
										<s:textfield type="text" cssClass="form-control" id="remarks" name="patientAdditionalProperties[2].propertyValue" placeholder="Payments" /> 
									</div>
								</s:if> --%>
							</div>

						</div>
						<script>
							document.getElementById('check-referral').onchange = function() {
								document.getElementById('remarks-div').hide = this.checked;
							};
						</script>	

						<hr>
						<div class="form-group">
							<div class="row">
								<div class="col-md-2 col-sm-2 col-xs-12"></div>
								<s:if test="patient.id != null && !patient.id.empty">
									<div class="col-md-3 col-sm-2 col-xs-12">
										<s:submit cssClass="btn btn-warning" value="Update"></s:submit>
									</div>
								</s:if>
								<s:else>
									<%-- <div class="col-md-3 col-sm-3 col-xs-12">
										<s:submit cssClass="btn btn-default" value="Add guardian info"></s:submit>									
									</div> --%>
									<div class="col-md-3 col-sm-3 col-xs-12">
										<s:submit cssClass="btn btn-success" value="Register and Finish"></s:submit>									
									</div>									
								</s:else>
								
							</div>
						</div>
						
					</div>

				</s:form>
				
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


		