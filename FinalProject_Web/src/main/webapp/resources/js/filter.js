function getList() { 
	var loc = $("#location").val();
	var yoil = $("#yoil").val();
	var hour = $("#hour").val();
	var minute = $("#minute").val();
	var dutyeryn = $("#dutyeryn").val();
	var searchInput = $("#searchInput").val(); 

	$.getJSON("hospital.get.json?location=" + loc + "&yoil=" + yoil + "&hour=" + hour + "&minute=" + minute + "&dutyeryn=" + dutyeryn + "&searchInput=" + searchInput, function(){
		alert("vjkhbkl");
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
	$("#ery").change(function(){
		getList();
		
	});
	$("#ern").change(function(){
		getList();
		
	});
	$("#searchInput").keyup(function(){
		getList();
		
	});
}

$(function(){
	ec();
});