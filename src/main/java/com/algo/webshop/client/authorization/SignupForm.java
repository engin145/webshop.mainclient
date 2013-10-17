package com.algo.webshop.client.authorization;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class SignupForm {
	@Size(min = 3, max = 16, message = "Имя должно быть не меньше 3 символов")
	private String name;

	@Size(min = 3, max = 16, message = "Пароль должно быть не меньше 3 символов")
	private String password;

	@Size(min = 3, max = 16, message = "Псевдоним должно быть не меньше 3 символов")
	private String login;

	@Size(min = 3, max = 16, message = "Пароль должно быть не меньше 3 символов")
	private String confirmPassword;

	@Email(message="Не коректнный E-mail адрес")
	@NotBlank(message="Не коректнный E-mail адрес")
	private String email;

	@NotBlank(message="Заполните поле")
	private String phone;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
}
