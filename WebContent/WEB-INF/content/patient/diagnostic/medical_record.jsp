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
        tablinks[i].className = tablinks[i].className.replace(" active", "");
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
			<div class="right_col" role="main" style="margin-bottom:40px;">

				<s:include
					value="/WEB-INF/content/patient/diagnostic/common/navbar.jsp"></s:include>

				<div  class="container">

					<div class="tab">
						<button class="tablinks" onclick="openCity(event, 'London')">FirstPage</button>
						<button class="tablinks" onclick="openCity(event, 'Paris')">SecondPage</button>
						<button class="tablinks" onclick="openCity(event, 'Tokyo')">ThirdPage</button>
						<button class="tablinks" onclick="openCity(event, 'Fourth')">FourthPage</button>
					</div>

					<div id="London" class="tabcontent" style="overflow-y: scroll; height:500px;">

						<div class="containerbody">
							<div class="row">
								<div class="col-sm-3">
									<p>Allergies</p>
								</div>
								<div class="col-sm-3">
									<h4>Drug</h4>
								</div>

								<div class="col-sm-3">
									<label class="checkbox"><input type="checkbox" value="">
										Penicillin / Amoxicillin</label> <label class="checkbox"><input
										type="checkbox" value=""> Paracetamol</label> <label
										class="checkbox"><input type="checkbox" value="">
										NSAIDS</label> <label class="checkbox"><input type="checkbox"
										value=""> Aspirin</label> <input type="text"
										class="form-control" id="usr0" placeholder="Other">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-3">
									<h4>Food</h4>
								</div>

								<div class="col-sm-3">
									<label class="checkbox"><input type="checkbox" value="">
										Pineapple</label> <label class="checkbox"><input
										type="checkbox" value=""> Tomatoes</label> <label
										class="checkbox"><input type="checkbox" value="">
										Canned fish</label> <input type="text" class="form-control" id="usr1"
										placeholder="Other">
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-3">
									<h4>Latex/Rubber</h4>
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="usr2"
										placeholder="Other">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-3">
									<h4>Other</h4>
								</div>

								<div class="col-sm-3">
									<input type="text" class="form-control" id="usr3"
										placeholder="Other">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3">
									<p>Anaemia</p>
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="usr3"
										placeholder="Type here">
								</div>
							</div>


						</div>

					</div>

					<div id="Paris" class="tabcontent" class="tabcontent" style="overflow-y: scroll; height:500px;">
						<div class="containerbody">

							<div class="row">
								<div class="col-sm-3">
									<p>Asthma</p>
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="usr3"
										placeholder="Type here">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3">
									<p>Bleeding Disorders</p>
								</div>
								<div class="col-sm-3">
									<label class="checkbox"><input type="checkbox" value="">
										Haemophilia</label>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3">
									<p>Cardiac Disorders</p>
								</div>
								<div class="col-sm-3">
									<label class="checkbox"><input type="checkbox" value="">
										Angina</label>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-3">
									<label>Valvular problems</label>
								</div>

								<div class="col-sm-3">
									<label>Indication for SABE prophylaxis</label>
								</div>

								<div class="col-sm-3">
									<form>

										<div class="radio-inline radio-info">
											<label><input type="radio" name="optradio4">
												Yes </label>
										</div>

										<div class="radio-inline radio-info">
											<label><input type="radio" name="optradio4">
												No </label>
										</div>


									</form>
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-3">
									<label>Rheumatic carditis</label>
								</div>

								<div class="col-sm-3">
									<label>Regular Oral penicillin?</label>
								</div>

								<div class="col-sm-3">
									<form>

										<div class="radio-inline radio-info">
											<label><input type="radio" name="optradio5">
												Yes </label>
										</div>

										<div class="radio-inline radio-info">
											<label><input type="radio" name="optradio6">
												No </label>
										</div>


									</form>
								</div>
							</div>


							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-3">
									<label>Prosthetic heart valve</label>
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="usr3"
										placeholder="Type here">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-3">
									<label>Pacemaker</label>
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="usr4"
										placeholder="Type here">
								</div>
							</div>

							<div class="row">
								<div class="col-sm-3"></div>
								<div class="col-sm-3">
									<label>Other</label>
								</div>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="usr5"
										placeholder="Other">
								</div>
							</div>
							<b>
						</div>

					</div>
				</div>

				<div id="Tokyo" class="tabcontent" class="tabcontent" style="overflow-y: scroll; height:500px;">

					<div class="row">

						<div class="col-sm-6">

							<div class="containerbody">
								<div class="row">

									<div class="col-sm-4 col-xs-12 col-md-6">
										<p>Developmental</p>
									</div>

									<div class="col-sm-8 col-xs-12 col-md-6">
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Cleft Lip/Palate</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Cerebral Palsy</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Syndromic</label>
										</div>

									</div>

								</div>

								<div class="row">
									<div class="col-sm-4 col-xs-12">
										<p>Epilepsy</p>
									</div>
									<div class="col-sm-4"></div>
									<div class="col-sm-4"></div>
								</div>

								<div class="row">

									<div class="col-sm-4 col-xs-12">
										<p>Endocrine</p>
									</div>

									<div class="col-sm-8 col-xs-12">
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Diabetes</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Hypothyroidism</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Hyperthyroidism</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"> Other</label> <input type="text"
												style="width: 100%">
										</div>
									</div>

								</div>

								<div class="row">

									<div class="col-sm-4 col-xs-12">
										<p>Gastro-intestinal</p>
									</div>

									<div class="col-sm-8 col-xs-12">
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Ulcers</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Gastric reflux</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"> Other</label> <input type="text"
												style="width: 100%">
										</div>
									</div>

								</div>
							</div>
						</div>

						<div class="col-sm-6">
							<div class="containerbody">

								<div class="row">

									<div class="col-sm-4 col-xs-12 ">
										<p>Hepatitis</p>
									</div>

									<div class="col-sm-8 col-xs-12">
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Hep A</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Hep B</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Hep C</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Other</label>
										</div>
									</div>
								</div>

								<div class="row">

									<div class="col-sm-4 col-xs-12 ">
										<p>Musculo-skeletal</p>
									</div>

									<div class="col-sm-8 col-xs-12">
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Arthritis</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Joint replacement</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Hep C</label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value=""> Other</label>
										</div>
									</div>
								</div>

								<div class="row">

									<div class="col-sm-4 col-xs-12 ">
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value="">
											<p>HIV</p></label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value="">
											<p>Hypertension</p></label>
										</div>
										<div class="col-sm-12 col-xs-12">
											<label class="checkbox"><input type="checkbox"
												value="">
											<p>Other</p></label>
										</div>
									</div>

									<div class="col-sm-8 col-xs-12"></div>


								</div>

							</div>
						</div>

					</div>
				</div>

				<div id="Fourth" class="tabcontent" class="tabcontent" style="overflow-y: scroll; height:500px;">
					<div class="containerbody">
	
						<div class="col-sm-6">
						
							<div class="row">
	
								<div class="col-sm-5 col-xs-12 ">
									<p>Neurological Disorders</p>
								</div>
	
								<div class="col-sm-7 col-xs-12">
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">Migraine</label>
									</div>
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">Neuralgic
											Pain</label>
									</div>
								</div>
							</div>
	
							<div class="row">
	
								<div class="col-sm-4 col-xs-12 ">
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">
										<p>Psychiatric/Behavioral disorders</p></label>
									</div>
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">
										<p>TMD</p></label>
									</div>
								</div>
	
								<div class="col-sm-8 col-xs-12"></div>
	
	
							</div>
	
						</div>
						
						<div class="col-sm-6">
	
							<div class="row">
	
								<div class="col-sm-4 col-xs-12">
									<p>Renal Disorders
									</p>
								</div>
	
								<div class="col-sm-8 col-xs-12">
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">Chronic
											infections</label>
									</div>
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">Kidney
											failure</label>
									</div>
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">Transplant</label>
									</div>
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"> Other</label> <input type="text"
											style="width: 100%">
									</div>
								</div>
	
							</div>
	
	
							<div class="row">
	
								<div class="col-sm-5 col-xs-12 ">
									<p>Pregnancy</p>
								</div>
	
								<div class="col-sm-7 col-xs-12">
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">1st
											Trimester</label>
									</div>
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">2nd
											Trimester</label>
									</div>
									<div class="col-sm-12 col-xs-12">
										<label class="checkbox"><input type="checkbox" value="">3rd
											Trimester</label>
									</div>
									<div class="col-sm-8 col-xs-12">
	
										<div class="col-sm-8">
											<label>On hormonal contraceptives</label>
										</div>
										<div class="col-sm-4">
											<div class="col-sm-12 col-xs-12">
												<label class="checkbox"><input type="checkbox"
													value="">Pills</label>
											</div>
											<div class="col-sm-12 col-xs-12">
												<label class="checkbox"><input type="checkbox"
													value="">Injections</label>
											</div>
											<div class="col-sm-12 col-xs-12">
												<label class="checkbox"><input type="checkbox"
													value="">Contraceptive implants</label>
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

	</div>



	<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>

	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

</body>
</html>


