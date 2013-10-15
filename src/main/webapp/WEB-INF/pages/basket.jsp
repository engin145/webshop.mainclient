<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="content">
	<div class="basket">
		<c:if test="${basketList.isEmpty()==true}">
			<p>Ваша корзина пуста</p>
		</c:if>
		<table border="1">
			<c:forEach var="basket" items="${basketList}">
				<tr>
					<td rowspan="2">${basket.goodId}</td>
					<td rowspan="2">${basket.nameGood}</td>
					<td rowspan="2"><input type="text" name="value" value="${basket.value}"></td>
					<td rowspan="2">${basket.price} грн.</td>
					<td>
						<form method="POST" action="upvalue?goodId=${basket.goodId}">
							<input type="submit" value="/\"/>
						</form>
					</td>
					<td rowspan="2">
						<form method="POST" action="deletegood?goodId=${basket.goodId}">
							<input type="submit" value="delete"/>
						</form> 
					</td>
				</tr>
				<tr>
					<td>
						<form method="POST" action="downvalue?goodId=${basket.goodId}">
							<input type="submit" value="\/"/>
						</form>
					</td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${basketList.isEmpty()==false}">
			<p>Сумма заказа: ${sum} грн.</p>
			<form method="POST" action="order">
				<input type="submit" value="Оформить заказ">
			</form>
		</c:if>
	</div>
</div>