<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="modal fade" id="modal-paciente" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<form id="formPaciente" action="${s:mvcUrl('buscarPaciente').build()}" method="post">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Buscar Registro de Paciente</h4>
				</div>
				<div class="modal-body">
						<label for="nome">CNS: </label> 
						<input id="carteiraNacionalDaSaude"
						name="carteiraNacionalDaSaude" class="form-control" data-inputmask="'mask': '999.999.999.999.999'"> 
						
						<label for="nome">Nome: </label> 
						<input id="nome" name="nome" class="form-control"> 
						
						<label for="nome">CPF: </label> 
						<input id="cpf" name="cpf" class="form-control" data-inputmask="'mask': '999.999.999-99'"> 
				</div>
				<input id="csrf" name="_csrf" type="hidden" value="${_csrf.token}">
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
					<button id="btn-salvar" type="submit" class="btn btn-primary">Buscar Paciente</button>
				</div>
			</form>
		</div>
	</div>
</div>




















</div>