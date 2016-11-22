<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="modal fade" id="modal-selecionaHospital" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<form id="formPaciente" action="${s:mvcUrl('selecionaHospital').build()}" method="post">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Saleciona Hospital</h4>
				</div>
				<div class="modal-body">
						<label for="nome">Hospitais: </label> 
						<form:select path="hospitais.id" class="select2_single form-control" tabindex="-1" required="required">
							<option value="${hospital.id}">${hospital.sigla}-${hospital.endereco.uf}</option>
						</form:select> 
				</div>
				<input id="csrf" name="_csrf" type="hidden" value="${_csrf.token}">
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
					<button id="btn-salvar" type="submit" class="btn btn-primary">Salvar</button>
				</div>
			</form>
		</div>
	</div>
</div>




















</div>