$(document).ready(function () {
	
	var handArray = ["stats_left", "stats_right"];
	var handVs = ["Vs. Left", "Vs. Right"]
	var arrayLength = handArray.length;
	for (var i = 0; i < arrayLength; i++) {
		$( "." + handArray[i] ).wrapAll( "<span class=' " + handArray[i] + " hand_wrapper' />" );

		$( '.' + handArray[i] + '.hand_wrapper' ).prepend( '<h4 class="hand_name col-md-12">' + handVs[i] + '</h4>' );
		
	}
	
});