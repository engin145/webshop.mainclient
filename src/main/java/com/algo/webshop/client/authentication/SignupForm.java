package com.algo.webshop.client.authentication;

import com.algo.webshop.common.domain.User;

@SuppressWarnings("serial")
public class SignupForm extends User {
	
	private String confirmPass;

	public String getConfirmPass() {
		return confirmPass;
	}

	public void setConfirmPass(String confirmPass) {
		this.confirmPass = confirmPass;
	}
}
