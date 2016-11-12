<%-- 
    Document   : login
    Created on : 23/09/2016, 22:54:47
    Author     : Welington Lima
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="t"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url value="/resources/gentelella-master" var="contextPath" />
<c:url value="/resources/" var="resourcesPath" />

<title>SalusMedic | Login</title>

<link href="${contextPath}/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="${contextPath}/vendors/nprogress/nprogress.css" rel="stylesheet">
<link href="${contextPath}/build/css/custom.min.css" rel="stylesheet">
</head>

<body class="login">
	<div>
		<a class="hiddenanchor" id="signup"></a> <a class="hiddenanchor" id="signin"></a>
		<div class="login_wrapper">
			<div class="animate form login_form">
				<section class="login_content">
					<form:form servletRelativeAction="/login" method="POST" cssClass="form-signin">
						<h1>
							Login
						</h1>
						<div class="col-md-12">
							<input type="text" name="username" class="form-control has-feedback-left" placeholder="Usuário" autofocus=""> 
							<span class="fa fa-user form-control-feedback left" aria-hidden="true"></span>
						</div>
						<div class="col-md-12">
							<input type="password" name="password" class="form-control has-feedback-left" placeholder="Senha">
							<span class="glyphicon glyphicon-lock form-control-feedback left" aria-hidden="true"></span>
						</div>
						<div>
							<button class="btn btn-default submit" type="submit">Logar</button>
						</div>
						<div class="clearfix"></div>
						<div class="separator">
							<div class="clearfix"></div>
							<br />
						</div>
						<div>
							<h1>
								<i class="fa fa-stethoscope"></i> Salus Medic
							</h1>
							<p>©2016 All Rights Reserved. <br/>
							Salus Medic - Prontuário Eletrônico do Paciente, desenvolvido por <strong>HAW IT Solutions</strong></p>
						</div>
					</form:form>
				</section>
			</div>
		</div>
	</div>
	<script src="${contextPath}/vendors/jquery/dist/jquery.min.js"></script>
	<script src="${contextPath}/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="${contextPath}/vendors/fastclick/lib/fastclick.js"></script>
	<script src="${contextPath}/vendors/nprogress/nprogress.js"></script>
	<script src="${contextPath}/build/js/custom.min.js"></script>
</body>
</html>