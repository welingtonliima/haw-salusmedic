
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layoutDashboard module="Paciente" adicionar="mostrar" link="${s:mvcUrl('formPaciente').build()}">
	<div class="row">
		<t:painel title="Lista de Pacientes">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Nome Paciente</th>
						<th style="width: 2%">CNS</th>
						<th>Nome da Mãe</th>
						<th>Naturalidade</th>
						<th style="width: 2%">CPF</th>
						<th style="width: 2%">Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pacientes}" var="paciente">
						<tr>
							<td>${paciente.nome}</td>
							<td>${paciente.carteiraNacionalDaSaude}</td>
							<td>${paciente.nomeDaMae}</td>
							<td>${paciente.naturalidade}</td>
							<td>${paciente.cpf}</td>
							<td>
								<a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i>Confirmar</a> 
								<a href="${s:mvcUrl('editarPaciente').arg(0,paciente.id).build()}" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i>Editar </a>
								<a href="${s:mvcUrl('editarPaciente').arg(0,paciente.id).build()}" class="btn btn-danger btn-xs"
								 onclick="return confirm ('Deseja realmente desativar o paciente? ');"><i class="fa fa-trash"></i>Desativar</a>
							</td>
						</tr>
					</c:forEach>
				<tbody>
			</table>
		</t:painel>
	</div>
</t:layoutDashboard>