// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import 'bootstrap';
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
import { geoFindMe } from "../components/geolocalisation"


document.addEventListener("turbolinks:load", function() {
    const findMeButton = document.querySelector('#find-me')
    console.log(findMeButton);
    if (findMeButton) {
        findMeButton.addEventListener('click', geoFindMe);
    };
})

// ------> Afficher la valeur du range de garden new
document.addEventListener('DOMContentLoaded', function() {

    var slider = document.getElementById("widthInFeet"); // input
    var displayer = document.getElementById("rangeValue"); // div !
 
    slider.addEventListener("change", function() {
        var value = slider.value

        displayer.innerText = value
    })
})





// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
