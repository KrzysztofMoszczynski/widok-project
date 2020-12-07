(function($){
  $(document).ready(function () {

    var isMobile = function() {
      return /android|ip(hone|od|ad)/i.test(navigator.userAgent);
    }
    
    $(window).on('load resize', function(){
      if ( isMobile() ) {
        $('.m-issue-section--cover, .m-presentation--full-image, .m-presentation--slides-alt figure').css({ height: window.innerHeight });
        $('.m-presentation__outer').css({ minHeight: window.innerHeight });
      }
      else {
        $('.m-presentation--slides-alt figure').css({ minHeight: window.innerHeight });
      }
    });

    var fp_width = document.documentElement.clientWidth;
    //var fp_paddingTop = '50px';
    var fp_paddingTop_issue = '0';
    var fp_paddingTop_presentation = '0';
    var fp_wheelCounter = 0;

    if (fp_width > 1190) {
      //fp_paddingTop = '100px';
      fp_paddingTop_issue = '0';
      fp_paddingTop_presentation = '0';
    }

    function fp_scrollPause() {
      fp_wheelCounter += 1;
      fullpage_api.setAllowScrolling(false);
      //alert(fp_wheelCounter);
      if (fp_wheelCounter > 9) {
        fp_wheelCounter = 0;
        fullpage_api.setAllowScrolling(true);
      } 
    }

    new fullpage('#js-fullpage-issue', {
      sectionSelector: '.fullpage-section',
      anchors:['cover', 'toc'],
      paddingTop: fp_paddingTop_issue,
      verticalCentered: false,
      responsiveWidth: 300,
      scrollingSpeed: 1000,
      scrollBar: false,
      scrollOverflow: true,
      css3: true,
      afterLoad: function(origin, destination, direction){
        var leavingSection = this;
        var timeoutId;
        
        if(direction =='down') {
          $('body').addClass('has-docked-header');
          $('#header').addClass('is-docked');
        }
        else if(direction == 'up') {
          $('body').removeClass('has-docked-header');
          $('#header').removeClass('is-docked');
        }
        
      }
    });

    new fullpage('#js-presentation', {
      sectionSelector: '.fullpage-section',
      paddingTop: fp_paddingTop_presentation,
      verticalCentered: false,
      responsiveWidth: 300,
      scrollingSpeed: 1000,
      scrollBar: false,
      scrollOverflow: true,
      css3: true,
      navigation: true,
      navigationPosition: 'right',
      afterLoad: function(origin, destination, direction){
        var leavingSection = this;
        var timeoutId;
        //document.addEventListener("wheel", fp_scrollPause);
        /*fullpage_api.setAllowScrolling(false);
        timeoutId = setTimeout(function(){
          fullpage_api.setAllowScrolling(true);
        }, 1500);*/
        
        if(/*origin.index == 0 &&*/ direction =='down') {
          $('body').addClass('has-docked-header');
          $('#header').addClass('is-docked is-fadeout');
        }
        else if(/*origin.index == 1 &&*/ direction == 'up') {
          $('body').removeClass('has-docked-header');
          $('#header').removeClass('is-docked is-fadeout');
        }

        var destinationClassnames = destination.item.className;

        if (
          destinationClassnames.indexOf("--bgc-black") >= 0 &&
          destinationClassnames.indexOf("--fullimage") < 1
        ) {
          $('body').addClass('has-bgc-black');
        }
        else {
          $('body').removeClass('has-bgc-black');
        }

        if (
          destinationClassnames.indexOf("fullpage-section--bgc-issue") >= 0
        ) {
          $('.m-presentation__control--mute').addClass('is-inverse');
        }
        else {
          $('.m-presentation__control--mute').removeClass('is-inverse');
        }
      }
    });

    $('#js-fullpage-issue .collapse').on('shown.bs.collapse', function () {
      fullpage_api.reBuild();
    });

    $('#js-fullpage-issue .collapse').on('hidden.bs.collapse', function () {
      fullpage_api.reBuild();
    });

    $('#jump2issue, #presentationScrollDown').click(function () {
      fullpage_api.moveSectionDown();
    });

    $('#presentationScrollStart').click(function () {
      fullpage_api.moveTo('start');
    });

    // Solution to Apple clickpad momentum causing multiple sections to scroll unintentionally 
    // https://github.com/alvarotrigo/fullPage.js/issues/2407
    /*
    var shortWaitTime = 100;
    var longWaitTime = 1100;
    var mouseScrolling = false;
    var shortTimeout;
    var longTimeout;

    var mouseScroll = function(e) {
      var delta = Math.max(-1, Math.min(1, e.originalEvent.wheelDelta || -e.originalEvent.detail));

      e.preventDefault();
      e.stopPropagation();

      if (delta === 1 || delta === -1) {
        clearTimeout(shortTimeout);

        shortTimeout = setTimeout(function() {
          clearTimeout(longTimeout);
          mouseScrolling = false;
        }, shortWaitTime);

        if (!mouseScrolling) {
          mouseScrolling = true;

          if (delta === 1) {
            fullpage_api.moveSectionUp();
          } else {
            fullpage_api.moveSectionDown();
          }

          clearTimeout(longTimeout);

          longTimeout = setTimeout(function() {
            clearTimeout(shortTimeout);
            mouseScrolling = false;
          }, longWaitTime);
        }
      }
    };

    $(document).on("mousewheel DOMMouseScroll", mouseScroll);
    */
  });
})(jQuery);