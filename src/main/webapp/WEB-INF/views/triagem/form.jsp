<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layoutDashboard module="Triagem">
	<form:form action="${s:mvcUrl('adicionarTriagem').build()}"
		method="post" commandName="triagem"
		class="form-horizontal form-label-left">
		<div class="row">
			<t:painel title="Abordagem Inicial" md="6">
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Queixa Principal <span class="required">*</span></label>
						<form:textarea path="abordagemInicial.queixaInicial" id="queixa"
							class="form-control" required="required" rows="2" />
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Observação </label>
						<form:textarea path="abordagemInicial.observacao" id="observacao"
							class="form-control" rows="2" />
					</div>

				</div>
			</t:painel>
	
			<t:painel title="Alergias" md="6" >
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Substância <span class="required">*</span></label>
						<form:select path="alergias.substancia" id="substancia"
							class="form-control" required="required">
							<form:option value=""></form:option>
							<form:option value="ANTRAQUINONA">ANTRAQUINONA</form:option>
							<form:option value="BENZOCAÍNA">BENZOCAÍNA</form:option>
							<form:option value="OUTROS ">OUTROS</form:option>
						</form:select>

					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Observação <span class="required">*</span></label>
						<form:textarea path="alergias.observacaoAlergia"
							id="observacaoAlergia" class="form-control" required="required"
							rows="3" />
					</div>

				</div>
			</t:painel>
		</div>
		<div class="row">
			<t:painel title="Sinais Vitais">
				<div class="row">
					<div class="form-group col-md-6">
						<label for="">Substância <span class="required">*</span></label>
						<form:select path="alergias.substancia" id="substancia"
							class="form-control" required="required">
							<form:option value=""></form:option>
							<form:option value="ANTRAQUINONA">ANTRAQUINONA</form:option>
							<form:option value="BENZOCAÍNA">BENZOCAÍNA</form:option>
							<form:option value="OUTROS ">OUTROS</form:option>
						</form:select>

					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-6">
						<label for="">Observação <span class="required">*</span></label>
						<form:textarea path="alergias.observacaoAlergia"
							id="observacaoAlergia" class="form-control" required="required"
							rows="2" />
					</div>

				</div>
				<div class="ln_solid"></div>
				<c:if test="${id != null}">
					<div class="form-group">
						<div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
							<button type="button" value="voltar" class="btn btn-primary"
								onclick="voltarAnterior();"">Voltar</button>
							<button type="submit" class="btn btn-warning">Atualizar</button>
							<input type="hidden" name="id" id="id" class="form-control"
								value="${id}">
						</div>
					</div>
				</c:if>
				<c:if test="${id == null}">
					<div class="form-group">
						<div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
							<button type="button" value="voltar" class="btn btn-primary"
								onclick="voltarAnterior();"">Voltar</button>
							<button type="submit" class="btn btn-success">Cadastrar</button>
						</div>
					</div>
				</c:if>
			</t:painel>
		</div>
	</form:form>
</t:layoutDashboard>
