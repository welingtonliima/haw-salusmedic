<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layout module="Prestador">
	<div class="row">
		<t:painel title="Cadastro de Prestador">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<form:form action="${s:mvcUrl('adiconarPrestador').build()}" method="post" commandName="prestador" class="form-horizontal form-label-left">
				<div class="row">
					<div class="form-group col-md-2">
						<label for="">Código</label>
						<input type="text" name="" id="" class="form-control" disabled="disabled" value="${id}">
					</div>
					<div class="form-group col-md-4">
						<label for="">Nome <span class="required">*</span></label>
						<form:input path="nome" id="nome" class="form-control" required="required"/>
					</div>
					<div class="form-group col-md-2">
						<label for="">Data de Nascimento</label>
						<form:input path="dataNascimento" id="dataNascimento" class="form-control" data-inputmask="'mask': '99/99/9999'"/>	
					</div>
					<div class="form-group col-md-2">
						<label for="">Sexo</label>
						<form:select path="sexo" id="sexo" class="form-control">
							<form:option value=""></form:option>
							<form:option value="INDEFINIDO">Indefinido</form:option>
							<form:option value="FEMININO">Feminino</form:option>
							<form:option value="MASCULINO">Masculino</form:option>
						</form:select>
					</div>
					<div class="form-group col-md-2">
						<label for="">Nacionalidade</label>
						<form:select path="nacionalidade" id="nacionalidade" class="form-control">
							<form:option value=""></form:option>
							<form:option value="BRASILEIRA">Brasileira</form:option>
							<form:option value="ESTRANGEIRA">Estrangeira</form:option>
						</form:select>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Especialidade</label>                    
                      	<form:select path="especialidades" class="select2_multiple form-control" tabindex="-1">
                        	<c:forEach items="${especialidades}" var="especialidade">
                        		<form:option value="${especialidade.id}"> ${especialidade.descricao}</form:option>
                        	</c:forEach>
                        </form:select>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Hospital</label>                    
                      	<form:select path="hospitais" class="select2_multiple form-control" tabindex="-1">
                        	<c:forEach items="${hospitais}" var="hospital">
                        		<form:option value="${hospital.id}"> ${hospital.nome}</form:option>
                        	</c:forEach>
                        </form:select>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-4">
						<label for="">Tipo de Prestador</label>                    
                      	<form:select path="tipoPrestador.id" class="select2_single form-control" tabindex="-1">
                        	<c:forEach items="${tipoPrestadores}" var="tipoPrestador">
                        		<form:option value="${tipoPrestador.id}"> ${tipoPrestador.descricao}</form:option>
                        	</c:forEach>
                        </form:select>
					</div>
					<div class="form-group col-md-4">
						<label for="">Conselho</label>
						<form:select path="tipoConselho.id" class="select2_single form-control" tabindex="-1">
                        	<c:forEach items="${tipoConselhos}" var="tipoConselho">
                        		<form:option value="${tipoConselho.id}"> ${tipoConselho.descricao}</form:option>
                        	</c:forEach>
                        </form:select> 
					</div>
					<div class="form-group col-md-4">
						<label for="">Número do Conselho</label>
					    <form:input path="numeroConselho" id="numeroConselho" class="form-control" />
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="">CPF</label>
						<form:input path="cpf" id="cpf" class="form-control" data-inputmask="'mask': '999.999.999-99'"/>
					</div>
					<div class="form-group col-md-3">
						<label for="">Identidade</label>
						<form:input type="number" path="carteiraDeIdentidade.numeroRG" id="numeroRG" class="form-control"/>
					</div>
					<div class="form-group col-md-3">
						<label for="">Órgão Emissor</label>
						<form:input path="carteiraDeIdentidade.orgaoEmissor" id="orgaoEmissor" class="form-control"/>
					</div>
					<div class="form-group col-md-3">
						<label for="">Data Expedição</label>
						<form:input path="carteiraDeIdentidade.dataExpedicao" id="dataExpedicao" class="form-control" data-inputmask="'mask': '99/99/9999'"/>	
					</div>
				</div>
				<div class="row">
				<div class="form-group col-md-2">
						<label for="">CEP</label>
						<form:input path="endereco.cep" id="cep" class="form-control" size="10" maxlength="9" onblur="pesquisacep(this.value);"/> 
					</div>
					<div class="form-group col-md-4">
						<label for="">Endereço</label>
						<form:input path="endereco.logradouro" id="logradouro" class="form-control" size="60"/>
					</div>
					<div class="form-group col-md-2">
						<label for="">Número</label>						 
						<form:input path="endereco.numero" id="numero" class="form-control" />
					</div>
					<div class="form-group col-md-4">
						<label for="">Complemento</label>						 
						<form:input path="endereco.complemento" id="complemento" class="form-control"/>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="">Bairro</label>				 
						<form:input path="endereco.bairro" id="bairro" class="form-control" size="40"/>
					</div>
					<div class="form-group col-md-3">
						<label for="">Cidade</label>					
						<form:input path="endereco.cidade" id="cidade" class="form-control" size="40" />
					</div>
					<div class="form-group col-md-2">
						<label for="">UF</label> 
						<form:input path="endereco.uf" id="uf" class="form-control" size="2" />
					</div>
					<div class="form-group col-md-4">
						<label for="">Email</label> 
						<form:input type="email" path="contato.email" id="email" class="form-control" minlength="6" maxlength="100"/>
					</div>
				</div>
			    <div class="row">
				    <div class="form-group col-md-4">
						<label for="">Telefone</label> 
						<form:input path="contato.telefone" id="telefone" class="form-control" data-inputmask="'mask': '(99) 9999-9999'"/>
					</div>
					<div class="form-group col-md-4">
						<label for="">Celular</label> 
						<form:input path="contato.celular" id="celular" class="form-control" data-inputmask="'mask': '(99) 99999-9999'"/>
					</div>
					<div class="form-group col-md-4">
						<label for="">Fone Comercial</label> 
						<form:input path="contato.foneComercial" id="foneComercial" class="form-control" data-inputmask="'mask': '(99) 9999-9999'"/>
					</div>
				</div>
				<div class="ln_solid"></div>
				<c:if test="${id != null}">
					<div class="form-group">
						<div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
							<button type="reset" value="Reset" class="btn btn-primary">Voltar</button>
							<button type="submit" class="btn btn-warning">Atualizar</button>
						</div>
					</div>
				</c:if>
				<c:if test="${id == null}">
					<div class="form-group">
						<div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
							<button type="reset" value="Reset" class="btn btn-primary">Voltar</button>
							<button type="submit" class="btn btn-success">Cadastrar</button>
						</div>
					</div>
				</c:if>
			</form:form>
		</t:painel>
	</div>
</t:layout>
