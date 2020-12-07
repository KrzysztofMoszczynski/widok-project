(function($){
  
  // preloader based on actuall loaded doc
  /*
  $(window).on('load', function() {
    $('body').delay(600).queue(function(){
      $(this).addClass('has-preloader-hidden').dequeue();
    });
    $('#preloader')
      .addClass('is-hidden')
      .delay(300)
      .fadeOut(300);
  });
  */
  
  // preloader based on delay only
  /*
  $('body').delay(700).queue(function(){
    $(this).addClass('has-preloader-hidden').dequeue();
  });
  $('#preloader')
    .addClass('is-hidden')
    .delay(400)
    .fadeOut(300)
*/
})(jQuery);

(function($){
  $('body').delay(700).queue(function(){
    $(this).addClass('has-preloader-hidden').dequeue();
  });
  $('#preloader')
    .delay(300)
    .queue(function(){
    $(this).addClass('is-fadeout').dequeue();})
    .delay(300)
    .queue(function(){$(this).addClass('is-hidden').dequeue();});
})(jQuery);