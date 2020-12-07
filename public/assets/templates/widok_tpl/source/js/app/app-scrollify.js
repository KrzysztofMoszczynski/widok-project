(function($){
  $(document).ready(function () {

    var myWidth  = document.documentElement.clientWidth,
        myOffset = 0,
        myMargin = 0;
    
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
        section : ".m-presentation",
        sectionName : "section-name",
        interstitialSection : "",
        easing: "easeOutExpo",
        scrollSpeed: 750,
        offset : myOffset,
        scrollbars: true,
        standardScrollElements: "",
        setHeights: true,
        overflowScroll: true,
        updateHash: false,
        touchScroll:true,
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
        afterRender:function() {$($(this.section)[0]).css({"margin-top": myMargin + "px"});}
      });

    }

    if ($('#js-scrollify-home').length) {

      if (myWidth < 992) {
        myMargin = 0;
        myOffset = 0;
      } 

      else {
        myMargin =  100;
        myOffset = -100;
      }

      $.scrollify({
        section : ".m-homepage-section",
        sectionName : "section-name",
        interstitialSection : "",
        easing: "easeOutExpo",
        scrollSpeed: 750,
        offset : myOffset,
        scrollbars: true,
        standardScrollElements: "",
        setHeights: true,
        overflowScroll: true,
        updateHash: false,
        touchScroll:true,
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
        afterRender:function() {$($(this.section)[0]).css({"margin-top": myMargin + "px"});}
      });
      
    }
    
    $('#jump2issue').click(function () {
      $.scrollify.move(1);
    });


  });
})(jQuery);