<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script type="text/javascript">
	$(document).ready(function() {
		$('#login-trigger').click(function() {
			$(this).next('#login-content').slideToggle();
			$(this).toggleClass('active');

			if ($(this).hasClass('active'))
				$(this).find('span').html('&#x25B2;')
			else
				$(this).find('span').html('&#x25BC;')
		})
	});
</script>
<nav>
<form action="signIn" method="POST">
	<ul>
		<li id="login"><a href="#" id="login-trigger"> Войти <span>&#x25BC;</span>
		</a>
			<div id="login-content">
				<fieldset id="inputs">
					<input id="username" type="text" name="login"> <input
						id="password" type="password" name="password">
				</fieldset>
				<fieldset id="actions">
					<input type="submit" id="submit" value="Войти">
				</fieldset>
			</div></li>
		<li id="signup"><a href="signup">Регистрация</a></li>
	</ul>
	</form>
</nav>