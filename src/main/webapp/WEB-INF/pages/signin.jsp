<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/JavaScript"
 src="${pageContext.request.contextPath}/resources/js/jquery-1.9.1.min.js">
</script>

<script type="text/javascript">
<!--
	
	function send() {
		var login = $("#login").val();
		var pass = $("#pass").val();
		$.ajax({
			type : 'GET',
			url : 'inputLog',
			dataType: 'json',
			contentType: 'application/json',
		    mimeType: 'application/json',
		    data : ({
				text: login
			}),
			success: function (data) {
				$("#login_mes").text(data.login);
			}
		});
	}
//-->
</script>
</head>
<body>
	<div>
		<table border="0">
			<tr>
				<td>Login:</td>
				<td><input type="text" id="login" /></td>
				<td id="login_mes"></td>
			</tr>
			<tr>
				<td>Pass:</td>
				<td><input type="password" id="pass" /></td>
				<td id="pass_mes"></td>
			</tr>
			<tr>
				<td align="right" colspan="2"><input type="button"
					onclick="send();" value="Login" /></td>
			</tr>
		</table>
		<p>
			<a href="forgotpass">Forgot your password</a>
		</p>
		<p>
			<a href="signup">Sign up</a>
		</p>

	</div>
</body>
</html>

