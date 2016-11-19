<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>
<t:layoutDashboard module="Prestador">
	<div class="row">
		<t:painel title="Cadastro de Prestador">
			<input type="hidden" id="statusNotificacao" value="${status}">
			<input type="hidden" id="menssagemNotificacao" value="${menssagem}">
			<form:form action="${s:mvcUrl('adiconarPrestador').build()}" method="post" commandName="prestador" class="form-horizontal form-label-left">
			<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
				<div class="row">
					<div class="form-group col-md-2">
						<label for="">Código</label>
						<input type="text" name="" id="" class="form-control" disabled="disabled" value="${id}">
					</div>
					<div class="form-group col-md-4">
						<label for="">Nome <span class="required">*</span></label>
						<form:input path="nome" id="nome" class="form-control"  />
					</div>
					<div class="form-group col-md-2">
						<label for="">Data de Nascimento</label>
						<form:input path="dataNascimento" id="dataNascimento" class="form-control" data-inputmask="'mask': '99/99/9999'" />	
					</div>
					<div class="form-group col-md-2">
						<label for="">Sexo</label>
						<form:select path="sexo" id="sexo" class="form-control">
							<form:option value="INDEFINIDO">Indefinido</form:option>
						    <form:option value="FEMININO">Feminino</form:option>
							<form:option value="MASCULINO">Masculino</form:option>
						</form:select>
					</div>
					<div class="form-group col-md-2">
						<label for="">Nacionalidade</label>
						<form:select path="nacionalidade" id="nacionalidade" class="form-control">
							<form:option value="BRASILEIRA">Brasileira</form:option>
							<form:option value="ESTRANGEIRA">Estrangeira</form:option>
						</form:select>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Especialidade</label>                    
                         <form:select path="especialidades" class="select2_multiple form-control" tabindex="-1"  >
                         	<c:if test="${prestador.id eq null || prestador.id eq ''}">
                         		<c:forEach items="${especialidades}" var="allEspecilidades">
                        			<form:option value="${allEspecilidades.id}"> ${allEspecilidades.descricao}</form:option>
                        		</c:forEach>
                         	</c:if>
                         	<c:if test="${prestador.id ne null}">
                        		<c:forEach items="${prestador.especialidades}" var="especilidades">
                        			<form:option value="${especilidades.id}" selected="selected"> ${especilidades.descricao}</form:option>
                        		</c:forEach>
                        		<c:forEach items="${especialidades}" var="allEspecilidades">
                        			<form:option value="${allEspecilidades.id}"> ${allEspecilidades.descricao}</form:option>
                        		</c:forEach>
                         	</c:if>       	
                        </form:select>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-12">
						<label for="">Hospital</label>                    
                      	<form:select path="hospitais" class="select2_multiple form-control" tabindex="-1"  >
                         	<c:if test="${prestador.id eq null || prestador.id eq ''}">
                         		<c:forEach items="${hospitais}" var="hospital">
                        			<form:option value="${hospital.id}"> ${hospital.sigla}-${hospital.endereco.uf}</form:option>
                        		</c:forEach>
                         	</c:if>
                         	<c:if test="${prestador.id ne null}">
                        		<c:forEach items="${prestador.hospitais}" var="hospitais">
                        			<form:option value="${hospitais.id}" selected="selected">${hospitais.sigla}-${allHospitais.endereco.uf}</form:option>
                        		</c:forEach>
                         	</c:if>   	
                        </form:select>    
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="">Tipo de Prestador</label>                                             
                        <form:select path="tipoPrestador.id"  class="select2_single form-control" tabindex="-1" >
                        	<c:forEach items="${tipoPrestadores}" var="tipoPrestador">
                        		<form:option value="${tipoPrestador.id}" > ${tipoPrestador.descricao}</form:option>
                        	</c:forEach>
                        </form:select> 
					</div>
					<div class="form-group col-md-3">
						<label for="">Conselho</label>
						<form:select path="tipoConselho.id" class="select2_single form-control" tabindex="-1" >
                        	<c:forEach items="${tipoConselhos}" var="tipoConselho">
                        		<form:option value="${tipoConselho.id}"> ${tipoConselho.descricao}</form:option>
                        	</c:forEach>
                        </form:select> 
					</div>
					<div class="form-group col-md-2">
						<label for="">Número do Conselho</label>
					    <form:input path="numeroConselho" id="numeroConselho" class="form-control" />
					</div>
					<div class="form-group col-md-4">
						<label for="">Permissão de Acesso</label>                                             
                        <form:select path="usuario.perfis" class="select2_single form-control" tabindex="-1" >
                        	<c:forEach items="${perfis}" var="perfil">
                        		<form:option value="${perfil.id}"> ${perfil.ator}</form:option>
                        	</c:forEach>
                        </form:select> 
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="">CPF</label>
						<form:input path="cpf" id="cpf" class="form-control" data-inputmask="'mask': '999.999.999-99'" minlength="14"  />
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
						<form:input path="endereco.cep" id="cep" class="form-control"  size="10" maxlength="9" onblur="pesquisacep(this.value);"/> 
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
						<form:input type="email" path="contato.email" id="email" class="form-control" minlength="6" maxlength="100" />
					</div>
				</div>
			    <div class="row">
				    <div class="form-group col-md-4">
						<label for="">Telefone</label> 
						<form:input path="contato.telefone" id="telefone" class="form-control" data-inputmask="'mask': '(99) 9999-9999'"/>
					</div>
					<div class="form-group col-md-4">
						<label for="">Celular</label> 
						<form:input path="contato.celular" id="celular" class="form-control"  data-inputmask="'mask': '(99) 99999-9999'"/>
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
                            <button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
							<button type="submit" class="btn btn-warning">Atualizar</button>
							<input type="text" name="id" value="${id}">
						</div>
					</div>
				</c:if>
				<c:if test="${id == null}">
					<div class="form-group">
						<div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
                            <button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
							<button type="submit" class="btn btn-success">Cadastrar</button>
						</div>
					</div>
				</c:if>
			</form:form>
		</t:painel>
	</div>
</t:layoutDashboard>