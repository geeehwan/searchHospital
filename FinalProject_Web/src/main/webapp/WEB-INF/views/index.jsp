<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/index.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/SonValidChecker.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1fc1b158b795a2b1fe9af16472babd6f"></script>
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
				title : "현위치"
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
						<td align="center" class="searchTitleTd">방문예정시간</td>
						<td align="center" class="searchTitleTd">응급실</td>
					</tr>
					<tr>
						<td align="center"><select name="location" id="location">
								<option value="gn">강남구</option>
								<option value="gd">강동구</option>
								<option value="gb">강북구</option>
								<option value="gs">강서구</option>
								<option value="ga">관악구</option>
								<option value="gj">광진구</option>
								<option value="gr">구로구</option>
								<option value="gc">금천구</option>
								<option value="nw">노원구</option>
								<option value="db">도봉구</option>
								<option value="ddm">동대문구</option>
								<option value="dj">동작구</option>
								<option value="mp">마포구</option>
								<option value="sdm">서대문구</option>
								<option value="sc">서초구</option>
								<option value="sd">성동구</option>
								<option value="sb">성북구</option>
								<option value="sp">송파구</option>
								<option value="yc">양천구</option>
								<option value="ydp">영등포구</option>
								<option value="ys">용산구</option>
								<option value="ep">은평구</option>
								<option value="jro">종로구</option>
								<option value="j">중구</option>
								<option value="jra">중랑구</option>
						</select></td>
						<td align="center"><select name="hour" id="hour">
								<option value="00h">00</option>
								<option value="01h">01</option>
								<option value="02h">02</option>
								<option value="03h">03</option>
								<option value="04h">04</option>
								<option value="05h">05</option>
								<option value="06h">06</option>
								<option value="07h">07</option>
								<option value="08h">08</option>
								<option value="09h">09</option>
								<option value="10h">10</option>
								<option value="11h">11</option>
								<option value="12h">12</option>
								<option value="13h">13</option>
								<option value="14h">14</option>
								<option value="15h">15</option>
								<option value="16h">16</option>
								<option value="17h">17</option>
								<option value="18h">18</option>
								<option value="19h">19</option>
								<option value="20h">20</option>
								<option value="21h">21</option>
								<option value="22h">22</option>
								<option value="23h">23</option>
						</select> &nbsp; <select name="minute" id="minute">
								<option value="00m">00</option>
								<option value="10m">10</option>
								<option value="20m">20</option>
								<option value="30m">30</option>
								<option value="40m">40</option>
								<option value="50m">50</option>
						</select></td>
						<td align="center">유<input type="radio" name="er">
							&nbsp;&nbsp; 무<input type="radio" name="er" checked="checked">
						</td>
					</tr>
					<tr>
						<td align="center" colspan="3"><input
							placeholder="병원명 or 진료과목을 검색하세요" id="searchInput"></td>
					</tr>
				</table>
				<table border="1" id="contentTbl">
					<tr>
						<td align="center">
							<div id="map" style="width: 500px; height: 250px;"></div>
						</td>
						<td align="center"></td>
					</tr>
				</table>
				<table border="1" id="popupTbl">
					<tr>
						<td></td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</body>
</html>