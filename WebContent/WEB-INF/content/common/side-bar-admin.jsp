

 <!-- sidebar menu -->
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- sidebar menu -->
<div id="sidebar-menu"
	class="main_menu_side hidden-print main_menu">
	<div class="menu_section">
		
		<ul class="nav side-menu">
			<li>
				<s:url var="dashboardUrl" action="ListGetForAdmin.html" namespace="/emp"></s:url>
				<s:a href="%{#dashboardUrl}">
					<i class="fa fa-address-card"></i>Employee Setting
				</s:a>
			</li>
			
			
			
			
			
			
			
			
		</ul>
		
	</div>
</div>
            
<!-- /sidebar menu --> 


