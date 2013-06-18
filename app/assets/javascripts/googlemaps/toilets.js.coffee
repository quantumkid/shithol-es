# Enable visual refresh
google.maps.visualRefresh = true

toilet_location = new google.maps.LatLng $('#map-canvas').data('latitude'), $('#map-canvas').data('longitude')
map = new google.maps.Map $('#map-canvas')[0]

window.show_map = ->
  map.setOptions
    center: toilet_location
    zoom: 15
    mapTypeId: google.maps.MapTypeId.ROADMAP
  
  marker = new google.maps.Marker
    position: toilet_location
    map: map
    animation: google.maps.Animation.DROP
    
window.new_map = window.edit_map = ->  
  window.show_map()
  
window.nearby_map = ->
  $.ajax
    dataType: "json"
    url: "/toilets/nearby"
    success: (data) ->
      alert data
