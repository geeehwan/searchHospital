function getList() {
	var location = $("#location").val();
//	var yoil = $("#yoil").val();
//	var hour = $("#hour").val();
//	var minute = $("#minute").val();
//	var ery = $("#ery").val();
//	var ern = $("#ern").val();
//	var searchInput = $("#searchInput").val();

	location.href = "list.get?dutyaddr=" + location; // + "&yoil=" + yoil; // + "&hour=" + hour + "&minute=" + minute + "&ery=" + ery + "&ern=" + ern + "&searchInput=" + searchInput;
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