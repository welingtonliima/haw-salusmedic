<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>


<div class="modal fade" id="modalDoencasCronicas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Doenças Crônicas</h4>
      </div>
      
      <form:form action="" >
      
      	<div class="modal-body">
			<div class="row">
   				<div class="form-group col-md-10">
					<label for="">Diagnostico <span class="required">*</span></label>
					<select name="diagnostico" id="diagnostico" class="form-control" required="required">
						<option value=""></option>
						
					</select>	 					     	
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-6">
					<label for="">Tempo da Doença</label>
					<input name="tempoDaDoença" id="tempoDaDoença" class="form-control" />							
				</div>		
			</div>
			<div class="row">
				<div class="form-group col-md-6">
					<label for="">Observações</label>
					<input name="observacao" id="observacao" class="form-control" />							
				</div>		
			</div>
			
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
	        <button type="button" class="btn btn-primary">Salvar</button>
	      </div>
	    </form:form>
    </div>
  </div>
</div>