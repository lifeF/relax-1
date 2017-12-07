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

					<div class="row">
						<div class="col-md-3">
							<p>Sugar consumption</p>
						</div>
						<h4 style="color: #27A4CA">
							<div class="col-md-2">
								<label><input type="radio" name="Sugar"> High</label>	
							</div>
							<div class="col-md-2">
								<label><input type="radio" name="Sugar">
									Moderate</label>
							</div>
							<div class="col-md-5">
								<label><input type="radio" name="Sugar"> Low</label>
							</div>

						</h4>
					</div>
					<br>
					<div class="row">
						<div class="col-md-3">
							<p>Frequency of having sugary food/day apart from main
								meals</p>
						</div>
						<div class="col-md-7">
							<input class="input-lg" type="text" name=""
								placeholder="Type here">
						</div>
						<div class="col-md-2"></div>
					</div>
					<br>
					<div class="row">
						<div class="col-md-3">
							<p>Consumption of Beverages</p>
						</div>

						<h4 style="color: #27A4CA">
							<div class="col-md-2">
								<label><input type="checkbox"> Fruit Juices </label>
							</div>
							<div class="col-md-5">
								<label><input type="checkbox"> Carbonic Drinks</label>
						</h4>

						<div class="col-md-2"></div>
					</div>
					<br>
					<br>
					<div class="row">
						<div class="col-md-3">
							<p>Other Comments</p>
						</div>
						<div class="col-md-7">
							<input class="input-lg" type="text" name=""
								placeholder="Type here">
						</div>
						<div class="col-md-2"></div>
					</div>

				</div>

			</div>
			<!-- /page content -->

		</div>
	</div>

	<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>

	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

</body>
</html>


