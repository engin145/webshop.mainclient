<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div id="header">
	<img src="<s:url value="/resources/img/logotip.png"/>" />
	 <!-- Панель с кнопками -->
            <div class="panel">
                <a href="#login_form" id="login_pop">Войти</a>
                <a href="#join_form" id="join_pop">Регистрация</a>
                <a href="#" id="basket">Basket</a>
            </div>

        <!-- Форма №1 для модального окна -->
        <form action="login" method="post">
        <a href="#x" class="overlay" id="login_form"></a>
        <div class="popup">
            <h2>Здравствуй, Гость!</h2>
            <p>Вводи свой псевдоним и пароль</p>
            <div>
                <label for="login">Псевдоним</label>
                <input type="text" id="login" value="" />
            </div>
            <div>
                <label for="password">Пароль</label>
                <input type="password" id="password" value="" />
            </div>
            <input type="submit" value="Войти" />

            <a class="close" href="#close"></a>
        </div>
        </form>

        <!-- popup form #2 -->
		<form:form action="login" method="post" modelAttribute="signupForm">
        <a href="#x" class="overlay" id="join_form"></a>
        <div class="popup">
            <h2>Регистрация</h2>
            <div>
            	<form:errors path="username" />
                <form:label path="username">Псевдоним</form:label>
                <form:input path="username" id="email" value="" />
            </div>
            <div>
                <form:label path="password">Пароль</form:label>
                <form:input path="password" id="pass" value="" />
            </div>
            <div>
                <form:label path="confirmPassword">Повторите пароль</form:label>
                <form:input path="confirmPassword" id="pass" value="" />
            </div>
             <div>
             	
                <form:label path="email">Почта</form:label>
                <form:input path="email" id="email" value="" />
            </div>
            
            <input type="submit" value="Регистрация" />&nbsp;&nbsp;&nbsp;или&nbsp;&nbsp;&nbsp;<a href="#login_form" id="login_pop">Войти</a>

            <a class="close" href="#close"></a>
        </div>
        </form:form>
	<div id="tabs">
		<ul>
			<c:forEach var="category" items="${categorysList}">
				<li><a href="category?category=${category.id}"
					<c:if test="${id==category.id}"><c:out value="class=current"></c:out></c:if>><span>${category.name}</span></a></li>
			</c:forEach>
		</ul>
	</div>
</div>