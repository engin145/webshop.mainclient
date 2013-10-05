<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<div id="header">
	<img src="<s:url value="/resources/img/logotip.png"/>" />
	 <!-- Панель с кнопками -->
            <div class="panel">
                <a href="#login_form" id="login_pop">Войти</a>
                <a href="#join_form" id="join_pop">Регистрация</a>
                <a href="#" id="basket">Basket</a>
            </div>

        <!-- Форма №1 для модального окна -->
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
            <input type="button" value="Войти" />

            <a class="close" href="#close"></a>
        </div>

        <!-- popup form #2 -->
        <a href="#x" class="overlay" id="join_form"></a>
        <div class="popup">
            <h2>Регистрация</h2>
            <div>
                <label for="email">Псевдоним</label>
                <input type="text" id="email" value="" />
            </div>
            <div>
                <label for="pass">Пароль</label>
                <input type="password" id="pass" value="" />
            </div>
            <div>
                <label for="pass">Повторите пароль</label>
                <input type="password" id="pass" value="" />
            </div>
             <div>
                <label for="firstname">Имя</label>
                <input type="text" id="firstname" value="" />
            </div>
            <div>
                <label for="phone">Телефон</label>
                <input type="text" id="lastname" value="" />
            </div>
            <input type="button" value="Регистрация" />&nbsp;&nbsp;&nbsp;или&nbsp;&nbsp;&nbsp;<a href="#login_form" id="login_pop">Войти</a>

            <a class="close" href="#close"></a>
        </div>
	<div id="tabs">
		<ul>
			<c:forEach var="category" items="${categorysList}">
				<li><a href="category?category=${category.id}"
					<c:if test="${id==category.id}"><c:out value="class=current"></c:out></c:if>><span>${category.name}</span></a></li>
			</c:forEach>
		</ul>
	</div>
</div>