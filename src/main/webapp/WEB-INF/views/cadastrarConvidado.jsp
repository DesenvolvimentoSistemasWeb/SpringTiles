<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="<c:url value="/static/resources/css/bootstrap.min.css"/>"/>
	<link href="<c:url value="/static/resources/css/app.css"/>" rel="stylesheet"/>		
<title>Cadastrar Convidados</title>
</head>
<body>
	<spring:url var = "action" value="/cadastrarConvidado"/>
	<h3> Cadastrar Convidados</h3>
	<form:form action="${action}?usuario=${usuario}" modelAttribute="convidado" method="POST">
		<fieldset class="form-group">
			<form:label path="nome">Nome</form:label>
			<form:input type="text" path="nome" class="form-control"/>
			<form:errors path="nome" cssStyle="color:red;"/>
  		</fieldset>
		<input type="hidden" name="${_csrf.parameterName}" 	value="${_csrf.token}" />
		<input type="submit" value="Enviar" class="btn btn-secondary"/>
  	</form:form>
</body>
</html>