package br.com.haw.salusmedic.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.haw.salusmedic.model.Prestador;

public class PrestadorValidation implements Validator{

	public boolean supports(Class<?> clazz) {
        return Prestador.class.isAssignableFrom(clazz);
	}

	 @Override
	 public void validate(Object target, Errors errors) {
		 ValidationUtils.rejectIfEmpty(errors, "nome", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "cpf", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "endereco.cep", "field.required");
		 ValidationUtils.rejectIfEmpty(errors, "contato.email", "field.required");
		 Prestador prestador = (Prestador) target;
	}
}
