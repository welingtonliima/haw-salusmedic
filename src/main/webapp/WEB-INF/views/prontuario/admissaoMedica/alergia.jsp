<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:layout module="Admissão Médica">
    <t:panel title="Alergias" md="8">
        <form action="index.html">
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id">Descrição</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id">Observação</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id">Substância</label>
                    <p>
                        Medicamento:
                        <input type="radio" class="flat" name="gender" id="genderM" value="M" checked="" required /> Alimento:
                        <input type="radio" class="flat" name="gender" id="genderF" value="F" /> Outros:
                        <input type="radio" class="flat" name="gender" id="genderF" value="F" />
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id"> Severidade</label>
                    <textarea class="resizable_textarea form-control" placeholder=""></textarea>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-12">
                    <label for="prontuario.id">Status da Alergia</label>
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
    <t:rodapeSeleção></t:rodapeSeleção>
</t:layout>