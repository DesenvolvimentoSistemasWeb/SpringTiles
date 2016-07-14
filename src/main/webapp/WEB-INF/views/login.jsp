<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login page</title>
		<link href="<c:url value='/static/resources/css/bootstrap.min.css' />"  rel="stylesheet"></link>
		<link href="<c:url value='/static/resources/css/app.css' />" rel="stylesheet"></link>
	</head>

	<body>
		<div class="login-container">
			<div class="login-card">
				<div class="login-form">
					<c:url var="loginUrl" value="j_spring_security_check" />					
						<form action="${loginUrl}" method="POST" class="form-horizontal">
						<c:if test="${param.error != null}">
							<div class="alert alert-danger">
								<p>Usu�rio ou senha inv�lidos!!</p>
							</div>
						</c:if>
						<c:if test="${param.logout != null}">
							<div class="alert alert-success">
								<p>Desconectado com sucesso!!.</p>
							</div>
						</c:if>
						<div class="input-group input-sm">
							<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
							<input type="text" class="form-control" id="username" name="username" placeholder="Usu�rio" required>
						</div>
						<div class="input-group input-sm">
							<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label> 
							<input type="password" class="form-control" id="password" name="password" placeholder="Senha" required>
						</div>
						<input type="hidden" name="${_csrf.parameterName}" 	value="${_csrf.token}" />
						<div class="form-actions">
							<input type="submit" class="btn btn-block btn-primary btn-default" value="Log in">
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>