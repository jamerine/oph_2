// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

// function initMap() {
//     // var uluru = {lat: 40.0070885, lng: -83.0523673};
//     var latlng = new google.maps.LatLng(40.0070885, -83.0523673);
//     var map = new google.maps.Map(document.getElementById('map'), {
//       zoom: 15,
//       scrollwheel: false,
//       center: latlng,
//       styles: [
//           {
//             "elementType": "geometry",
//             "stylers": [
//               {
//                 "color": "#f5f5f5"
//               }
//             ]
//           },
//           {
//             "elementType": "labels.icon",
//             "stylers": [
//               {
//                 "visibility": "off"
//               }
//             ]
//           },
//           {
//             "elementType": "labels.text.fill",
//             "stylers": [
//               {
//                 "color": "#616161"
//               }
//             ]
//           },
//           {
//             "elementType": "labels.text.stroke",
//             "stylers": [
//               {
//                 "color": "#f5f5f5"
//               }
//             ]
//           },
//           {
//             "featureType": "administrative.land_parcel",
//             "elementType": "labels.text.fill",
//             "stylers": [
//               {
//                 "color": "#bdbdbd"
//               }
//             ]
//           },
//           {
//             "featureType": "poi",
//             "elementType": "geometry",
//             "stylers": [
//               {
//                 "color": "#eeeeee"
//               }
//             ]
//           },
//           {
//             "featureType": "poi",
//             "elementType": "labels.text.fill",
//             "stylers": [
//               {
//                 "color": "#757575"
//               }
//             ]
//           },
//           {
//             "featureType": "poi.park",
//             "elementType": "geometry",
//             "stylers": [
//               {
//                 "color": "#e5e5e5"
//               }
//             ]
//           },
//           {
//             "featureType": "poi.park",
//             "elementType": "labels.text.fill",
//             "stylers": [
//               {
//                 "color": "#9e9e9e"
//               }
//             ]
//           },
//           {
//             "featureType": "road",
//             "elementType": "geometry",
//             "stylers": [
//               {
//                 "color": "#d5b65c"
//               },
//               {
//                 "weight": 1
//               }
//             ]
//           },
//           {
//             "featureType": "road",
//             "elementType": "labels.text.fill",
//             "stylers": [
//               {
//                 "color": "#2d2d2f"
//               }
//             ]
//           },
//           {
//             "featureType": "road.arterial",
//             "elementType": "labels.text.fill",
//             "stylers": [
//               {
//                 "color": "#757575"
//               }
//             ]
//           },
//           {
//             "featureType": "road.highway",
//             "elementType": "geometry",
//             "stylers": [
//               {
//                 "color": "#dadada"
//               }
//             ]
//           },
//           {
//             "featureType": "road.highway",
//             "elementType": "labels.text.fill",
//             "stylers": [
//               {
//                 "color": "#616161"
//               }
//             ]
//           },
//           {
//             "featureType": "road.local",
//             "elementType": "labels.text.fill",
//             "stylers": [
//               {
//                 "color": "#9e9e9e"
//               }
//             ]
//           },
//           {
//             "featureType": "transit.line",
//             "elementType": "geometry",
//             "stylers": [
//               {
//                 "color": "#e5e5e5"
//               }
//             ]
//           },
//           {
//             "featureType": "transit.station",
//             "elementType": "geometry",
//             "stylers": [
//               {
//                 "color": "#eeeeee"
//               }
//             ]
//           },
//           {
//             "featureType": "water",
//             "elementType": "geometry",
//             "stylers": [
//               {
//                 "color": "#c9c9c9"
//               }
//             ]
//           },
//           {
//             "featureType": "water",
//             "elementType": "labels.text.fill",
//             "stylers": [
//               {
//                 "color": "#9e9e9e"
//               }
//             ]
//           }
//         ]
//     });
//     var marker = new google.maps.Marker({
//       position: latlng,
//       map: map
//     });
// }


function openNav() {
    document.getElementById("mySidenav").style.width = "400px";

};

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
};



function scrolltoTop() {
  document.body.scrollTop = document.documentElement.scrollTop = 0;
};


$(document).ready(function(){


  $(document.body).animate({scrollTop: '0px'}, 1000);//1second animation

   $(document).scroll(function() {
     var isMobile = window.matchMedia("only screen and (max-width: 760px)");

     if($(window).scrollTop() === 0) {
       $(".navbar-fixed-top").css('background-color', 'transparent');
       $(".navbar-fixed-top").css('box-shadow', '0px 0px 0px 0px rgba(0,0,0,0.0)');
       $(".navbar-fixed-top").css('-webkit-box-shadow', '0px 0px 0px 0px rgba(0,0,0,0.0)');
       $(".navbar-fixed-top").css('-moz-box-shadow', '0px 0px 0px 0px rgba(0,0,0,0.0)');
       $(".navbar-menu").css('background-image', 'url("../assets/menu_white.svg")');
       $(".navbar-menu").css('height', '50px');
       $(".navbar-menu").css('margin-top', '-50px');
       if (isMobile.matches) {
         $(".navbar-brand").css('background-image', 'url("../assets/OPH_white_2x.png")');
         $(".navbar-brand").css('height', '50px');
         $(".navbar-menu").css('margin-top', '0px');
       } else {
         $(".navbar-brand").css('background-image', 'url("../assets/OPH_Logo_White.svg")');
         $(".navbar-brand").css('height', '164.88px');
         $(".navbar-brand").css('width', '200px');
       }
     } else {
       $(".navbar-fixed-top").css('background-color', 'rgba(255, 255, 255, 1.0)');
       $(".navbar-brand").css('background-image', 'url("../assets/OPH_Black.svg")');
       $(".navbar-brand").css('height', '50px');
       $(".navbar-brand").css('width', '100px');
       $(".navbar-menu").css('background-image', 'url("../assets/menu_black.svg")');
       $(".navbar-menu").css('height', '50px');
       $(".navbar-menu").css('margin-top', '0px');
        $(".navbar-fixed-top").css('box-shadow', ' -3px 0px 5px 0px rgba(0,0,0,0.30)');
        $(".navbar-fixed-top").css('-webkit-box-shadow', ' -3px 0px 5px 0px rgba(0,0,0,0.30)');
        $(".navbar-fixed-top").css('-moz-box-shadow', ' -3px 0px 5px 0px rgba(0,0,0,0.30)');
        $(".navbar-fixed-top").css('-webkit-transition', 'all 0.5s');
        $(".navbar-fixed-top").css('transition', 'all 0.5s');
        $(".navbar-fixed-top").css('-moz-transition', 'all 0.5s');

     }


   });

});
