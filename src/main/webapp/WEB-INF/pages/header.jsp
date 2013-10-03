<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<s:url value="/resources/css/styles.css"/>" type="text/css"
	rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
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
					<li><a href="category?category=${category.id}" <c:if test="${id==category.id}"><c:out value="class=current"></c:out></c:if> ><span>${category.name}</span></a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>