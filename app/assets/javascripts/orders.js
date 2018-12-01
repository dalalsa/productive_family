// // Place all the behaviors and hooks related to the matching controller here.
// // All this logic will automatically be available in application.js.

function getAddress() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      //   console.log(position);
      let latResult = position.coords.latitude;
      let longResult = position.coords.longitude;
      console.log("lat " + latResult, "long " + longResult);

      let myLatlng = new google.maps.LatLng(latResult, longResult);
      let map = new google.maps.Map(document.getElementById("map"), {
        center: myLatlng,
        zoom: 8
      });
      // Add marker
      let marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: "current location"
      });
    });
  } else {
    console.log("geolocation is not supported ");
  }
}

window.onload = function() {
  const form = document.querySelector("form");
  form.addEventListener("submit", e => {
    e.preventDefault();
    // console.log("clicked");
    getAddress();
  });
};
