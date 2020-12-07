(function($){
  $(document).ready(function () {

    // styled tables inside .u-typo
    $('.u-typo table').addClass('table table-hover');

    // remove inline styles
    $('.u-typo table, .u-typo tr, .u-typo th, .u-typo td').removeAttr("style");

    // home page custom scroll
    
    /*
    if ($('#homePageIssueContents').length) {

      // https://stackoverflow.com/questions/4770025/how-to-disable-scrolling-temporarily
      var keys = {37: 1, 38: 1, 39: 1, 40: 1};
      function preventDefault(e) {
        e = e || window.event;
        if (e.preventDefault)
          e.preventDefault();
        e.returnValue = false;  
      }
      function preventDefaultForScrollKeys(e) {
        if (keys[e.keyCode]) {
          preventDefault(e);
          return false;
        }
      }
      function disableScroll() {
        if (window.addEventListener) // older FF
          window.addEventListener('DOMMouseScroll', preventDefault, false);
        window.onwheel = preventDefault; // modern standard
        window.onmousewheel = document.onmousewheel = preventDefault; // older browsers, IE
        window.ontouchmove  = preventDefault; // mobile
        document.onkeydown  = preventDefaultForScrollKeys;
      }
      function enableScroll() {
        if (window.removeEventListener)
          window.removeEventListener('DOMMouseScroll', preventDefault, false);
        window.onmousewheel = document.onmousewheel = null; 
        window.onwheel = null; 
        window.ontouchmove = null;  
        document.onkeydown = null;  
      }
      disableScroll();

      var issueContents_offset = $('#homePageIssueContents').offset().top - 50;

      window.wasScrolled = false;
      $(window).on('wheel',function(){
        if (!window.wasScrolled){
          setTimeout(function(){
            var issue_offset = $('#homePageIssueContents').offset().top - 50;
            $('html, body').animate({
              scrollTop: issueContents_offset
            }, 1000);
            enableScroll();
          }, 1000);
          window.wasScrolled = true;
        }
      });

      $('#jump2issue').click(function () {
        $('html, body').animate({
          scrollTop: issueContents_offset
        }, 750);
        window.wasScrolled = true;
        enableScroll();
      });
    }
    */

  });
})(jQuery);