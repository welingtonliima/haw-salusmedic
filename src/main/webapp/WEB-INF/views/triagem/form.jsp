<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layoutDashboard module="Triagem">
	<form:form action="${s:mvcUrl('adicionarTriagem').build()}"
		method="post" commandName="triagem"
		class="form-horizontal form-label-left">
		<div class="row">
			<t:painel title="Abordagem Inicial" md="6" fechar="fechar">
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Queixa Principal <span class="required">*</span></label>
						<form:textarea path="" id="queixa"
							class="form-control" required="required" rows="2" />
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Observação </label>
						<form:textarea path="" id="observacao"
							class="form-control" rows="2" />
					</div>

				</div>
			</t:painel>
	
			<t:painel title="Alergias" md="6" fechar="fechar">
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Substância <span class="required">*</span></label>
						<form:select path="" id="substancia"
							class="form-control" required="required">
							<form:option value=""></form:option>
							<form:option value="ANTRAQUINONA">ANTRAQUINONA</form:option>
							<form:option value="BENZOCAÍNA">BENZOCAÍNA</form:option>
							<form:option value="OUTROS ">OUTROS</form:option>
						</form:select>

					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Observação <span class="required">*</span></label>
						<form:textarea path=""
							id="observacaoAlergia" class="form-control" required="required"
							rows="3" />
					</div>

				</div>
			</t:painel>
		</div>
		<div class="row">
			<t:painel title="Sinais Vitais" md="6" fechar="fechar"> 
				<div class="row">
					<div class="form-group col-md-6">
						<label for="">Frequência Cardíaca(BPM)</label>
						<form:input path="" id="frequenciaCardiaca" class="form-control" />							
					</div>
					<div class="form-group col-md-6">
						<label for="">Frequência Respiratória(IRPM)</label>
						<form:input path="" id="frequenciaRespiratoria" class="form-control"/>							

					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-6">
						<label for="">Glicemia</label>
						<form:input path="" id="glicemia" class="form-control"/>							
					</div>
					<div class="form-group col-md-6">
						<label for="">Peso(Kg)</label>
						<form:input path="" id="peso" class="form-control"/>							

					</div>
				</div>
								<div class="row">
					<div class="form-group col-md-6">
						<label for="">Pressão Arterial Sistólica</label>
						<form:input path="" id="pressaoArterialSistolica" class="form-control"/>							
					</div>
					<div class="form-group col-md-6">
						<label for="">Pressão Arterial Diastólica</label>
						<form:input path="" id="pressaoArterialDiastolica" class="form-control"/>							

					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-6">
						<label for="">Saturação Periférica O2(%) </label>
						<form:input path="" id="saturacaoPerifericaO2" class="form-control"/>							
					</div>
					<div class="form-group col-md-6">
						<label for="">Temperatura(ºC) </label>
						<form:input path="" id="temperatura" class="form-control"/>							

					</div>
				</div>
			</t:painel>
			
			<t:painel title="Avaliação" md="6" >
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Escala de dor  <span class="required">*</span></label>
						<form:select path="" id="escalaDeDor"
							class="form-control" >
							<form:option value=""></form:option>
							<form:option value="SEM DOR">0 (Sem dor)</form:option>
							<form:option value="FRACA">1 à 3 (Fraca)</form:option>							
							<form:option value="MODERADA">4 à 6 (Moderada)</form:option>							
							<form:option value="INTENSA">7 à 9 (Intensa)</form:option>							
							<form:option value="INSUPORTAVEL">10 (Insuportável)</form:option>							
							
						</form:select>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Classificação de Risco<span class="required">*</span></label>
						<form:select path="" id="avaliacaoDeRisco"
							class="form-control" >
							<form:option value=""></form:option>
							<form:option value="EMERGENCIA">Emergência</form:option>
							<form:option value="MUITO URGENTE"> Muito Urgente</form:option>							
							<form:option value="URGENTE">Urgente</form:option>							
							<form:option value="POUCO URGENTE">Pouco Urgente</form:option>							
							<form:option value="NÃO URGENTE">Não Urgente</form:option>							
							
						</form:select>
					</div>
				</div>
	    		<div class="ln_solid"></div>
	    		<c:if test="${id != null}">
                    <div class="form-group">
                        <div class="col-md-8 col-sm-4 col-xs-8 col-md-offset-4">
                            <button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
                            <button type="submit" class="btn btn-warning">Atualizar</button>
                            <input type="hidden" name="id" id="id" class="form-control" value="${id}">
                        </div>
                    </div>
                </c:if>
                <c:if test="${id == null}">
                    <div class="form-group">
                        <div class="col-md-8 col-sm-4 col-xs-8 col-md-offset-4">
                           <button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
                            <button type="submit" class="btn btn-success">Salvar</button>
                        </div>
                    </div>
                </c:if>
			</t:painel>
		</div>
	</form:form>
</t:layoutDashboard>
