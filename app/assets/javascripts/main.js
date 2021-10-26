$(document).ready(function(){



  var mymap = L.map('mapid').setView([51.505, -0.09], 13);

  // var mymap = L.map('mapid').setView([<% @product.latitude %>, <% @product.longitude %>], 13);



  L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
      maxZoom: 18,
      id: 'mapbox/streets-v11',
      tileSize: 512,
      zoomOffset: -1,
      accessToken: 'pk.eyJ1IjoiYmlnZGVhbm8iLCJhIjoiY2t2N2NxbHkwODg3MjJ3dDlxMWl6bm5jMiJ9.6zkH_3IDyrhFhcOMDkBE5w'
  }).addTo(mymap);


})

$('.link').click( function(event) {
  var clicked_div = $(this);

});
