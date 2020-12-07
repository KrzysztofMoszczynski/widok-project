(function($){
  $(document).ready(function () {

    var myWidth  = document.documentElement.clientWidth,
        myOffset = 0,
        myMargin = 0;

    // homepage & issue

    if ( $('#js-scrollify-homepage').length || $('#js-scrollify-issue').length ) {
      var scrollify_updateHash = false;

      if ( $('#js-scrollify-issue').length ) {
        scrollify_updateHash = true;
      }

      if (myWidth < 992) {
        myMargin = 0;
        myOffset = 0;
      } 
      else {
        myMargin =  100;
        myOffset = -100;
      }

      $.scrollify({
        //interstitialSection   : "#homePageIssueContents",
        //standardScrollElements: "#issueContents",
        section       : ".m-issue-section",
        sectionName   : "section-name",
        easing        : "easeOutExpo",
        scrollSpeed   : 1100,
        offset        : myOffset,
        scrollbars    : true,
        setHeights    : true,
        overflowScroll: true,
        updateHash    : scrollify_updateHash,
        touchScroll   : true,
        before:function(indexPosition,snapToElm){
          if(indexPosition===0){
            snapToElm[0].css({"margin-top": myMargin + "px"});
          }
          if(indexPosition>0){
            snapToElm[0].css({"margin-top":"0"});
          }
        },
        after:function(indexPosition,snapToElm){
          if(indexPosition===0){
            //snapToElm[0].css({"margin-top": "0"});
          }
        },
        afterResize:function() {},
        afterRender:function() {
          $($(this.section)[0]).css({"margin-top": myMargin + "px"});

          $('.collapse').on('shown.bs.collapse', function () {
            console.log('shown');
            $.scrollify.update();
          });
        }
      });

      $('.collapse').on('hidden.bs.collapse', function () {
        console.log('hidden');
        $.scrollify.update();
      });

    }

    // presentation

    if ($('#js-presentation').length) {
      if (myWidth < 992) {
        myMargin =  50;
        myOffset = -0;
      } 

      else {
        myMargin =  100;
        myOffset = -100;
      }

      $.scrollify({
        //interstitialSection : "",
        //standardScrollElements: "",
        section       : ".m-presentation",
        sectionName   : "section-name",
        easing        : "easeOutExpo",
        scrollSpeed   : 1100,
        offset        : myOffset,
        scrollbars    : true,
        setHeights    : true,
        overflowScroll: true,
        updateHash    : false,
        touchScroll   : true,
        before:function(indexPosition,snapToElm){
          if(indexPosition===0){
            snapToElm[0].css({"margin-top": myMargin + "px"});
          }
          if(indexPosition>0){
            snapToElm[0].css({"margin-top":"0"});
          }
        },
        after:function(indexPosition,snapToElm){
          if(indexPosition===0){
            //snapToElm[0].css({"margin-top": "0"});
          }
          $(".m-presentation").removeClass('active');
          $($(this.section)[indexPosition]).addClass('active');
        },

        afterResize:function() {},
        afterRender:function() {$($(this.section)[0]).css({"margin-top": myMargin + "px"});}
      });
    }

    $('#jump2issue').click(function () {
      $.scrollify.move(1);
    });

  });
})(jQuery);