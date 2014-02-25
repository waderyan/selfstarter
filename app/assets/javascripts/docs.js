function scrollToAnchor(aname) {
	var aTag = $('a[name="' + aname + '"]');
	console.log("im in here");
	$('html,body').animate({scrollTop: aTag.offset().top - 40}, 'slow');
}