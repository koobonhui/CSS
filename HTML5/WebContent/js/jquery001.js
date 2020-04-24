$(function() {
//	$(".menu").hover(function() {
//		$(this).find(".sub").show();
//		$(this).find("a:first").addClass("on");
//	}, function() {
//		$(this).find(".sub").hide();
//		$(this).find("a:first").removeClass("on");
//	});
	$(".menu").hover(function() {
		$(this).find(".sub").stop(true).slideDown(300);
		$(this).find("a:first").addClass("on");
	}, function() {
		$(this).find(".sub").stop(true).slideUp(300);
		$(this).find("a:first").removeClass("on");
	});
});	