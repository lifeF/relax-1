<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title><s:text name="global.application.title" /></title>
<style>
div.scrollmenu {
    background-color:lightgrey;
    overflow: auto;
    white-space: nowrap;
}
div.scrollmenu a {
    display: inline-block;
    color: black;
    text-align: center;
    padding: 14px;
    text-decoration: none;
}
div.scrollmenu a:hover {
    background-color: #777;
}
</style>
<link
	href="<s:url value="/css/dashboard-component.css" 
	includeParams="none"/>"
	rel="stylesheet" type="text/css">

<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
<s:include value="/WEB-INF/content/common/css-loging-include.jsp"></s:include>
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

					<!-- menu profile  -->
					<s:include value="/WEB-INF/content/common/manu_profile.jsp"></s:include>
					<!-- /menu profile -->

					<br />

					<!-- sidebar menu -->
					<s:include value="/WEB-INF/content/common/side-bar.jsp"></s:include>
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
			<div class="right_col" role="main">
				
				<h4>Diagnostic </h4>
				<hr>
				<div class="row">
					<div class="x_panel">
						<div class="scrollmenu">
                
             <s:url var="complaint" action="complaint" namespace="/patient"></s:url>
             <s:a  href="%{#complaint}">Home</s:a>
                          
             <s:url var="past_dental_history" action="past_dental_history" namespace="/patient"></s:url>
             <s:a class="current" href="%{#past_dental_history}">Past Dental History</s:a>
                    
             <s:url var="medical_record" action="medical_record" namespace="/patient"></s:url>
             <s:a  href="%{#medical_record}">Medical Record</s:a>
       
             <s:url var="drug_history" action="drug_history" namespace="/patient"></s:url>
             <s:a  href="%{#drug_history}">Drug History</s:a>
               
             <s:url var="diagnoseform" action="diagnose-form" namespace="/patient"></s:url>
             <s:a href="%{#diagnoseform}">Investigations & Habits</s:a>
               
             <s:url var="plaqueControl" action="plaque_control" namespace="/patient"></s:url>
             <s:a  href="%{#plaqueControl}">Plaque control & Brushing Habits</s:a>
               
               
              <s:url var="dietary_history" action="dietary_history" namespace="/patient"></s:url>
              <s:a href="%{#dietary_history}">Dietary History</s:a>

               
               <a href="#">Hard Tissue Examination</a>
               <a href="#">Occlusal Relationship</a>
               <a href="#">Treatment  Plan</a>
  
</div>
					</div>
				</div>
			</div>

			<!-- /page content -->

			<!-- footer content -->
			<s:include value="/WEB-INF/content/common/footer.jsp"></s:include>
			<!-- /footer content -->
		</div>
	</div>

	<s:include value="/WEB-INF/content/common/js-include-mod.jsp"></s:include>
</body>
</html>



