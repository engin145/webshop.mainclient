package com.algo.webshop.client.authentication;

import com.algo.webshop.common.domain.User;

public class SignupForm extends User {
	private static final long serialVersionUID = 7581819427482830417L;
	
	private String confirmPass;

	public String getConfirmPass() {
		return confirmPass;
	}

	public void setConfirmPass(String confirmPass) {
		this.confirmPass = confirmPass;
	}
}
