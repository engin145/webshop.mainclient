<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="<s:url value="/resources/css/goodStyle.css"/>"
	type="text/css" rel="stylesheet" />
<title>Shop</title>
</head>
<body>

	<div id="wreaper">
		<div id="header">
			<c:import url="header.jsp" />
		</div>
		<div id="content">
			<c:forEach var="good" items="${goodList}">
				<div class="good">
					<div class="photo"></div>
					<div class="title">${good.name}</div>
					<div class="byNow">
						<a href="#"><img
							src="<s:url value="/resources/img/basket.jpg"/>" border="0"></a><span
							class="price">250 грн</span><span class="isAvailable"><c:choose>
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
							</c:choose></span>
					</div>
					<div class="description">${good.description}</div>
					<div class="code">Код товара: ${good.id}</div>
				</div>
			</c:forEach>
		</div>
	</div>

</body>
</html>