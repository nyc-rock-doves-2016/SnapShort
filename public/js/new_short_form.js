$(document).ready(function() {
  $(".hello").on("submit", function(event){
    event.preventDefault();

    var $target = $(event.target)

    var request = $.ajax ({
      method: $target.attr("method"),
      url: $target.attr("action"),
      data: $target.serialize()
    });

    request.done(function(response) {
      $(".all-shorts").append(response)

      $('.hi').val("");
    });
  });
});
