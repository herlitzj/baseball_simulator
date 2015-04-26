$(document).ready(function () {

// SCRIPT TO WRAP DIVS IN MONTHS //
var monthArray = ["april","may", "june", "july", "august", "september", "october"];
	var arrayLength = monthArray.length;
	for (var i = 0; i < arrayLength; i++) {
		$( ".temp" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-4' />" );
		$( ".sky" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-4' />" );
		$( ".precip" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-4' />" );
		$( ".wind" + "." + monthArray[i] ).wrapAll( "<div class=' " + monthArray[i] + " month_wrapper col-md-3' />" );
		
		$( '.' + monthArray[i] + '.month_wrapper' ).prepend( '<h4 class="month_name col-md-12">' + monthArray[i] + '</h4>' );
		
	}


// SCRIPT TO WRAP DIVS IN PLAYER INFO //
var handArray = ["stats_left", "stats_right"];
	var handVs = ["Vs. Left", "Vs. Right"]
	var arrayLength = handArray.length;
	for (var i = 0; i < arrayLength; i++) {
		$( "." + handArray[i] ).wrapAll( "<span class=' " + handArray[i] + " hand_wrapper' />" );

		$( '.' + handArray[i] + '.hand_wrapper' ).prepend( '<h4 class="hand_name col-md-12">' + handVs[i] + '</h4>' );
		
	}

// SCRIPT TO TURN TABLES INTO CARDS ON SMALL SCREENS //
var headertext = [],
  headers = document.querySelectorAll("#jleague_table th"),
  tablerows = document.querySelectorAll("#jleague_table tr"),
  tablebody = document.querySelector("#jleague_table tbody");

for (var i = 0; i < headers.length; i++) {
  var current = headers[i];
  headertext.push(current.textContent.replace(/\r?\n|\r/, ""));
}
for (var i = 0, row; row = tablebody.rows[i]; i++) {
  for (var j = 0, col; col = row.cells[j]; j++) {
    col.setAttribute("data-th", headertext[j]);
  }
}


// SCRIPT FOR SIMPLE FILTER FOR TABLES //
(function(document) {
	'use strict';

	var LightTableFilter = (function(Arr) {

		var _input;

		function _onInputEvent(e) {
			_input = e.target;
			var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
			Arr.forEach.call(tables, function(table) {
				Arr.forEach.call(table.tBodies, function(tbody) {
					Arr.forEach.call(tbody.rows, _filter);
				});
			});
		}

		function _filter(row) {
			var text = row.textContent.toLowerCase(), val = _input.value.toLowerCase();
			row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
		}

		return {
			init: function() {
				var inputs = document.getElementsByClassName('light-table-filter');
				Arr.forEach.call(inputs, function(input) {
					input.oninput = _onInputEvent;
				});
			}
		};
	})(Array.prototype);

	document.addEventListener('readystatechange', function() {
		if (document.readyState === 'complete') {
			LightTableFilter.init();
		}
	});

})(document);

});
