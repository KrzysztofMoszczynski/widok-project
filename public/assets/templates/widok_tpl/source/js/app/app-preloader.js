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
  $('body').delay(1000).queue(function(){
    $(this).addClass('has-preloader-hidden').dequeue();
  });
  $('#preloader')
    .addClass('is-hidden')
    .delay(700)
    .fadeOut(300)

})(jQuery);