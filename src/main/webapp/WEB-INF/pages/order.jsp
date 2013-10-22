<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style type="text/css">
.error {
	color: #ff0000;
}

td {
	padding: 10px;
}

table {
	border-collapse: collapse;
}
</style>
<div id="order">
	<c:if test="${ItemsInStock!=null}">
		<table border="1">
			<p class="bold">Товары в наличии:</p>
			<tr>
				<td>Код товара</td>
				<td>Название</td>
				<td>Количество</td>
				<td>Цена</td>
			</tr>
			<c:forEach var="basket" items="${ItemsInStock}">
				<tr>
					<td>${basket.goodId}</td>
					<td>${basket.nameGood}</td>
					<td>${basket.value}</td>
					<td>${basket.price}грн.</td>
				</tr>
			</c:forEach>
		</table>
		<p class="bold">Сумма заказа: ${sum} грн.</p>
	</c:if>
	<table border="1">
		<c:if test="${noProductsInStock!=null}">
			<p class="bold">Товары которых нету в наличии:</p>
			<tr>
				<td>Код товара</td>
				<td>Название</td>
				<td>Количество</td>
				<td>Цена</td>
				<td>На складе</td>
			</tr>
		</c:if>
		<%
			int i = 0;
		%>
		<c:forEach var="basket" items="${noProductsInStock}">
			<tr>
				<td>${basket.goodId}</td>
				<td>${basket.nameGood}</td>
				<td>${basket.value}</td>
				<td>${basket.price}грн.</td>
				<%
					List<Double> data = (List<Double>) session
								.getAttribute("amountProductsInStock");

						out.println("<td>" + data.get(i) + "</td>");
						i++;
				%>
			</tr>
		</c:forEach>
	</table>
	<c:choose>
		<c:when test="${userData!=null}">
			<form:form method="POST" modelAttribute="orderForm">
				<div id="authentication">
					<table>
						<tr>
							<td>Имя:</td>
							<td><form:input path="name" /></td>
							<td><span class="error"><form:errors path="name" /></span></td>
						</tr>
						<tr>
							<td>Телефон:</td>
							<td><form:input path="phone" /></td>
							<td><span class="error"><form:errors path="phone" /></span></td>
						</tr>
						<tr>
							<td>E-mail:</td>
							<td><form:input path="email" /></td>
							<td><span class="error"><form:errors path="email" /></span></td>
						</tr>
					</table>
					<p>
						<input type="submit" value="Подтверждаю заказ">
					</p>
				</div>
			</form:form>
		</c:when>
		<c:otherwise>
			<form:form method="GET" modelAttribute="orderForm"
				action="applayorder">
				<p>
					<input type="submit" value="Подтверждаю заказ">
				</p>
			</form:form>
		</c:otherwise>
	</c:choose>
</div>