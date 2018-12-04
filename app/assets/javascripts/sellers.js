// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// let ratingDiv = document.querySelector(".avg-rating");
// let rounded = Math.round(parseFloat(ratingDiv.innerText) * 10) / 10;
// console.log("rating: ", rounded);
// ratingDiv.innerText = rounded;


  
        /*
          let ratingDiv = document.querySelector(".avg-rating")
          let rounded = Math.round(parseFloat(ratingDiv.innerText) * 10)/10
          console.log("rating: ", rounded)
          ratingDiv.innerText = rounded
          */
        let ratingDivs = document.querySelectorAll(".avg-rating");
        for (const ratingDiv of ratingDivs) {
            let rounded = Math.round(parseFloat(ratingDiv.innerText) * 10) / 10;
        console.log('avgRating: ', rounded);
        }
     