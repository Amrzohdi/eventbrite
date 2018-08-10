$(function () {
    if($('#map').length < 0)
        return;

    handler = Gmaps.build('Google');

    handler.buildMap({ provider: { zoom:15}, internal: {id: 'map'}}, function(){
        handler.fitMapToBounds();
        if(navigator.geolocation)
            navigator.geolocation.getCurrentPosition(displayOnMap);
    });

    function displayOnMap(position) {
        handler.map.centerOn(new google.maps.LatLng(position.coords.latitude, position.coords.longitude) );
    }
});