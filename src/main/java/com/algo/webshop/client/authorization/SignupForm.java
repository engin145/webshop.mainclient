package com.algo.webshop.client.authorization;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class SignupForm {
	@Size(min = 3, max = 16, message = "��� ������ ���� �� ������ 3 ��������")
	private String name;

	@Size(min = 3, max = 16, message = "������ ������ ���� �� ������ 3 ��������")
	private String password;

	@Size(min = 3, max = 16, message = "��������� ������ ���� �� ������ 3 ��������")
	private String login;

	@Size(min = 3, max = 16, message = "������ ������ ���� �� ������ 3 ��������")
	private String confirmPassword;

	@Email(message="�� ���������� E-mail �����")
	@NotBlank(message="�� ���������� E-mail �����")
	private String email;

	@NotBlank(message="��������� ����")
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
