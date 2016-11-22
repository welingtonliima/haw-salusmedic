<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<div class="modal fade" id="modalHistoriaClinica" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">História Clínica</h4>
      </div>
      
      <form:form action="${s:mvcUrl('alterarHistoriaClinica').build()}" method="post" commandName="atendimento" class="form-horizontal form-label-left">
      
      ${atendimento} 
      	<div class="modal-body">
			<div class="row">
   				<div class="form-group col-md-3">
		        	<input type="checkbox" name="atendimento.prontuario.historiaClinica.avc" id="avc" value=true/> AVC<br />
	        	</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="atendimento.prontuario.historiaClinica.asma" id="asma" value=true/> Asma<br />
	        	</div>
		       	<div class="form-group col-md-3">					
					<input type="checkbox" name="atendimento.prontuario.historiaClinica.cancer" id="cancer" value=true/> Câncer<br />
				</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="atendimento.prontuario.historiaClinica.coracao" id="coracao" value=true/> Coração<br />
				</div>
			</div>
			<div class="row">
   				<div class="form-group col-md-3">
		        	<input type="checkbox" name="atendimento.prontuario.historiaClinica.desnutricao" id="desnutricao" value=true/> Desnutrição<br />
	        	</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="atendimento.prontuario.historiaClinica.diabetes" id="diabetes" value=true/> Diabetes<br />
	        	</div>
		       	<div class="form-group col-md-3">					
					<input type="checkbox" name="atendimento.prontuario.historiaClinica.tabagismo" id="tabagismo" value=true/> Tabagismo<br />
				</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="atendimento.prontuario.historiaClinica.infarto" id="infarto" value=true/> Infarto<br />
				</div>
			</div>
			<div class="row">
   				<div class="form-group col-md-3">
		        	<input type="checkbox" name="atendimento.prontuario.historiaClinica.obesidade" id="obesidade" value=true/> Obesidade<br />
	        	</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="atendimento.prontuario.historiaClinica.saudeMental" id="saudeMental" value=true/> Saúde Mental<br />
	        	</div>
		       	<div class="form-group col-md-3">					
					<input type="checkbox" name="atendimento.prontuario.historiaClinica.usarioAlcool" id="usarioAlcool"  value=true/> Usuário de Álcool<br />
				</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="atendimento.prontuario.historiaClinica.usuarioDeDrogas" id="usuarioDeDrogas"  value=true/> Usuário de Drogas<br />
				</div>
			</div>			
		
				<input type="checkbox" name="atendimento.prontuario.historiaClinica.hipertensaoArterial" id="hipertensaoArterial" value=true/> Hipertensão Arterial<br />
	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
	        <button type="submit" class="btn btn-primary">Salvar</button>
	      </div>
	    </form:form>
    </div>
  </div>
</div>