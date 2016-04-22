$(document).ready(function() {

  $('.vote-form').on('submit', function(event) {
    event.preventDefault();

    $target = $(event.target)

    var request = $.ajax({url: $target.attr("action"), method: $target.attr("method"), data: $target.serialize()
    });

    request.done(function(response) {
      $target.parent().find('.points').text(response)
    });
  });
});
