<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layoutDashboard module="Atendimento" adicionar="mostrar" link="${s:mvcUrl('formEspecialidade').build()}">
	<div class="row">
		<t:painel title="Atendimentos Abertos">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th style="width: 5%">Id</th>
						<th>Nome Completo</th>
						<th>Médico</th>
						<th>Especialidade</th>
						<th>Local</th>
						<th>Status</th>
						<th style="width: 20%">Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${atendimentos}" var="atendimento">
						<tr>
							<td>${atendimento.id}</td>
							<td>${atendimento.paciente.nome}</td>
							<td>${atendimento.prestador.nome}</td>
							<td>${atendimento.especialidade.descricao}</td>
							<td>${atendimento.destino} (${atendimento.hospital.sigla}/${atendimento.hospital.endereco.uf})</td>
							<td>${atendimento.status}</td>
							<td>
								<a href="${s:mvcUrl('editarAtendimento').arg(0,atendimento.id).build()}" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i>Editar </a>
								<a href="${s:mvcUrl('removerAtendimento').arg(0,atendimentoatendimento.id).build()}" class="btn btn-danger btn-xs"
								 onclick="return confirm ('Deseja realmente excluir o atendimento? ');"><i class="fa fa-trash"></i>Desativar</a>
							</td>
						</tr>
					</c:forEach>
				<tbody>
			</table>
		</t:painel>
	</div>
</t:layoutDashboard>