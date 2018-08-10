$(function () {
    if($('#map').length < 0)
        return;

    drawGoogleMap();



    function drawGoogleMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 17
        });

        var marker;

        if(navigator.geolocation)
            navigator.geolocation.getCurrentPosition(displayOnMap);

        function displayOnMap(position) {
            setFormLocation(position.coords.latitude, position.coords.longitude);
            var position =  new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
            marker = new google.maps.Marker({
                position: position,
                map: map,
                title: 'Event Location'
            });
            map.setCenter(position);

        }

        map.addListener('click', function(event) {
            var position = new google.maps.LatLng(event.latLng.lat(), event.latLng.lng());
            marker.setPosition(position);
            setFormLocation(event.latLng.lat(),event.latLng.lng());
        });
    }

    function setFormLocation(lat,lng) {
        $('#longitude_input').val(lng);
        $('#latitude_input').val(lat);

    }
});

