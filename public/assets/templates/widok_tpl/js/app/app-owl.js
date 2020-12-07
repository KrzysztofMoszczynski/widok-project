(function($){
  $(document).ready(function () {

    $('.js-owl-presentation-slides').owlCarousel({
      loop: false,
      margin: 0,
      nav: false,
      navText: '',
      slideBy: 'page',
      responsive:{
        0: {
          items: 1
        }
      }
    });

    $('.js-owl-content-slides').owlCarousel({
      autoplay: true,
      autoplayTimeout: 5000,
      autoplayHoverPause: true,
      loop: true,
      margin: 0,
      nav: false,
      navText: '',
      slideBy: 'page',
      responsive: {
        0: {
          items: 1
        }
      }
    });
    
    // Set same height for owl carousel
    /*
    var setMinHeight = function(minheight = 0) {
      jQuery('.owl-carousel--feature').each(function(i,e){
        var oldminheight = minheight;
        jQuery(e).find('.owl-item').each(function(i,e){
          minheight = jQuery(e).height() > minheight ? jQuery(e).height() : minheight;    
        });
        jQuery(e).find('.owl-item').css("min-height",minheight + "px");
        minheight = oldminheight;
      });
    };
    setMinHeight();
    */
    
  });
})(jQuery);