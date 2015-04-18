$(document).ready(function () {
	
	var monthArray = ["April","May", "June", "July", "August", "September", "October"];
	var arrayLength = monthArray.length;
	for (var i = 0; i < arrayLength; i++) {
		$( ".temp" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-12' />" );
		$( ".sky" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-12' />" );
		$( ".precip" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-12' />" );
		
		$( '<h4 class="month_name">' + monthArray[i] + '</h4>' ).insertBefore( '.' + monthArray[i] + '.month_wrapper' );
	}
	
});