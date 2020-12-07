(function($){
  $(document).ready(function () {

    // var lightbox = $('.lightbox-group .lightbox-item').simpleLightbox();

    // <a href="img_demo/slide-1.jpg" class="lightbox-item" data-group="gallery_1"><img src="img_demo/news-1.jpg" alt=""></a>
    // https://github.com/andreknieriem/simplelightbox/issues/16#issuecomment-315293639
    if ($('.lightbox-item').length > 0) {
      var $images = $('.lightbox-item');
      var $imagesGrouped = $images.filter('[data-group]');
      var $imagesAlone = $images.not($imagesGrouped);
      var params = {
        captionsData: 'alt',
        captionPosition: 'outside',
        captionDelay: 500,
        closeText: '',
        showCounter: false,
        navText: ['','']
      };

      // Handle standalone images
      $imagesAlone.each(function (index, element) {
        $(element).simpleLightbox(params);
      });

      // Handle grouped imags
      if ($imagesGrouped.length > 0) {
        // Select all groups
        var groupNames = $imagesGrouped.map(function() {
          return $(this).data('group');
        }).get();
        groupNames = $.unique(groupNames);

        // Apply on each group
        $.each(groupNames, function(key, value) {
          $imagesGrouped.filter(function () {
            return $(this).data('group') == value;
          })
            .simpleLightbox(params);
        });
      }
    }

  });
})(jQuery);