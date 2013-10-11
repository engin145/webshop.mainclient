<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<nav>
	<ul>
		<li id="login"><a id="login-trigger" href="#"> Войти <span>&#x25BC;</span>
		</a>
			<div id="login-content">
				<form action="signIn" method="post">
					<fieldset id="inputs">
						<input id="username" type="text" name="login"> <input
							id="password" type="password" name="password">
					</fieldset>
					<fieldset id="actions">
						<input type="submit" id="submit" value="Войти"> <label><input
							type="checkbox" checked="checked"> Запомнить меня</label>
					</fieldset>
				</form>
			</div></li>
		<li id="signup"><a href="signup">Регистрация</a></li>
	</ul>
</nav>