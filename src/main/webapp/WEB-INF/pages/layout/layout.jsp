<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<html>
<head>
<title><tiles:insertAttribute name="title" ignore="true" /></title>
<link href="<s:url value="/resources/css/layoutStyle.css"/>"
	type="text/css" rel="stylesheet" />
<link href="${pageContext.request.contextPath}/resources/css/<tiles:insertAttribute name="style"/>"
	type="text/css" rel="stylesheet" />
</head>
<body>	<div id="wreaper">
		<tiles:insertAttribute name="header" />
		<div id="content">
			<tiles:insertAttribute name="content" />
		</div>
		<tiles:insertAttribute name="footer" />
	</div>


</body>
</html>