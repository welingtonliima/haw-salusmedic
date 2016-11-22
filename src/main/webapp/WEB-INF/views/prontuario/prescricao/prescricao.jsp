<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout module="Prescrição">
    <div class="row">
        <div class="col-md-8"> 
            <t:panel title="Adicionar Medicamentos">
                <form action="index.html">
                    <div class="row">
                        <div class="form-group col-md-8">
                            <label for="prontuario.id">Medicamento</label>
                            <input type="text" class="form-control" id="prontuario.id">
                        </div>
                        <div class="form-group col-md-2">
                            <label for="prontuario.id">Se Necessário</label>
                            <input type="radio" class=" form-control" name="gender" id="genderM" value="M"/>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="prontuario.id">Urgente</label>
                            <input type="radio" class="form-control"  name="gender" id="genderF" value="F" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-3">
                            <label for="prontuario.id">Quantidade</label>
                            <input type="text" class="form-control" id="prontuario.id">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="prontuario.id">Unidade</label>
                            <input type="text" class="form-control" id="prontuario.id">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="prontuario.id">Forma de Aplicação</label>
                            <input type="text" class="form-control" id="prontuario.id">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="prontuario.id">Frequência</label>
                            <input type="text" class="form-control" id="prontuario.id">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="prontuario.id">Observações</label>
                            <textarea class="resizable_textarea form-control" rows="1" id="" name=""></textarea>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="prontuario.id"><br/></label>
                            <button id="send" type="submit" class="form-control btn btn-success"><i class="glyphicon glyphicon-plus"></i>&nbspAdicionar</button>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="prontuario.id"><br/></label>
                            <button id="send" type="submit" class="form-control btn btn-danger"><i class="glyphicon glyphicon-trash"></i>&nbspLimpar</button>
                        </div>
                    </div>
                </form>
            </t:panel>
            <t:panel title="Adicionar Exames">
                <form action="index.html">
                <div class="row">
                    <div class="form-group col-md-8">
                        <label for="prontuario.id">Exame</label>
                        <input type="text" class="form-control" id="prontuario.id">
                    </div>
                    <div class="form-group col-md-2">
                        <label for="prontuario.id">Urgente</label>
                        <input type="radio" class="form-control"  name="gender" id="genderF" value="F" />
                    </div>
                    <div class="form-group col-md-2">
                        <label for="prontuario.id">Quantidade</label>
                        <input type="text" class="form-control" id="prontuario.id">
                    </div>
                </div>
                <div class="row">
                    <div class="form-group col-md-3">
                        <label for="prontuario.id">Frequência</label>
                        <input type="text" class="form-control" id="prontuario.id">
                    </div>
                    <div class="form-group col-md-3">
                        <label for="prontuario.id">Observações</label>
                        <textarea class="resizable_textarea form-control" rows="1" id="" name=""></textarea>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="prontuario.id"><br/></label>
                        <button id="send" type="submit" class="form-control btn btn-success"><i class="glyphicon glyphicon-plus"></i>&nbspAdicionar</button>
                    </div>
                    <div class="form-group col-md-3">
                        <label for="prontuario.id"><br/></label>
                        <button id="send" type="submit" class="form-control btn btn-danger"><i class="glyphicon glyphicon-trash"></i>&nbspLimpar</button>
                    </div>
                </div>
                </form>
            </t:panel>
            <t:panel title="Prescrição">
                <form action="index.html">
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="prontuario.id">Médico Concedente</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="prontuario.id">Data da Resposta</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="prontuario.id">Hora da Resposta</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                    </div>
                    <div class="row">
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label for="prontuario.id">Parecer</label>
                            <textarea class="resizable_textarea form-control" rows="5" id="" name=""></textarea>
                        </div>
                    </div>
                </form>
            </t:panel>
            <t:rodapeSeleção></t:rodapeSeleção>
            </div>
            <div class="col-md-4">
            <t:panel title="Prescrições">
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
        </div>
    </div>
</t:layout>

<!-- Select2 -->
<script>
    $(document).ready(function () {
        autosize($('.resizable_textarea'));
    });
    $(document).ready(function () {
        $(".select2_single").select2({
            allowClear: true
        });
    });
</script>
<!-- /Select2 -->