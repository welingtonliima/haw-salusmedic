<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>


<t:layout module="Prescrição Médica">

<t:panel title="Adicionar Itens" md="8" >
		<form action="index.html">
			<div id="row">
				<div class="form-group col-md-4">
					<label for="">Tipo de Item</label> <select class="form-control"
						name="">
						<option></option>
						<option>Dietas</option>
						<option>Ex. Imagem</option>
						<option>Ex. Laboratório</option>
						<option>Medicamentos</option>
						<option>Procedimentos Médicos</option>
						<option>Procedimentos Enfermagem</option>
					</select>
				</div>
				<div class="form-group col-md-4">
					<label for="">Descrição</label> <input type="text" name="" id=""
						class="form-control" />
				</div>
				<div class="form-group col-md-3">
					<label for="">Quantidade</label> <input type="text" name="" id=""
						class="form-control" />
				</div>
			</div>
			<div id="row">
				<div class="form-group col-md-2">
					<label for="">Unidade</label> <input type="text" name="" id=""
						class="form-control" />
				</div>
				<div class="form-group col-md-3">
					<label for="">Forma de Apliação</label> <input type="text" name=""
						id="" class="form-control" />
				</div>
				<div class="form-group col-md-3">
					<label for="">Frequência</label> <input type="text" name="country"
						id="autocomplete-custom-append" class="form-control" />
				</div>
				<div class="form-group col-md-3">
					<label for="">Informações Adicionais</label> <select
						class="form-control" name="">
						<option></option>
						<option>Urgente</option>
						<option>Se Necessário</option>
					</select>
				</div>
			</div>
			<div id="row">
				<div class="form-group col-md-3">
					<label for="">Setor</label> <select class="form-control" name="">
						<option></option>
						<option>Urgente</option>
						<option>Se Necessário</option>
					</select>
				</div>
				<div class="form-group col-md-7">
					<label for="">Observação</label> <input type="text" name="country"
						id="autocomplete-custom-append" class="form-control" />
				</div>
				<div class="form-group col-md-1">
					<label for="">&nbsp</label>
					<button type="submit" class="btn btn-primary btn-sm">
						<i class="glyphicon glyphicon-file"></i> Adicionar
					</button>
				</div>
			</div>
		</form>
	</t:panel>
	<t:panel title="Prescrições" xs="6" md="4">
			<table class="table table-striped">
				<thead>
				</thead>
				<tbody>
					<tr>
						<td><b> 23/09/2016 17:24</b> <br />HERMINIO JOSE LIMA
							DEMOURA - <br /> CIRURGIA GERAL</td>
						<td style="font-size: 35px"><a><i
								class="fa fa-file-text-o"></i></a></td>
					</tr>
					<tr>
						<td><b>23/09/2016 17:24</b><br />WELINGTON LIMA DA SILVA - <br />HEMATOLOGISTA</td>
						<td style="font-size: 35px"><a><i class="fa fa-file-text"></i></a></td>
					</tr>
				</tbody>
			</table>
		</t:panel>	
	<div class="row">
		<t:panel title="Prescrição" xs="12" md="8" sm="8">
			<table id="datatable-responsive"
				class="table table-striped table-bordered dt-responsive nowrap"
				cellspacing="0" width="90%">
				<thead>
					<tr>
						<th>#</th>
						<th>Descrição</th>
						<th>Tipo</th>
						<th>Qtd</th>
						<th>Unidade</th>
						<th>Frequencia</th>
						<th>Ações</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>C.C. TRAMAL 50MG/ML-2ML AMP IV-TRAMADOL</td>
						<td>Medicamento</td>
						<td>1</td>
						<td>FR</td>
						<td>6/6H</td>
						<td><button type="submit" class="btn btn-warning btn-xs">
								<i class="glyphicon glyphicon-pencil"></i>
							</button>
							<button type="submit" class="btn btn-danger btn-xs">
								<i class="glyphicon glyphicon-trash"></i>
							</button></td>
					</tr>
				</tbody>

			</table>

		</t:panel>

	</div>
</t:layout>


