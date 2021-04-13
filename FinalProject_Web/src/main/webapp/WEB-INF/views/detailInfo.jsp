<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/SonValidChecker.js"></script>
<script type="text/javascript" src="resources/js/filter.js"></script>
<script type="text/javascript" src="resources/js/backToList.js"></script>

</head> 
<body> 
   
      <table id="detailInfoTbl">
            <tr>
               <td id="dutynameTd">
                  ${infos.dutyname } 
               </td>
               <td align="right" id="buttonTd">
                  <button id="closeBtn" onclick="backToList();">X</button>
               </td>
            </tr>
            <tr>
               <td colspan="2" class="etcTd">
                  ${infos.dutyaddr } 
               </td>
            </tr>
            <tr>
               <td colspan="2" class="etcTd">
                  ${infos.dutytel1 } 
               </td>
            </tr>
            <tr>
               <td colspan="2" class="etcTd">
                  ${infos.dutyeryn } 
               </td>
            </tr>
            <tr>
               <td colspan="2" class="etcTd">
                        월요일  ${infos.dutytime1s } ~ ${infos.dutytime1c }<br>
                        화요일  ${infos.dutytime2s } ~ ${infos.dutytime2c }<br>
                        수요일  ${infos.dutytime3s } ~ ${infos.dutytime3c }<br>
                        목요일  ${infos.dutytime4s } ~ ${infos.dutytime4c }<br>
                        금요일  ${infos.dutytime5s } ~ ${infos.dutytime5c }<br>
                       토요일  ${infos.dutytime6s } ~ ${infos.dutytime6c }<br>
                        일요일  ${infos.dutytime7s } ~ ${infos.dutytime7c }<br>
                        공휴일  ${infos.dutytime8s } ~ ${infos.dutytime8c }
                  </td>
            </tr>
      </table>
</body>
</html>