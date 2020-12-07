(function($){
  $(document).ready(function () {

    /*
     * site header
     */

    // toggle nav button
    $('.js-toggle-nav').click(function(){
      $('body').toggleClass('is-mobilenav');
      $('.c-headertools__nav-button span').toggleClass('active');
    });

    // db: site header - make it (or not) fixed when scrolling to content
    $(window).on('load scroll', function(){
      // var content_anchor = $('#content_anchor').offset().top;
      if ($(window).scrollTop() >= 125) {
        $('body').addClass('has-docked-header');
        $('#header').addClass('is-docked');
      }
      else {
        $('body').removeClass('has-docked-header');
        $('#header').removeClass('is-docked');
      }
    });


    // db: site header - show/hide docked header when scrolling up or down
    // comment it if not needed
    if ($('#header').length) {
      var previousScroll = 0,
          navbar = $('#header'),
          navbarOrgOffset = navbar.offset().top;
      $(window).scroll(function() {
        var currentScroll = $(this).scrollTop();
        if (currentScroll > navbarOrgOffset) {
          if ((currentScroll > previousScroll) && (currentScroll > 125)) {
            navbar.addClass('is-fadeout');
          } else {
            navbar.removeClass('is-fadeout');
          }
        }
        previousScroll = currentScroll;
      });
    }


    // db: navbar - dropdown-toggle preventDefault
    $('.c-sitenav .dropdown-toggle').click(function (e) {
      e.preventDefault();
    });
    
  });
})(jQuery);