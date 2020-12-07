/* cookie create */

function setCookie(cname, cvalue, exdays) {
  if ( exdays ) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires + "; path=/";
  }
  else {
    document.cookie = cname + "=" + cvalue + "; path=/";
  }
}

/* read create */

function getCookie(cname) {
  var name = cname + "=";
  var ca = document.cookie.split(';');
  for(var i=0; i<ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1);
    if (c.indexOf(name) == 0) return c.substring(name.length,c.length);
  }
  return "";
}

(function($){
  $(document).ready(function () {
    
    // bootstrap
    $('[data-toggle="tooltip"]').tooltip();
    $('[data-toggle="popover"]').popover();

    // styled tables inside .u-typo
    $('.u-typo table').addClass('table table-bordered');

    // remove inline styles
    // $('.u-typo table, .u-typo tr, .u-typo th, .u-typo td').removeAttr("style");

    // wrap typography headers text with span to have custom border
    $('.u-typo h2').wrapInner('<span></span>');

    // open collapse on CTRL+F
    $(window).on('keydown', function(e){
      var ck = e.keyCode ? e.keyCode : e.which;
      if(e.ctrlKey && ck == 70){
        $('.collapse').collapse('show')
      }
    });

    // enumarate toc elements
    $('#issue_toc li').each(function(index,item){
      if(index<9)
      {
        $(item).attr('data-aricle-no', '0'+(index+1));
      }
      else 
      {
        $(item).attr('data-aricle-no',(index+1));
      }
    });

    // back button
    $('.js-history-back').click(function () {
      window.history.go(-1);
    });

    // scroll to any element
    $('.js-scroll2').click(function () {
      var scrolltarget = $(this).attr('data-scroll2');
      var scrolltarget_offset = $(scrolltarget).offset().top - 58;
      $('html, body').animate({
        scrollTop: scrolltarget_offset
      }, 750);
    });
    /*
    if ( /webkit.*mobile/i.test(navigator.userAgent)) {
      (function($) {
        $.fn.offsetOld = $.fn.offset;
        $.fn.offset = function() {
          var result = this.offsetOld();
          result.top -= window.scrollY;
          result.left -= window.scrollX;
          return result;
        };
      })(jQuery);
    }*/

    $('.m-article a[name], .m-footnotes a[name]').click(function (e) {
      //if (navigator.userAgent.match(/(iPod|iPhone|iPad)/)) {
        /* simple jump */
        
        /*
        window.scrollTo(0,scrolltarget_offset);
        */

        /* custom animated scroll */
        
        /*
        function customScrollTo(to, duration) {
          var start = 0,
              change = to - start,
              currentTime = 0,
              increment = 20;

          var animateScroll = function(){        
            currentTime += increment;
            var val = Math.easeInOutQuad(currentTime, start, change, duration);                        
            window.scrollTo(0,val);

            if(currentTime < duration) {
              setTimeout(animateScroll, increment);
            }
          };
          animateScroll();
        }

        Math.easeInOutQuad = function (t, b, c, d) {
          t /= d/2;
          if (t < 1) return c/2*t*t + b;
          t--;
          return -c/2 * (t*(t-2) - 1) + b;
        };

        customScrollTo(scrolltarget_offset, 750);
        */
      //}
      //else {
        e.preventDefault();
        var scrolltarget = $(this).attr('href');
        var scrolltarget = scrolltarget.split("#")[1];
        var scrolltarget_offset = $('a[name="' + scrolltarget +  '"').offset().top - 110;
        $('html, body').animate({
          scrollTop: scrolltarget_offset
        }, 750);
      //}
    });

  });
})(jQuery);