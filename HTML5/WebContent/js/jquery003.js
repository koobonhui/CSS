$(function() {
	$("ul > li").click(function() {
		$("ul > li").removeClass("on");
		$(this).addClass("on");
		let index = $(this).index();
		$(".contentsBox > div").hide();
		$(".contentsBox > div").eq(index).show();
	});
});