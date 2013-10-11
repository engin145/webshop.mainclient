<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%-- <script type="text/javascript">
function deleteGood(goodId) { 
	var xmlhttp;
	xmlhttp=new XMLHttpRequest();
	xmlhttp.open("POST","deletegood",true);
	xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	xmlhttp.send("goodId="+goodId);
	window.parent.location.reload();
}
</script> --%>

<div id="content">
	<div class="basket">
		<table border="1">
			<c:forEach var="basket" items="${basketList}">
				<tr>
					<td>${basket.goodId}</td>
					<td>${basket.nameGood}</td>
					<td><input type="text" name="value" value="${basket.value}"></td>
					<td>${basket.price} грн.</td>
					<td>
						<form method="POST" action="deletegood?goodId=${basket.goodId}">
							<input type="submit" value="delete"/>
						</form> 
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</div>