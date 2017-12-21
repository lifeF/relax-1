<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<head>
	<link href="<s:url value="/js/jquery.min.js" includeParams="none"/>"
	rel="stylesheet">
	<link href="<s:url value="/js/bootstrap.min.js" includeParams="none"/>"
	rel="stylesheet">	
</head>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
                <li >
                    <s:url var="complaint" action="complaint" namespace="/patient"></s:url>
                    <s:a  href="%{#complaint}">Home</s:a>
                </li>
                <li>
                    <s:url var="medical_record" action="medical_record" namespace="/patient"></s:url>
                    <s:a  href="%{#medical_record}">Medical Record</s:a>
                </li>
                <li>
                    <s:url var="plaqueControl" action="plaque_control" namespace="/patient"></s:url>
                    <s:a  href="%{#plaqueControl}">Plaque control & Brushing Habits</s:a>
                </li>
                <li >
                	<s:url var="diagnoseform" action="diagnose-form" namespace="/patient"></s:url>
                    <s:a href="%{#diagnoseform}">Investigations & Habits</s:a>
                </li>
        <li><a href="#">Hard Tissue Examination</a></li>
        <li><a href="#">Occlusal Relationship</a></li>
        <li><a href="#">Treatment  Plan</a></li>                
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">History<span class="caret"></span></a>
          <ul class="dropdown-menu">
                <li >
                    <s:url var="past_dental_history" action="past_dental_history" namespace="/patient"></s:url>
                    <s:a class="current" href="%{#past_dental_history}">Past Dental History</s:a>
                </li>
                <li>
                    <s:url var="dietary_history" action="dietary_history" namespace="/patient"></s:url>
                    <s:a href="%{#dietary_history}">Dietary History</s:a>
                </li>
               <li class="investigations">
                     <s:url var="drug_history" action="drug_history" namespace="/patient"></s:url>
                    <s:a  href="%{#drug_history}">Drug History</s:a>
                </li>
          </ul>
        </li>

      </ul>
    </div>
  </div>
</nav>

