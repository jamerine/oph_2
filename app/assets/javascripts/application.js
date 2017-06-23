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

function initMap() {
    var uluru = {lat: 40.0070885, lng: -83.0523673};
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 15,
      scrollwheel: false,
      center: uluru
    });
    var marker = new google.maps.Marker({
      position: uluru,
      map: map
    });
}


function openNav() {
    document.getElementById("mySidenav").style.width = "400px";

};

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
};



$(document).ready(function(){
   var scroll_start = 0;
   var startchange = $('#section-change');
   var offset = startchange.offset();
   offset.top = offset.top - 50
    if (startchange.length){
   $(document).scroll(function() {
      scroll_start = $(this).scrollTop();
      if(scroll_start > offset.top) {
         $(".navbar-fixed-top ").css('background-color', 'rgba(107, 107, 107, 0.75)');
       } else {
         $(".navbar-fixed-top ").css('background-color', 'transparent');
       };

   });
    }

});
