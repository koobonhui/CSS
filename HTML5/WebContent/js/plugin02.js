$(function() {
	images = [
		"imgs/a1.jpg",
		"imgs/a2.jpg",
		"imgs/a3.jpg",
		"imgs/a4.jpg",
		"imgs/a5.jpg"
	];
	
	var clickCnt = 0;
	
	var $grid = $('.grid').imagesLoaded(function() {
		$grid.masonry({columnWidth: 250, itemSelector: '.grid-item', gutter: 10});
																	 // 이미지 사이 간격, 
																	 //	상하는 css에서 마진 주면 됨
	});
	
	$("#imgDel").click(function() {
		clickCnt = 0;
		$(".picture").empty(); // 태그 내부 삭제
							   // remove는 태그를 삭제
		$grid.masonry('remove', this).masonry('layout');
	});
	
	$("#imgAdd").click(function() {
		for(var i = images.length * clickCnt++; i < images.length * clickCnt; i++) {
			$item = $("<div class = 'grid-item'><a href = '" + images[i % images.length] + "'><img src = '" + images[i % images.length] + "' /></a></div>");
			$(".picture").append($item).masonry('appended', $item);
		}
		
		var addImg = (clickCnt - 1) == 0 ? "" : (":gt(" + (images.length * (clickCnt - 1) - 1)) + ")";
		$(".picture > div" + addImg).each(function() { // each는 각각(이미지 한개)에 대해서 실행
			var thisImg = $(this);
			thisImg.imagesLoaded().always(function() {
				console.log("always");
			}).done(function() {
				console.log("done");
				thisImg.find(".loader").hide();
			}).fail(function() {
				console.log("fail");
				thisImg.hide();
			}).progress(function() {
				console.log("progress");
				thisImg.prepend("<div class = 'loader'>Loadiong..</div>");
			});
		});
		
		$('a').colorbox({rel:'gal'});
	});
});