<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
	<!--<link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">-->
	<link rel="stylesheet" href="Bootstrap\css\bootstrap.min.css" type="text/css">
	<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
	<title><s:text name="global.application.title" /></title>
	<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>

			<!-- page content -->
			<div class="right_col" role="main" style="margin-bottom:40px;">

				<!-- New section -->
				<div class="py-4">
				<!-- form start -->
				
					<div class="row">
						<div class="col-xs-12 col-sm-3 col-md-3" id="Investigation">
							<h1 class="">Investigation</h1>
								<div class="row">
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">Blood Pressure</p>										
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
											<s:property value="%{investigation.bloodPressure}"/>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">Bedding time</p>										
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
											<div class="form-group" style="margin-bottom: 3px;margin-top: 3px"> 
												<s:property value="%{investigation.beddingTime}"/>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">Clotting time</p>										
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
											<div class="form-group" style="margin-bottom: 3px"> 
												<s:property value="%{investigation.clottingTime}"/>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">Prothrombin time</p>										
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
												<div class="form-group" style="margin-bottom: 3px"> 
													<s:property value="%{investigation.prothrombinTime}"/>
												</div>
										</div>
									</div>
									

									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">FBC</p>
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7"> 
											<s:property value="%{investigation.fbc}"/>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">FBS</p>
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
											<s:property value="%{investigation.fbs}"/>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">RBS</p>
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
											<s:property value="%{investigation.rbs}"/>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">PPBS</p>
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
											<s:property value="%{investigation.ppbs}"/>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">HBA1C</p>
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
											<s:property value="%{investigation.hba1c}"/>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">INR</p>
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
											<s:property value="%{investigation.inr}"/>
										</div>
									</div>
									<div class="row">
										<div class="col-xs-5 col-sm-5 col-md-5">
											<p class="">Liver Enzymes</p>
										</div>
										<div class="col-xs-7 col-sm-7 col-md-7">
											<s:property value="%{investigation.liver}"/>
										</div>
									</div>





								
								</div>
						</div>
						<div class="col-xs-12 col-sm-9  col-md-9" id="Habit">
							<h1 class="">Habits</h1>
							<div class="form-group required">
								<div class="row">
									<div class="col-md-1 col-sm-1 col-xs-12"> <label class="control-label" for="name">Smoke:</label> </div>
									<div class="col-md-1 col-sm-5 col-xs-5">
										<s:property value="%{investigation.smoke}"/>
									</div>
									<div class="col-md-2 col-sm-5 col-xs-7">
										<div class="form-check"> <label class="form-check-label">
											Cigarettes : <s:property value="%{investigation.cigarettes}"/>
										</label> </div>
										<div class="form-check"> <label class="form-check-label">
											Cigar : <s:property value="%{investigation.cigar}"/>
										</label> </div>
										<div class="form-check"> <label class="form-check-label">
											Beedi : <s:property value="%{investigation.beedi}"/>
										</label> </div>
										<div class="form-check"> <label class="form-check-label">
											Pipe : <s:property value="%{investigation.pipe}"/>
										</label> </div>
										<div class="form-check"> <label class="form-check-label">
											Roll Up : <s:property value="%{investigation.rollUp}"/>
										</label> </div>
									</div>
									<div class="col-md-2 col-sm-1 col-xs-12">
										<br>
										Duration : <s:property value="%{investigation.smokeDuration}"/>
									 </div>
									</div>
								</div>
								<div class="form-group required">
									<div class="row">
										<div class="col-md-1 col-sm-1 col-xs-12"> <label class="control-label" for="name">Betel Quid:</label> </div>
										<div class="col-md-1 col-sm-1 col-xs-12"> <label class="control-label" for="name">Ingredients:</label> </div>
										<div class="col-md-2 col-sm-4 col-xs-12">
											<div class="form-check"> <label class="form-check-label">
												Betel : <s:property value="%{investigation.betel}"/>
											</label> </div>
											<div class="form-check"> <label class="form-check-label">
												Tobacco :<s:property value="%{investigation.tobacco}"/> 
											</label> </div>
											<div class="form-check"> <label class="form-check-label">
												Arecanut : <s:property value="%{investigation.arecanut}"/>
											</label> </div>
										</div>
										<div class="col-md-2 col-sm-4 col-xs-12">
											<div class="form-check"> <label class="form-check-label">
												Lime :<s:property value="%{investigation.lime}"/>
											</label> </div>
											<div class="form-check"> <label class="form-check-label">
												Commercial Areca Products : <s:property value="%{investigation.cArecanut}"/>
											</label> </div>
											<div class="form-check"> <label class="form-check-label">
												Commercical Tobacco Products :<s:property value="%{investigation.cTobacco}"/> 
											</label> </div>
										</div>
										<div class="col-md-3 col-sm-4 col-xs-12">
											<div class="form-check"> <label class="form-check-label">
												Other : <s:property value="%{investigation.otherBetel}"/>
												
											</label> </div>
										</div>
										<div class="col-md-3 col-sm-2 col-xs-12">
											Duration : <s:property value="%{investigation.betelDuration}"/>
											<br> <label class="control-label" for="name">Frequency:</label>
											<s:property value="%{investigation.betelFrequency}"/> </div>
										</div>
									</div>
									<div class="form-group required">
										<div class="row">
											<div class="col-md-1 col-sm-1 col-xs-12"> <label class="control-label" for="name">Alcohol:</label> </div>
											<div class="col-md-3 col-sm-5 col-xs-12">
												<s:property value="%{investigation.alcohol}"/>
											</div>
											<div class="col-md-2 col-sm-5 col-xs-12">
												<div class="form-check"> <label class="form-check-label">
													Spirits : <s:property value="%{investigation.spirits}"/>
												</label> </div>
												<div class="form-check"> <label class="form-check-label">
													Wine : <s:property value="%{investigation.wine}"/>
												</label> </div>
												<div class="form-check"> <label class="form-check-label">
													Beer : <s:property value="%{investigation.beer}"/>
												</label> </div>
												<div class="form-check"> <label class="form-check-label">
													Local Brews : <s:property value="%{investigation.localBrews}"/>
												</label> </div>
											</div>
											<div class="col-md-2 col-sm-1 col-xs-12">
												<br>
												Duration : <s:property value="%{investigation.alcoholDuration}"/>
										 	</div>
											</div>
										</div>
									</div>
					</div>
					
				
				<!-- form end -->
				</div>
				<!-- <div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6">
						
						<button type="button" class="btn btn-primary btn-lg">Back</button>
						
					</div>
					<div class="col-md-6 col-sm-6 col-xs-6">
						
						<button type="button" class="btn btn-primary btn-lg">Next</button>
							
					</div>
				</div> -->
			</div>




				<!-- end new section -->

		</div>
		<!-- /page content -->

	</div>
							
	<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>
</body>

</html>