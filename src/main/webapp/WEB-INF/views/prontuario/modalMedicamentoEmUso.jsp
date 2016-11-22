<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="modal fade" id="modalMedicamentoEmUso" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Medicamento em Uso</h4>
      </div>
      
      <form:form action="" >
      
      	<div class="modal-body">
			<div class="row">
   				<div class="form-group col-md-10">
					<label for="">Tipo de Medicamento </label>
					<select name="tipoMedicamento" id="tipoMedicamento" class="form-control" required="required">
						<option value=""></option>
						
					</select>	 					     	
				</div>
			</div>
			<div class="row">
				<div class="form-group col-md-2">
					<label for="">quantidade</label>
					<input name="quantidade" id="quantidade" class="form-control" />							
				</div>
				<div class="form-group col-md-8">
					<label for="">Unidade</label>
					<select name="unidade" id="unidade" class="form-control" >
						<option value=""></option>
					</select>	 					     										
				</div>			
			</div>
			<div class="row">
				<div class="form-group col-md-10">
					<label for="">Forma de Aplicação</label>
					<select name="formaDeAplicacacao" id="formaDeAplicacacao" class="form-control" >
						<option value=""></option>
					</select>	 					     										
				</div>		
			</div>
			<div class="row">
				<div class="form-group col-md-10">
					<label for="">Frequencia</label>
					<select name="frequencia" id="frequencia" class="form-control" >
						<option value=""></option>
					</select>	 					     										
				</div>		
			</div>
			<div class="row">
				<div class="form-group col-md-10">
					<label for="">Observações</label>
					<textarea name="observacao" id="observacao" class="form-control" rows="2"></textarea>							
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