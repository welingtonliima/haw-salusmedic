<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layout module="Atendimento" adicionar="mostrar" link="${s:mvcUrl('formEspecialidade').build()}">
	<div class="row">
		<t:painel title="Atendimentos Abertos">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th style="width: 5%">ID</th>
						<th style="width: 75%">Descrição</th>
						<th style="width: 20%">Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${atendimentos}" var="atendimento">
						<tr>
							<td>${atendimento.id}</td>
							<td>${atendimento.paciente.nome}</td>
						</tr>
					</c:forEach>
				<tbody>
			</table>
		</t:painel>
	</div>
</t:layout>