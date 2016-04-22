$(document).ready(function(){

  $('.comment-link').on('click', function(event){
  	event.preventDefault();

	  	$('.comments-show').slideToggle(function(){
	  		if ($(this).is(':visible')) {
	  			$('.comment-link').text('Hide Comments')
	  		} else {
	  			$('.comment-link').text('See Comments')
	  		}
	  	});
  	});

  $('.prompt-comment').on('submit', function(event){
  	event.preventDefault();

  	var $target = $(event.target);
  	requestOptions = {
  		url: $target.attr("action"),
  		method: $target.attr("method"),
  		data: $target.serialize(),
  		dataType: 'html'
  	}

  	requestObject = $.ajax(requestOptions)

  	requestObject.done(function(response){
  		$('.prompt-comments').append(response);
  		$('.prompt-comment').find('textarea').val("")
  	})

  });



  });
