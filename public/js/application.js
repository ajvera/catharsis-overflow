$(document).ready(function() {
 handleLogOut();
 handleAnswer();
});

<<<<<<< HEAD
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
=======
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
>>>>>>> origin
