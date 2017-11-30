

 <!-- sidebar menu -->
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- sidebar menu -->
<div id="sidebar-menu"
	class="main_menu_side hidden-print main_menu">
	<div class="menu_section">
		<h3><s:text name="global.menu.module"></s:text> </h3>
		<ul class="nav side-menu">
			<li>
				<s:url var="dashboardUrl" action="dashboard.html" namespace="/"></s:url>
				<s:a href="%{#dashboardUrl}">
					<i class="fa fa-home"></i>Dashboard
				</s:a>
			</li>
			<li>
				<s:url var="registrationFormUrl" action="registration-form.html" namespace="/patient"></s:url>
				<s:a href="%{#registrationFormUrl}">
					<i class="fa fa-address-card"></i>Registration
				</s:a>
			</li>
			<li><a><i class="fa fa-users"></i> Patients</a>
			<li><a><i class="fa fa-address-book"></i> Departments</a>
			<li>
			
				<s:url var="reportDashboardUrl" action="dashboard.html" namespace="/report"></s:url>
				<s:a href="%{#reportDashboardUrl}">
					<i class="fa fa-bar-chart-o"></i>Report
				</s:a>
				
			<li><a><i class="fa fa-users"></i>Users</a>
			<li><a><i class="fa fa-medkit"></i>ICU</a>
			<li><a><i class = " fa fa-pie-chart "></i>Diagnostic</a>
			
			
			
			
			
			
		</ul>
	</div>
</div>
            
<!-- /sidebar menu --> 


