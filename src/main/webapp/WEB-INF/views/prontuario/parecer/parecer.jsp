<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout module="Parecer">
    <div class="row">
        <div class="col-md-8"> 
            <t:panel title="Solicitação de Parecer">
                <form action="index.html">
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="prontuario.id">Médico Solicitante</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="prontuario.id">Especialidade Requisitada</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="prontuario.id">Situação</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label for="prontuario.id">Data da Solicitação</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                        <div class="form-group col-md-4">
                            <label for="prontuario.id">Hora da Solicitação</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label for="prontuario.id">Justificativa da Solititação</label>
                            <textarea class="resizable_textarea form-control" rows="5" id="" name=""></textarea>
                        </div>
                    </div>
                </form>
            </t:panel>
            <t:panel title="Resposta do Parecer">
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
            <t:panel title="Pareceres">
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