$(function () {
    if($('#map').length < 0)
        return;

    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
        handler.fitMapToBounds();
    });
});