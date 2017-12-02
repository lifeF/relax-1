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
					<%-- <s:include value="/WEB-INF/content/common/side-bar.jsp"></s:include> --%>
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
			<!-- /page content -->
			<div class="right_col" role="main">
				<div class="">


					<div class="clearfix"></div>

					<div class="row">
						<div class="col-md-12">
							<div class="x_panel">
								<div class="x_content">
									<div class="row">

										<div class="col-md-12 col-sm-12 col-xs-12 ">


											<!-- Tab panel  -->

											<div class="" role="tabpanel"
												data-example-id="togglable-tabs">
												<div class="center text-center">
													<div id="gender" class="btn-group" data-toggle="buttons">
														<!-- Tab 01  -->

														<label class="btn btn-default active"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default"
															style="padding: 0px;"> <a href="#tab_content1"
															id="home-tab" role="tab" data-toggle="tab"
															aria-expanded="true">
																<div style="padding: 6px 20px 6px 20px;">
																	<input type="radio" checked name="gender" value="male"
																		checked="checked"> Doctor
																</div>

														</a>
														</label>
														<!-- Tab 02  -->
														<label class="btn btn-default"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default"
															style="padding: 0px;"> <a href="#tab_content2"
															role="tab" id="profile-tab" data-toggle="tab"
															aria-expanded="false">
																<div style="padding: 6px 20px 6px 20px;">
																	<input type="radio" name="gender" value="female">
																	Nurse
																</div>
														</a>
														</label>
														<!-- Tab 03  -->
														<label class="btn btn-default"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default"
															style="padding: 0px;"> <a href="#tab_content3"
															role="tab" id="profile-tab2" data-toggle="tab"
															aria-expanded="false">
																<div style="padding: 6px 20px 6px 20px;">
																	<input type="radio" name="gender" value="male">
																	Admin
																</div>
														</a>
														</label>

													</div>
												</div>
												<div class="clearfix"></div>
												<hr>

												<!--Tab content  -->
												<div id="myTabContent" class="tab-content">
													<!-- Tab one content  -->
													<div role="tabpanel" class="tab-pane fade active in"
														id="tab_content1" aria-labelledby="home-tab">
														<!-- tab title  -->
														<p class="lead center">Doctor</p>


														<!-- User profile -->
														<div class="col-md-4 col-sm-4 col-xs-12 profile_details">
															<div class="well profile_view">
																<div class="col-sm-12">

																	<div class="row">
																		<div class="col-xs-11">
																			<p class="brief">
																				<i>ID</i>
																			</p>
																		</div>

																		<div class="col-xs-1">
																			<a href=""><i class="glyphicon glyphicon-print">
																			</i></a>
																		</div>
																	</div>

																	<div class="left col-xs-7">
																		<h2>Dr. Bandara</h2>
																		<p>
																			<strong>About: </strong> Text
																		</p>
																		<ul class="list-unstyled">
																			<li><i class="fa fa-building"></i> Address: <span>address</span></li>
																			<li><i class="fa fa-phone"></i> Phone #: <span>+94321324324</span>
																			</li>

																			<li>
																				<ul class="list-inline prod_color">
																					<li>

																						<div class="color bg-green"></div>
																					</li>

																				</ul>


																			</li>
																		</ul>
																	</div>
																	<div class="right col-xs-5 text-center">
																		<img src="./images/img.jpg" alt=""
																			class="img-circle img-responsive">
																	</div>
																</div>

																<div class="col-xs-12 bottom text-center">

																	<div class="col-xs-12 col-sm-7 emphasis">
																		<div class="row">

																			<button type="button" class="btn btn-success btn-xs">
																				<i class="fa fa-user"> </i> Set state
																			</button>

																			<button type="button" class="btn btn-primary btn-xs">
																				<i class="fa fa-user"> </i> View Profile
																			</button>

																		</div>



																	</div>
																</div>

															</div>
														</div>
														<!--User   profile -->


													</div>
													<!-- Tab two content  -->
													<div role="tabpanel" class="tab-pane fade"
														id="tab_content2" aria-labelledby="profile-tab"></div>
													<!-- Tab three content  -->
													<div role="tabpanel" class="tab-pane fade"
														id="tab_content3" aria-labelledby="profile-tab">
														<!-- Pager -->
														<s:actionerror cssClass="errorMessage" />

														<s:if
															test="pager != null && pager.list != null && pager.list.size != 0">

															<div class="x_panel">
																<s:iterator value="pager.list" status="rowIndex">

																	<!-- User profile -->
																	<div
																		class="col-md-4 col-sm-4 col-xs-12 profile_details">
																		<div class="well profile_view">
																			<div class="col-sm-12">

																				<div class="row">
																					<div class="col-xs-11">
																						<p class="brief">
																							<s:property value="%{id}" />
																						</p>
																					</div>

																					<div class="col-xs-1">
																						<a href=""><i
																							class="glyphicon glyphicon-print"> </i></a>
																					</div>
																				</div>

																				<div class="left col-xs-7">
																					<h2><s:property
																				value="%{title}" /> <s:property
																				value="%{firstName}" /></h2>
																					
																					<ul class="list-unstyled">
																						<li ><i class="fa fa-user"></i><span style="font-size:10px;"> <s:property value="%{userRole}" /> </span></li>
																						<li><i class="fa fa-phone"></i> Phone #: <span>+94321324324</span>
																						</li>

																						<li>
																							<ul class="list-inline prod_color">
																								<li>

																									<div class="color bg-green"></div>
																								</li>

																							</ul>


																						</li>
																					</ul>
																				</div>
																				<div class="right col-xs-5 text-center">
																					<img src="./images/img.jpg" alt=""
																						class="img-circle img-responsive">
																				</div>
																			</div>

																			<div class="col-xs-12 bottom text-center">

																				<div class="col-xs-12 col-sm-7 emphasis">
																					<div class="row">

																						<button type="button"
																							class="btn btn-success btn-xs">
																							<i class="fa fa-user"> </i> Set state
																						</button>

																						<button type="button"
																							class="btn btn-primary btn-xs">
																							<i class="fa fa-user"> </i> View Profile
																						</button>

																					</div>



																				</div>
																			</div>

																		</div>
																	</div>
																	<!--User   profile -->
																	
																	<%-- <s:property
																				value="%{pager.start + #rowIndex.index + 1}" />
																		
																		
																		<s:property value="nic" />
																		
																		<td><s:property value="%{surname}" /> <s:property
																				value="%{initials}" /> (<s:property
																				value="%{title}" />, <s:property
																				value="%{firstName}" /> )</td>
																		
																		<td><s:property value="sex" /></td>
																		<td><s:date name="dateOfBirth" nice="true" /></td>
																		
																		<td><s:property value="address" /></td>
																		<td><s:url var="patientViewUrl"
																				namespace="/patient" action="view.html">
																				<s:param value="%{id}" name="id"></s:param>
																			</s:url> <s:a href="%{#patientViewUrl}"
																				cssClass="btn btn-xs btn-primary" role="button">View</s:a>
																			<s:url var="patientEditUrl" namespace="/patient"
																				action="edit">
																				<s:param name="id" value="%{id}"></s:param>
																			</s:url> <s:a href="%{#patientEditUrl}"
																				cssClass="btn btn-xs btn-warning">Edit</s:a> <s:url
																				var="printA4Url" namespace="/patient"
																				action="information-pdf">
																				<s:param name="id" value="%{id}"></s:param>
																			</s:url> <s:a href="%{#printA4Url}"
																				cssClass="btn btn-xs btn-success" target="_blank">
																				<span class="glyphicon glyphicon-print">A4</span>
																			</s:a> <s:url var="printStickerUrl" namespace="/patient"
																				action="sticker-pdf">
																				<s:param name="id" value="%{id}"></s:param>
																			</s:url> <s:a href="%{#printStickerUrl}"
																				cssClass="btn btn-xs btn-success" target="_blank">
																				<span class="glyphicon glyphicon-barcode"></span>
																				<span class="glyphicon glyphicon-print"></span>
																			</s:a></td> --%>

																</s:iterator>
															</div>

															<div class="text-center">
																<s:include value="/WEB-INF/content/common/pager.jsp"></s:include>
															</div>
														</s:if>
														<s:else>
															<div class="bg-info text-white">No patients found</div>
														</s:else>
														
														<!--  Pager  -->
													</div>

												</div>

											</div>


											<!--  Tab Panel-->

											<!-- pager -->


											<!-- pager -->








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
			©2017 All Rights Reserved. <a>Faculty of Dental Science.</a> Privacy
			and Terms
		</div>
		<div class="clearfix"></div>
	</footer>
	<!-- /footer content -->
	</div>
	</div>

	<s:include value="/WEB-INF/content/common/js-include-mod.jsp"></s:include>
</body>
</html>



