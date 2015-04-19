$(document).ready(function () {
	
	var monthArray = ["April","May", "June", "July", "August", "September", "October"];
	var arrayLength = monthArray.length;
	for (var i = 0; i < arrayLength; i++) {
		$( ".temp" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-4' />" );
		$( ".sky" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-4' />" );
		$( ".precip" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-4' />" );
		
	// SEE STADIUM.JS FOR TITLE PREPEND //	
	}
	
});