<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<t:layoutDashboard module="Atendimento">
	<c:if test="${tipoAtendimento eq 'INTERNACAO' }">
		<t:painel title="Internação">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Leito</th>
						<th>Atendimento</th>
						<th>Nome Paciente</th>
						<th>Sexo</th>
						<th>Idade</th>
						<th>Descrição CID</th>
						<th>Especialidade</th>
						<th>Médico</th>
						<th>Dias Internados</th>
					</tr>
				</thead>
				<tbody>
					
				</tbody>
			</table>
		</t:painel>
	</c:if>
	<c:if test="${tipoAtendimento eq 'AMBULATORIAL' }">
		<t:painel title="Ambulatório">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Prioridade</th>	
						<th>Atendimento</th>
						<th>Nome Paciente</th>
						<th>Idade</th>
						<th>Sexo</th>
						<th>Status</th>
						<th>Recepção</th>
						<th>Especialidade</th>
						<th>Setor</th>
					</tr>
				</thead>
				<tbody>
					
			</table>
		</t:painel>
	</c:if>
	<c:if test="${tipoAtendimento eq 'EMERGENCIA' }">
		<t:painel title="Emergência/Urgência">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th style="5%">Prioridade</th>
						<th style="5%">Atendimento</th>
						<th>Nome Paciente</th>
						<th style="5%">Idade</th>
						<th>Sexo</th>
						<th>Status</th>
						<th>Recepção</th>
						<th>Especialidade</th>
						<th>Médico</th>
						<th>Descrição CID</th>
						<th>Local</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${atendimentos}" var="atendimento">
					<tr>
						<td style="5%">${atendimento.prioridade}</td>
						<td>${atendimento.id}</td>
						<td>${atendimento.paciente.nome}</td>
						<td>${atendimento.paciente.idade} ANOS</td>
						<td>${atendimento.paciente.sexo}</td>
						<th>${atendimento.status}</th>
						<td><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${atendimento.dataAndHoraEntrada.time}" /></td>
						<td>${atendimento.especialidade.descricao}</td>
						<td>${atendimento.prestador.nome}</td>
						<td>${atendimento.diagnostico.descriscao}</td>
						<td>${atendimento.destino} (${atendimento.hospital.sigla}-${atendimento.hospital.endereco.uf})</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</t:painel>
	</c:if>
</t:layoutDashboard>
