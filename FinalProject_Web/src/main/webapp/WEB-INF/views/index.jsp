<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/SonValidChecker.js"></script>
<script type="text/javascript" src="resources/js/filter.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9556112c6875c9fcbc51bf07fb3cdb5e"></script>
<script type="text/javascript">
	$(function() {
		navigator.geolocation.getCurrentPosition(function(loc) {
			var lat = loc.coords.latitude;
			var lon = loc.coords.longitude;
			var c = new kakao.maps.LatLng(lat, lon);
			var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center : c, //지도의 중심좌표.
				level : 3
			//지도의 레벨(확대, 축소 정도)
			};

			var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

			var marker = new kakao.maps.Marker({
				map : map,
				position : c,
				title : "현위치",
				clickable: true
			});
			
			marker.setMap(map);
			
			var iwContent = '<div style="padding:5px;">Hello World!</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
		    iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

			var infowindow = new kakao.maps.InfoWindow({
			    content : iwContent,
			    removable : iwRemoveable
			    
			});
		    
			// 마커에 클릭이벤트를 등록합니다
			kakao.maps.event.addListener(marker, 'click', function() {
			      // 마커 위에 인포윈도우를 표시합니다
			      location.href = "/detailInfo.go";
			});
		});

	});
</script>
</head>
<body>
	<table border="1" id="mainTbl">
		<tr>
			<td align="center">
				<table id="titleTbl">
					<tr>
						<td align="center">GOOD DOC</td>
					</tr>
				</table>
				<table id="searchTbl">
					<tr>
						<td align="center" class="searchTitleTd">지역</td>
						<td align="center" class="searchTitleTd">방문요일</td>
						<td align="center" class="searchTitleTd">방문시간</td>
						<td align="center" class="searchTitleTd">응급실</td>
					</tr>
					<tr>
						<td align="center">
							<select name="dutyaddr" id="location">
								<option>현위치</option>
								<option>강남구</option>
								<option>강동구</option>
								<option>강북구</option>
								<option>강서구</option>
								<option>관악구</option>
								<option>광진구</option>
								<option>구로구</option>
								<option>금천구</option>
								<option>노원구</option>
								<option>도봉구</option>
								<option>동대문구</option>
								<option>동작구</option>
								<option>마포구</option>
								<option>서대문구</option>
								<option>서초구</option>
								<option>성동구</option>
								<option>성북구</option>
								<option>송파구</option>
								<option>양천구</option>
								<option>영등포구</option>
								<option>용산구</option>
								<option>은평구</option>
								<option>종로구</option>
								<option>중구</option>
								<option>중랑구</option>
							</select>
						</td>
						<td align="center">
							<select name="yoil" id="yoil">
								<option value="choose">선택</option>
								<option value="mon">월요일</option>
								<option value="tue">화요일</option>
								<option value="wed">수요일</option>
								<option value="thu">목요일</option>
								<option value="fri">금요일</option>
								<option value="sat">토요일</option>
								<option value="sun">일요일</option>
								<option value="holiday">공휴일</option>
							</select>
						</td>
						<td align="center">
							<select name="hour" id="hour">
								<option>00</option>
								<option>01</option>
								<option>02</option>
								<option>03</option>
								<option>04</option>
								<option>05</option>
								<option>06</option>
								<option>07</option>
								<option>08</option>
								<option>09</option>
								<option>10</option>
								<option>11</option>
								<option>12</option>
								<option>13</option>
								<option>14</option>
								<option>15</option>
								<option>16</option>
								<option>17</option>
								<option>18</option>
								<option>19</option>
								<option>20</option>
								<option>21</option>
								<option>22</option>
								<option>23</option>
							</select> &nbsp; 
							<select name="minute" id="minute">
								<option>00</option>
								<option>30</option>
							</select>
						</td>
						<td align="center">
							유<input type="radio" name="dutyeryn" value="1" id="ery">&nbsp;&nbsp;
							무<input type="radio" name="dutyeryn" value="2" checked="checked" id="ern">
						</td>
					</tr>
					<tr>
						<td align="center">
							<img src="resources/img/s2.png" id="imgS2">
						</td>
						<td align="center" colspan="2">
							<input placeholder="병원명 or 진료과목을 검색하세요" id="searchInput">
						</td>
					</tr>
				</table>
				<table border="1" id="contentTbl">
					<tr>
						<td align="center">
							<div id="map" style="width: 500px; height: 250px;"></div>
						</td>
						<td align="center">
							<jsp:include page="${contentPage }"></jsp:include>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>