<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/SonValidChecker.js"></script>
<script type="text/javascript" src="resources/js/filter.js"></script>
	location.href =

</head>
<body>
	<table border="1" id="listTbl">
		<c:forEach var="lists" items="${lists }">
	
			<tr>
				<td onclick="">
					<br>	
				</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>