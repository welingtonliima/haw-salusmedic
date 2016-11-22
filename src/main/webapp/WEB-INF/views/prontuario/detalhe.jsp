<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<t:layout module="Prontuário Eletrônico do Paciente">
<div class="row">
	<t:painel title="Dados Gerais" md="12" sm="12" xs="12" fechar="fechar">
		<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="50%">
			<tbody>
				<tr>
					<td><b>Paciente:</b> ${atendimento.paciente.id}</td>
					<td><b>Nome Completo:</b> ${atendimento.paciente.nome}</td>
					<td><b>Idade:</b> ${atendimento.paciente.idade} anos</td>
					<td><b>Sexo:</b> ${atendimento.paciente.sexo}</td>
				</tr>
				<tr>
					<td><b>Atendimento:</b> ${atendimento.id}</td>
					<td><b>Médico:</b> ${atendimento.prestador.nome}</td>
					<td><b>Especialidade:</b> ${atendimento.especialidade.descricao}</td>
					<td><b>Local:</b> ${atendimento.destino} (${atendimento.hospital.sigla}-${atendimento.hospital.endereco.uf})</td>
				</tr>
				<tr>
					<td colspan="2"><b>Hipótese Diagnóstica:</b> Z48.9 –
						Seguimento cirúrgico não especificado</td>
					<td colspan="2"><b>Pré Queixa:</b> Paciente retorna para
						renovação de varios curativos espalhados pelo corpo.</td>
				</tr>
			</tbody>
		</table>
	</t:painel>
	</div>
	<div class="row">
	<t:painel title="História Clinica" md="6" sm="6" xs="6" fechar="fechar">
		<table id="datatable-responsive"class="table table-striped table-bordered dt-responsive nowrap"
			cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>#</th>
					<th>Descrição</th>
					<th>Observação</th>
				</tr>
			</thead>
			<tbody>
			
			</tbody>
		</table>
		<div class="col-md-offset-8">
			<button type="submit" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"> <i class="fa fa-file"></i> Adicionar </button>
			<jsp:include page="modalHistoriaClinica.jsp" />
		</div>
	</t:painel>
	<t:painel title="Doenças Crônicas" md="6" sm="6" xs="6" fechar="fechar">
		<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>#</th>
					<th>CID</th>
					<th>Tempo da Doença</th>
					<th>Observações</th>
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<div class="col-md-offset-10">
			<button type="submit" class="btn btn-primary btn-sm"> <i class="fa fa-file"></i> Adicionar </button>
		</div>
	</t:painel>
		</div>
	<div class="row">
	<t:painel title="Medicamento em Uso" md="6" sm="6" xs="6" fechar="fechar">
		<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>#</th>
					<th>Medicamento</th>
					<th>Observação</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</t:painel>
	<t:painel title="Alergias" md="6" sm="6" xs="6" fechar="fechar">
		<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>#</th>
					<th>Alergia</th>
					<th>Tipo de Alergia</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Nega Alergia</td>
					<td>Medicamento</td>
				</tr>
			</tbody>
		</table>
	</t:painel>
		</div>
	<div class="row">
		<t:painel title="Vacinas" md="6" sm="6" xs="6" fechar="fechar">
		<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>#</th>
					<th>Medicamento</th>
					<th>Observação</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</t:painel>
	<t:painel title="Exames Realizados" md="6" sm="6" xs="6" fechar="fechar">
		<table id="datatable-responsive"
			class="table table-striped table-bordered dt-responsive nowrap"
			cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>#</th>
					<th>Alergia</th>
					<th>Tipo de Alergia</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</t:painel>
		</div>
	<div class="row">
	<t:painel title="Últimas Consultas" md="12" sm="12" xs="12" fechar="fechar">
		<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>Data/Hora</th>
					<th>CID</th>
					<th>Médico</th>
					<th>Especialidade</th>
					<th>Ações</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<div class="col-md-offset-10">
			<button type="submit" class="btn btn-sucess btn-sm"> <i class="fa fa-search"></i> Visualizar Todos </button>
		</div>
	</t:painel>
</t:layout>