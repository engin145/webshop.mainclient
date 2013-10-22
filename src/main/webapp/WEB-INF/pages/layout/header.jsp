<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script src="<s:url value="/resources/js/jquery-1.9.1.min.js"/>"></script>
<div id="header">
	<c:choose>
		<c:when test="${sessionScope.login==null}">
			<c:import url="login.jsp" />
		</c:when>
		<c:otherwise>
			<c:import url="exit.jsp" />
		</c:otherwise>
	</c:choose>
	<a href="#" onclick="parent.location='index'"><img
		src="<s:url value="/resources/img/logotip.png"/>" border="0" /></a> <a
		href="#" id="basketIcon" onclick="parent.location='basket'"><img
		src="<s:url value="/resources/img/basketLink.png"/>" /></a>
	<div id="tabs">
		<ul>
			<c:forEach var="category" items="${categorysList}">
				<li><a href="category?category=${category.id}"
					<c:if test="${id==category.id}"><c:out value="class=current"></c:out></c:if>><span>${category.name}</span></a></li>
			</c:forEach>
		</ul>
	</div>
</div>
