//token mapBox

var coords = [
    [4.141553499740439, 44.052572457451014],
    [4.143273931900012, 44.05242402365157],
    [4.14427862409957, 44.05275366184478],
    [4.145185210746604, 44.05318932120335],
    [4.143211104911643, 44.053065948966925],
    [4.141692974609214, 44.05368666292508],
    [4.142165043395835, 44.05420327703502]
];


var accessToken = 'pk.eyJ1IjoiY2FtaWxsZXNhdWVyIiwiYSI6ImNrOXduMGdkOTA3OGozZHB4YXNuY3l0aW0ifQ.1ZeOkcFvAhCs_raWV9gkHA';
mapboxgl.accessToken = accessToken;
//on initialise notre map sur le div #map
var map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10',
    center: [4.141056, 44.050022399999996], //un centre initial [longitude, latitude] (facultatif)
    zoom: 13 //un zoom initial (facultatif)
});
//au chargement de la map
map.on('load', function () {
    //on recadre la carte en fonction de nos différents points GPS
    fitMap(map, coords);
    //on affiche le tracé reliant nos différents points GPS
    displayJourney(map, coords);
    //on affiche l'itinéraire routier correspondant à nos points GPS
    displayJourneyReshaped(map, coords);
    //on affiche des marqueurs à la position de nos points GPS, indiquant leur numéros et recentrant la carte sur eux au clic.
    placeMarkers(map, coords);
});

function fitMap(map, coords) {
    var bounds = coords.reduce(function (bounds, coord) {
        return bounds.extend(coord);
    }, new mapboxgl.LngLatBounds(coords[0], coords[0]));
    map.fitBounds(bounds, {
        padding: 30 //marge autour des points
    });
}

function displayJourneyReshaped(map, coords) {
    //on transforme nos coordonées en string pour l'appel de l'API
    var coordsString = coords.join(';');
    //choix du type d'itinéraire que l'on souhaite calculer (par exemple avec "walking" on ne fera pas le tour d'un rond point, avec "driving" si.
    var typeRoute = 'driving'; //cycling, walking, driving-traffic
    var directionsRequest = 'https://api.mapbox.com/matching/v5/mapbox/'+typeRoute+'/' + coordsString + '?geometries=geojson&access_token=' + accessToken;
    var xhr = new XMLHttpRequest();
    xhr.open('GET', directionsRequest);
    xhr.onload = function () {
        if (xhr.status === 200) {
            var response = JSON.parse(xhr.responseText);
            //on récupère la données calculé qui nous permettra d'afficher l'itinéraire
            var route = response.matchings[0].geometry;
            //add layer
            map.addLayer({
                id: 'journeyReshaped', //identifiant unique de l'objet
                type: 'line',
                source: {
                    type: 'geojson',
                    data: {
                        type: 'Feature',
                        geometry: route //utilisation de l'itinéraire
                    }
                },
                paint: {
                    'line-color': "#3399ff", //couleur de la ligne
                    'line-width': 4, //epaisseur de la ligne
                    'line-opacity': 0.7 //opacité de la ligne
                }
            });
        } else {
            //en cas d'erreur ajax
            console.log('Request failed.  Returned status of ' + xhr.status);
        }
    };
    xhr.send();
}
