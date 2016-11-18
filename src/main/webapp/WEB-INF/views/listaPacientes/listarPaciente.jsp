
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:layout module="Consulta Pacientes" >
    <t:panel title="Parametros de Consulta">
        <form action="index.html">
            <div class="row">
                <div class="form-group col-md-2">
                    <label for="prontuario.id">Prontuário</label>
                    <input type="text" class="form-control" id="prontuario.id" placeholder="">
                </div>
                <div class="form-group col-md-2">
                    <label for="prontuario.id">CPF</label>
                    <input type="text" class="form-control" id="prontuario.id" placeholder="">
                </div>
                <div class="form-group col-md-4">
                    <label for="prontuario.id">Nome</label>
                    <input type="text" class="form-control" id="prontuario.id">
                </div>
                <div class="form-group col-md-3">
                    <label for="prontuario.id">Data Nascimento</label>
                    <input type="date" class="form-control" id="prontuario.id">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-4">
                    <label for="prontuario.id">Nome da Mãe</label>
                    <input type="text" class="form-control" id="prontuario.id" >
                </div>
                <div class="form-group col-md-3">
                    <label for="prontuario.id">Nome do Pai</label>
                    <input type="text" class="form-control" id="prontuario.id">
                </div>
            </div>
        </form>
    </t:panel>
    <t:panel title="Pacientes">
        <table id="datatable-responsive" class="table table-striped table-bordered dt-responsive nowrap" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>Prioridade</th>
                    <th>Cod. Paciente</th>
                    <th>Atendimento</th>
                    <th>Nome Paciente</th>
                    <th>Idade</th>
                    <th>Sexo</th>
                    <th>Status</th>
                    <th>Recepção</th>
                    <th>Especilidade</th>
                    <th>Médico</th>
                    <th>Descrição CID</th>
                    <th>Setor</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
        </table>
    </t:panel>        
</t:layout>