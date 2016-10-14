$(document).ready(function() {
 handleLogOut();
 handleAnswer();
 questionVote();
});


function questionVote(){
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
  });
};

function handleLogOut(){
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
};

function handleAnswer(){
  $('.postanswer').on('submit', function(event) {
    event.preventDefault();
    var newAnswer = $(this).serialize();
    var $answers = $(".answers")
    var url = window.location.pathname + "/answers"
    $.ajax({
      url: url,
      type: "POST",
      data: newAnswer,
    })
    .done(function(response) {
      console.log(response);
      $answers.append(response);
      $(".postanswer").trigger('reset');
    })
    .fail(function(response) {
      console.log(response);
    });
  });
}

