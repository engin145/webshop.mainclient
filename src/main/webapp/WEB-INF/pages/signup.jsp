<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style>
.error {
	color: #ff0000;
}
#registration {
	width: 600px;
}

</style>
<div id="content">
	<div id="registration">
		<h1>Регистрация</h1>
		<form:form method="post" modelAttribute="signupForm">
				<p>Псевдоним:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<form:input path="login" /><span class="error">&nbsp&nbsp <form:errors path="login"/></span></p>
				<p>Имя:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<form:input path="name" /><span class="error">&nbsp&nbsp <form:errors path="name"/></span></p>
				<p>Пароль:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<form:input path="password" /><span class="error">&nbsp&nbsp <form:errors path="password"/></span></p>
				<p>Подтвердить пароль:&nbsp&nbsp<form:input path="confirmPassword" /><span class="error"> &nbsp&nbsp<form:errors path="confirmPassword"/></span></p>
				<p>Телефон:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<form:input path="phone" /><span class="error">&nbsp&nbsp <form:errors path="phone"/></span></p>
				<p>Email:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<form:input path="email" /><span class="error">&nbsp&nbsp <form:errors path="email"/></span></p>
				
			<input type="submit" value="Регистрация">
		</form:form>
	</div>
</div>