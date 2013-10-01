package com.algo.webshop.client.authentication;

import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class SignupValidator implements Validator {
	public boolean supports(Class<?> clazz) {
		return SignupForm.class.isAssignableFrom(clazz);
	}
	
	public void validate(Object target, Errors errors) {
		SignupForm signupForm = (SignupForm) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "login", "login.empty", "Login must not be empty.");
		String username = signupForm.getName();
		if ((username.length()) > 16) {
			errors.rejectValue("login", "login.tooLong", "Login must not more than 16 characters.");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "pass", "pass.empty", "Password must not be empty.");
		if (!(signupForm.getPass()).equals(signupForm
				.getConfirmPass())) {
			errors.rejectValue("confirmPassword", "confirmPassword.passwordDontMatch", "Passwords don't match.");
		}
		
		if( !EmailValidator.getInstance().isValid( signupForm.getEmail() ) ){
			errors.rejectValue("email", "email.notValid", "Email address is not valid.");
		}
	}
	
}
