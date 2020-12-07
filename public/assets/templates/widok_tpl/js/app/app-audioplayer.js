(function($){
  $(document).ready(function () {
    
    /* background music player */
    
    $("#jplayer_bg").jPlayer({
      
      ready: function () {
        
        $(this).jPlayer("setMedia", {
          title: $(this).attr('data-title'),
          mp3: $(this).attr('data-file')
        }).jPlayer("play");
        //});
        
        // mute background music button
        var jp_control_mute = false;
        $('.js-jplayer-mute-bg').click(function(){
          if ( jp_control_mute ) 
          {
            $('#jplayer_bg').jPlayer("unmute");
            $(this).removeClass('is-muted');
            jp_control_mute = false;
          } 
          else 
          {
            $('#jplayer_bg').jPlayer("mute");
            $(this).addClass('is-muted');
            jp_control_mute = true;
          }
        });
        
      },
      play: true,
      swfPath: "js/vendor/",
      supplied: "mp3",
      keyEnabled: false,
      cssSelectorAncestor: '#jp_container_bg'
    });
    
    /* independent players */
    
    /*
    $("#jplayer_1").jPlayer({
      ready: function () {
        $(this).jPlayer("setMedia", {
          title: $(this).attr('data-title'),
          mp3: $(this).attr('data-file')
        //}).jPlayer("play");
        });
      },
      play: true,
      swfPath: "js/vendor/",
      supplied: "mp3",
      useStateClassSkin: true,
      autoBlur: false,
      smoothPlayBar: true,
      keyEnabled: true,
      remainingDuration: true,
      toggleDuration: true,
      cssSelectorAncestor: '#jp_container_1'
    });

    $("#jplayer_1").bind($.jPlayer.event.ended, function(event) {
      $('.audioplayer-control-play').removeClass('active');
    });

    $("#jplayer_2").jPlayer({
      ready: function () {
        $(this).jPlayer("setMedia", {
          title: $(this).attr('data-title'),
          mp3: $(this).attr('data-file')
          //}).jPlayer("play");
        });
      },
      play: true,
      swfPath: "js/vendor/",
      supplied: "mp3",
      useStateClassSkin: true,
      autoBlur: false,
      smoothPlayBar: true,
      keyEnabled: true,
      remainingDuration: true,
      toggleDuration: true,
      cssSelectorAncestor: '#jp_container_2'
    });

    $("#jplayer_2").bind($.jPlayer.event.ended, function(event) {
      $('.audioplayer-control-play').removeClass('active');
    });
    */
    
    /* toggle states */

    $('.audioplayer-control-play, .audioplayer-control-repeat, .audioplayer-control-mute').click(function(){
      $(this).toggleClass('active');
    });

    $(document).on("mouseup", function() {
      $(window).unbind("mousemove");
    });

    /* draggable volume bar */
    
    /*
    $('.jp-volume-bar').mousedown(function() {
      var parentOffset = $(this).offset(),
          width = $(this).width();
      $(window).mousemove(function(e) {
        var x = e.pageX - parentOffset.left,
            volume = x/width
        var barValue = Math.floor(volume*100);
        if (barValue < 0 ) barValue = 0;
        if (barValue > 100) barValue = 100;
        jQuery(".jp-volume-bar-value").css("width", barValue + "%");
        $("#jplayer_1").jPlayer("volume", volume);
      });
      return false;
    })
    */

    /*
    $('.jp-volume-bar').click(function(){
      $('.audioplayer-control-mute').removeClass('active');
    });
    */
    
    /*
    $(".audioplayer-control-repeat").click( function() {
      $("#jplayer_1").bind($.jPlayer.event.ended + ".jp-repeat", function(event) {
        $('.audioplayer-control-play').addClass('active');
      });
      return false;
    });
    */

    /* draggable seek bar */
    
    /*
    $('.jp-seek-bar').mousedown(function() {
      var parentOffset = $(this).offset(),
          width = $(this).width();
      $(window).mousemove(function(e) {
        var x = e.pageX - parentOffset.left,
            currentPosition = x/width
        var barValue = Math.floor(currentPosition*100);
        if (barValue < 0 ) barValue = 0;
        if (barValue > 100) barValue = 100;
        $(".jp-play-bar").css("width", barValue + "%");
      });
      return false;
    })
    $(document).on("mouseup", function() {
      $(window).unbind("mousemove");
    });
    */

  });
})(jQuery);