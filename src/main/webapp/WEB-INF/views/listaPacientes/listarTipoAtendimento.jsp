<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:layoutDashboard module="Atendimento">
	<c:if test="${tipoAtendimento eq 'INTERNACAO' }">
		<t:painel title="Internação">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive"
				class="table table-striped table-bordered dt-responsive nowrap"
				cellspacing="0" width="100%">
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
					<c:forEach items="${atendimentos}" var="atendimento">
						<tr>
							<td>${atendimento.destino}</td>
							<td>${atendimento.id}</td>
							<td>${atendimento.paciente.nome}</td>
							<td>${atendimento.paciente.sexo}</td>
							<td></td>
							<td>${atendimento.diagnostico.descriscao}</td>
							<td>${atendimento.especialidade.descricao}</td>
							<td>${atendimento.prestador.nome}</td>
							<td></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</t:painel>
	</c:if>
	<c:if test="${tipoAtendimento eq 'AMBULATORIAL' }">
		<t:painel title="Ambulatório">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive"
				class="table table-striped table-bordered dt-responsive nowrap"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Cod. Atendimento</th>
						<th>Prontuário</th>
						<th>Nome Paciente</th>
						<th>Idade</th>
						<th>Sexo</th>
						<th>Nome da Mãe</th>
						<th>Nascimento</th>
						<th>Recepção</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${atendimentos}" var="atendimento">
						<tr>
							<td>${atendimento.id}</td>
							<td>${atendimento.paciente.prontuario.id}</td>
							<td>${atendimento.paciente.nome}</td>
							<td></td>
							<td>${atendimento.paciente.sexo}</td>
							<td>${atendimento.paciente.nomeDaMae}</td>
							<td>${atendimento.paciente.dataNascimento}</td>
							<td>${atendimento.dataAndHoraEntrada}</td>
						</tr>
					</c:forEach>
			</table>
		</t:painel>
	</c:if>
	<c:if test="${tipoAtendimento eq 'EMERGENCIA' }">
		<t:painel title="Urgência">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<table id="datatable-responsive"
				class="table table-striped table-bordered dt-responsive nowrap"
				cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Prioridade</th>
						<th>Atendimento</th>
						<th>Nome Paciente</th>
						<th>Idade</th>
						<th>Sexo</th>
						<th>Recepção</th>
						<th>Especilidade</th>
						<th>Médico</th>
						<th>Descrição CID</th>
						<th>Setor</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${atendimentos}" var="atendimento">
				
						<tr>
							<td>${atendimento.id}</td>
							<td></td>
							<td>${atendimento.paciente.nome}</td>
							<td></td>
							<td>${atendimento.paciente.sexo}</td>
							<td>${atendimento.dataAndHoraEntrada}</td>
							<td>${atendimento.especialidade.descricao}</td>
							<td>${atendimento.prestador.nome}</td>
							<td>${atendimento.diagnostico.descriscao}${atendimento.diagnostico.cid}</td>
							<td>${atendimento.destino}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</t:painel>
	</c:if>
</t:layoutDashboard>
