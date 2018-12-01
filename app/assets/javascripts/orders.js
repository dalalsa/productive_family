// // Place all the behaviors and hooks related to the matching controller here.
// // All this logic will automatically be available in application.js.

// function getAddress() {
//   if (navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(function(position) {
//       //   console.log(position);
//       let latResult = position.coords.latitude;
//       let longResult = position.coords.longitude;
//       console.log("lat " + latResult, "long " + longResult);

//     });
//   } else {
//     console.log("geolocation is not supported ");
//   }
// }

// window.onload = function() {
//   const form = document.querySelector("form");
//   form.addEventListener("submit", e => {
//     e.preventDefault();
//     // console.log("clicked");
//     getAddress();
//   });
// };

// function initMap() {
//   var myLatLng = { lat: -25.363, lng: 131.044 };

//   // Create a map object and specify the DOM element
//   // for display.
//   var map = new google.maps.Map(document.getElementById("map"), {
//     center: myLatLng,
//     zoom: 4
//   });

//   // Create a marker and set its position.
//   var marker = new google.maps.Marker({
//     map: map,
//     position: myLatLng,
//     title: "Hello World!"
//   });
// }
