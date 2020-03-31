$(function() {
	$(document).ready(function(){

	var TopBtn = $('#to__top');

	TopBtn.hide();

	$(window).scroll(function() {
			if ($(this).scrollTop() > 50) {
					TopBtn.fadeIn();
			} 
			else {
					TopBtn.fadeOut();
			}
	});

	TopBtn.click(function() {
			$('body,html').animate({
					scrollTop: 0
			}, 300);
			return false;
	});
	});
	
});