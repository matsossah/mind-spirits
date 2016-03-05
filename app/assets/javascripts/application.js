// app/assets/javascripts/application.js

//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .
//
$(function() {
    $('.add_new_dose').click(function() {
    location.reload();
  });
});
