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
	                        <div class="col-sm-3">
	
	                            <p>Extraction:</p>
	                        </div>
	
	                        <div class="col-sm-3">
	                            <form>
	
	                                <div class="radio radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        Yes
	                                        </label>
	                                </div>
	
	                                <div class="radio radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        No
	                                        </label>
	                                </div>
	
	
	                            </form>
	
	                        </div>
	
	                        <div class="col-sm-3">
	                            <p>Complications :</p>
	                        </div>
	
	                        <div class="col-sm-3">
	                            <form>
	
	                                <div class="radio radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        Yes
	                                        </label>
	                                </div>
	
	                                <div class="radio radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        No
	                                        </label>
	                                </div>
	
	
	                            </form>
	
	                        </div>
	
	
	                    </div>
	
	                    <div class="row">
	                        <div class="col-sm-3">
	                            <p>Other Minor/Major Oral Surgery?</p>
	                        </div>
	
	                        <div class="col-sm-3">
	                            <form>
	
	                                <div class="radio-inline radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        Yes
	                                        </label>
	                                </div>
	
	                                <div class="radio-inline radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        No
	                                        </label>
	                                </div>
	
	
	                            </form>
	
	                        </div>
	
	
	                    </div>
	
	
	                    <div class="row">
	                        <div class="col-sm-3">
	                            <p>Periodontal Rx?</p>
	                        </div>
	
	                        <div class="col-sm-3">
	                            <form>
	                                <div class="radio-inline radio-info">
	                                    <label><input type="radio" name="optradio2">
	                                        No
	                                        </label>
	                                </div>
	
	                                <div class="radio-inline radio-info">
	                                    <label><input type="radio" name="optradio2">
	                                        Yes
	                                        </label>
	                                </div>
	                            </form>
	                        </div>
	                        <div class="col-sm-3">
	
	                            <select class="form-control" name="mal">
	                                <option value="select1">Scaling</option>
	                                <option value="select2">Root Debridement</option>
	                                <option value="select3">Surgical Perio Rx</option>
	                                <option value="select4">Maintenance Care</option>
	                            </select>
	
	                        </div>
	                    </div>
	
	                    <div class="row">
	                        <div class="col-sm-3">
	                            <p>Orthodontic Treatment :</p>
	                        </div>
	
	                        <div class="col-sm-3">
	                            <br>
	                            <form>
	
	                                <div class="radio-inline radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        Yes
	                                        </label>
	                                </div>
	
	                                <div class="radio-inline radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        No
	                                        </label>
	                                </div>
	
	
	                            </form>
	
	                        </div>
	
	
	                    </div>
	
	
	                    <div class="row">
	                        <div class="col-sm-3"></div>
	                        <div class="col-sm-3">
	                            Complications:
	                        </div>
	
	                        <div class="col-sm-3">
	                            <input type="text" class="form-control" id="usr"
	                                   placeholder="Type here">
	                        </div>
	
	
	                    </div>
	
	
	                    <div class="row">
	                        <div class="col-sm-3">
	                            <p>Restorative Rx/Prosthesis?</p>
	                        </div>
	
	                        <div class="col-sm-3">
	                            <br>
	                            <form>
	
	                                <div class="radio-inline radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        Yes
	                                        </label>
	                                </div>
	
	                                <div class="radio-inline radio-info">
	                                    <label><input type="radio" name="optradio">
	                                        No
	                                        </label>
	                                </div>
	
	
	                            </form>
	
	                        </div>
	
	
	                    </div>
	
	                    <div class="row">
	                        <div class="col-sm-3"></div>
	                        <div class="col-sm-3">
	                            Complications:
	                        </div>
	
	                        <div class="col-sm-3">
	                            <input type="text" class="form-control" id="usr"
	                                   placeholder="Type here">
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


