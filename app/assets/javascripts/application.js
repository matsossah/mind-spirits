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

function getAllPros(pros, coordinates, callback) {
  var pros_in_range = [];
  $.each(JSON.parse(pros), function(index, pro) {
    var p = 0.017453292519943295;    // Math.PI / 180
    var c = Math.cos;
    var a = 0.5 - c((coordinates['lat'] - pro.latitude) * p)/2 +
            c(pro.latitude * p) * c(coordinates['lat'] * p) *
            (1 - c((coordinates['lng'] - pro.longitude) * p))/2;

    var distance = 12742 * Math.asin(Math.sqrt(a));
    if (distance < pro.max_travel_range) {
      pros_in_range.push(pro);
    }
  });
  callback(pros_in_range);
}

$('#user_input_autocomplete_address').on('blur', function(event) {
  setTimeout(function(){
    geocodeAddress($(event.target).val(), function(coordinates) {
      var professionals = ($("#all_pros").attr("data-pro"));
      getAllPros(professionals, coordinates, function(valid_pros) {
        pros_to_json = [];
        valid_pros.forEach( function (arrayItem) {
          pros_to_json.push({
              "lat" : arrayItem.latitude,
              "lng"  : arrayItem.longitude
          });
        });
        handler = Gmaps.build('Google');
        handler.buildMap({ internal: { id: 'map' } }, function(){
          markers = handler.addMarkers(pros_to_json);
          handler.bounds.extendWith(markers);
          handler.fitMapToBounds();
        });

        markers.forEach( function (marker) {
          google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
              infowindow.setContent(valid_pros[i].business_address);
              infowindow.open(map, marker);
            }
          })(marker, i));
        });
      });
    });
  }, 500);
});

// var map;
// function initialize() {
//   var mapOptions = {
//     zoom: 8,
//     center: {lat: -34.397, lng: 150.644}
//   };
//   map = new google.maps.Map(document.getElementById('map'),
//       mapOptions);

//   var marker = new google.maps.Marker({
//     // The below line is equivalent to writing:
//     // position: new google.maps.LatLng(-34.397, 150.644)
//     position: {lat: -34.397, lng: 150.644},
//     map: map
//   });

//   // You can use a LatLng literal in place of a google.maps.LatLng object when
//   // creating the Marker object. Once the Marker object is instantiated, its
//   // position will be available as a google.maps.LatLng object. In this case,
//   // we retrieve the marker's position using the
//   // google.maps.LatLng.getPosition() method.
//   var infowindow = new google.maps.InfoWindow({
//     content: '<p>Marker Location:' + marker.getPosition() + '</p>'
//   });

//   google.maps.event.addListener(marker, 'click', function() {
//     infowindow.open(map, marker);
//   });
// }

// google.maps.event.addDomListener(window, 'load', initialize);

function fillForm(element) {
  var professional_id = $(element).attr('data-id');
  $('#my-barman').val(professional_id);
  var professional_name = $(element).attr('data-name');
  $('#my-name').val(professional_name);
}
