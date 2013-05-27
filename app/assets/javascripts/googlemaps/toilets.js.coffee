center = new google.maps.LatLng $('#map-canvas').data('latitude'), $('#map-canvas').data('longitude')
map = new google.maps.Map $('#map-canvas')[0]

window.show_map = ->
  map.setOptions
    center: center
    zoom: 15
    mapTypeId: google.maps.MapTypeId.ROADMAP
  
  marker = new google.maps.Marker
    position: center
    map: map
    animation: google.maps.Animation.DROP
    
window.edit_map = ->  
  window.show_map()
