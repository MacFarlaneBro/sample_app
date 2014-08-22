$(window).scroll(function(){
    if($(window).scrollTop() > 30){ 
	$(".navbar-inner #topButtons").css({
	    "position": "fixed",
	    "top": "0"
	});
    }
});

$(window).scroll(function(){
    if($(window).scrollTop() < 40){
	$(".navbar-inner #topButtons").css({
	    "position": "absolute",
	    "top": "40px"
	});
    }
});
