<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout module="Admissão Médica">
    <t:panel title="Pré Consulta da Enfermagem" md="8">
        <form action="index.html">
            <div class="row">
                <div class="form-group col-md-4">
                    <label for="prontuario.id">Nivel de Classifição de Urgência</label>
                    <input type="text" class="form-control" id="prontuario.id" disabled="">
                </div>
                <div class="form-group col-md-4">
                    <label for="prontuario.id">Enfa(o) Resp.</label>
                    <input type="text" class="form-control" id="prontuario.id" disabled="">
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="prontuario.id">Pré Queixa Principal</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
                <div class="form-group col-md-6">
                    <label for="prontuario.id">Alergias</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="prontuario.id">Observações da  Queixa</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
                <div class="form-group col-md-6">
                    <label for="prontuario.id">Observações da Alergia</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>

            <div class="col-md-12">
                <h2>Sinais Vitais</h2>
            </div>
            <br/>
            <div class="ln_solid"></div>
            <div class="row">
                <div class="col-md-12 ">
                    <table border="2"class="table-striped table-bordered">
                        <tr>
                            <td colspan="2"> <label for="prontuario.id">Pressão Arterial (mmHg)</label></td>
                            <td><label for="prontuario.id">Frequência Cardíaca (BPM)</label></td>
                            <td><label for="prontuario.id">Temperatura Corporal (Cº)</label></td>

                        </tr>
                        <tr>
                            <td> <input type="text" class="form-control " id="prontuario.id"></td>
                            <td> <input type="text" class="form-control col-md-2" id="prontuario.id"></td>
                            <td>  <input type="text" class="form-control col-md-2" id="prontuario.id"></td>
                            <td>  <input type="text" class="form-control col-md-2" id="prontuario.id"></td>
                        </tr>
                        <tr>
                            <td><label for="prontuario.id">Saturação (%)</label></td>
                            <td><label for="prontuario.id">Glicemia Capilar (mg/dl)</label></td>
                            <td><label for="prontuario.id">Frequência Respiratória (irpm)</label></td>
                            <td><label for="prontuario.id">Peso (Kg)</label></td>
                            <td><label for="prontuario.id">Altura (cm)</label></td>
                        </tr>
                        <tr>
                            <td> <input type="text" class="form-control col-md-2" id="prontuario.id"></td>
                            <td> <input type="text" class="form-control col-md-2" id="prontuario.id"></td>
                            <td> <input type="text" class="form-control col-md-2" id="prontuario.id"></td>
                            <td> <input type="text" class="form-control col-md-2" id="prontuario.id"></td>
                            <td> <input type="text" class="form-control col-md-2" id="prontuario.id"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </t:panel>
    <t:panel title="Consulta" md="4">
        <table class="table table-striped">
            <thead>
            </thead>
            <tbody>
                <tr>
                    <td><b> 23/09/2016 17:24</b><br/>HERMINIO JOSE LIMA DE MOURA - <br/>CIRURGIA GERAL</td>
                    <td style="font-size: 35px"><a><i class="fa fa-file-text-o"></i></a></td>
                </tr>
                <tr>
                    <td><b>23/09/2016 17:24</b><br/>WELINGTON LIMA DA SILVA - <br/>HEMATOLOGISTA</td>
                    <td style="font-size: 35px"><a><i class="fa fa-file-text"></i></a></td>
                </tr>
            </tbody>
        </table>
    </t:panel>
    <t:panel title="Consulta do Médico" md="8">
        <form action="index.html">
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id">Queixas Principais</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id">História Clínica</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id">Exame Físico</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id"> Hipótese(s) Diagnóstica(s)</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id">Conduta</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id">Observações</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
        </form>
    </t:panel>
        <t:rodapeSeleção></t:rodapeSeleção>
</t:layout>