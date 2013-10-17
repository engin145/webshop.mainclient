package com.algo.webshop.client.authorization;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class OrderForm {
	@NotBlank(message = "Имя должно быть не меньше 3 символов")
	@Size(min = 3, max = 16, message = "Имя должно быть не меньше 3 символов")
	private String name;

	@Email(message = "Не коректнный E-mail адрес")
	@NotBlank(message = "Не коректнный E-mail адрес")
	private String email;

	@NotBlank(message="Заполните поле")
	private String phone;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
