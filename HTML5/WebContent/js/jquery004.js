$(function() {
	//컨테이너의 위치를 이용하는 배너
	/*
	let bannerAction = setInterval(move, 3000);
	let position = 0;
	$(".container").hover(function() {
		clearInterval(bannerAction);
	}, function() {
		bannerAction = setInterval(move, 3000);
	});
	
	function move() {
		position = ++position % 3;
		$(".container").stop(true).animate({"left": -640 * position + "px"}, 1000);
	}
	
	$("button:first").click(function() {
		position = --position % 3;
		if(position < 0) position = 2;
		$(".container").stop(true).animate({"left": -640 * position + "px"}, 1000);
		clearInterval(bannerAction);
		bannerAction = setInterval(move, 3000);
	});
	
	$("button:last").click(function() {
		move();
		clearInterval(bannerAction);
		bannerAction = setInterval(move, 3000);
	});
	*/
	let bannerAction = setInterval(move, 3000);
	
	$(".section:first").hover(function() {
		clearInterval(bannerAction);
	}, function() {
		bannerAction = setInterval(move, 3000);
	});
	
	function move() {
		if($(".container").queue().length > 0) {
			return false;
		}
		$(".container").animate({"left": "-640px"}, 1000, function() {
			$(".container > div:first").appendTo(".container");
			$(".container").css("left", "0");
		});
	}
	
	$("button:first").click(function() {
		if($(".container").queue().length > 0) {
			return false;
		}
		$(".container > div:last").prependTo(".container");
		$(".container").css("left", "-640px");
		$(".container").animate({"left": 0}, 1000);
		clearInterval(bannerAction);
		bannerAction = setInterval(move, 3000);
	});
	
	$("button:last").click(function() {
		move();
		clearInterval(bannerAction);
		bannerAction = setInterval(move, 3000);
	});
});