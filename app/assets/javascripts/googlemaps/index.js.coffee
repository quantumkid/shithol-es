#TODO Consider moving this outside the asset pipeline at some point

initialize = ->
  mapOptions =
    center: new google.maps.LatLng -34.397, 150.644
    zoom: 8
    mapTypeId: google.maps.MapTypeId.ROADMAP
  map = new google.maps.Map $('#map-canvas')[0], mapOptions
  
$ ->
  initialize()