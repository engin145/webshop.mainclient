<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<div id="header">
	<img src="<s:url value="/resources/img/logotip.png"/>" />
	<p id="signIn">
		<a href="signin">Sign In</a>
	</p>
	<p id="Basket">
		<a href="#">Basket</a>
	</p>
	<div id="tabs">
		<ul>
			<c:forEach var="category" items="${categorysList}">
				<li><a href="category?category=${category.id}"
					<c:if test="${id==category.id}"><c:out value="class=current"></c:out></c:if>><span>${category.name}</span></a></li>
			</c:forEach>
		</ul>
	</div>
</div>