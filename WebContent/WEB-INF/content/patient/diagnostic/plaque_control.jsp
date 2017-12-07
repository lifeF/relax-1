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
<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
<link href="<s:url value="/css/diagnostic.css" includeParams="none"/>"
	rel="stylesheet" type="text/css">
<link href="<s:url value="/css/menubar.css" includeParams="none"/>"
	rel="stylesheet" type="text/css">

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>

			<div class="row"></div>

			<!-- page content -->
			<div class="right_col" role="main" style="margin-bottom:40px;">

				<s:include
					value="/WEB-INF/content/patient/diagnostic/common/navbar.jsp"></s:include>

				<div class="containerbody" style="overflow-y: scroll; height:500px;">

					<div class="col-sm-6">

						<div class="row">

							<div class="col-sm-4 col-xs-12">
								<p>Tooth Brushing tool</p>
							</div>

							<div class="col-sm-8 col-xs-12">
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Tooth
										Brush -Manual</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Tooth
										Brush -Electric</label>
								</div>

								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"> Other</label> <input type="text"
										style="width: 100%">
								</div>
							</div>

						</div>

						<div class="row">

							<div class="col-sm-4 col-xs-12">
								<p>Frequency of brushing</p>
							</div>

							<div class="col-sm-8 col-xs-12">
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Once
										a day</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Less
										than Once a Day</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Twice
										a day</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Thrice
										a day</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">>3
										times a day</label>
								</div>
							</div>

						</div>

						<div class="row">

							<div class="col-sm-4 col-xs-12">
								<p>Bristles</p>
							</div>

							<div class="col-sm-8 col-xs-12">
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Hard</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Medium</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Soft</label>
								</div>

							</div>

						</div>

					</div>

					<div class="col-sm-6">
						<div class="row">

							<div class="col-sm-4 col-xs-12">
								<p>Duration of brushing</p>
							</div>

							<div class="col-sm-8 col-xs-12">
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">?1
										min</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">1-3
										min</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">>3
										min</label>
								</div>

							</div>

						</div>

						<div class="row">

							<div class="col-sm-4 col-xs-12">
								<p>Dentifrices/Tooth pastes</p>
							</div>

							<div class="col-sm-8 col-xs-12">
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Fluoridated</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Non-fluoridated</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"> Other</label> <input type="text"
										style="width: 100%">
								</div>

							</div>

						</div>

						<div class="row">

							<div class="col-sm-6 col-xs-12">
								<p>Use of Interdental/supplementary cleaning aids</p>
							</div>

							<div class="col-sm-6 col-xs-12">
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Floss</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Bottle-brushes</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Single-tufted
										TB</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Single-tufted
										TB</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Wood
										picks</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"><input type="checkbox" value="">Irrigators</label>
								</div>
								<div class="col-sm-12 col-xs-12">
									<label class="checkbox"> Other</label> <input type="text"
										style="width: 100%">
								</div>

							</div>

						</div>
					</div>


				</div>


			</div>
		</div>

	</div>


	<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>

	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

</body>
</html>


