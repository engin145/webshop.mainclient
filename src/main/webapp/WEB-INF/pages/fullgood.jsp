<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<s:url value="/resources/css/fullGoodStyle.css"/>"
	type="text/css" rel="stylesheet" />
<title>Category</title>
</head>
<body>
	<div id="wreaper">
		<div id="header">
			<c:import url="header.jsp" />
		</div>
		<div id="content">
			<div id="good">
				<div id="photo"></div>
				<div id="title">${good.name}</div>
				<div id="byNow">
					<a href="#"><img
						src="<s:url value="/resources/img/basket.jpg"/>" border="0"></a><span
						id="price">${price.value} грн </span><span id="isAvailable"><c:choose>
							<c:when test="${good.amount>0}">
								<c:out
									value="<img src=${pageContext.request.contextPath}/resources/img/tick.png> Есть в наличии"
									escapeXml="false"></c:out>
							</c:when>
							<c:otherwise>
								<c:out
									value="<img src=${pageContext.request.contextPath}/resources/img/error.png> Нету в наличии"
									escapeXml="false"></c:out>
							</c:otherwise>
						</c:choose></span><span id="code">Код товара: ${good.id}</span>
				</div>
				<div id="description">
					<span id="longDes">Описание:</span>
					<p><c:out value="${longDesc}" escapeXml="false"/></p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>