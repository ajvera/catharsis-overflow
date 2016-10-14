$(document).ready(function() {
 $('.logout').on('click', function(event) {
 	event.preventDefault();
 	var logoutUrl = $(this).attr('href');
 	$.ajax({
 		method: "DELETE",
 		url: logoutUrl
 	})
 	.done(function(response) {
 		window.location.replace("http://localhost:9393/questions");
 	})
 });
});


