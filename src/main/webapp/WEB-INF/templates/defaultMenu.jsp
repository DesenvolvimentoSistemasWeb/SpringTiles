<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
	<div class="btn-group-vertical">
		<button class="btn btn-secondary">
			<spring:url var = "mostrarConvidados" value="/mostrarConvidados/1?usuario=${usuario}"/>
			<a href="${mostrarConvidados}">Todos os cadastrados</a>
		</button>
		<security:authorize access="hasRole('ROLE_ADMIN')">
			<button class="btn btn-secondary">
	 			<spring:url var = "cadastrarConvidado" value="/cadastrarConvidado/?usuario=${usuario}"/>
	 			<a href="${cadastrarConvidado}">Cadastrar convidados</a>
			</button>
		</security:authorize>
		<security:authorize access="hasRole('ROLE_ADMIN')">
			<button class="btn btn-secondary">
				<spring:url var = "cadastrarUsuario" value="/cadastrarUsuario/?usuario=${usuario}"/>
				<a href="${cadastrarUsuario}">Cadastrar usu�rio</a>
			</button>
		</security:authorize>
		<security:authorize access="hasRole('ROLE_ADMIN')">
			<button class="btn btn-secondary">
				<spring:url var = "mostrarUsuarios" value="/mostrarUsuarios/1?usuario=${usuario}"/>
				<a href="${mostrarUsuarios}">Mostrar usu�rios</a>
			</button>
		</security:authorize>
		<button class="btn btn-secondary">
			<spring:url var = "logout" value="/logout"/>
			<a href="${logout}">Sair</a>
		</button>
	</div>