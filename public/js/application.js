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

// $(document).ready(function() {
//   $('.questionform').on('submit', function(event) {
//     // console.log(event);
//     event.preventDefault();
//     var newPost = $(this).serialize();
//     console.log(newPost);
//     var request = $.ajax({
//       method: "POST",
//       url: "/questions",
//       data: newPost,
//     })
//     request.done(function(response) {
//       console.log(response);
//     })
//   })
// });
