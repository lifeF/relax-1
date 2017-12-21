
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

<script>
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}
</script>

</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>

			<div class="row"></div>

			<!-- page content -->
			<div class="right_col" role="main" style="margin-bottom: 40px;">

				<s:include
					value="/WEB-INF/content/patient/diagnostic/common/navbar.jsp"></s:include>

				<div class="container">



					<div class="tab">
						<button class="tablinks" onclick="openCity(event, 'London')">FirstPage</button>
						<button class="tablinks" onclick="openCity(event, 'Paris')">SecondPage</button>
					</div>

					<div id="London" class="tabcontent"
						style="overflow-y: scroll; height: 500px;">
						<div class="containerbody">

							<div class="row">

								<label class="col-sm-2"><p>Anticoagulants</p></label>
								<div class="col-sm-2">
									<input type="checkbox" name="Warfarin" value="Warfarin">Warfarin<br>
								</div>
								<div class="col-sm-4">
									<input type="text" name="Dose_Warfarin"
										placeholder="Dose Regime"><br>
								</div>
								<div class="col-sm-4">
									<input type="text" name="Duration_Warfarin"
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>
							<div class="row">

								<div class="col-sm-2"></div>
								<div class="col-sm-2">
									<input type="checkbox" name="Clopidogrel" value="Clopidogrel">Clopidogrel<br>
								</div>
								<div class="col-sm-4">
									<input type="text" name="Dose_Clopidogrel"
										placeholder="Dose Regime"><br>
								</div>
								<div class="col-sm-4">
									<input type="text" name="Duration_Clopidogrel"
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>
							<div class="row">

								<div class="col-sm-2"></div>
								<div class="col-sm-2">
									<input type="checkbox" name="Aspirin" value="Aspirin">Aspirin<br>
								</div>
								<div class="col-sm-4">
									<input type="text" name="Dose_Aspirin"
										placeholder="Dose Regime"><br>
								</div>
								<div class="col-sm-4">
									<input type="text" name="Duration_Aspirin"
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>

							<div class="row">

								<div class="col-sm-2"></div>
								<div class="col-sm-2">
									<input type="checkbox" name="Other" value="Other">Other<br>
								</div>

								<div class="col-sm-4">
									<input type="text" id="text1" name="Comments"
										placeholder="Type if any other comments">
								</div>

								<div class="col-sm-4">
									<input type="text" name="Duration_Other" placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select>
								</div>

							</div>

							<div class="row">

								<label class="col-sm-3"><p>Antidiabetes</p></label>
								<div class="col-sm-3">
									<input type="text" name="Antidiabetes"
										placeholder="Antidiabetes"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Dose_Antidiabetes"
										placeholder="Dose Regime"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Duration_Antidiabetes"
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>

							<div class="row">

								<label class="col-sm-3"><p>Anti Epileptic</p></label>
								<div class="col-sm-3">
									<input type="text" name="Anti Epileptic"
										placeholder="Anti Epileptic"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Dose_AntiEpileptic"
										placeholder="Dose Regime"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Duration_AntiEpileptic"
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>
						</div>
					</div>
					<div id="Paris" class="tabcontent"
						style="overflow-y: scroll; height: 500px;">

						<div class="containerbody">
							<div class="row">

								<label class="col-sm-3"><p>Antihypertensives</p></label>
								<div class="col-sm-3">
									<input type="text" name="Antihypertensivesc"
										placeholder="Antihypertensivesc"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Dose_Antihypertensives"
										placeholder="Dose Regime"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Duration_Antihypertensives"
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>

							<div class="row">

								<label class="col-sm-3"><p>NSAIDS</p></label>
								<div class="col-sm-3">
									<input type="text" name="NSAIDS" placeholder="NSAIDS"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Dose_NSAIDS" placeholder="Dose Regime"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Duration_NSAIDS"
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>

							<div class="row">

								<label class="col-sm-3"><p>Steroids</p></label>
								<div class="col-sm-3">
									<input type="text" name="Steroids " placeholder="Steroids "><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Dose_Steroids "
										placeholder="Dose Regime"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Duration_Steroids "
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>

							<div class="row">

								<label class="col-sm-3"><p>Chemotherapy</p></label>
								<div class="col-sm-3">
									<input type="text" name="Chemotherapy  "
										placeholder="Chemotherapy  "><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Dose_Chemotherapy  "
										placeholder="Dose Regime"><br>
								</div>
								<div class="col-sm-3">
									<input type="text" name="Duration_Chemotherapy  "
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>

							<div class="row">

								<label class="col-sm-3"><p>Radiation therapy</p></label>
								<div class="col-sm-3">
									<input type="text" name="Duration_RadiationTherapy  "
										placeholder="Duration">&nbsp<select>
										<option value="days">days</option>
										<option value="weeks">weeks</option>
										<option value="months">months</option>
										<option value="years">years</option>
									</select><br>
								</div>
							</div>

							<div class="row">

								<label class="col-sm-3">Others</label>
								<div class="col-sm-8">
									<input type="text" id="text2" name="Others"
										placeholder="Type if any other details"><br>
								</div>

							</div>
							


						</div>

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


