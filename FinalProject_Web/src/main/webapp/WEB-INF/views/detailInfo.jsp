<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/SonValidChecker.js"></script>
</head> 
<body>
		<table border="1" id="detailInfoTbl">
			<tr>
				<td>
					${dutyname }
				</td>
			</tr>
			<tr>
				<td>
					${dutyaddr }
				</td>
			</tr>
			<tr>
				<td>
					${dutytel1 }
				</td>
			</tr>
			<tr>
				<td>
					${dutyeryn }
				</td>
			</tr>
			<tr>
				<td>
					월요일 - ${dutytime1s } ~ ${dutytime1c }<p>
					화요일 - ${dutytime2s } ~ ${dutytime2c }<p>
					수요일 - ${dutytime3s } ~ ${dutytime3c }<p>
					목요일 - ${dutytime4s } ~ ${dutytime4c }<p>
					금요일 - ${dutytime5s } ~ ${dutytime5c }<p>
					토요일 - ${dutytime6s } ~ ${dutytime6c }<p>
					일요일 - ${dutytime7s } ~ ${dutytime7c }<p>
					공휴일 - ${dutytime8s } ~ ${dutytime8c }
				</td>
			</tr>
		</table>
</body>
</html>