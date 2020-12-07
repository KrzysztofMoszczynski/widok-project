(function($){
  $(document).ready(function () {

    // toggle states
    $('.audioplayer-control-play, .audioplayer-control-repeat, .audioplayer-control-mute').click(function(){
      $(this).toggleClass('active');
    });

    // toggle states
    $('.jp-volume-bar').click(function(){
      $('.audioplayer-control-mute').removeClass('active');
    });

    $("#jplayer_1").jPlayer({
      ready: function () {
        $(this).jPlayer("setMedia", {
          title: $(this).attr('data-title'),
          mp3: $(this).attr('data-file')
        });
      },
      swfPath: "js/vendor/",
      supplied: "mp3",
      wmode: "window",
      useStateClassSkin: true,
      autoBlur: false,
      smoothPlayBar: true,
      keyEnabled: true,
      remainingDuration: true,
      toggleDuration: true
    });

    $("#jplayer_1").bind($.jPlayer.event.ended, function(event) {
      $('.audioplayer-control-play').removeClass('active');
    });

    $(".audioplayer-control-repeat").click( function() {
      $("#jplayer_1").bind($.jPlayer.event.ended + ".jp-repeat", function(event) {
        $('.audioplayer-control-play').addClass('active');
      });
      return false;
    });

    // draggable volume bar
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
    $(document).on("mouseup", function() {
      $(window).unbind("mousemove");
    });

    // draggable seek bar
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