<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>


<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Hist�ria Cl�nica</h4>
      </div>
      
      <form:form action="${s:mvcUrl('alterarHistoriaClinica').build()}" method="post" commandName="atendimento" class="form-horizontal form-label-left"> 
      	<div class="modal-body">
			<div class="row">
   				<div class="form-group col-md-3">
   					<input type="hidden" name="id" value="${atendimento.id}">
   					<input type="hidden" name="paciente.id" value="${atendimento.paciente.id}">
		        	<input type="checkbox" name="paciente.prontuario.historiaClinica.avc" id="avc" value=true/> AVC<br />
	        	</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="paciente.prontuario.historiaClinica.asma" id="asma" value=true/> Asma<br />
	        	</div>
		       	<div class="form-group col-md-3">					
					<input type="checkbox" name="paciente.prontuario.historiaClinica.cancer" id="cancer" value=true/> C�ncer<br />
				</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="paciente.prontuario.historiaClinica.coracao" id="coracao" value=true/> Cora��o<br />
				</div>
			</div>
			<div class="row">
   				<div class="form-group col-md-3">
		        	<input type="checkbox" name="paciente.prontuario.historiaClinica.desnutricao" id="desnutricao" value=true/> Desnutri��o<br />
	        	</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="paciente.prontuario.historiaClinica.diabetes" id="diabetes" value=true/> Diabetes<br />
	        	</div>
		       	<div class="form-group col-md-3">					
					<input type="checkbox" name="paciente.prontuario.historiaClinica.tabagismo" id="tabagismo" value=true/> Tabagismo<br />
				</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="paciente.prontuario.historiaClinica.infarto" id="infarto" value=true/> Infarto<br />
				</div>
			</div>
			<div class="row">
   				<div class="form-group col-md-3">
		        	<input type="checkbox" name="paciente.prontuario.historiaClinica.obesidade" id="obesidade" value=true/> Obesidade<br />
	        	</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="paciente.prontuario.historiaClinica.saudeMental" id="saudeMental" value=true/> Sa�de Mental<br />
	        	</div>
		       	<div class="form-group col-md-3">					
					<input type="checkbox" name="paciente.prontuario.historiaClinica.usarioAlcool" id="usarioAlcool"  value=true/> Usu�rio de �lcool<br />
				</div>
		       	<div class="form-group col-md-3">	
					<input type="checkbox" name="paciente.prontuario.historiaClinica.usuarioDeDrogas" id="usuarioDeDrogas"  value=true/> Usu�rio de Drogas<br />
				</div>
			</div>			
		
				<input type="checkbox" name="paciente.prontuario.historiaClinica.hipertensaoArterial" id="hipertensaoArterial" value=true/> Hipertens�o Arterial<br />
	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
	        <button type="submit" class="btn btn-primary">Salvar</button>
	      </div>
	    </form:form>
    </div>
  </div>
</div>