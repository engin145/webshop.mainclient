<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<div id="content">
	<c:forEach var="good" items="${goodList}">
		<div class="good">
			<div class="photo"></div>
			<div class="title">
				<a href="fullgood?good=${good.id}">${good.name}</a>
			</div>
			<div class="byNow">
				<a href="#"> <img
					src="<s:url value="/resources/img/basket.jpg"/>" border="0" /></a> <span
					class="price"> ${priceMap[good.id]} грн </span><span
					class="isAvailable"> <c:choose>
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
					</c:choose>
				</span>
			</div>
			<div class="description">${good.description}</div>
			<div class="code">Код товара: ${good.id}</div>
		</div>
	</c:forEach>
</div>