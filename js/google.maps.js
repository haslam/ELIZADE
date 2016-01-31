

// The following example creates complex markers to indicate beaches near
// Sydney, NSW, Australia. Note that the anchor is set to
// (0,32) to correspond to the base of the flagpole.

function initialize() {
    var mapOptions = {
        zoom: 7,
        center: new google.maps.LatLng(6.5622594,3.367089)
    }
    var map = new google.maps.Map(document.getElementById('map-locations'),
                                  mapOptions);

    setMarkers(map, beaches);
}

/**
 * Data for the markers consisting of a name, a LatLng and a zIndex for
 * the order in which these markers should display on top of each
 * other.
 */
var beaches = [
  ['Sales, Depot and Workshop Ogba', 6.6236, 3.339629, 4],
  ['Goshen Junction', 6.491329, 3.586065, 5],
  ['Total Filling Station, Oregun', 6.6083192, 3.3621523, 3],
  ['Oando Service Station. Marina', 6.447719, 3.3523024, 2],
  ['Oando Service Station, Anthony', 6.579999, 3.373152, 1],
  ['Elerinla, Akure', 7.366478, 5.106572, 6],
  ['Asaba, Delta State', 5.0421235, 7.9056448, 7],
  ['Effiat Offot, Uyo ', 5.0277649, 7.9334808, 8],
  ['Port Harcourt -  Trans Amadi ', 4.8243458, 7.0384188, 9],
  ['Sango Road, Ibadan', 7.399834, 3.922698, 10],
  ['Independence Avenue', 9.044628, 7.4796905, 11],
  
 
];

function setMarkers(map, locations) {
    // Add markers to the map

    // Marker sizes are expressed as a Size of X,Y
    // where the origin of the image (0,0) is located
    // in the top left of the image.

    // Origins, anchor positions and coordinates of the marker
    // increase in the X direction to the right and in
    // the Y direction down.
    var image = {
        //url: 'images/Toyota/mapicon.png',
        //// This marker is 20 pixels wide by 32 pixels tall.
        //size: new google.maps.Size(20, 32),
        //// The origin for this image is 0,0.
        //origin: new google.maps.Point(0, 0),
        //// The anchor for this image is the base of the flagpole at 0,32.
        //anchor: new google.maps.Point(0, 32)
    };

    // Info Window Content
    var infoWindowContent = [
        ['<div class="info_content">' +
        '<h3>Sales, Depot and Workshop</h3>' +
        '<p>Plot Plot 24/25,Acme Road,Ogba.</p>' + '</div>'],
        ['<div class="info_content">' +
        '<h3>Goshen junction</h3>' +
        '<p>Goshen junction, Lekki-Epe.</p>' +
        '</div>'],
         ['<div class="info_content">' +
        '<h3>Total Filling Station</h3>' +
        '<p>Total Filling Station, Kudirat Abiola Way, Oregun.</p>' + '</div>'],
        ['<div class="info_content">' +
        '<h3>Oando Service Station</h3>' +
        '<p>Oando - Marine Road Service Station, Marine Rd, Lagos.</p>' +
        '</div>'],
         ['<div class="info_content">' +
        '<h3>Oando Filling Station</h3>' +
        '<p>Oando Service Station, Ikorodu Road, Anthony .</p>' + '</div>'],
        ['<div class="info_content">' +
        '<h3>Akure</h3>' +
        '<p>Okuta Elerinla Oyemekun Road, Opposite State Police Headquarters.</p>' +
        '</div>'],
        ['<div class="info_content">' +
        '<h3>Asaba</h3>' +
        '<p>Km. 13, Benini-Asaba Expressway, Opp. Nuel Ojei Holdings.</p>' +
        '</div>'],
         ['<div class="info_content">' +
        '<h3>Uyo</h3>' +
        '<p>Ibrahim Babangida Avenue, Effiat Offot,.</p>' + '</div>'],
        ['<div class="info_content">' +
        '<h3>Port Harcourt -  Trans Amadi </h3>' +
        '<p>Plot 114, Trans Amadi Industrial Layout, Port - Harcourt, Rivers State .</p>' +
        '</div>'],
        ['<div class="info_content">' +
        '<h3>Ibadan</h3>' +
        '<p>U.I Sango Road, by AP Service Station, Opp. Immanuel College Gate.</p>' +
        '</div>'],
         ['<div class="info_content">' +
        '<h3>Abuja</h3>' +
        '<p>Plot 596, Cardersanal Zone, Independence Ave, Opposite Bolingo.</p>' +
        '</div>']
    ];

    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow(), marker, i;


    // Shapes define the clickable region of the icon.
    // The type defines an HTML &lt;area&gt; element 'poly' which
    // traces out a polygon as a series of X,Y points. The final
    // coordinate closes the poly by connecting to the first
    // coordinate.
    var shape = {
        coords: [1, 1, 1, 20, 18, 20, 18, 1],
        type: 'poly'
    };
    for (var i = 0; i < locations.length; i++) {
        var beach = locations[i];
        var myLatLng = new google.maps.LatLng(beach[1], beach[2]);
        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            //icon: image,
            shape: shape,
            title: beach[0],
            zIndex: beach[3]
        });

        // Allow each marker to have an info window    
        google.maps.event.addListener(marker, 'click', (function (marker, i) {
            return function () {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));
    }


}

google.maps.event.addDomListener(window, 'load', initialize);

