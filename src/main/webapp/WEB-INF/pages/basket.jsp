<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div id="content">
	<div id="basket">
		<table border="1">
			<c:forEach var="basket" items="${basketList}">
				<tr>
					<td>${basket.goodId}</td>
					<td>${basket.nameGood}</td>
					<td><input type="text" name="value" value="${basket.value}"></td>
					<td>${basket.price} грн.</td>
					<td><input type="button" value="delete" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>