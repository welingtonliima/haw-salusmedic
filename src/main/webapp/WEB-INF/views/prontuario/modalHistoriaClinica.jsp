<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">História Clínica</h4>
      </div>
      
      <form:form action="" method="post" commandName="atendimento" class="form-horizontal form-label-left">
      
      	<div class="modal-body">
			<div class="row">
   				<div class="form-group col-md-3">
		        	<input type="checkbox" name="avc" id="avc" value=true/> AVC<br />
	        	</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="asma" id="asma" value=true/> Asma<br />
	        	</div>
		       	<div class="form-group col-md-3">					
					<input type="checkbox" name="cancer" id="cancer" value=true/> Câncer<br />
				</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="coracao" id="coracao" value=true/> Coração<br />
				</div>
			</div>
			<div class="row">
   				<div class="form-group col-md-3">
		        	<input type="checkbox" name="desnutricao" id="desnutricao" value=true/> Desnutrição<br />
	        	</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="diabetes" id="diabetes" value=true/> Diabetes<br />
	        	</div>
		       	<div class="form-group col-md-3">					
					<input type="checkbox" name="tabagismo" id="tabagismo" value=true/> Tabagismo<br />
				</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="infarto" id="infarto" value=true/> Infarto<br />
				</div>
			</div>
			<div class="row">
   				<div class="form-group col-md-3">
		        	<input type="checkbox" name="obesidade" id="obesidade" value=true/> Obesidade<br />
	        	</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="saudeMental" id="saudeMental" value=true/> Saúde Mental<br />
	        	</div>
		       	<div class="form-group col-md-3">					
					<input type="checkbox" name="usarioAlcool" id="usarioAlcool"  value=true/> Usuário de Álcool<br />
				</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="usuarioDeDrogas" id="usuarioDeDrogas"  value=true/> Usuário de Drogas<br />
				</div>
			</div>			
		
				<input type="checkbox" name="hipertensaoArterial" id="hipertensaoArterial" value=true/> Hipertensão Arterial<br />
	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
	        <button type="button" class="btn btn-primary">Salvar</button>
	      </div>
	    </form:form>
    </div>
  </div>
</div>