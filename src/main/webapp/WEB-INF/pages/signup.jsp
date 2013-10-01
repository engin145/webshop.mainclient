<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<style type="text/css">
span.error {
	color: red;
}
</style>
</head>
<body>

	<!--
	function f_pres() {
		if (true) {
			
			document.write("Выполнился if");
		}
		else {
			document.write("Выполнился else");
		}
	//-->


	<h1>Sign Up</h1>
	<form:form method="post" commandName="signupForm">
		<table border="0">
			<tr>
				<td>Your name:</td>
				<td><form:input path="name" /></td>
				<td><span class="error"><form:errors path="name" /></span></td>
			</tr>
			<tr>
				<td>Login:</td>
				<td><form:input path="login" /></td>
				<td><span class="error"><form:errors path="login" /></span></td>
			</tr>
			<tr>
				<td>Pass:</td>
				<td><form:password path="pass" /></td>
				<td><span class="error"><form:errors path="pass" /></span></td>
			</tr>
			<tr>
				<td>Pass confirm:</td>
				<td><form:password path="confirmPass" /></td>
				<td><span class="error"><form:errors path="confirmPass" /></span></td>
			</tr>
			<tr>
				<td>e-mail:</td>
				<td><form:input path="email" /></td>
				<td><span class="error"><form:errors path="email" /></span></td>
			</tr>
			<tr>
				<td>Phone:</td>
				<td><form:input path="phone" /></td>
				<td><span class="error"><form:errors path="phone" /></span></td>
			</tr>
			<tr>
				<td></td>
				<td align="right"><input type="submit" value= "Sign up" /></td>
				<td></td>
			</tr>

		</table>
	</form:form>

</body>
</html>