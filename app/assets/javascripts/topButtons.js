$(window).scroll(function(){
    if($(window).scrollTop() > 80){ 
	$("#big .navbar-inner #topButtons").css({
	    "position": "fixed",
	    "top": "0"
	});
    }
});

$(window).scroll(function(){
    if($(window).scrollTop() < 90){
	$("#big .navbar-inner #topButtons").css({
	    "position": "absolute",
	    "top": "90px"
	});
    }
});
