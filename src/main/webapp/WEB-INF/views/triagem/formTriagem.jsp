<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layoutDashboard module="Prontário Eletrônico">
	<t:painel title="Dados Gerais" md="12" sm="12" xs="12">
		<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="50%">
			<tbody>
				<tr>
					<td><b>Paciente:</b> 1304658 {paciente.codigo}</td>
					<td><b>Nome Completo:</b> José Campos Ferreira {paciente.nome}</td>
					<td><b>Idade:</b> (39a 9m 9d) 27/12/1972 {paciente.idade} {paciente.dataNascimento}</td>
					<td><b>Sexo:</b> Masculino {paciente.sexo}</td>
				</tr>
				<tr>
					<td><b>Atendimento:</b> 1202659 {atendimento.codigo}</td>
					<td><b>Médico:</b> Vinicius Celeste Lorca {atendimento.prestador.nome}</td>
					<td><b>Especialidade:</b> Cirurgia Geral {atendimento.especialidade.nome}</td>
					<td><b>Local:</b> Pronto Socorro (Hospital Regional do Gama){atendimento.destino} (${atendimento.hospital})</td>
				</tr>
				<tr>
					<td colspan="2"><b>Hipótese Diagnóstica:</b> Z48.9 – Seguimento cirúrgico não especificado</td>
					<td colspan="2"><b>Pré Queixa:</b> Paciente retorna para renovação de varios curativos espalhados pelo corpo.</td>
				</tr>
			</tbody>
		</table>
	</t:painel>
		<t:painel title="Dados Gerais" md="12" sm="12" xs="12">
		<table id="datatable-responsive"
			class="table table-striped table-bordered dt-responsive nowrap"
			cellspacing="0" width="50%">
			<tbody>
				<tr>
					<td><b>Paciente:</b> 1304658</td>
					<td><b>Nome Completo:</b> José Campos Ferreira</td>
					<td><b>Idade:</b> (39a 9m 9d) 27/12/1972</td>
					<td><b>Sexo:</b> Masculino</td>
				</tr>
				<tr>
					<td><b>Atendimento:</b> 1202659</td>
					<td><b>Médico:</b> Vinicius Celeste Lorca</td>
					<td><b>Especialidade:</b> Cirurgia Geral</td>
					<td><b>Local:</b> Pronto Socorro (Hospital Regional do Gama)</td>
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
	<t:painel title="História Clinica" md="6" sm="6" xs="6">
		<table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>#</th>
					<th>Descrição</th>
					<th>Observação</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Diabetes</td>
					<td>Sim</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Fumante</td>
					<td>Sim</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Pressão Alta</td>
					<td>Sim</td>
				</tr>
			</tbody>
		</table>
		<div class="col-md-offset-8">
			<button type="submit" class="btn btn-primary btn-sm">
				<i class="fa fa-file"></i> Adicionar
			</button>
			<button type="submit" class="btn btn-primary btn-sm">
				<i class="fa fa-file"></i> Adicionar
			</button>
		</div>
	</t:painel>
	<t:painel title="Doenças Crônicas" md="6" sm="6" xs="6">
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
				<tr>
					<td>1</td>
					<td>E06 – Tireoidite</td>
					<td>2 anos e 3 meses</td>
				</tr>
			</tbody>
		</table>
		<div class="col-md-offset-10">
			<button type="submit" class="btn btn-primary btn-sm"> <i class="fa fa-file"></i> Adicionar </button>
		</div>
	</t:painel>
	<t:painel title="Medicamento em Uso" md="6" sm="6" xs="6">
		<table id="datatable-responsive"
			class="table table-striped table-bordered dt-responsive nowrap"
			cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>#</th>
					<th>Medicamento</th>
					<th>Observação</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Ibuprofeno</td>
					<td></td>
				</tr>
				<tr>
					<td>2</td>
					<td>Omeprazol</td>
					<td></td>
				</tr>
			</tbody>
		</table>
	</t:painel>
	<t:painel title="Alergias" md="6" sm="6" xs="6">
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
				<tr>
					<td>1</td>
					<td>Nega Alergia</td>
					<td>Medicamento</td>
				</tr>
			</tbody>
		</table>
	</t:painel>
	<t:painel title="Últimas Consultas" md="12" sm="12" xs="12">
		<table id="datatable-responsive"
			class="table table-striped table-bordered dt-responsive nowrap"
			cellspacing="0" width="100%">
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
				<tr>
					<td>23/09/2016 17:24</td>
					<td>E06 - Tireoidite</td>
					<td>Herminio José Lima Moura</td>
					<td>Clinica Geral</td>
					<td><a style="font-size: 14px"><i
							class="fa fa-folder-open"></i></td>
				</tr>
			</tbody>
		</table>
		<div class="col-md-offset-10">
			<button type="submit" class="btn btn-sucess btn-sm">
				<i class="fa fa-search"></i> Visualizar Todos
			</button>
		</div>
	</t:painel>
</t:layoutDashboard>