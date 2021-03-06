import 'mapbox-gl/dist/mapbox-gl.css'
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';

import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/eike92/cjosluz8cec982rlmwwmjj96i'
  });

  const markers = JSON.parse(mapElement.dataset.markers);

  if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(14);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 0, padding: 75 })
  }

  markers.forEach((marker) => {
    var el = document.createElement('div');
    el.className = 'marker-pin';
    el.innerText = marker.id;
    // el.style = "width: 50px; height: 50px; background: red;";

    new mapboxgl.Marker(el)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
      .setHTML(marker.infoWindow.content))
      .addTo(map);
  })
}

if (mapElement) {
  map.addControl(new MapboxGeocoder({
    accessToken: mapboxgl.accessToken
  }));
}

const addressInput = document.getElementById('restaurant_address');

if (addressInput) {
  const places = require('places.js');
  const placesAutocomplete = places({
    container: addressInput
  });

  placesAutocomplete.on("change", function(e) {
    const form = document.querySelector(".js-autocomplete-form");
    form.submit();
  });
}

