<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:layoutDashboard module="Atendimento">
	<div class="row">

		<c:if test="${paciente.id eq '' || paciente.id eq null}">
			<c:if test="${atendimento.id eq '' || atendimento.id eq null}">
				<t:painel title="Cadastro de Atendimento">
				</t:painel>
				<jsp:include page="../paciente/modalBuscaPaciente.jsp" />
			</c:if>
		</c:if>
		<c:if test="${atendimento.id ne null || paciente.id ne null}">
			<t:painel title="Cadastro de Atendimento">
				<input type="hidden" id="statusNotificacao" value="${status}">
				<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
				<form:form action="${s:mvcUrl('adicionarAtendimento').build()}" method="post" commandName="atendimento" class="form-horizontal form-label-left">
					<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
					<div class="row">
						<div class="form-group col-md-2">
							<label for="">Código</label> 
							<input type="text" name="id" id="id" class="form-control" disabled="disabled" value="${id}">
						</div>
						<div class="form-group col-md-5">
							<label for="">Paciente</label>
							<form:select path="paciente.id" cssClass="select2_single form-control" tabindex="-1" readonly="readonly">
								<c:if test="${atendimento.id eq '' || atentimento.id eq null }">
									<option value="${paciente.id}" selected>${paciente.nome}</option>
								</c:if>
								<c:if test="${atendimento.id ne '' || atentimento.id ne null }">
									<option value="${atendimento.paciente.id}" selected> ${atendimento.paciente.nome}</option>
								</c:if>
							</form:select>
						</div>
						<div class="form-group col-md-5">
							<label for="">Médico</label>
							<form:select path="" class="select2_single form-control" tabindex="-1">
								<c:if test="${atendimento.id eq '' || atentimento.id eq null }">
									<c:forEach items="${prestadores}" var="prestador">
										<form:option value="${prestador.id}">${prestador.nome}</form:option>
									</c:forEach>
								</c:if>
								<c:if test="${atendimento.id ne '' || atentimento.id ne null }">
									<option value="${atendimento.prestador.id}" selected> ${atendimento.prestador.nome}</option>
								</c:if>
							</form:select>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-4">
							<label for="">Hospital</label>
							<form:select path="hospital.id" cssClass="select2_single form-control" tabindex="-1" readonly="readonly">
								<c:if test="${atendimento.id eq '' || atentimento.id eq null }">
									<option value="${hospital.id}">${hospital.nome}</option>
								</c:if>
								<c:if test="${atendimento.id ne '' || atentimento.id ne null }">
									<option value="${atendimento.hospital.id}" selected>
										${atendimento.hospital.nome}</option>
								</c:if>
							</form:select>
						</div>
						<div class="form-group col-md-4">
							<label for="">Tipo de Atendimento</label>
							<form:select path="tipoAtendimento.id" cssClass="select2_single form-control" tabindex="-1">
								<c:if test="${atendimento.id eq '' || atentimento.id eq null }">
									<c:forEach items="${tipoAtendimentos}" var="tipoAtendimento">
										<form:option value="${tipoAtendimento.id}"> ${tipoAtendimento.descricao}</form:option>
									</c:forEach>
								</c:if>
								<c:if test="${atendimento.id ne '' || atentimento.id ne null }">
									<option value="${atendimento.tipoAtendimento.id}" selected> ${atendimento.tipoAtendimento.descricao}</option>
								</c:if>
							</form:select>
						</div>
						<div class="form-group col-md-4">
							<label for="">Especialidade</label>
							<form:select path="especialidade.id" cssClass="select2_single form-control" tabindex="-1">
								<c:if test="${atendimento.id eq '' || atentimento.id eq null }">
									<c:forEach items="${especialidades}" var="especialidade">
										<form:option value="${especialidade.id}"> ${especialidade.descricao}</form:option>
									</c:forEach>
								</c:if>
								<c:if test="${atendimento.id ne '' || atentimento.id ne null }">
									<option value="${atendimento.especialidade.id}" selected>${atendimento.especialidade.descricao}</option>
								</c:if>
							</form:select>
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-2">
							<label for="">Local de Procedência</label>
							<form:select path="localProcedencia" cssClass="select2_single form-control" tabindex="-1"
								selected="${atendimento.localProcedencia}">
								<form:option value="BOMBEIRO"> BOMBEIRO</form:option>
								<form:option value="DOMICILIO"> DOMICILIO</form:option>
								<form:option value="NAO INFORMADO"> NÃO INFORMADO</form:option>
								<form:option value="TRABALHO"> TRABALHO</form:option>
								<form:option value="SAMU"> SAMU</form:option>
								<form:option value="RUA"> RUA</form:option>
							</form:select>
						</div>
						<div class="form-group col-md-3">
							<label for="">Destino</label>
							<form:input path="destino" id="destino" cssClass="form-control" value="${atendimento.destino}" />
						</div>
						<div class="form-group col-md-2">
							<label for="">Início do Atendimento</label>
							<c:if test="${id == null}">
								<input type="text" name="dataAndHoraEntrada" class="form-control" readonly="readonly" value="${dataAndHoraAtual}" />
							</c:if>
							<c:if test="${id != null}">
								<input name="dataAndHoraEntrada" id="dataAndHoraEntrada" class="form-control" disabled="disabled" value="<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${atendimento.dataAndHoraEntrada.time}"/>" />
							</c:if>
						</div>
						<div class="form-group col-md-2 ">
							<label for="">Fim do Atendimento</label> 
							<input name="dataAndHoraSaida" id="dataAndHoraSaida" class="form-control" disabled="disabled" />
						</div>
						<div class="form-group col-md-3">
							<label for="">Status</label>
							<input name="" type="text" class="form-control" disabled="disabled" value="${atendimento.status}" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="">Diagnóstico</label> 
							<input path="" id="" class="form-control" disabled="disabled" value="${diagnostico.cid} ${diagnostico.descricao}" />
						</div>
					</div>
					<div class="row">
						<div class="form-group col-md-12">
							<label for="">Observações</label>
							<form:textarea path="observacao" id="observacao" cssClass="form-control" rows="2" />
						</div>
					</div>
					<div class="ln_solid"></div>
					<c:if test="${id != null}">
						<div class="form-group">
							<div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
								<button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
								<button type="submit" class="btn btn-warning">Atualizar</button>
								<input type="hidden" name="id" value="${id}">
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
		</c:if>
	</div>
	<c:if test="${paciente.id eq '' || paciente.id eq null}">
		<c:if test="${atendimento.id eq '' || atendimento.id eq null}">
			<jsp:include page="../paciente/modalBuscaPaciente.jsp" />
		</c:if>
	</c:if>
</t:layoutDashboard>