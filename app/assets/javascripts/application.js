//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery-1.11.2.min
//= require jquery-ui.min
//= require bootstrap-sprockets
//= require bootstrap.min
//= require moment
//= require bootstrap-datetimepicker
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
//= require plugin/jquery.validate.min
//= require theme
//= require navigation
//= require jquery.youtubebackground
//= require underscore
//= require gmaps/google
//= require contact-form



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

function distance(lat1, lng1, lat2, lng2) {
  var p = 0.017453292519943295;    // Math.PI / 180
  var c = Math.cos;
  var a = 0.5 - c((lat2 - lat1) * p)/2 +
          c(lat1 * p) * c(lat2 * p) *
          (1 - c((lng2 - lng1) * p))/2;

  12742 * Math.asin(Math.sqrt(a)); // 2 * R; R = 6371 km
}

function geocodeAddress(address, callback) {
  var geocoder = new google.maps.Geocoder();

  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      var latitude = results[0].geometry.location.lat();
      var longitude = results[0].geometry.location.lng();
      callback({'lat': latitude, 'lng': longitude});
    }
  });
}

// function define_markers(professionals) //sends back an array of hashes [{:lat=>50.635793, :lng=>3.045787}]
    // markers = Gmaps4rails.build_markers(professionals) do |professional, marker|
    //   marker.lat professional.latitude
    //   marker.lng professional.longitude
    //   marker.infowindow render_to_string(:partial => "/professionals/map_box", locals: {professional: professional})
    // end

// }

$('#user_input_autocomplete_address').on('blur', function(event) {
  setTimeout(function(){
    console.log('1');
    geocodeAddress($(event.target).val(), function(coordinates) {
    console.log('2');
    var pros_in_range = [];
    var professionals = ($("#all_pros").attr("data-pro"));

      $.each(JSON.parse(professionals), function(index, pro) {
        if (distance(coordinates['lat'], coordinates['lng'], pro.latitude, pro.longitude) < pro.max_travel_range) {
          pros_in_range.push(pro);
        }
      });
      console.log(pros_in_range);
    });
    console.log('3');
  }, 500);
});

    //
    //var valid_pros = define_markers(pros_in_range);
    //
    //valid_pros.forEach(function(pro) {
    //    handler = Gmaps.build('Google');
    //    handler.buildMap({ internal: { id: 'map' } }, function(){
    //      markers = handler.addMarkers(<%= raw valid_pros.to_json %>);
    //      handler.bounds.extendWith(markers);
    //      handler.fitMapToBounds();
    //    });
    //}


function fillForm(element) {
  var professional_id = $(element).attr('data-id');
  $('#my-barman').val(professional_id);
  var professional_name = $(element).attr('data-name');
  $('#my-name').val(professional_name);
}
