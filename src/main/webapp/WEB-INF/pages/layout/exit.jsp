<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script src="<s:url value="/resources/js/jquery-1.9.1.min.js"/>"></script>
<script type="text/javascript">
	function call() {
		$.ajax({
			type : 'POST',
			url : 'leaveUser',
			success : function(data) {
				 location.reload(true);
			},
		});

	}
</script>
<div id="autorization">
	Welcome: ${login} <input type="button" value="Выйти" onclick="call()">
</div>