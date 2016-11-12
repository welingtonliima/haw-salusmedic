<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<t:layout module="Especialidade">
    <div class="row">
        <t:painel title="Cadastro de Especialidade">
            <input type="hidden" id="statusNotificacao" value="${status}">
            <input type="hidden" id="menssagemNotificacao" value="${menssagem}">
            <form:form action="${s:mvcUrl('adiconaEspecialidade').build()}" method="post" commandName="especialidade" class="form-horizontal form-label-left">
                <div class="row">
                    <div class="form-group col-md-2">
                        <label for="">Código</label>
                        <input type="text" name="" id="" class="form-control" disabled="disabled" value="${id}">
                    </div>
                    <div class="form-group col-md-4">
                        <label for="">Descriscao <span class="required">*</span></label>
                        <form:input path="descricao" id="descricao" class="form-control" required="required" value="${descricao}"/>
                    </div>
                </div>
                <div class="ln_solid"></div>
                <c:if test="${id != null}">
                    <div class="form-group">
                        <div class="col-md-4 col-sm-4 col-xs-8 col-md-offset-4">
                            <button type="button" value="voltar" class="btn btn-primary" onclick="voltarAnterior();"">Voltar</button>
                            <button type="submit" class="btn btn-warning">Atualizar</button>
                            <input type="hidden" name="id" id="id" class="form-control" value="${id}">
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
</t:layout>