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
			var td1 = $("<td></td>").append(t, b, t2);
			var tr = $("<tr></tr>").append(td1);
			$("#listTbl").append(tr);
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
	$("#searchInput").onkeyup(function(e){
		if(e.keycode == 13){
			getList();
		}
		//getList();
	});
}

$(function(){
	ec();
});