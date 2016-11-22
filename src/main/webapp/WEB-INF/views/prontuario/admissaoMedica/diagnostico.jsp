<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:layout module="Admissão Médica">

    <t:panel title="Diagnóstico" md="8">
        <form action="index.html">
            <div class="row">
                <div class="form-group col-md-8">
                    <label for="prontuario.id">Diagnóstico Primário</label>
                    <select class="select2_single form-control" tabindex="-1">
                        <option>Selecione...</option>
                        <option value="AK">Alaska</option>
                        <option value="HI">Hawaii</option>
                        <option value="CA">California</option>
                        <option value="NV">Nevada</option>
                        <option value="OR">Oregon</option>
                        <option value="WA">Washington</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-3">
                    <label for="prontuario.id">Tempo de Doença</label>
                    <input type="text" class="form-control" id="prontuario.id">
                </div>
                <div class="form-group col-md-3">
                    <label></label>
                    <select class="select2_single form-control" tabindex="-1">
                        <option>Selecione...</option>
                        <option value="AK">Dia(s)</option>
                        <option value="HI">Mes(es)</option>
                        <option value="CA">Ano(s)</option>
                    </select>
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
    <t:panel title="Diagnósticos Secundários" md="8">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>Diagnóstico</th>
                    <th>Descrição do Diagnóstico</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <select class="select2_single form-control col-md-3" tabindex="-1">
                        <option></option>
                        <option value="AK">Alaska</option>
                        <option value="HI">Hawaii</option>
                        <option value="CA">California</option>
                        <option value="NV">Nevada</option>
                        <option value="OR">Oregon</option>
                        <option value="WA">Washington</option>
                        </select>
                    </td>
                    <td>
                        <select class="select2_single form-control col-md-3" tabindex="-1">
                        <option></option>
                        <option value="AK">Alaska</option>
                        <option value="HI">Hawaii</option>
                        <option value="CA">California</option>
                        <option value="NV">Nevada</option>
                        <option value="OR">Oregon</option>
                        <option value="WA">Washington</option>
                        </select>
                    </td>
                </tr> 
            </tbody>
        </table>
    </t:panel>
    <t:rodapeSeleção></t:rodapeSeleção>
</t:layout>

<!-- Select2 -->
<script>
    $(document).ready(function () {
        $(".select2_single").select2({
            allowClear: true
        });
    });
</script>
<!-- /Select2 -->