<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="signin" method="post">
			<table border="0">
				<tr>
					<td>Login:</td>
					<td><input type="text" name="login" /></td>
				</tr>
				<tr>
					<td>Pass:</td>
					<td><input type="password" name="pass" /></td>
				</tr>
				<tr>
					<td align="right" colspan="2"><input type="submit"
						value="Login" /></td>
				</tr>
			</table>
		</form>
		<p>
			<a href="forgotpass">Forgot your password</a>
		</p>
		<p>
			<a href="signup">Sign up</a>
		</p>

	</div>
</body>
</html>