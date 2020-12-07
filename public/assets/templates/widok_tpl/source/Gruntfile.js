module.exports = function(grunt) {
  
  require('load-grunt-tasks')(grunt);

  // loadNpmTasks
  // grunt.loadNpmTasks('grunt-contrib-clean');
  // grunt.loadNpmTasks('grunt-contrib-concat');
  // grunt.loadNpmTasks('grunt-contrib-copy');
  // grunt.loadNpmTasks('grunt-contrib-uglify');
  // grunt.loadNpmTasks('grunt-contrib-watch');
  // grunt.loadNpmTasks('grunt-purifycss');
  
  grunt.initConfig({
    
    sass: {
      options: {
        sourceMap: true,
        outputStyle: 'expanded'
        //outputStyle: 'compressed'
      },
      dist: {
        files: {
          'dist/css/styles.css': ['css/main.scss']
        }
      }
    },

    copy: {
      bootstrap: {
        files: [
          {expand: true, 
           flatten: true,
           filter: 'isFile',
           src: [
             'node_modules/bootstrap-sass/assets/javascripts/bootstrap/transition.js',
             'node_modules/bootstrap-sass/assets/javascripts/bootstrap/collapse.js',
             'node_modules/bootstrap-sass/assets/javascripts/bootstrap/dropdown.js',
             //'node_modules/bootstrap-sass/assets/javascripts/bootstrap/alert.js',
             //'node_modules/bootstrap-sass/assets/javascripts/bootstrap/button.js',
             //'node_modules/bootstrap-sass/assets/javascripts/bootstrap/carousel.js',
             //'node_modules/bootstrap-sass/assets/javascripts/bootstrap/modal.js',
             //'node_modules/bootstrap-sass/assets/javascripts/bootstrap/tooltip.js',
             //'node_modules/bootstrap-sass/assets/javascripts/bootstrap/popover.js',
             //'node_modules/bootstrap-sass/assets/javascripts/bootstrap/scrollspy.js',
             //'node_modules/bootstrap-sass/assets/javascripts/bootstrap/tab.js',
             //'node_modules/bootstrap-sass/assets/javascripts/bootstrap/affix.js'
           ], 
           dest: 'dist/js/vendor/bootstrap'}
        ],
      },
      vendor: {
        files: [
          {expand: true, 
           flatten: true,
           filter: 'isFile',
           src: [
             'js/vendor/jquery-1.12.4.min.js',

             'js/vendor/debouncedresize.js',
             'js/vendor/jquery.jplayer.js',
             'js/vendor/jquery.scrollify.js',
             'js/vendor/modernizr-custom.js',
             'js/vendor/ofi.browser.js',
             'js/vendor/owl.carousel.js',
             'js/vendor/picturefill.js',
             'js/vendor/simple-lightbox.js',
             
             'js/vendor/jquery.jplayer.swf'
           ], 
           dest: 'dist/js/vendor'}
        ]
      },
      app: {
        files: [
          {expand: true, 
           flatten: true,
           filter: 'isFile',
           src: [
             'js/app/app.js',
             'js/app/app-audioplayer.js',
             'js/app/app-objectFitPolyfill.js',
             'js/app/app-owl.js',
             'js/app/app-preloader.js',
             'js/app/app-scrollify.js',
             'js/app/app-simple-lightbox.js',
             'js/app/app-siteHeader.js'
           ], 
           dest: 'dist/js/app'}
        ],
      }
    },

    concat: {
      js: {
        src: [
          'node_modules/bootstrap-sass/assets/javascripts/bootstrap/transition.js',
          'node_modules/bootstrap-sass/assets/javascripts/bootstrap/collapse.js',
          'node_modules/bootstrap-sass/assets/javascripts/bootstrap/dropdown.js',

          'js/vendor/debouncedresize.js',
          'js/vendor/jquery.jplayer.js',
          'js/vendor/jquery.scrollify.js',
          'js/vendor/modernizr-custom.js',
          'js/vendor/ofi.browser.js',
          'js/vendor/owl.carousel.js',
          'js/vendor/picturefill.js',
          'js/vendor/simple-lightbox.js',

          'js/app/app.js',
          'js/app/app-audioplayer.js',
          'js/app/app-objectFitPolyfill.js',
          'js/app/app-owl.js',
          'js/app/app-preloader.js',
          'js/app/app-scrollify.js',
          'js/app/app-simple-lightbox.js',
          'js/app/app-siteHeader.js'
        ],
        dest: 'dist/js/bundle.js'
      }
    },

    uglify: {
      scripts: {
        files: {
          'dist/js/bundle.min.js': ['dist/js/bundle.js']
        }
      }
    },
    
    clean: {
      js: [
       'dist/js'
      ],
      css: [
       'dist/css'
      ]
    },
    
    /*
    purifycss: {
      options: {
        minify: true
        //rejected: true
      },
      target: {
        src: ['dist/*.html', 'dist/js/*.js'],
        css: ['dist/css/styles.css'],
        dest: 'dist/css/styles-purify.css'
      }
    },
    */

    watch: {
      css: {
        files: ['css/**/*.css','css/**/*.scss'],
        tasks: ['clean:css','sass'],
      },
      js: {
        files: ['js/**/*.js'],
        tasks: ['clean:js','copy:bootstrap','copy:vendor','copy:app','concat'],
      },
    }
  });
  
  // registerTask
  grunt.registerTask('default', ['clean:js','clean:css','copy:bootstrap','copy:vendor','copy:app','concat','sass']);
  grunt.registerTask('minify',  ['clean:js','clean:css','copy:bootstrap','copy:vendor','copy:app','concat','uglify','sass']);
  grunt.registerTask('watcher', ['clean:js','clean:css','copy:bootstrap','copy:vendor','copy:app','concat','sass','watch']);
  //grunt.registerTask('purify', ['purifycss']);
  
};