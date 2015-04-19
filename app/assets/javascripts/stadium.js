$(document).ready(function () {
	
	var monthArray = ["April","May", "June", "July", "August", "September", "October"];
	var arrayLength = monthArray.length;
	for (var i = 0; i < arrayLength; i++) {
		$( ".wind" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-3' />" );
		
		$( '.' + monthArray[i] + '.month_wrapper' ).prepend( '<h4 class="month_name col-md-12">' + monthArray[i] + '</h4>' );
		
	}
	
});