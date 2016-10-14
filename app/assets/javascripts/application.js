// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require jquery.easing.1.3.js
//= require jquery.nicescroll.min.js
//= require_tree .

$(function(){
  jQuery("html").niceScroll({cursorcolor:"#c0bfbf"});
});

$(document).ready(function(){
  // $("#mainNav_1").hide();
  $(window).scroll(function (event) {
    var scroll = $(window).scrollTop();
    if (scroll > 20) {
      $("#mainNav_1").addClass("active_nav");
      $("#mainNav").css({
        "opacity": "0"
      });
    } else {
      $("#mainNav_1").removeClass("active_nav");
      $("#mainNav").css({
        "opacity": "1"
      });
    }
  });
});
$(function(){
  "use strict";
  $('a.page-scroll').bind('click', function(event) {
    var $anchor = $(this);
    $('html, body').stop().animate({
      scrollTop: ($($anchor.attr('href')).offset().top - 50)
    }, 1250, 'easeInOutExpo');
    event.preventDefault();
  });
});

