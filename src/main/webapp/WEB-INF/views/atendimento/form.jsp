<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:layoutDashboard module="Atendimento">
	<jsp:include page="../paciente/modalBuscaPaciente.jsp"/>
	<div class="row">
		<t:painel title="Cadastro de Atendimento">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<form:form action="" method="post" commandName="atendimento" class="form-horizontal form-label-left">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<div class="row">
					<div class="form-group col-md-2">
						<label for="">Código</label>
						<input type="text" name="" id="" class="form-control" disabled="disabled" value="">
					</div>
					<div class="form-group col-md-5">
						<label for="">Paciente</label>                                             
                        <select path=""  class="select2_single form-control" tabindex="-1"  disabled="disabled">
                        </select> 
					</div>
					<div class="form-group col-md-5">
						<label for="">Médico</label>                                             
                        <select path=""  class="select2_single form-control" tabindex="-1" >
                        </select> 
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-4">
						<label for="">Hospital</label>                                             
                        <select path=""  class="select2_single form-control" tabindex="-1" disabled="disabled">
                        </select> 
					</div>
					<div class="form-group col-md-4">
						<label for="">Tipo de Atendimento</label>                                             
                        <select path=""  class="select2_single form-control" tabindex="-1" >
                        </select> 
					</div>
					<div class="form-group col-md-4">
						<label for="">Especialidade</label>                                             
                        <select path=""  class="select2_single form-control" tabindex="-1" >
                        </select> 
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="">Local de Procedência</label>                                             
                        <select path=""  class="select2_single form-control" tabindex="-1" >
                        </select> 
					</div>
					<div class="form-group col-md-3">
						<label for="">Status</label>                                             
                        <select path=""  class="select2_single form-control" tabindex="-1" disabled="disabled">
                        </select> 
					</div>
					<div class="form-group col-md-3">
						<label for="">Início do Atendimento</label>                                             
						<input type="text" class="form-control" disabled="disabled" />	
					</div>
					<div class="form-group col-md-3">
						<label for="">Termínio do Atendimento</label>                                             
						<input type="text" class="form-control" disabled="disabled" />	
					</div>
					
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Diagnóstico</label>                                             
                        <select path=""  class="select2_single form-control" tabindex="-1" disabled="disabled">
                        </select> 
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Observações</label>                                             
                        <textarea class="form-control" rows="2"></textarea>
					</div>
				</div>
				<div class="ln_solid"></div>
				<c:if test="${id != null}">
					<div class="form-group">
						<div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
                            <button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
							<button type="submit" class="btn btn-warning">Atualizar</button>
							<input type="text" name="id" value="${id}">
						</div>
					</div>
				</c:if>
				<c:if test="${id == null}">
					<div class="form-group">
						<div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
                            <button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
							<button type="submit" class="btn btn-success">Cadastrar</button>
						</div>
					</div>
				</c:if>
			</form:form>
		</t:painel>
	</div>
</t:layoutDashboard>