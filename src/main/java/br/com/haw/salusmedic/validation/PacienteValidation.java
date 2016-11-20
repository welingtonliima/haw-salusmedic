package br.com.haw.salusmedic.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.haw.salusmedic.model.Paciente;

public class PacienteValidation implements Validator{

	public boolean supports(Class<?> clazz) {
        return Paciente.class.isAssignableFrom(clazz);
	}

	 @Override
	 public void validate(Object target, Errors errors) {
		 ValidationUtils.rejectIfEmpty(errors, "nome", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "dataNascimento", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "nomeDaMae", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "naturalidade", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "nacionalidade", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "carteiraNacionalDaSaude", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "cpf", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "endereco.numero", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "contato.email", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "contato.celular", "field.required");
		 Paciente paciente = (Paciente) target;
	}
}
