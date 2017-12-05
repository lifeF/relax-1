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




											<!-- pager -->
											<!-- Tab panel  -->

											<div class="" role="tabpanel "
												data-example-id="togglable-tabs">
												<div class="center text-center ">
													<div id="gender" class="btn-group " data-toggle="buttons">
														<!-- Tab 01  -->

														<label class="btn btn-default active"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default"
															style="padding: 0px;"> <a href="#tab_content1"
															id="tab1" role="tab" data-toggle="tab"
															aria-expanded="true">
																<div style="padding: 6px 20px 6px 20px;">
																	<input type="radio" checked name="gender" value="male"
																		checked="checked"> Active Employee
																</div>

														</a>
														</label>
														<!-- Tab 02  -->
														<label class="btn btn-default"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default"
															style="padding: 0px;"> <a href="#tab_content2"
															role="tab" id="tab2" data-toggle="tab"
															aria-expanded="false">
																<div style="padding: 6px 20px 6px 20px;">
																	<input type="radio" name="gender" value="female">
																	Employee
																</div>
														</a>
														</label>
														<!-- Tab 03  -->
														<label class="btn btn-default"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default"
															style="padding: 0px;"> <a href="#tab_content3"
															role="tab" id="tab3" data-toggle="tab"
															aria-expanded="false">

																<div style="padding: 6px 20px 6px 20px;">
																	<input type="radio" name="gender" value="male">
																	Add Employee
																</div>


														</a>
														</label>
														<!-- Tab 04  -->
														<label class="btn btn-default"
															data-toggle-class="btn-primary"
															data-toggle-passive-class="btn-default"
															style="padding: 0px;"> <a href="#tab_content4"
															role="tab" id="profile-tab2" data-toggle="tab"
															aria-expanded="false">
																<div style="padding: 6px 20px 6px 20px;">
																	<input type="radio" name="gender" value="male">
																	Help
																</div>
														</a>
														</label>


													</div>
												</div>
												<div class="clearfix"></div>
												<hr>

												<!--Tab content  -->
												<div id="myTabContent" class="tab-content col-xs-12 ">
													<!-- Tab one content  -->
													<div role="tabpanel" class="tab-pane fade  in active"
														id="tab_content1" aria-labelledby="home-tab">
														<!-- tab title  -->
														<p class="lead center">ACTIVE EMPLOYEE</p>


														<!--pager  -->
														<s:actionerror cssClass="errorMessage" />

														<s:if
															test="pager != null && pager.list != null && pager.list.size != 0">


															<div class="row">
																<s:iterator value="pager.list" status="rowIndex">

																	<!-- User profile -->
																	<div
																		class="col-md-4 col-sm-4 col-xs-12 profile_details ">
																		<div class="well profile_view ">

																			<div class="col-xs-12">

																				<div class="row">
																					<div class="col-xs-11">
																						<p class="brief">
																							<s:property value="%{id}" />
																							:
																							<s:property value="%{#rowIndex.index + 1}" />
																						</p>
																					</div>

																					<div class="col-xs-1">
																						<a href=""><i
																							class="glyphicon glyphicon-print"> </i> </a>
																					</div>
																				</div>
																				<div class="row">
																					<div class="left col-xs-8">
																						<h2>
																							<s:property value="%{title}" />
																							<s:property value="%{firstName}" />
																						</h2>

																						<ul class="list-unstyled">
																							<li><i class="fa fa-user"></i><span
																								style="font-size: 10px;"> <s:property
																										value="%{userRole}" />
																							</span></li>
																							<li><i class="fa fa-phone"></i> <span
																								style="font-size: 10px;"> Phone #:
																									+94321324324</span></li>

																							<li>
																								<ul class="list-inline prod_color">
																									<li><s:if test="%{status == 1}">
																											<div class="color bg-green"></div>
																										</s:if> <s:else>
																											<div class="color bg-red"></div>
																										</s:else></li>

																								</ul>


																							</li>
																						</ul>
																					</div>

																					<div class="right col-xs-4 text-center  ">

																						<img src="./images/img_male.jpg" alt=""
																							class="img-circle img-responsive s">


																					</div>
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


																</s:iterator>
															</div>


															<div class="text-center bottom">
																<s:include value="/WEB-INF/content/common/pager.jsp"></s:include>
															</div>
														</s:if>
														<s:else>
															<div class="bg-info text-white">No Employee found</div>
														</s:else>

														<!--pager  -->



													</div>
													<!-- Tab two content  -->
													<div role="tabpanel" class="tab-pane fade"
														id="tab_content2" aria-labelledby="profile-tab"></div>

													<!-- Tab three content  -->
													<div role="tabpanel" class="tab-pane fade"
														id="tab_content3" aria-labelledby="profile-tab">
														<!-- Pager -->

														<!--  Pager  -->
													</div>

												</div>

											</div>


											<!--  Tab Panel-->

											<!-- pager -->








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



