//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery-ui.min
//= require bootstrap-sprockets
//= require bootstrap.min

//= require plugin/jquery.easing
//= require plugin/jquery.fitvids
//= require plugin/jquery.viewportchecker
//= require plugin/jquery.stellar.min
//= require plugin/wow.min
//= require plugin/jquery.colorbox-min
//= require plugin/owl.carousel.min
//= require plugin/isotope.pkgd.min
//= require plugin/masonry.pkgd.min
//= require plugin/imagesloaded.pkgd.min
//= require plugin/jPushMenu
//= require plugin/jquery.fs.tipper.min
//= require plugin/mediaelement-and-player.min
//= require plugin/background-check.min
//= require theme
//= require navigation
//= require jquery.youtubebackground


$(document).ready(function(){
  $('#video').YTPlayer({
    fitToBackground: true,
    videoId: 'hJH0ZITPGw4'
  });
})

function initializeAutocomplete(id) {
  var element = document.getElementById(id);
  if (element) {
    var autocomplete = new google.maps.places.Autocomplete(element, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
  }
}

function onPlaceChanged() {
  var place = this.getPlace();

  // console.log(place);  // Uncomment this line to view the full object returned by Google API.

  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {  // Some types are ["country", "political"]
      var type_element = document.getElementById(component.types[j]);
      if (type_element) {
        type_element.value = component.long_name;
      }
    }
  }
}

google.maps.event.addDomListener(window, 'load', function() {
  initializeAutocomplete('user_input_autocomplete_address');
});





