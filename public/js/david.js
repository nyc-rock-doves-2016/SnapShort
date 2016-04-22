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
  });
