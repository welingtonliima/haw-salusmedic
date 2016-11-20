<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layoutDashboard module="Prestador" adicionar="mostrar" link="${s:mvcUrl('formPrestador').build()}">
	<div class="row">
		<t:painel title="Prestadores Cadastrados">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th> Nome</th>
						<th> CPF</th>
						<th> Tipo Prestador</th>
						<th style="width: 10%">Ações</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items ="${prestadores}" var="prestador">
					<tr>
						<td>${prestador.nome}</td>
						<td>${prestador.cpf}</td>
						<td>${prestador.tipoPrestador.descricao}</td>
						<td>
							<a href="${s:mvcUrl('editarPrestador').arg(0,prestador.id).build()}" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i>Editar </a>
							<a href="${s:mvcUrl('removerPrestador').arg(0,paciente.id).build()}" class="btn btn-danger btn-xs"
								 onclick="return confirm ('Deseja realmente excluir o prestador? ');"><i class="fa fa-trash"></i>Excluir</a>							
						</td>
					</tr>
				</c:forEach>
				<tbody>
			</table>
		</t:painel>
	</div>
</t:layoutDashboard>