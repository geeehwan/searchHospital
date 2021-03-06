<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"> 
   
   $(function() {
      $.getJSON("detailInfo.get.json?dutyno=" + dutyno, function(wr){
    		  var lon = wr.hospitalInfo.wgs84lon * 1;
    		  var lat = wr.hospitalInfo.wgs84lat * 1;
        
    		  var mapContainer = document.getElementById('map'); // 지도를 표시할 div 
    		  var h = new kakao.maps.LatLng(lon, lat);
    		  var mapOption = { 
    		        center: h, // 지도의 중심좌표
    		        level: 3 // 지도의 확대 레벨
    		    };

    		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    		// 마커가 표시될 위치입니다 
    		var markerPosition  = new kakao.maps.LatLng(lon, lat); 

    		// 마커를 생성합니다
    		var marker = new kakao.maps.Marker({
    		    position: markerPosition
    		});

    		// 마커가 지도 위에 표시되도록 설정합니다
    		marker.setMap(map);

      });
      
   });
</script>
</head>
<body>
<div id="map" style="width: 550px; height: 500px;"></div>

</body>
</html>