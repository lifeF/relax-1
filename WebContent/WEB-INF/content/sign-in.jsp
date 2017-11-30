<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>

<title><s:text name="global.application.title" /></title>

<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
<s:include value="common/css-loging-include.jsp"></s:include>

</head>
 <body class="login">
    <div>


      <div class="login_wrapper">
        <div class="">

          <section class="login_content">
            <!-- logo -->
            <img src="images/logo.png" alt="University Logo" width="100px">
            <!-- logo -->
            <s:form namespace="/" action="sign-in" method="post" id="signInFrm">
			<s:property value="SignInError"/>
            <!-- login form -->
            

              <h1>Login</h1>
              
              <!-- User Name input area -->
              
              <div>
                <input type="text" 
                		class="form-control" 
                		name="userAccount.userName"
					placeholder='<s:property value="%{getText('user.login.email')}"/>'
					class="form-control" required autofocus
                		autocomplete="off"
                		value="" />
                
              </div>
              
              <!-- password section ------------------------- -->
              <div>
                <input type="password" 
                			class="form-control" 
                			name="userAccount.userPassword"
						class="form-control"
						placeholder="<s:property value="%{getText('user.login.password')}"/>"
						required 
                			autocomplete="off"
						value=""/>
              </div>
              
              <!--  --------------------------------------------->
              
              <!--Submit Button ----------------------  -->
              <div>
                
                <button type="submit" class="btn btn-default submit">  LOG IN </button>
              <br>
              
              <!---------------------------------------------  -->
              
              <s:url var="forgotPasswordtUrl" action="forget-password-request.html" namespace="/" includeParams="none" />			
			  <s:a href="%{#forgotPasswordtUrl}" >
			 	Forgot my password?
			  </s:a>	
			  
			 
                
              </div>

              <div class="clearfix"></div>

              <div class="separator">

                <div class="clearfix"></div>
                <br />

                <div>

                  <h1><i class="fa fa-heartbeat" aria-hidden="true"></i> Faculty of Dental Science</h1>
                  <p>©2017 All Rights Reserved. Faculty of Dental Science. Privacy and Terms</p>
                </div>
              </div>
            </s:form>
          </section>
        </div>


      </div>
    </div>
    <s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>
  </body> 
  <%-- <body>
	<!-- <body class="login"> -->

	<div class="container">
	
		<div class="login">
            <div class="form-head">
                <img src="images/sign-in.png" alt="Relax Patients">
            </div>
            
            <s:actionerror cssStyle=""/>
            
		  <div id="signInDentalTitle" style="padding-top: 5px">Faculty of Dental Sciences</div>
		  	          
          <div class="form-body">
          	
            <s:form namespace="/" action="sign-in.html" method="post" id="signInFrm" >
              <div class="form-group">
                <input  type="text" 
                		name="userAccount.userName"
						placeholder='<s:property value="%{getText('user.login.email')}"/>'
						class="form-control" required autofocus
                		autocomplete="off"
                		value="" />
              </div>
              <div class="form-group">
                <input 
                		type="password" 
                		name="userAccount.userPassword"
						class="form-control"
						placeholder="<s:property value="%{getText('user.login.password')}"/>"
						required 
                		autocomplete="off"
						value=""/>
              </div>
              <hr />
              
              <button type="submit" class="btn btn-success btn-block">  Sign In </button>
              <br />
			  <s:url var="forgotPasswordtUrl" action="forget-password-request.html" namespace="/" includeParams="none" />			
			  <s:a href="%{#forgotPasswordtUrl}" cssClass="btn btn-primary btn-block">
			 	Forgot my password?
			  </s:a>	
			  
			  <br />
	       </s:form>
          </div>
        </div>
	
		<a class="hiddenanchor" id="signup"></a>
		<div class="card card-container">
			<section class="login_content">
				<img id="profile-img" class="profile-img-card" />
				<p id="profile-name" class="profile-name-card"></p>
				
					<s:form namespace="/" action="sign-in.html" method="post"
						cssClass="form-signin" id="signInFrm">

						<h3>
							<s:text name="global.application.name"></s:text>
						</h3>
						<div class="form-group">
							<input type="text" name="userAccount.userName"
								placeholder='<s:property value="%{getText('user.login.email')}"/>'
								class="form-control" required autofocus />
						</div>
						<div class="form-group">
							<input type="password" name="userAccount.userPassword"
								class="form-control"
								placeholder="<s:property value="%{getText('user.login.password')}"/>"
								required />
						</div>
						<div align="left">
							<s:submit cssClass="btn btn-primary btn-md"></s:submit>
							<a class="reset_pass text-primary" href="#">Lost your
								password?</a>
						</div>

						<div class="clearfix"></div>
					</s:form>

			</section>


		</div>
		<!-- /card-container -->
	</div>

	<s:include value="/WEB-INF/content/common/js-include.jsp"></s:include>

</body> --%>

</html>
