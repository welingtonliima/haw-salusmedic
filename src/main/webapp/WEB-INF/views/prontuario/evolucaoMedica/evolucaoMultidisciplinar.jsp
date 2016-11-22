<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout module="Evolução Médica">
    <div class="row">
        <div class="col-md-8"> 
            <t:panel title="Evolução Multidiciplinar">
                <form action="index.html">
                    <div class="row">
                        <div class="form-group col-md-3">
                            <label for="prontuario.id">Médico</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="prontuario.id">Especialidade</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="prontuario.id">Data</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                        <div class="form-group col-md-3">
                            <label for="prontuario.id">Hora</label>
                            <input type="text" class="form-control" id="prontuario.id" disabled="">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-12">
                            <label for="prontuario.id"></label>
                            <textarea class="resizable_textarea form-control" rows="15" id="" name=""></textarea>
                        </div>
                    </div>
                </form>
            </t:panel>
            <t:rodapeSeleção></t:rodapeSeleção>
            </div>
            <div class="col-md-4">
            <t:panel title="Consulta">
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