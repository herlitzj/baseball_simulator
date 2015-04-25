$(document).ready(function () {
	
	var monthArray = ["april","may", "june", "july", "august", "september", "october"];
	var arrayLength = monthArray.length;
	for (var i = 0; i < arrayLength; i++) {
		$( ".temp" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-4' />" );
		$( ".sky" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-4' />" );
		$( ".precip" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-4' />" );
		
	// SEE STADIUM.JS FOR TITLE PREPEND //	
	}
	
});