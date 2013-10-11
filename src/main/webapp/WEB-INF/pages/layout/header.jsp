<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script src="<s:url value="/resources/js/jquery-1.9.1.min.js"/>"></script>
<script>
	$(document).ready(function() {
		$('#login-trigger').click(function() {
			$(this).next('#login-content').slideToggle();
			$(this).toggleClass('active');

			if ($(this).hasClass('active'))
				$(this).find('span').html('&#x25B2;')
			else
				$(this).find('span').html('&#x25BC;')
		})
	});
</script>
	<c:choose>
		<c:when test="${sessionScope.login==null}">
			<c:import url="login.jsp" />
		</c:when>
		<c:otherwise>
			<c:import url="exit.jsp" />
		</c:otherwise>
	</c:choose>
<div id="header">
	<a href="#" onclick="parent.location='index'"><img
		src="<s:url value="/resources/img/logotip.png"/>" /></a> <a href="#"
		onclick="parent.location='basket'">Basket</a>
	<div id="tabs">
		<ul>
			<c:forEach var="category" items="${categorysList}">
				<li><a href="category?category=${category.id}"
					<c:if test="${id==category.id}"><c:out value="class=current"></c:out></c:if>><span>${category.name}</span></a></li>
			</c:forEach>
		</ul>
	</div>
</div>
