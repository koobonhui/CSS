$(function() {
	$(".menuBtn").click(function() {
		if($("nav").hasClass("navOn")) {
			$("nav").removeClass("navOn");
			$(".overlay").css({"width": "0", "height": "0", "cursor": "pointer"});
			$(".menuBtn > span").removeClass("menuBtnOn");
		} else {
			$("nav").addClass("navOn");
			$(".overlay").css({"width": "100%", "height": "100%", "cursor": "pointer"});
			$(".menuBtn > span").addClass("menuBtnOn");			
		}
	});
	
	$(".overlay").click(function() {
		$(".menuBtn").trigger("click");
	});
});