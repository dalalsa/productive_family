// // // Place all the behaviors and hooks related to the matching controller here.
// // // All this logic will automatically be available in application.js.

// function getAddress() {
//   if (navigator.geolocation) {
//     navigator.geolocation.getCurrentPosition(function(position) {
//       //   console.log(position);
//       let latResult = position.coords.latitude;
//       let longResult = position.coords.longitude;
//       console.log("lat " + latResult, "long " + longResult);
//       //   let result = latResult + "," + longResult;
//       let myLatlng = new google.maps.LatLng(latResult, longResult);
//       let map = new google.maps.Map(document.getElementById("map"), {
//         center: myLatlng,
//         zoom: 8
//       });
//       // Add marker
//       let marker = new google.maps.Marker({
//         position: myLatlng,
//         map: map,
//         title: "current location"
//       });
//       //   var img_url = `https://maps.googleapis.com/maps/api/staticmap?center=${result}&zoom=14&size=400x300&key=AIzaSyDu8dgXYF8hlsr76Bq9KUPFzfG2a4Ep3wU`;

//       //   document.getElementById("map").innerHTML = "<img src='" + img_url + "'>";
//     });
//   } else {
//     console.log("geolocation is not supported ");
//   }
// }

// window.onload = function() {
// //   const form = document.querySelector("form");
// //   form.addEventListener("submit", e => {
//     e.preventDefault();
//     getAddress();
// //   });
// };
