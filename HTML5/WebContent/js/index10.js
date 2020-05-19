$(document).ready(function() {
	$(".snav").slideUp(0);
	$('.mnav >ul > li').hover(function(){
	    $(this).find('.snav').stop().slideDown('fast');
	}, function(){
	    $(this).find('.snav').stop().slideUp('fast');
	});
	 
	setInterval(function(){
        var top = $('#main ul').css('top');
        
        if(parseInt(top)==-600){
            $('#main ul').animate({
                top: 0
            }, 'slow'); 
        }else{
            $('#main ul').animate({
                top: '-=300px'
            },'slow');
        }
    }, 3000);
});