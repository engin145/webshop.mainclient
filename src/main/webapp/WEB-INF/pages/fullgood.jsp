<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="content">
	<div id="good">
		<div id="photo"></div>
		<div id="title">${good.name}</div>
		<div id="byNow">
			<a href="#"><img src="<s:url value="/resources/img/basket.jpg"/>"
				border="0"></a><span id="price">${price.value} грн </span><span
				id="isAvailable"><c:choose>
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
		<div id="manufactur">
			<span id="longDes">Производитель:</span>
			<p>
				<c:out value="${manufactur}" escapeXml="false" />
			</p>
		</div>
		<div id="description">
			<span id="longDes">Описание:</span>
			<p>
				<c:out value="${longDesc}" escapeXml="false" />
			</p>
		</div>
	</div>
</div>
