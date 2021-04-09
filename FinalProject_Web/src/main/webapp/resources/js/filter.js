function tdtd(dutyno){
   // alert(dutyno);
   location.href = "detailInfo.go?dutyno=" + dutyno;
}

function getList() { 
   var loc = $("#location").val();
   var yoil = $("#yoil").val();
   var hour = $("#hour").val();
   var minute = $("#minute").val();
   var dutyeryn = $("#dutyeryn").val();
   var searchInput = $("#searchInput").val(); 

   $.getJSON("hospital.get.json?location=" + loc + "&yoil=" + yoil + "&hour=" + hour + "&minute=" + minute + "&dutyeryn=" + dutyeryn + "&searchInput=" + searchInput, function(we){
      $("#listTbl").empty();
      $.each(we.hospitalInfo, function(i, h) {
         // 테이블에 집어넣기
         var t = h.dutyname;
         var b = $("<br>");
         var t2 = h.dutytel1;
         var lon2 = h.wgs84lon * 1;
         var lat2 = h.wgs84lat * 1;
         var td1 = $("<td></td>").append(t, b, t2).attr("onclick","tdtd(" + h.dutyno + ")");
         var tr = $("<tr></tr>").append(td1);
         $("#listTbl").append(tr);
         
           var imageSrc = 'resources/img/hospital.png', // 마커이미지의 주소입니다    
             imageSize = new kakao.maps.Size(30, 30), // 마커이미지의 크기입니다
             imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
               
         // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
         var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
         var markerPosition = new kakao.maps.LatLng(lon2, lat2); // 마커가 표시될 위치입니다
         
         var c = new kakao.maps.LatLng(lon2, lat2);
         var marker = new kakao.maps.Marker({
               map : map,
               position : c,
               image: markerImage,
               title : "현위치",
               clickable: true
            });
            marker.setMap(map);
            var iwContent1 = '<div style="padding:5px;">Hello</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            var iwContent2 = '<div style="padding:5px;">World!</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
            
            iwRemoveable = true; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다
            
            var infowindow = new kakao.maps.InfoWindow({
               content : iwContent1               
            });
            
            var infowindow2 = new kakao.maps.InfoWindow({
               content : iwContent2,  
                removable : iwRemoveable
                
            });
            
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                 // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
                   infowindow.open(map, marker);
               });

               // 마커에 마우스아웃 이벤트를 등록합니다
               kakao.maps.event.addListener(marker, 'mouseout', function() {
                   // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
                   infowindow.close();
               });
             
            // 마커에 클릭이벤트를 등록합니다
            kakao.maps.event.addListener(marker, 'click', function() {
                  // 마커 위에 인포윈도우를 표시합니다
                  infowindow2.open(map, marker); 
                  // location.href = "/detailInfo.go";
            }); 
      });
      //alert("dfsfsf");
   });
}

function ec(){
   $("#location").change(function(){
      getList();
   });
   $("#yoil").change(function(){
      getList();
   });
   $("#hour").change(function(){
      getList();
   });
   $("#minute").change(function(){
      getList();
   });
   $("#dutyeryn").change(function(){
      getList();
   });
   $("#searchInput").keyup(function(e){
      if(e.keyCode == 13){
         getList();
      }
      //getList();
   });
}
 
$(function(){
   ec();
   showDetailInfo();
   
});