<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<t:layoutDashboard module="Paciente">
	<div class="row">
		<t:painel title="Cadastro de Paciente">
		<form:form action="${s:mvcUrl('adicionarPaciente').build()}" method="post" commandName="paciente" class="form-horizontal form-label-left">
				<div class="row">
					<div class="form-group col-md-2">
						<label for="">Código</label>
						<input type="text" name="" id="id" class="form-control" disabled="disabled" value="${id}">
					</div>
					<div class="form-group col-md-4">
						<label for="">Nome <span class="required">*</span></label>
						<form:input path="nome" id="nome" class="form-control" required="required"/>
						<form:errors path="nome"></form:errors>
					</div>
					<div class="form-group col-md-2">
						<label for="">Data de Nascimento<span class="required">*</span></label>
						<form:input path="dataNascimento" id="dataNascimento" class="form-control" data-inputmask="'mask': '99/99/9999'" required="required"/>	
						<form:errors path="dataNascimento"></form:errors>
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
						<label for="">Estado Civil</label>
						<form:select path="estadoCivil" id="estadoCivil" class="form-control">
							<form:option value=""></form:option>
							<form:option value="SOLTEIRO">Solteiro(a)</form:option>
							<form:option value="CASADO">Casado(a)</form:option>
							<form:option value="SEPARADO">Separado(a)</form:option>
							<form:option value="DIVORCIADO">Divorciado(a)</form:option>
							<form:option value="VIÚVO">Viúvo(a)</form:option>
						</form:select>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-2">
						<label for="">Raça/Cor</label>
						<form:select path="raca" id="raca" class="form-control">
							<form:option value=""></form:option>
							<form:option value="SEM INFORMAÇÃO">Sem informação</form:option>
							<form:option value="BRANCA">Branca</form:option>
							<form:option value="INDIGENA">Indígena</form:option>
							<form:option value="PARDA">Parda</form:option>
							<form:option value="PRETA">Preta</form:option>
						</form:select>
					</div>
					<div class="form-group col-md-3">
						<label for="">Nome da Mãe<span class="required">*</span></label>
						<form:input path="nomeDaMae" id="nomeDaMae" class="form-control" minlength="3" maxlength="70" required="required"/>
						<form:errors path="nomeDaMae"></form:errors>
					</div>
					<div class="form-group col-md-3">
						<label for="">Nome do Pai</label>
						<form:input path="nomeDoPai" id="nomeDoPai" class="form-control" minlength="3" maxlength="70"/>	
					</div>
					<div class="form-group col-md-2">
						<label for="">Naturalidade<span class="required">*</span></label>
						<form:input path="naturalidade" id="naturalidade" class="form-control" required="required"/>
						<form:errors path="naturalidade"></form:errors>
					</div>
					<div class="form-group col-md-2">
						<label for="">Nacionalidade<span class="required">*</span></label>
						<form:select path="nacionalidade" id="nacionalidade" class="form-control" required="required">
							<form:option value=""></form:option>
							<form:option value="BRASILEIRA">Brasileira</form:option>
							<form:option value="ESTRANGEIRA">Estrangeira</form:option>
						</form:select>
						<form:errors path="nacionalidade"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="">Carteira Nacional da Saúde (CNS)<span class="required">*</span></label>
						<form:input path="carteiraNacionalDaSaude" id="carteiraNacionalDaSaude" class="form-control" data-inputmask="'mask': '999.999.999.999.999'" required="required" />
						<form:errors path="carteiraNacionalDaSaude"></form:errors> 
					</div>
					<div class="form-group col-md-2">
						<label for="">CPF<span class="required">*</span></label>
						<form:input path="cpf" id="cpf" class="form-control" data-inputmask="'mask': '999.999.999-99'" required="required"/>
						<form:errors path="cpf"></form:errors>
					</div>
					<div class="form-group col-md-3">
						<label for="">Identidade</label>
						<form:input type="number" path="carteiraDeIdentidade.numeroRG" id="numeroRG" class="form-control"/>
					</div>
					<div class="form-group col-md-2">
						<label for="">Órgão Emissor</label>
						<form:input path="carteiraDeIdentidade.orgaoEmissor" id="orgaoEmissor" class="form-control"/>
					</div>
					<div class="form-group col-md-2">
						<label for="">Data Expedição</label>
						<form:input path="carteiraDeIdentidade.dataExpedicao" id="dataExpedicao" class="form-control" data-inputmask="'mask': '99/99/9999'"/>	
					</div>
				</div>
				<div class="row">
					<div class="form-group col-md-3">
						<label for="">Certidão de Nascimento</label>
						<form:input path="certidaoNascimento.numeroCertidaoNascimento" id="numeroCertidaoNascimento" class="form-control"/> 
					</div>
					<div class="form-group col-md-3">
						<label for="">Cartório</label>
						<form:input path="certidaoNascimento.cartorio" id="cartorio" class="form-control"/>
					</div>
					<div class="form-group col-md-2">
						<label for="">Livro</label>
						<form:input path="certidaoNascimento.livro" id="livro" class="form-control"/>
					</div>
					<div class="form-group col-md-2">
						<label for="">Folha</label>
						<form:input path="certidaoNascimento.folha" id="folha" class="form-control"/>
					</div>
					<div class="form-group col-md-2">
						<label for="">Data Emissão</label>
						<form:input path="certidaoNascimento.dataEmissao" id="certidaoNascimento" class="form-control" data-inputmask="'mask': '99/99/9999'"/>	
					</div>
				</div>
				<div class="row">
				<div class="form-group col-md-2">
						<label for="">CEP<span class="required">*</span></label>
						<form:input path="endereco.cep" id="cep" class="form-control" size="10" maxlength="9" onblur="pesquisacep(this.value);" required="required"/>
						<form:errors path="endereco.cep"></form:errors> 
					</div>
					<div class="form-group col-md-4">
						<label for="">Endereço</label>
						<form:input path="endereco.logradouro" id="logradouro" class="form-control" size="60"/>
					</div>
					<div class="form-group col-md-2">
						<label for="">Número<span class="required">*</span></label>						 
						<form:input path="endereco.numero" id="numero" class="form-control" required="required" />
						<form:errors path="endereco.numero"></form:errors>					
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
						<label for="">Email<span class="required">*</span></label> 
						<form:input type="email" path="contato.email" id="email" class="form-control" minlength="6" maxlength="100" required="required"/>
						<form:errors path="contato.email"></form:errors>
					</div>
				</div>
			    <div class="row">
				    <div class="form-group col-md-3">
						<label for="">Telefone</label> 
						<form:input path="contato.telefone" id="telefone" class="form-control" data-inputmask="'mask': '(99) 9999-9999'"/>
					</div>
					<div class="form-group col-md-3">
						<label for="">Celular<span class="required">*</span></label>
						<form:input path="contato.celular" id="celular" class="form-control" data-inputmask="'mask': '(99) 99999-9999'" required="required"/>
						<form:errors path="contato.celular"></form:errors>
					</div>
					<div class="form-group col-md-3">
						<label for="">Fone Comercial</label> 
						<form:input path="contato.foneComercial" id="foneComercial" class="form-control" data-inputmask="'mask': '(99) 9999-9999'"/>
					</div>
					<div class="form-group col-md-3">
						<label for="">Permissão de Acesso</label>
						<form:select path="usuario.perfis" class="select2_multiple form-control"  tabindex="-1" required="required" >
							<option  value="5" selected>PACIENTE</option>
						</form:select>
					</div>
				</div>
				
	    		<div class="ln_solid"></div>
	    		<c:if test="${id != null}">
                    <div class="form-group">
                        <div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
                            <button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
                            <button type="submit" class="btn btn-warning">Atualizar</button>
                            <input type="hidden" name="id" id="id" class="form-control" value="${id}">
                            <input type="hidden" name="usuario.id" value="${paciente.usuario.id}">
							<input type="hidden" name="endereco.id" value="${paciente.endereco.id}">
							<input type="hidden" name="contato.id" value="${paciente.contato.id}">
                        </div>
                    </div>
                </c:if>
                <c:if test="${id == null}">
                    <div class="form-group">
                        <div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
                           <input type="hidden" name="tipoSanguineo" value="">
                           <button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
                            <button type="submit" class="btn btn-success">Cadastrar</button>                            
                        </div>
                    </div>
                </c:if>
			</form:form>
		</t:painel>
	</div>
</t:layoutDashboard>
