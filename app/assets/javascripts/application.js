// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

$(document).ready(function(){


$('.dropdown').hover(function() {
  $(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideDown('fast');
}, function() {
  $(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideUp()
});




$('.article_col').hover(function(){

	//$(this).find('.rmore').css('display', 'inline');
	$(this).find('.rmore').fadeIn('fast');

}, function(){

	$(this).find('.rmore').fadeOut('fast');

});

$('.CodeRay .extra_p').contents().unwrap()
$( 'p:empty' ).remove();

});
