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

$(document).ready(function(){
  $('.vote').on("submit", function(event) {
    event.preventDefault();
    var url = $(this).attr('action');
    var vote_value = $(this).children('button').attr('value');
    var $form = $(this)
    console.log($(this).closest('.question-votes').children('p'))
    $.ajax({
      url: url,
      type: "POST",
      data: {vote: vote_value}
    })
    .done(function(response) {
      $form.closest('.question-votes').children('p').text(response);
    });
  })
});
