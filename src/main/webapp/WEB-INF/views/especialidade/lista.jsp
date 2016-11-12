<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layout module="Prestador" adicionar="mostrar"
	link="${s:mvcUrl('formEspecialidade').build()}">
	<div class="row">
		<t:painel title="Especialidades Cadastradas">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive"
				class="table table-striped table-bordered dt-responsive nowrap"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th style="width: 5%">ID</th>
						<th style="width: 75%">Descrição</th>
						<th style="width: 20%">Ações</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${especialidades}" var="especialidade">
						<tr>
							<td>${especialidade.id}</td>
							<td>${especialidade.descricao}</td>
							<td>
								<a href="#" class="btn btn-primary btn-xs"><i class="fa fa-folder"></i> Abrir</a> 
								<a href="${s:mvcUrl('editarEspecialidade').arg(0,especialidade.id).build()}" class="btn btn-info btn-xs"><i class="fa fa-pencil"></i>Editar </a>
								<a href="javascript: confirmacaoDeExclusao(${especialidade.id},'especialidade');" class="btn btn-danger btn-xs"><i class="fa fa-trash"></i>Excluir</a>
							</td>
						</tr>
					</c:forEach>
				<tbody>
			</table>
		</t:painel>
	</div>
</t:layout>